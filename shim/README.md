# Shim scaffold (Phase 4, early)

Two modules, both self-tested and passing without any real hardware or
controller needed:

- `inform_protocol.py` — encode/decode for the inform packet format
  (`TNBU` header, AES-CBC/zlib or AES-GCM/Snappy), plus the L2 discovery
  TLV builder. Ported and modernized from the (rough, never-fully-working)
  `stephanlascar/unifi-gateway` reference, cross-checked against the
  documented protocol, and since corrected to match a real capture (GCM +
  Snappy is now the default, matching the only combination ever observed
  from real hardware — see `../docs/05-shim-vs-real-controller-probe.md`).
  Run it directly (`python3 inform_protocol.py`) for a round-trip
  self-test. Needs `pip install -r requirements.txt` (pycryptodome +
  python-snappy — the latter is a real runtime dependency now, not just
  an unused decode-side branch).
- `device_state.py` — the fake US-8-150W's data model: a 10-port
  `port_table` (8× PoE RJ45 + 2× SFP) shaped to match the real
  controller-facing schema in `../docs/01-phase1-protocol-recon.md`, plus
  the PoE class→wattage table recovered from disassembling the real
  TL-SG2210MP firmware (`../docs/04-xs2184-poe-driver-analysis.md`).
- `probe_controller.py` — throwaway one-shot recon driver. Points the two
  modules above at a real UniFi Network Application (run it as a
  container on the same Docker network as the controller) and dumps the
  HTTP surface, an L2 discovery broadcast, and inform POSTs.
- `persistent_shim.py` — the recon driver that got a real device fully
  **adopted** (`adopted: true`, `adoption_completed: true`) against a
  live controller. Re-sends discovery + inform every ~10s like a real
  device (a one-shot probe lets the "pending adoption" sighting expire
  before you can click Adopt in the UI), applies whatever new
  authkey/cfgversion the controller pushes back, and persists that
  assigned state to a small JSON file (`state.json`, bind-mount it from
  outside the container) so a restart doesn't make the device look like
  it forgot its key and reverted to the factory default. Also runs an
  SSH server, kept from the original (wrong) assumption that adoption
  needed SSH capture — turned out unnecessary, see below, but harmless
  to leave running.

Full findings from running these against a live controller, including the
real `setparam`/`mgmt_cfg`/`system_cfg` config-push formats:
`../docs/05-shim-vs-real-controller-probe.md`.

## What turned out not to be needed

- **SSH-adoption handling.** `00-plan.md` assumed the controller adopts a
  device by SSHing in and running `syswrapper.sh set-adopt ...`. Real
  testing showed this is wrong for a device already informing
  successfully on the controller's own L2 segment: adoption happens
  entirely over the inform HTTP channel (a `setparam` response carrying a
  new per-device key). No SSH connection occurs. SSH shows up
  *afterward*, in the opposite direction — the controller pushes its own
  public key into the device's config for future management access. This
  might still be real for L3/cross-subnet adoption, but that's untested.

## What's still not here

- **Omada backend integration.** Translating between this device model
  and the real SG2210MP (via Omada's API) is deferred until there's a
  live Omada controller to validate field mappings against.
- **Applying a real config push back to Omada.** The real `system_cfg`
  format (VLAN, port, PoE settings) is now known from a live capture —
  see `../docs/05`. Wiring `port_overrides`-style pushes through to
  Omada calls is the remaining piece, deferred until there's a live Omada
  controller to test against.
- **A real, standing `/inform` HTTP server.** `persistent_shim.py` is
  still a recon script (it POSTs *to* the controller on a timer) rather
  than a proper server the controller connects *to* the way it would a
  real device sitting at a fixed `inform_url`. Straightforward to build
  from the same pieces once there's a reason to (i.e. real hardware or a
  real Omada backend to translate against).
