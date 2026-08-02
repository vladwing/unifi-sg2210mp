# Phase 1 Recon Findings — UniFi Switch Schema Reconstruction

Status as of 2026-08-02. Companion doc to `00-plan.md`.

## Headline result

The **switch-specific field schema gap** called out in the plan as "the real
gap" is largely closed — not via packet capture, but via the UniFi
**Controller REST API**, which stores and serves back the *exact same JSON
document* that a switch's inform payload populates (the controller just
persists the decrypted inform body into Mongo and re-serves it). Several
actively-maintained open-source API clients document this schema in full,
typed form. This doesn't replace Phase 2 (real capture), but it means Phase 2
becomes "verify + find fields the API omits" rather than "start from zero."

## Verified `port_table` (per-port) schema

Source: `unifi-poller/unifi` Go client, `types.go:1182` (`type Port struct`),
pulled and read directly from raw GitHub source (not summarized) to confirm
field names against the real `.go` file.

Groups of fields, switch-relevant:

- **Link/negotiation**: `port_idx`, `media`, `speed`, `speed_caps`, `full_duplex`, `autoneg`, `enable`, `up`, `is_uplink`, `op_mode`, `jumbo`, `flowctrl_rx`, `flowctrl_tx`
- **PoE**: `port_poe` (bool: does this port support PoE), `poe_enable`, `poe_mode`, `poe_class`, `poe_power`, `poe_voltage`, `poe_current`, `poe_caps`, `poe_good`
- **VLAN/network binding**: `network_name`, `netmask`, `portconf_id` (references a port profile), `ip`
- **Counters**: `rx_bytes`, `tx_bytes`, `rx_packets`, `tx_packets`, `rx_errors`, `tx_errors`, `rx_dropped`, `tx_dropped`, `rx_broadcast`/`tx_broadcast`, `rx_multicast`/`tx_multicast`, `bytes-r`, `rx_bytes-r`, `tx_bytes-r` (rate fields), `rx_rate`, `tx_rate`
- **SFP diagnostics** (relevant since both source and target have 2× SFP): `sfp_found`, `sfp_part`, `sfp_vendor`, `sfp_serial`, `sfp_rev`, `sfp_compliance`, `sfp_temperature`, `sfp_voltage`, `sfp_current`, `sfp_txpower`, `sfp_rxpower`, `sfp_txfault`, `sfp_rxfault`
- **STP**: `stp_state`, `stp_pathcost`
- **802.1X**: `dot1x_mode`, `dot1x_status`
- **Misc**: `name`, `mac`, `mac_table` (learned MACs, array of `{mac, ip, hostname, age, authorized, lastReachable}`), `satisfaction`, `satisfaction_reason`, `masked`, `aggregated_by`, `port_delta` (`{time_delta, time_delta_activity}`)

## Verified top-level `USW` device schema

Source: same repo, `usw.go`. Fields most relevant to adoption/capability
rendering (the plan's "what subset of `model`, `board_rev`, capability flags"
question):

- `model`, `board_rev`, `architecture`, `mac`, `serial`, `version`, `cfgversion`
- `switch_caps` → `{feature_caps, max_mirror_sessions, max_aggregate_sessions}`
- `port_table` (array of `Port`, above), `port_overrides` (see below)
- `total_max_power` (PoE budget — this is the field that has to say 130–150W
  to match US-8-150W), `power_source`, `power_source_voltage`
- `has_fan`, `fan_level`, `general_temperature`, `has_temperature`
- `hw_caps`, `fw_caps`, `sys_error_caps`, `manufacturer_id`
- `is_access_point` (false for switches — confirms this struct is shared
  infrastructure across device types, gated by this flag / `type`)
- `uplink` (struct — how the switch reports its upstream connection)
- Standard adoption/inform bookkeeping: `adopted`, `inform_url`, `inform_ip`,
  `connect_request_ip/port`, `state`, `last_seen`, `uptime`

**`port_overrides`** (this is the *config push* shape — what the controller
sends down, or what a client PUTs to change config):
```go
PortOverrides []struct {
    Name       string  `json:"name,omitempty"`
    PoeMode    string  `json:"poe_mode,omitempty"`
    PortIdx    int     `json:"port_idx"`
    PortconfID string  `json:"portconf_id"`
} `json:"port_overrides"`
```
Confirmed independently via `Art-of-WiFi/UniFi-API-client`'s
`update_switch_poe-mode.php` example, which PUTs:
```json
{"port_overrides": [{"port_idx": 6, "poe_mode": "off"}]}
```
to the device settings endpoint (`set_device_settings_base()`). VLAN
tagging per port is done the same way — `portconf_id` on the override
points at a **port profile**/**network** object rather than embedding VLAN
IDs directly in the port entry. Confirmed controller versions ≥7.1 require
going through port profiles rather than raw PoE fields on the override
(per Art-of-WiFi example comments) — worth pinning a controller version
early per the plan's open questions.

## `Network` (VLAN) schema

Source: `networks.go`. Confirms VLAN config lives in a separate
`Network`/port-profile object, referenced by port via `portconf_id` /
`network_name`, not embedded per-port:
```go
type Network struct {
    Vlan        FlexInt  `json:"vlan"`
    VlanEnabled FlexBool `json:"vlan_enabled"`
    Name        string   `json:"name"`
    Purpose     string   `json:"purpose"`
    IPSubnet    string   `json:"ip_subnet"`
    ...
}
```

## Model capability table for US-8-150W (open question #4 — resolved)

The plan's remaining Phase 1 source (#3, "controller frontend static
bundle") turned out to already be reverse-engineered and published:
a GitHub gist (`sgrodzicki/265273ff0ede952d6fcd1a1eedb6aa60`) has the
full 167-model UniFi device capability table the controller UI uses,
pulled straight from the frontend bundle. Fetched and saved as
`../reference/unifi_device_models.json`.

**US-8-150W appears under three different keys** with identical data —
`S28150`, `US8P150`, `USC8P150` — evidence Ubiquiti has used more than
one internal model code for this SKU across controller/firmware
versions. `US8P150` matches what independent sources (a UDI node-server
project) reported as the actual wire-protocol `model` string, so that's
the one to target for adoption; the others are likely legacy aliases the
UI table keeps for backward compat.

The `US8P150` entry, in full:
```json
{
  "name": "US 8 150W",
  "names": {"abbreviation": "US 8 PoE 150W", "fullName": "Switch 8 PoE (150 W)", "sku": "US-8-150W"},
  "type": "usw",
  "compliance": {"fcc": "Compliant", "ic": "Compliant", "displayName": "UniFi® Switch 8 150W"},
  "deviceCapabilities": ["SWITCH"],
  "features": {"poe": true},
  "ports": {"standard": 8, "sfp": [9, 10]},
  "diagram": ["-- -- -- -- -- -- -- -- -- 09", "01 02 03 04 05 06 07 08 -- 10"],
  "power": {"capacity": 150},
  "adoptability": "adoptable"
}
```

**This directly answers the plan's open question**: the `diagram` field
is the literal ASCII-art port layout the controller UI renders — ports
1–8 standard RJ45 in a row, SFP ports 9/10 positioned above/beside. This
is driven purely by the `type`/`ports`/`power.capacity`/`diagram` fields
keyed off the model string — confirms the earlier REST-API schema work
(`port_table`, `total_max_power`) plus this capability table is
sufficient to get correct UI rendering, independent of the wire
protocol itself.

Full schema across all 167 models also surveyed — other fields seen:
`bleServices`, `details`, `hasOptionalWan`, `hybrid`,
`knownUnsupportedFeatures`, `linkNegotiation`, `networkGroups`,
`outlets`/`outletsDiagram` (PDU devices), `primaryOutletGroupCount`,
`primaryPortGroupCount`, `radios` (APs), `rps` (redundant power supply),
`subtypes`, `temperatureSensors`. None of these apply to a basic
non-redundant-PSU switch like the US-8-150W beyond what's shown above.

## Encryption scheme (open question #2 in the plan)

From the unofficial inform protocol guide (`jrjparks.github.io`), the 40-byte
header's flags field is a bitmask:
- `0x01` = encrypted
- `0x02` = zlib compressed
- `0x04` = snappy compressed
- `0x08` = AES-GCM (in addition to `0x01`; CBC is the default when only
  `0x01` is set)

**Not fully resolved**: no source pinned down exactly which US-8-150W
firmware version switched from CBC to GCM. One concrete data point: a
US-8-150W unit was reported shipping with firmware **5.11.0.11599**
(community forum thread), and `unifi-poller`'s switch-stat struct has
explicit handling for a **5.10 → 5.11 JSON format change**
(`USWStat.UnmarshalJSON` tries the old flat format, falls back to the new
nested `{"sw": {...}}` format) — so 5.10/5.11 is a real protocol-relevant
boundary for switches specifically, independent of the encryption question.
Treat firmware **5.11.x** as the target era for Phase 2/3 schema work.

## GPL source status (open question #1 in the plan)

Inconclusive by automated fetch — `ui.com`'s download pages are JS-rendered
SPAs that don't return content to a plain fetch. Need a manual check by
someone with a browser, or a headless-browser fetch.

Ruled out: `unifi-hackers/unifi-gpl` on GitHub — inspected the full repo
tree (54k+ entries). It's an `ar71xx`-era GPL dump (old MIPS AP-generation
kernel/busybox/bridge-utils, circa UAP/EdgeMax) with **no US-8 or
switch-specific source**, no inform-agent code. Not useful for this project.

No other GPL mirror for UniFi *switch* firmware turned up in a GitHub repo
search (found mirrors exist for airOS and EdgeRouter, not UniFi
switch/AP inform-agent code specifically).

**Recommended next step**: manually visit
`https://www.ui.com/download/unifi-switching-routing/unifi-switch-8-150w/default/`
in a browser and check for a GPL/open-source tab — Ubiquiti typically
publishes these as a tarball link rather than a repo, which is why it's
invisible to search engines and plain HTTP fetches.

**Update — also ruled out**: found and fully inspected
`gpl-4.3.21-USW-PoE.tar.bz2` (169MB, from the same `svanheule.net`
archive that had the TP-Link source). This one really is a genuine
Ubiquiti USW GPL drop (not an unrelated AP), and it targets **RTL838x**
— interesting on its own (a real, complete **Linux 3.18.24** kernel tree
for RTL838x, `build_dir/target-mips_mips32r2_musl-1.1.19/linux-rtl838x/`,
built on an OpenWrt-style buildroot with `libubox`/procd-era packages —
this is a *different, Realtek-based* USW-PoE model than our Broadcom
BCM53343 US-8-150W target, so not directly reusable for the shim, but
worth remembering for Phase 0 as an independent, real-world RTL838x
Linux bring-up reference if the OpenWrt community DTS work ever needs a
second data point).

For Phase 1's purposes, though: 74,285 files total, and **none of them
are Ubiquiti's own application code**. Confirmed by full-listing grep for
`unifi`/`inform`/`poe`/`swctrl`/`ubnt` — the only hits are inside the
Linux kernel source itself (an unrelated `mach-ubnt-xm.c` for a
completely different `ath79` platform bundled in the same kernel tree,
and a cgroups doc file). Just kernel + busybox + basic libs + toolchain,
same shape as the TP-Link and `unifi-hackers/unifi-gpl` dumps.

**This makes three independent vendor GPL dumps in a row with the exact
same pattern** (TP-Link rtk-maple, `unifi-hackers/unifi-gpl`, and now
this one): vendors in this space publish only the strictly GPL-obligated
lower layers — kernel, busybox, toolchain, basic OSS libraries — and
never the proprietary userspace daemon that actually implements the
inform protocol / PoE control, because that code isn't itself
GPL-licensed (it's proprietary C/C++ linked against the GPL base, no
release obligation). Treat the "read it from a GPL dump" path as closed
for this project — real progress on the wire-protocol specifics now
needs either a live packet capture (Phase 2, hardware-dependent) or
continued work from the REST-API-derived schema already in hand above.

## What's still genuinely unknown (real Phase 2 targets)

1. Whether the **raw inform payload** (device → controller, pre-adoption
   discovery + ongoing inform) matches the REST API's stored-document shape
   field-for-field, or whether the API adds/strips fields on the way out.
   High confidence they're close (same backing store) but unverified.
2. The **L2 discovery announcement** TLV fields specific to switches (vs. the
   AP-focused docs in `fxkr`/`jeffreykog`) — REST API can't help here, this
   is genuinely only visible via capture of the discovery broadcast or
   GPL source.
3. Exact CBC-vs-GCM cutover firmware version for the US-8-150W line.
4. What minimal field subset actually gates the controller UI's port
   diagram/PoE budget rendering for `model: "US8P150"` (or whatever the
   exact model string is) specifically — vs. fields that are cosmetic/
   optional. Only discoverable by trial adoption against a real or modified
   controller, or by reading controller frontend JS (Phase 1, source #3,
   not yet done).

## Suggested immediate next steps

- [ ] Pull the current UniFi Network Controller frontend JS bundle and grep
      for the US-8-150W model string / capability table (plan's source #3).
- [ ] Manually check ui.com GPL download tab for US-8-150W (browser needed).
- [ ] Decide: does the user have any real UniFi hardware (even a cheap
      used Gen1 AP) to adopt against a disposable controller for a real
      capture, to validate the REST-API-derived schema against actual
      inform traffic? This unblocks Phase 2 for real.
