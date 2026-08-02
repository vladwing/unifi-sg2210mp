# Shim scaffold (Phase 4, early)

Two modules, both self-tested and passing without any real hardware or
controller needed:

- `inform_protocol.py` — encode/decode for the inform packet format
  (`TNBU` header, AES-CBC or AES-GCM, zlib), plus the L2 discovery TLV
  builder. Ported and modernized from the (rough, never-fully-working)
  `stephanlascar/unifi-gateway` reference, cross-checked against the
  documented protocol. Run it directly (`python3 inform_protocol.py`) for
  a round-trip self-test.
- `device_state.py` — the fake US-8-150W's data model: a 10-port
  `port_table` (8× PoE RJ45 + 2× SFP) shaped to match the real
  controller-facing schema in `../docs/01-phase1-protocol-recon.md`, plus
  the PoE class→wattage table recovered from disassembling the real
  TL-SG2210MP firmware (`../docs/04-xs2184-poe-driver-analysis.md`).

## What's deliberately not here yet

- **SSH-adoption handling.** The controller adopts a device by SSHing in
  and running `syswrapper.sh set-adopt ...`. Nothing in any prior art
  found this session (including the reference implementation) actually
  implements this side — it needs either a real capture (Phase 2) to see
  the exact command/expected response, or trial-and-error against a real
  controller.
- **Omada backend integration.** Translating between this device model
  and the real SG2210MP (via Omada's API) is deferred until there's a
  live Omada controller to validate field mappings against.
- **The actual network loop** (HTTP server for `/inform`, UDP broadcast
  sender, config-push handling tying `port_overrides` back to Omada
  calls) — straightforward to wire up once the above two pieces exist,
  not worth building blind.

All three are better done with the real device and a disposable test
controller in front of us, per the plan's own Phase 2/5. This scaffold
just makes sure the parts that *can* be validated without hardware
(the wire format, the data shapes) actually work.
