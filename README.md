# TL-SG2210MP → UniFi impersonation project

Making a TP-Link JetStream **TL-SG2210MP** switch adoptable and
manageable from a genuine **UniFi Network Controller** (impersonating a
Ubiquiti **US-8-150W**) — full config and telemetry, not just a
dashboard on top of Omada's own API. See `docs/00-plan.md` for the full
goal, hardware rationale, and phase breakdown.

## Status

| Phase | What | Status |
|---|---|---|
| 0 | OpenWrt bring-up (UART, PoE chip ID, bootloader) | Static recon done; needs physical access — paused until hardware's in hand |
| 1 | UniFi inform-protocol/schema recon | Done — schema, model-capability table, and GPL-source dead ends all resolved |
| 2 | Real inform-session capture & decrypt | Blocked on hardware |
| 3 | Schema reconstruction | Substantially done via REST-API-derived schema + controller capability table |
| 4 | Shim implementation | Early scaffold only (protocol codec + device-state model), deliberately stopped short of network/SSH/Omada wiring |
| 5 | Validation against real controller | Blocked on hardware |

## Directory guide

- **`docs/`** — the narrative findings, read in order:
  - `00-plan.md` — original project plan and phase breakdown
  - `01-phase1-protocol-recon.md` — UniFi inform protocol/schema recon,
    controller capability table, GPL-source dead ends
  - `02-phase0-hardware-and-openwrt.md` — SG2210MP hardware recon (PoE
    chip, UART candidate, OpenWrt port feasibility)
  - `03-firmware-decryption.md` — how the vendor firmware was decrypted
    (DES key extraction, tooling)
  - `04-xs2184-poe-driver-analysis.md` — full disassembly of the
    firmware's PoE driver, GOT-resolution method, ChipUP XS2184
    datasheet findings
- **`disasm/`** — raw disassembly excerpts referenced by `docs/04` (text,
  checked in as-is since re-deriving them takes a full analysis pass)
- **`reference/`** — external reference material pulled during recon:
  the UniFi device-capability-table JSON, and the ChipUP XS2184
  datasheet/catalog PDFs plus their extracted text
- **`firmware/`** — *no binaries checked in*. `firmware/README.md` has
  the exact commands to regenerate the decrypted firmware, extracted
  rootfs, and kernel image from public sources — everything here derives
  from a downloadable firmware image plus a documented DES key, so
  there's no reason to carry ~90MB of regeneratable binaries in git.
- **`shim/`** — early Python scaffold for the actual impersonation
  shim (inform-protocol codec + fake-device state model), both
  self-tested without needing hardware. See `shim/README.md` for what's
  deliberately not built yet and why.

## Regenerating firmware artifacts

Nothing under `firmware/` is checked in — see `firmware/README.md` for
the download URL, the DES key/IV, and the exact carve/decompress
commands to get back the decrypted firmware, rootfs, and kernel image.
