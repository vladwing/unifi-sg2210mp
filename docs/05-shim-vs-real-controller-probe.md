# Phase 2/4 crossover — probing a real UniFi Network Application with the shim

Status as of 2026-08-06. Companion to `01-phase1-protocol-recon.md` and
`shim/README.md`.

## Setup

The user already runs a genuine **UniFi Network Application**
(`lscr.io/linuxserver/unifi-network-application:latest`, container
`unifi-network` on host `kodiak`) on a dedicated Docker `ipvlan` network,
`vlan-128` (172.16.128.0/24, parent `eno1.128`), which is the real
management VLAN. The controller container sits at `172.16.128.1` with
`:8080`/`:8443` reachable directly from anything else attached to that
network (not published to the host — only reachable *inside* the VLAN,
which is why this had to run as a container on `vlan-128`, not on the
host).

Built a throwaway image (`shim/probe_controller.py` + the existing
`inform_protocol.py`/`device_state.py`, pycryptodome + requests) and ran it
as a container on `vlan-128` (`172.16.128.200`, a locally-administered fake
MAC `02:00:00:00:00:01` — deliberately not impersonating any real OUI for
this recon step). `vlan-128` has **no internet egress** (confirmed —
`apk add` inside a container on that network hangs; the image has to be
built on the default bridge network first, then run with
`--network vlan-128`).

## Headline discovery: this VLAN has real, currently-adopted UniFi hardware on it

`docker exec unifi-network tail /config/logs/access.log` shows **three
real devices** (172.16.128.206, .33, .125) POSTing to `/inform` and
getting `200` every ~7–10s, continuously, since at least 2026-08-03. This
means Phase 2 ("real inform-session capture") no longer strictly needs the
SG2210MP itself — passive capture on `eno1.128` would see real inform
traffic from real adopted Ubiquiti devices already on this network. (Not
yet done — see "Suggested next step" below; needs the payload key from a
current device to decrypt, but header/flags alone would resolve open
questions #2/#3 from `01-phase1-protocol-recon.md`.)

## What we learned by POSTing our own (deliberately fake) inform packets

The container logs to `/config/logs/server.log` and `/config/logs/access.log`
inside `unifi-network`. Sending our shim's encoded packets to
`http://172.16.128.1:8080/inform` (also tried `:8443`) and reading those logs
directly (rather than guessing from HTTP status alone) gave a clean picture:

| Request | HTTP status | Server-side log |
|---|---|---|
| Empty body (GET or POST) | 400 | `Inform Invalid for Device[...], Content too short` |
| Garbage bytes (no `TNBU` magic) | 400 | `Inform Invalid for Device[...], Bad packet magic` |
| Our CBC-encoded packet (default key, `flags=0x03`) | **404** | `dev[02-00-00-00-00-01] inform decryption failed with defaultAuthKey=true, ... GeneralSecurityException` / `unable to decrypt inform` |
| Our GCM-encoded packet (`flags=0x0B`) | 400 | (inconsistently reached the decrypt stage at all — see below) |

Confirmed/new findings:

1. **Header parsing order confirmed**: length check first (`Content too
   short`), then magic check (`Bad packet magic`), then decrypt. Matches
   our reconstructed 40-byte header layout in `inform_protocol.py`.
2. **The controller genuinely tries the well-known default per-device key**
   (`defaultAuthKey=true` in the log) against unknown-MAC inform POSTs —
   confirms `00-plan.md`'s documented default key *is* tried by real
   software, not just AP-era folklore.
3. **New finding, not previously known**: a decrypt failure maps to HTTP
   **404**, not 400/401/403 — deliberately indistinguishable from "unknown
   route," which reads as an intentional anti-oracle measure against
   padding-oracle-style attacks on the AES-CBC inform channel.
4. **Our CBC framing is wrong somewhere** — the server tries the right key
   and still throws `GeneralSecurityException` (almost certainly a padding
   exception under the hood). Candidates, in rough order of likelihood:
   - PKCS7 padding assumption is wrong — `00-plan.md` already flagged the
     real scheme as "AES-128-CBC (**unpadded**)"; our codec pads/unpads
     with PKCS7 on both ends, which would round-trip fine against itself
     (hence the passing self-test) while still being wrong against real
     firmware.
   - IV field placement/length, or header field byte order, subtly
     mismatched vs. what this controller build expects.
5. **GCM framing is more broken than CBC** — it didn't even reliably reach
   the same decrypt-attempt log line, suggesting our GCM byte layout
   (12-byte nonce left-padded into the 16-byte IV field, tag appended to
   ciphertext) diverges from what the server expects structurally, not
   just cryptographically. Whether *this controller version* even still
   accepts GCM inform at all is unresolved — didn't observe a real device
   using it to compare against.

## Immediate implication for `shim/inform_protocol.py`

Treat the CBC path as **known-broken against real software**, specifically
around padding — the module's own self-test only proves internal
round-trip consistency, not wire compatibility, exactly as its docstring
already warns. Don't trust `encode_inform`/`decode_inform` for a real
adoption attempt without revisiting the padding scheme.

## Update: passive capture done — real header bytes recovered

With the user's go-ahead, captured ~45s of real traffic on `kodiak`'s
`eno1.128` (the VLAN 128 parent interface — visible from a `--net=host`
container with `NET_RAW`/`NET_ADMIN`, no host root needed since the
Docker daemon itself grants the capability) filtered to
`host 172.16.128.1 and (tcp port 8080 or tcp port 8443)`. Caught 170
packets / 10 full `/inform` POST bodies across all three real devices
(`d8:b3:70:df:af:8c`, `d0:21:f9:4f:2f:08`, `e4:38:83:12:75:9a` — all
genuine Ubiquiti OUIs). Parsed the plaintext 40-byte header (magic through
`payload_len`) out of every one by hand against `inform_protocol.py`'s
layout — no decryption needed for this part, since only the AES payload
is encrypted, not the header. All 10 agree exactly:

```
magic=TNBU  pkt_version=0  flags=0x000d  payload_version=1
header(40) + payload_len == exact HTTP Content-Length, every time
```

This **settles open questions #2 and #3 from `01-phase1-protocol-recon.md`**
for whatever firmware generation these three devices run, and corrects
three assumptions baked into the shim's codec:

1. **`flags=0x000d` = `ENCRYPTED(0x01) | SNAPPY(0x04) | GCM(0x08)`.** Real
   hardware uses **AES-GCM + Snappy**, not the CBC+zlib combination
   `inform_protocol.py` builds by default. (zlib/CBC are apparently still
   *valid* flag combinations the wire format supports — this just settles
   which one real firmware in this network actually picked.)
2. **`pkt_version=0`**, not `1` — `encode_inform`'s default is wrong.
3. **The 16-byte IV field holds a full 16-byte GCM nonce**, not a
   12-byte nonce zero-padded to 16 the way `encode_inform(use_gcm=True)`
   builds it (`nonce.ljust(16, b"\x00")`) — real nonces have no trailing
   zero run, they're full-width random. This alone explains why our GCM
   packets got rejected earlier in this doc ("Content too short" /
   never reaching the decrypt-attempt log line): the byte layout itself
   was structurally wrong, not just the crypto.

Payload itself is still opaque — decrypting needs the per-device key
(rotated away from the default at adoption; we don't have it and didn't
attempt to get it). But the header alone was the actual gap; the shim's
codec can now be corrected to match reality without needing that key.

**Done**: `inform_protocol.py` now builds `pkt_version=0`, a full 16-byte
GCM nonce, and Snappy compression by default (GCM is now the default
mode; CBC/zlib still available via `use_gcm=False`).

## Re-tested the fixed codec against the real controller — still doesn't decrypt

Sent a freshly-encoded GCM+Snappy packet (default key, correct header
framing) to the same controller. Progress: it now reaches the actual
decrypt attempt instead of failing structurally (`server.log` again shows
`inform decryption failed with defaultAuthKey=true ... GeneralSecurityException`
— the same failure text CBC gets, not the earlier "Content too short").
So the header/framing fix is confirmed correct. The AES-GCM decryption
itself still fails.

**Ruled out: the key.** Grepped the real app's fat jar
(`/usr/lib/unifi/lib/internal/internal-dependencies.jar` inside the
`unifi-network` container, ~29MB, contains the actual `com.ubnt.net.*`
classes) for our `DEFAULT_ADOPTION_KEY` constant — `ba86f2bbe107c7c57eb5f2690775c712`
appears verbatim, near strings like `authkeys` and `unknownDevice`. Our
key is exactly right.

**Likely cause: GCM associated data (AAD).** The same jar references
`Cipher.updateAAD` (`grep -c updateAAD` → 2 hits) and the literal cipher
transformation strings `AES/GCM/NoPadding` and `AES/CBC/NoPadding` (the
CBC one being `NoPadding`, not PKCS — consistent with `00-plan.md`'s
"unpadded" note; our `_pkcs7_pad`/`_pkcs7_unpad` in `inform_protocol.py`
are almost certainly also wrong for the same reason, independent of the
GCM issue). `encode_inform` currently calls
`cipher.encrypt_and_digest(body)` with no AAD at all. If the real server
binds the 40-byte header (or some subset of it) as AAD via `updateAAD`
before verifying the tag, our all-zero-AAD packet's tag will never
verify against a real key, no matter how correct everything else is —
which matches exactly what's observed. Didn't pin down which header
bytes are used as AAD (would need to decompile the actual method body,
not just confirm the API is called — didn't go that far this session).

(Method: `javap -v -p` disassembly of the extracted `.class` files and
`grep`-ing the jar's raw bytes for cipher-transformation/API-name string
literals — read-only, local-only inspection of already-installed
software for interoperability, nothing extracted or redistributed;
cleaned up the extracted `.class` files from the container's `/tmp`
afterward.)

## AAD fix found and confirmed against the real controller

Rather than guess, decompiled the real jar with CFR (`java -jar cfr.jar`,
run inside the already-java-equipped `unifi-network-application` image
itself — no need to install a JDK anywhere). Found:

- `com.a.a.KHUkYjHujLgFBD` — a shared generic AES helper (CBC/PKCS5,
  CBC/NoPadding, GCM/NoPadding variants) reused across the app, including
  by an unrelated feature (encrypted remote syslog,
  `com.ubnt.service.aJ.VVyiC`) that also calls `Cipher.updateAAD(...)`
  bound to that feature's own header bytes — first hint the same pattern
  applies to inform.
- `com.ubnt.net.InformServlet`'s actual decrypt call:
  `KHUkYjHujLgFBD.chgwykfBxZCAuEHPPQ(byArray, 40, payloadLen, jRsSex2.TgovGTpPRqBiOa(), key, nonce)`
  — 4th arg is AAD.
- `InformServlet$jRsSex.TgovGTpPRqBiOa()` — builds a header-only byte
  string (magic + pkt_version + mac + flags + iv + payload_version +
  payload_len, with the trailing `data` field forced empty) and returns
  that as the AAD. **This is exactly the same 40-byte plaintext header
  already being sent** — confirms the hypothesis exactly, not just by
  analogy.
- The CBC path, by contrast, calls a 5-arg overload with no AAD parameter
  at all — CBC never used AAD in the first place, consistent with GCM
  being AEAD and CBC not.

Fixed `inform_protocol.py`'s GCM branch to call `cipher.update(header)`
before `encrypt_and_digest`/`decrypt_and_verify` (both encode and decode
sides), computing `payload_len` up front since GCM ciphertext length
equals plaintext length (no padding) so the header — and thus the AAD —
is fully known before the cipher ever runs.

**Verified empirically, not just in theory.** Sent three packets to the
real controller: the correctly-AAD'd packet, one with the GCM tag's last
byte flipped, and one with a byte inside the AAD/nonce region flipped:

| Packet | HTTP status | Connection |
|---|---|---|
| Correct (real AAD fix) | **404** | keep-alive |
| Corrupted tag | 400 | close |
| Corrupted AAD/nonce byte | 400 | close |

Both corruption cases reproduce the old decrypt-failure signature
(`400`/`close`); the correct packet gets a *different* status/header
combination that matches the same signature CBC packets got in the
original probe — and `server.log` shows **zero** WARN/ERROR lines for
this request (previously every failed attempt logged
`inform decryption failed`/`unable to decrypt inform`). Decompiling
`InformServlet`'s outer `service()` method explains why: a `404` is
thrown by a completely different, later code path
(`rYtJfMBbtgWvku` → "Inform for Unknown Device", logged at `debug` which
this instance doesn't have enabled) that only runs *after* decryption
and JSON-parsing already succeeded. **This means AES-GCM decryption of
our packet, using the real default key, now genuinely succeeds against
the live controller.**

Checked whether that translated into a persisted device record
(`unifi-db` Mongo, `device` collection, queried for our fake MAC) — no
record was created. So decrypting the header/crypto layer is solved, but
whatever happens next (device-manager lookup/pending-device creation)
still rejects our fake device — most likely `device_state.py`'s payload
shape, or the fact our L2 discovery TLV (already flagged as unconfirmed
for switches) isn't registering a pending-device record the inform
lookup could then find.

## Chasing the "Unknown Device" 404 to its exact root cause

Traced the device-manager pipeline that runs immediately after a
successful decrypt (`com.ubnt.service.devmgr.l.MiVjHefaf`, reached via
the `bLwwMKkr` interface `InformServlet` calls). It's a chain of small
checker objects, each either passing the request through or returning a
terminal `kuhBRF` result. Decompiled them one at a time (CFR again, same
in-place workflow) until finding the one that actually fires for us —
useful because most of the earlier checks in the chain log loudly
(`ERROR`/`WARN`) on rejection, and our request produced **no log line at
all**, which narrows it to whichever check logs at a level this instance
doesn't have enabled.

That check is `MiVjHefaf$MiVjHefaf` (an inner class, confusingly named
the same as its outer class):

```java
public jRsSex chgwykfBxZCAuEHPPQ(KHUkYjHujLgFBD kHUkYjHujLgFBD) {
    String string = kHUkYjHujLgFBD.guoZiIiLhURleoJ().getString("_devsiteid");
    if (string == null) {
        ...
        HCKpgcBFPLu.GJMYnTEpusqhorvJ.debug("dev[{}] doesn't belong to any site", (Object)string2);
        return jRsSex.chgwykfBxZCAuEHPPQ((kuhBRF)kuhBRF.ZpkRBEhhrxi);  // -> 404
    }
    return jRsSex.chgwykfBxZCAuEHPPQ();  // continue
}
```

`debug()`, not `error()`/`warn()` — matches the observed silence exactly.

Traced `_devsiteid` back to where it's set, in `InformServlet`'s decrypt
method:
```java
if (uuvchZbWVhirD2 != null) {
    ekfCWfaSnrqscUb2.put(JsoYKOlhlhvuXB /* = "_devsiteid" */, (Object)uuvchZbWVhirD2.getString("site_id", null));
    ...
}
```
— gated on `uuvchZbWVhirD2 != null`, i.e. **an existing device database
record**. Earlier in the same method, for an unrecognized MAC,
`uuvchZbWVhirD2` is explicitly `null` (that's the whole reason the
default-key fallback path exists: `else { list = [defaultKey]; }`). So
for any device with no prior DB record, `_devsiteid` is never set, and
the site-check above rejects it — every time, deterministically,
regardless of how correct the rest of the payload is.

**Conclusion: no amount of getting the inform payload "right" can
register a brand-new device by itself.** A device record — with a site
already attached — has to exist *before* its first inform can get past
this check. Nothing in `InformServlet`'s own code path creates one from
an inform alone. The strong remaining candidate is the **L2 discovery
UDP listener** (port 10001) creating a pending-device record on receipt
of a valid discovery announcement — which lines up with `00-plan.md`'s
original description of the flow (discovery → pending → adopt) and with
`inform_protocol.py`'s own `DiscoveryTLVBuilder` docstring already
flagging its TLV encoding as unconfirmed for switches. Not yet verified
which TLV fields (or whether ours even parses) actually create that
record — the discovery listener class itself wasn't decompiled this
round; this is the clear next thing to chase.

## Chasing the discovery listener — validated the TLV format, but the listener itself looks unused

Went looking for what actually creates that missing device+site record. Found
the real listener framework by grepping the jar for classes touching
`DatagramSocket` (same technique as the AAD hunt): `com.a.a.a.jRsSex` is an
abstract base class that binds UDP **port 10001** (confirmed as a literal
`int` in the bytecode) plus a multicast fallback to **`233.89.188.1`** — new
information, not previously documented anywhere in this repo.

Better still: found `com.ubnt.net.yaQAAsFQlixKuZ`, a **debug/test tool
bundled in the real app itself** that builds and broadcasts a discovery
packet using the app's own TLV encoder (`com.a.a.a.TToyPkrNNHXKNEnk`) — a
first-party reference implementation, not a third-party guess. It confirmed
`DiscoveryTLVBuilder`'s existing TLV type assignments exactly (1=mac,
2=mac+ip, 3=hostname.version string, 10=uptime, 21=model, 22=firmware) and
revealed one it doesn't set (**type 23**, a single boolean byte).

Decompiled the one concrete subclass of that abstract listener,
`com.a.a.a.VVyiC` — internally named **`LiteStationQueryServer`** — which
fully parses TLV types 1 through 49. Cross-checked its enforced
requirements against what `DiscoveryTLVBuilder` already sends:

| Requirement (from the real parser) | Our builder |
|---|---|
| TLV type 1 present (mac, 6 bytes) | ✓ sends it |
| TLV type 2 present, exactly 10 bytes (mac+ip) | ✓ sends it |
| TLV type 18 present, value ≥ 1 (sequence) | ✓ sends it |
| TLV type 19 present, 6 bytes (mac again) | ✓ sends it |
| `command` byte == 6, `version` byte == 2 | ✓ matches defaults |
| model string not in a small legacy blacklist (`M2M`,`P8U`,...) | ✓ `US8P150` isn't in it |
| type 23 present | not sent, but the parser defaults it to `true` when absent — not a hard requirement |

Every enforced check passes. Sent the packet anyway (already validated
framing) and checked Mongo directly for a new device record — **none
created**. Checked `server.log` for this class's own log lines
(`"invalid v2 packet"`, `"Unknown version"` — both logged at `info`, which
this instance does have enabled) across the *entire* log history, not just
this test's timestamp — **zero hits, ever**, despite three real devices
having been informing on this network continuously for days.

That absence is the real finding here: a listener that's actually in the
live discovery path for real hardware should have logged *something* by
now, even just from normal traffic. Its own blacklist (`M2M`, `P8U`, `P6E`,
`P3U`, `P3E`, `P1U`, `P1E`, `IWO2U`, `IWD1U`) is a list of ancient
airMAX/PicoStation-era model codes — this strongly reads as a **legacy
listener for old "LiteStation"-branded gear**, not the active discovery
path for modern USW/UAP hardware. Didn't find the real modern listener
(if a separate one exists) or confirm whether modern devices actually rely
on L2 discovery at all versus getting their `inform_url` pushed some other
way (DHCP option, manual `set-inform`, factory default) that never touches
this code path.

**Net result this round**: the TLV format itself is now solidly validated
against the app's own reference encoder (worth keeping in
`inform_protocol.py` regardless), but discovery is not demonstrated to be
the thing that creates a device's initial site-attached record. That
question is still open.

## Update: full real adoption achieved — no SSH involved at all

Kept a persistent version of the shim (`persistent_shim.py`, re-sending
discovery + inform every ~10s like a real device, plus an SSH server
purely to *capture* whatever adoption command the controller might send —
see below) running continuously instead of one-shot probes, so the
"pending" sighting wouldn't expire before there was time to click **Adopt**
in the real UI. It didn't expire — clicking Adopt worked immediately.

**Contrary to `00-plan.md`'s documented assumption, no SSH connection ever
happened.** `inform` status flipped straight from `404` to `200` the
moment Adopt was clicked, and the *response body* of that first `200`
(previously never inspected — earlier probes only checked status codes)
turned out to contain the entire adoption payload:

```json
{"_type": "setparam", "mgmt_cfg": "capability=notif,fastapply-bg,notif-assoc-stat\nselfrun_guest_mode=pass\ncfgversion=<redacted>\nled_enabled=true\nstun_url=stun://<controller>:3478/\nmgmt_url=https://<controller>:8443/manage/site/default\nauthkey=<new 32-char hex per-device key>\nuse_aes_gcm=true\nreport_crash=true\n"}
```

`mgmt_cfg` is a newline-delimited `key=value` block. The critical field is
`authkey` — a brand-new per-device key, delivered **inside an inform
response encrypted with the old default key**, exactly the same pattern
already seen in `com.a.a.a.VVyiC`'s syslog-challenge handling. Once the
shim switched to using this key for subsequent informs (and started
echoing back the `cfgversion` it received), the real controller's state
machine progressed through its normal sequence: `setparam` (auth key) →
`upgrade` (firmware push offer, not acted on) → `setparam` (full config
push) → `noop` (steady state, `interval: 10`) — and the device reached
`adopted: true, adoption_completed: true` in Mongo, `adopted_by_client:
"web"`.

One operational lesson learned the hard way: the assigned key/cfgversion
only lived in the shim process's memory at first. A `docker stop`/`start`
cycle lost it, the shim reverted to informing with the factory default
key, the controller (which now only trusts an *adopted* device's real
key) rejected it, and the device dropped out of the live UI. Real devices
persist their assigned key to flash for exactly this reason;
`persistent_shim.py` now does the same (a small JSON state file,
bind-mounted from the host so it survives container recreation, not just
restarts).

### The full config-push format (`system_cfg`)

The second `setparam` (after the auth-key one) carries a **complete
Linux-style `system.cfg`** — the same flat `key=value` config format real
UniFi devices persist locally — covering everything the project's open
questions were chasing. Structure confirmed (actual site-specific values
below are redacted; they're live credentials on a real running
controller, not just protocol format):

```
# unifi
unifi.siteid=<redacted>
unifi.key=<redacted>              # site multicast/discovery key
# users
users.1.name=<redacted>
users.1.password=<redacted>       # crypt hash - the mechanism controller uses for local device SSH access
# switch
switch.managementvlan=1
switch.jumboframes=disabled
switch.mtu=9216
switch.vlan.<N>.id=<vlan id>
switch.vlan.<N>.mode=tagged|untagged
switch.vlan.<N>.status=enabled|disabled
switch.routing_enabled=false
switch.port.<N>.name=<name>
switch.port.<N>.opmode=switch
switch.port.<N>.poe=auto          # per-port PoE mode
# syslog
syslog.remote.ip=<redacted>
syslog.remote.port=514
# sshd
sshd.status=enabled
sshd.auth.key.1.value=<redacted>  # controller's own SSH public key, pushed for future management access
```

This resolves, directly from real controller output rather than
inference, several items `00-plan.md` listed as "the real gap":
**VLAN tagging format** (`switch.vlan.N.id`/`mode`/`status`), **port
config** (`switch.port.N.*`), and **per-port PoE control**
(`switch.port.N.poe`). It also reveals something not previously
suspected: the controller pushes **its own SSH public key** into the
device's `sshd.auth.key.1.*` config — SSH access is set up *after*
adoption for future management, not used *during* adoption itself.

### Final Mongo device record (new fields worth noting)

`sysid: 60176` (numeric device-type ID, resolved from the `model` string
via the `dhdeXcHqLRBKMUZk` enum found earlier), `syslog_key` (a per-device
key for the encrypted remote-syslog feature, assigned automatically at
adoption — ties back to `com.ubnt.service.aJ.VVyiC`'s AES-GCM
syslog-decrypt code found while chasing the AAD fix), `ethernet_table`,
`adoption_completed`, `adopted_by_client: "web"`, `config_network:
{type: "dhcp", ip: ...}`.

## Bottom line: does the shim work?

**Yes — full adoption achieved against the real controller.**
`adopted: true`, `adoption_completed: true` in Mongo, reached via the
real UI's Adopt button, no fabricated success criteria. Retracing how
each earlier blocker actually resolved:

1. ~~GCM tag verification~~ — **fixed and confirmed**: real hardware is
   GCM-only; the missing AAD (the 40-byte header itself, bound via
   `Cipher.updateAAD`) was the fix. CBC's separate padding issue was never
   revisited — moot, since nothing observed on this network uses it.
2. ~~"Unknown Device" 404s~~ — turned out to be a **red herring, not a
   blocker**. The `_devsiteid`/site-check root cause diagnosis was
   correct, and the L2 discovery listener chased afterward really was a
   dead end (confirmed legacy, unused) — but discovery apparently *did*
   register something (the CEF event log entry from the very first
   discovery packet sent this session, well before AAD was even fixed).
   Whatever tracks "ready for adoption" pending state lives outside the
   `device` Mongo collection and outside every code path traced this
   session. It resolved itself once the UI's Adopt button was clicked —
   never fully explained, but no longer blocking.
3. **JSON payload shape** — validated well enough in practice:
   `device_state.py`'s REST-API-derived `port_table`/`total_max_power`
   fields, sent as-is, were accepted through a complete adoption with no
   rejections or schema complaints from the controller.
4. **"No SSH-adoption handling"** — turned out to be a **wrong
   assumption in `00-plan.md`**, not a missing feature. For a device
   already informing successfully on the controller's own L2 segment,
   adoption happens entirely over the inform HTTP channel (a `setparam`
   response carrying a new per-device key) — no SSH connection occurs.
   SSH only enters the picture *after* adoption, and in the opposite
   direction: the controller pushes *its own* public key into the
   device's `sshd.auth.key.1.*` config for future management access.
5. **"No persistent network loop"** — built one for this session
   (`persistent_shim.py`): repeating discovery + inform, a persisted
   assigned-key/cfgversion state file (real devices keep this on flash;
   losing it on container restart caused a real, observed regression
   mid-session), and an SSH server that turned out to capture nothing
   because nothing ever connected to it.

Not yet done: applying a real `port_overrides` config push (VLAN/PoE
change from the controller) to confirm the reverse direction of the
protocol, and wiring any of this into the actual Omada backend — this
session was entirely about proving the wire protocol and adoption
handshake against a real controller, not the SG2210MP/Omada side of the
bridge.
