# Project: Impersonate a TP-Link Omada Switch as a UniFi Device

## Goal

Make a TP-Link JetStream **TL-SG2210MP** switch adoptable and manageable
from a genuine **UniFi Network Controller** — full config (VLANs, port
settings, PoE control) and telemetry — by having the switch (or a proxy
in front of it) speak UniFi's proprietary device protocol well enough
to be adopted and controlled as if it were real Ubiquiti hardware.

This is a reverse-engineering + compatibility-shim project, not a
UI wrapper. Rejected alternative: building a bridge/dashboard on top
of Omada's own API (already have full control via Omada's native UI;
not the goal).

## Target hardware

**Source device:** TP-Link TL-SG2210MP
- 8× Gigabit RJ45, all PoE+ (802.3af/at), 150W total PoE budget
- 2× Gigabit SFP (1G, not SFP+)
- 20 Gbps switching capacity, 14.9 Mpps forwarding
- L2+ (VLAN, ACL, static routing, no full L3)
- Managed via Omada SDN (controller or standalone web/CLI/SNMP)

**Impersonation target: Ubiquiti US-8-150W (UniFi Switch 8 PoE, SFP, Gen1)**

Chosen because it's a near-exact spec match — minimizes the amount of
capability-table / UI fudging needed on the Unifi Controller side:

| Spec | SG2210MP | US-8-150W |
|---|---|---|
| RJ45 ports | 8× GbE, all PoE+ | 8× GbE, all PoE+ |
| SFP | 2× GbE (1G) | 2× GbE (1G) |
| PoE budget | 150W | 130–150W |
| Switching capacity | 20 Gbps | 20 Gbps |
| Layer | L2+ | L2 |
| Form factor | Fanless desktop/rack | Fanless desktop/wall |

Bonus: Gen1 UniFi devices predate the UniFi OS container layer used in
current Pro/Enterprise hardware, so the protocol surface is simpler,
and as a discontinued model it's more likely to have GPL compliance
source available.

**Silicon note:** the spec match above is *convergent design, not shared
hardware*. SG2210MP is Realtek-based (RTL8380M family — confirmed via
OpenWrt's device-tree support for the sibling SG2210P board, which
shares its board layout with SG2008P/SG2008). US-8-150W is
Broadcom-based (BCM53343 — confirmed via OpenWrt community porting
threads). No driver/firmware code will be reusable between the two;
the impersonation has to happen entirely at the management-plane/
protocol level, which is already the plan below.

## What's already known (reverse-engineered, documented)

The UniFi **inform protocol** (AP-focused, but transport-level details
apply to switches too) is documented in:
- `fxkr/unifi-protocol-reverse-engineering` (GitHub)
- `jeffreykog/unifi-inform-protocol` (GitHub, also mirrored by `unifispot`)

Covers:
- **L2 discovery**: UDP broadcast on port 10001, TLV-encoded announcement
  packet, sent by unadopted devices.
- **Adoption handshake**: ~~controller SSHes into the device (default
  `ubnt:ubnt`) and runs
  `/usr/bin/syswrapper.sh set-adopt http://<controller>:8080/inform <16-byte hex key>`~~
  — **corrected by real-controller testing, see `05-shim-vs-real-controller-probe.md`**:
  for a device already informing successfully on the controller's own L2
  segment, adoption happens entirely over the inform HTTP channel (the
  controller replies to an inform with a `setparam` command carrying a new
  per-device key). No SSH connection occurs during adoption. SSH is used
  *afterward*, and in the opposite direction — the controller pushes its
  own public key into the device's local `sshd.auth.key.1.*` config for
  future management access. The SSH-push-based flow described above may
  still be real for cross-subnet (L3) adoption where inform_url isn't
  already configured, but that's now the untested case, not the default
  one.
- **Inform loop**: device POSTs encrypted status to `http://<controller>:8080/inform`
  every ~10s; controller replies no-op or command. AES-128-CBC (unpadded),
  or AES-GCM on newer firmware. Freshly-adopted devices use a known
  default key (`ba86f2bbe107c7c57eb5f2690775c712`); post-adoption the
  controller assigns a per-device key.
- Header is plaintext (magic `TNBU`), payload is encrypted JSON.

## What's NOT known / the real gap

Nobody has published the **switch-specific** field schema:
- Per-port stats fields (link state, speed, PoE draw, error counters)
- VLAN config message format (tagged/untagged assignment per port)
- Port-level PoE control commands
- What subset of `model`, `board_rev`, capability flags the controller
  needs to render the correct port diagram / PoE budget UI for
  US-8-150W specifically

This is the core reverse-engineering task.

## Sources of ground truth to chase (in priority order)

1. **Ubiquiti GPL compliance source** for US-8-150W firmware — legal
   requirement for GPL-licensed components, sometimes includes the
   on-device agent code that constructs/parses inform payloads.
   Check `www.ui.com` GPL/open-source download pages, and look for
   community mirrors if the official page is gone (discontinued model).
2. **Live packet capture** — if a real US-8-150W (or any Gen1 UniFi
   switch) is accessible even briefly: adopt it against a disposable
   test controller, capture the inform traffic, decrypt with the known
   default key, diff against the AP-focused docs to find switch-only
   fields.
3. **Controller frontend static bundle** — the current (or a matching
   legacy) UniFi Network Controller's JS bundle contains the client-side
   model capability table (port counts, PoE budgets per model, icon/
   diagram selection). Useful for confirming what `model` string /
   fields are needed for the UI to render correctly, independent of
   the wire protocol.
4. Existing Omada-side clients for reference on what data is available
   to pull off the SG2210MP to map into whatever schema we reconstruct:
   - `MarkGodwin/tplink-omada-api` (Python, actively maintained)
   - Unofficial Node.js Omada Web API v2 client (reverse-engineered
     from DevTools)
   - TP-Link's official Omada Open API (OAuth2, documented) — see
     `bullitt186/ha-omada-open-api` for a working reference client

## Proposed phases

0. **(Optional) Get OpenWrt running on the SG2210MP** — gives the shim
   a real Linux host directly on the switch instead of needing an
   external proxy box. Not started from scratch:
   - OpenWrt mainline already supports the **TL-SG2210P** (sibling
     board, RTL8380-based), merged Aug 2022 by Alexandru Gagniuc.
     Device tree lives in `target/linux/realtek/dts-5.10/`, built on
     a shared `rtl8380_tplink_sg2xxx.dtsi` that the maintainers
     explicitly designed to extend across the SG2xxx family
     (SG2008, SG2008P, SG2210P all draw from it).
   - **No SG2210MP port exists yet.** The MP variant differs from the
     P variant in more than firmware: 150W PoE budget vs 53W, internal
     PSU vs external, added cooling fan — implying a different/beefier
     PoE controller configuration even on the same RTL8380M switching
     silicon. This is real device-tree + PoE driver work, not a
     rename of the existing SG2210P port.
   - Starting point: fork the SG2210P DTS, get serial/UART console
     access (check board for exposed/unpopulated header — common on
     these RTL8380 boards per other OpenWrt ports), identify the
     actual PoE IC(s) and their wiring (TI TPS23861 was found on the
     sibling SG2210P via teardown — MP likely uses the same family,
     possibly dual-IC for the higher budget, needs physical
     confirmation), and get a bootable initramfs image before
     attempting persistent flash.
   - Fallback if this proves too time-consuming: skip straight to
     Phase 4 with the shim running as an external proxy — the protocol
     work doesn't strictly depend on this phase, it's a nice-to-have
     for a cleaner architecture.
1. **Recon** — find GPL source / any existing prior art for switch
   (not AP) inform payloads. Confirm whether Gen1 switch firmware is
   meaningfully different from Gen1 AP firmware at the protocol level.
2. **Capture & decrypt** — get a real inform session (own hardware,
   borrowed hardware, or a documented capture from someone else) and
   decrypt it with the known default adoption key.
3. **Schema reconstruction** — map every field the controller expects
   for a US-8-150W: discovery announcement, adoption response, ongoing
   inform stats, and command messages (config push).
4. **Shim implementation** — build an agent (Python/Go, runs as a
   proxy or directly on-device if Phase 0 succeeded) that:
   - Speaks L2 discovery + SSH adoption handshake
   - Translates inform stats requests → Omada API calls, reshapes
     responses into the reconstructed UniFi schema
   - Translates UniFi config commands (VLAN, port, PoE) → Omada API
     calls
5. **Validation** — confirm the real UniFi Network app can adopt,
   configure VLANs/ports/PoE, and show telemetry for the shimmed device
   without errors or visual glitches.

## Open questions to resolve early in Claude Code

- Does Ubiquiti still publish GPL source for discontinued Gen1 devices,
  and does it include the switch agent (not just kernel/bootloader)?
- Is AES-GCM or AES-128-CBC used by US-8-150W's firmware generation
  specifically (this varies by firmware era)?
- Can the shim run *on* the SG2210MP (does its OS/architecture allow
  arbitrary code), or does it need to run as an external proxy that
  intercepts/relays between the switch and controller?
- What exact controller version to target/test against (protocol has
  drifted over the years — pick one and pin it for reproducibility).
- Is there a populated/unpopulated UART header on the SG2210MP board
  (check physically), and does TP-Link's bootloader on this board drop
  to a locked-down shell (as seen on the related SG2210P per its
  OpenWrt port notes) or allow normal interrupt/tftpboot?
