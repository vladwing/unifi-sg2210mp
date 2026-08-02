# Phase 0 Findings — Getting OpenWrt on the TL-SG2210MP

Status as of 2026-08-02. Companion doc to `00-plan.md`
and `01-phase1-protocol-recon.md`.

## Headline result

Found a community wiki (`svanheule.net/switches`) run by the people doing
the actual upstream OpenWrt/Linux RTL838x work (the wiki's "Current status"
page cross-links kernel.org patches authored by `sander@svanheule.net` —
this is the maintainer's own reference site, not a random fan wiki, and
there's a live IRC channel: `#rtl83xx` on Libera.Chat). It has:

1. A **dedicated TL-SG2210MP hardware page** with a real teardown (BOM +
   photos) — done independently of anything in the plan.
2. A **GPL source archive** that includes a tarball covering **exactly our
   board** (`TL-SG2210MP`, shared with `TL-SG2008P`): `rtk-maple_gpl.tar.gz`,
   270MB, downloaded and inspected below.
3. The **same archive also has a Ubiquiti USW-series GPL drop**
   (`gpl-4.3.21-USW-PoE.tar.bz2`, 169MB) — this is the thing Phase 1
   recon couldn't reach because ui.com's GPL page is a JS-only SPA. Not
   yet inspected in detail; downloaded and ready for the next session.

## Corrected hardware facts (supersedes speculation in the original plan)

The plan guessed the PoE controller was "TI TPS23861... possibly dual-IC."
The wiki's teardown (dated 2022, by wiki user `oliver`) gives the real BOM:

- **SoC**: RTL8380M (confirmed, matches the plan)
- **PoE controllers**: **2× ChipUP XS2184** PoE regulators — *not* TI
  TPS23861. ChipUP is a much less common vendor; worth flagging since it
  changes what prior art applies.
- **Flash**: 1× Winbond W25Q256JV, 32MB, 16-pin SPI
- **RAM**: 1× Nanya 2GiB (256MiB) DDR3
- **Also on board**: 4× SN74HC164 (serial-in/parallel-out shift registers —
  almost certainly LED/port-status driving), 1× TI ISO7741 I2C isolator
  (the PoE regulators are almost certainly driven over an isolated I2C bus
  from the main SoC — this matters for Phase 0 both as a bring-up target
  and as a possible non-invasive tap point, see below)
- Two teardown photos are on the wiki page. The top-board photo shows a
  small 4-pad unpopulated header near a "TOP" silkscreen marking, positioned
  plausibly for UART (GND/TX/RX/VCC) — **this is a visual read, not a
  confirmed pinout**, needs a continuity check with a multimeter/logic
  probe against the actual unit.

## No public schematic exists — checked, and there's a structural reason why

Went looking for an actual PCB schematic to nail down RX/TX/GND rather
than guess from the teardown photo. Came up empty across every realistic
source:

- No leaked/shared schematic anywhere (GitHub, repair sites, Chinese
  electronics forums) — checked directly, nothing.
- **The FCC-filing trick doesn't apply here.** TP-Link's own compliance
  statement for this switch describes it as a **"Class A digital
  device"** under FCC Part 15 — that's the *verification* procedure for
  unintentional radiators (wired equipment with no intentional RF
  transmitter), not the *certification* procedure that produces a public
  FCC ID with an exhibit folder (block diagrams, schematics, internal
  photos). Confirmed by searching fccid.io directly for this model —
  no genuine match (false positives only, unrelated RC-toy filings that
  happen to share a substring). A pure switch like this one almost
  certainly has no FCC ID to look up at all.
- No `tl-sg2210p` page exists yet on the `svanheule.net` wiki ("this
  topic does not exist yet"), and the `tl-sg2210mp` page itself still
  has no pinout section as of this check.

**One genuinely useful thing did turn up**: the wiki's pages for the two
sibling boards that already have community-documented UART headers —
`tl-sg2008` and `tl-sg2008p` (different, smaller PCB than ours, but same
SoC family and same vendor board-design habits) — both describe the
UART as broken out to an unpopulated header. For the SG2008P
specifically:

> The UART is broken out to unpopulated header J2. The footprints R27
> (0201) and R28 (0402) are not populated. To enable serial console, 50
> ohm resistors should be soldered — any value from 0 ohm to 50 ohm will
> work. R27 can be replaced by a solder bridge.

**Practical takeaway for when the device is in hand**: don't just look
for a 4-pad header — check for small unpopulated 0201/0402 resistor
footprints in series with it too. On this board family, TX/RX can be
physically wired to a header but *electrically disconnected by design*
until a resistor (or solder bridge) is added. Finding the right pads
with continuity testing might not be enough on its own if this pattern
carries over to the SG2210MP's board.

## GPL source: what's actually in `rtk-maple_gpl.tar.gz`

Downloaded and inventoried (not fully extracted — ~1GB uncompressed).
Structure per its own `readme.txt`/`tree.txt`:

```
omada_switch/
├── sdk/realtek-V2.1.6.pre2/     — Realtek reference SDK
│   ├── kernel/                  — Linux 2.6.32.x (uClinux tree) + busybox + uClibc
│   ├── sdk/                     — Realtek switch-core SDK
│   └── u-boot-2011.12/          — U-Boot source, generic across the RTL838x/839x family
└── 20161108_WebUI_upgrade/tplink/
    ├── buildroot-realtek/       — TP-Link's buildroot wrapper, board configs, oemid files
    └── src/archive/RTK_MAPLE/   — precompiled .a application blobs
```

Confirmed **board-specific files exist for our exact model**:
- `board/.../data/switch_TL_SG2210MP_V2.tp` — build-time feature flags
  (CLI/telnet, ACL/TPCL table sizing, etc.) — config, not driver code
- `board/.../app/sbin/oemid_TL_SG2210MP_V2.json` — just an OEM/region ID
  stamp (`{"oem":[{"region":"UN","id":"113AA8F93CBDB7A628E3A098057661CA"}]}`)

**U-Boot** (`u-boot-2011.12/`) is real, buildable source, generic per-SoC
(`board/Realtek/rtl838x/`, shared across all RTL8380-based TP-Link switches,
not per-model). Checked `include/configs/rtl838x.h`:
- `CONFIG_ENV_IS_IN_SPI_FLASH` — the U-Boot environment (bootdelay,
  bootcmd, etc.) lives in SPI flash and is runtime-editable from the
  serial console, not baked into the binary
- `CONFIG_BOOTDELAY`/`CONFIG_BOOTCOMMAND` are `#define`d but *commented
  out* in this header, meaning the actual values come from the flash-
  stored environment — normal U-Boot behavior, and good news: it implies
  a standard interruptible autoboot exists once you have the serial
  console, no unusual lockdown at the U-Boot config level (can't rule out
  TP-Link disabling the console at the application layer, but nothing in
  this source does it)
- `CONSOLE_NUM_PORTS 2` — two console-capable UART channels defined at
  the SoC level

**The disappointing part — PoE control is not in the GPL dump**:
- U-Boot has a PoE driver at `board/Realtek/switch/rtk/drv/poe/pd69100.c`
  — but that's for the **Microsemi/Microchip PD69100** PSE controller, a
  completely different chip from our board's ChipUP XS2184. This driver
  is generic reference-SDK code for *other* boards in the same SDK family,
  not applicable here.
- No kernel-side PoE or ChipUP-specific driver source anywhere in the tree.
- The actual PoE application logic is `tplink/src/archive/RTK_MAPLE/app_poe.a`
  — a **precompiled static library**, not source. TP-Link kept this part
  proprietary and only shipped the GPL-obligated layers (kernel, U-Boot,
  busybox, toolchain). This matches the plan's fallback expectation
  ("physical confirmation" needed) but rules out "read the PoE driver
  source" as a shortcut — **ChipUP XS2184 control will have to be reverse
  engineered from the physical device** (I2C bus sniffing behind that
  isolator chip is probably the highest-leverage approach, since the
  driver would just be issuing register writes over I2C either way).

## Net effect on the plan's Phase 0 steps

| Plan's step | Status after this recon |
|---|---|
| Fork SG2210P DTS | Unchanged — still the right starting point, OpenWrt's `rtl8380_tplink_sg2xxx.dtsi` family target confirmed current on the maintainer's own wiki |
| Get serial/UART console access | Narrowed: photo shows a likely header location; still needs physical continuity check. U-Boot source confirms nothing prevents a normal interruptible console once wired up |
| Identify PoE IC(s) and wiring | **Done without teardown** — 2× ChipUP XS2184, confirmed via community teardown, datasheet linked from the wiki: `https://www.chipup.com/uploads/Download/20210128/1805068072d5570.pdf` |
| Get bootable initramfs before flashing | Unchanged, still the right caution |

New information not in the original plan:
- **No existing OpenWrt PR/commit mentions SG2210MP** (checked GitHub
  search directly) — confirms this is genuinely greenfield, not something
  that's quietly already been done.
- **Active community exists**: `#rtl83xx` on Libera.Chat IRC, and the
  wiki's `hardware_owners` page tracks who owns which board and their
  dev status — worth introducing yourself there before starting, since
  someone may already have SG2210P/MP hardware and unpublished notes
  (the page doesn't list an owner for SG2210MP specifically, only
  TL-SG2008/TL-SG2008P have tracked owners: `bkoblitz`).
- OpenWrt/mainline maturity for the RTL838x family specifically (our SoC):
  "RTL838x: complete" per the wiki's status page — Ethernet RX/TX, QoS,
  all L2 functionality, all PHYs, full SFP+LED support. This is the
  *most* mature of the four Realtek switch SoC families they track — a
  genuinely good sign for how much of the port is "just" board bring-up
  rather than driver development.

## Recommended immediate next steps for Phase 0

1. **Physically inspect the unit** against the wiki's teardown photos —
   confirm the candidate UART header location, check for populated pins,
   probe with a multimeter for continuity to the RTL8380M's UART pins if
   you're comfortable doing so.
2. Post in `#rtl83xx` (Libera.Chat) or on the wiki's talk/edit history —
   asking whether anyone has SG2210MP-specific notes not yet published,
   given SG2210P (the non-PoE-budget sibling) already has a merged DTS.
3. Treat ChipUP XS2184 PoE control as the hard unknown requiring either
   (a) datasheet study (linked above) to see if it exposes a documented
   register interface, or (b) I2C bus sniffing on the real hardware.
4. Once/if UART is confirmed, boot to U-Boot prompt and dump the
   environment (`printenv`) before touching flash — that alone will show
   `bootcmd`, partition layout, and MAC/serial storage without any risk.

## Bonus: Ubiquiti USW GPL source drop — update

`gpl-4.3.21-USW-PoE.tar.bz2` was fully inspected in a later session (see
`01-phase1-protocol-recon.md`'s GPL section). Verdict: it's a genuine
Ubiquiti USW GPL drop, targeting RTL838x with a real Linux 3.18.24
kernel tree on an OpenWrt-style buildroot — interesting as an
independent RTL838x bring-up reference for Phase 0, but it's a
different (Realtek-based) USW-PoE model than our Broadcom-based US-8-150W
target, and it contains no proprietary application code at all (no
inform client, no PoE daemon) — same pattern as every other vendor GPL
dump checked. Not re-downloaded/kept locally; the URL is
`https://svanheule.net/switches/gpl/gpl-4.3.21-USW-PoE.tar.bz2` if
revisited.
