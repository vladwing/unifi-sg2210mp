# Firmware decryption — feasibility confirmed, PoE driver located

Status as of 2026-08-02. Answers the question: "the switch has public
firmware, can we download/unpack/disassemble the PoE control parts?"

**Short answer: yes, fully done through unpacking. Disassembly of the
specific PoE routines needs a MIPS-capable disassembler, which isn't
installed in this environment — that's the one remaining step.**

## What was done

1. Downloaded the official firmware
   (`TL-SG2210MP(UN)_V1_1.0.9 Build 20240115`) via an archive.org mirror
   of TP-Link's own release (`archive.org/details/TP-Link_TL-SG2210MPV1_20240115_06a9f`).
2. The `.bin` is **fully encrypted** — confirmed via Shannon entropy
   (~7.997–8.0 bits/byte uniformly across the whole file, no plaintext
   header at all, ruling out binwalk's normal signature scan finding
   anything).
3. Found prior art: `robbins/tp-link-decrypt` (GitHub), a fork that added
   TP-Link switch/Omada support to an existing TP-Link firmware decryptor.
   Its key insight: the switch firmware uses **plain DES-CBC over the
   whole file**, no padding, no per-file RSA signing — and the DES
   key/IV are hardcoded in `libservice.so.0.0.0`, a binary that ships
   **inside TP-Link's own GPL source releases** (same `rtk-maple_gpl.tar.gz`
   already pulled down for Phase 0 hardware recon).
4. **Reproduced the key extraction ourselves**, independent of the tool's
   script, straight from our own copy of the GPL tarball:
   - `nm libservice.so.0.0.0 | grep des_key` → symbol at `0x000eda70`
   - File offset = symbol VMA − `0x10000` load bias (standard for this
     SDK's memory layout) = `0xdda70`
   - `DES_KEY = 00 01 02 03 04 05 06 07` (yes — this is the textbook
     sequential/test-vector DES key; matches the GitHub project's own
     characterization: "old and known-insecure encryption... intended as
     an obfuscation mechanism rather than serious protection")
   - `DES_IV  = f5 10 10 73 6e fb ab b2`
5. Built the decrypt tool (didn't even need the RSA-related setup steps —
   switch firmware doesn't use RSA verification at all, only the two
   consumer-product firmware formats the tool also supports do; stubbed
   empty RSA headers just to satisfy compilation).
6. **Ran it against the real firmware. It worked on the first try.**
   Output has a plaintext header (`rtk-maple.all.bin`, a human-readable
   partition table: `0x100000`/`0x600000`/`0x700000`/`0xa00000` etc.), a
   SquashFS filesystem, a `bix`-header MIPS Linux kernel image
   (`vmlinux_org.bin`), and a JFFS2 config partition — all exactly what
   you'd expect from a legitimate unpacked embedded Linux firmware.
7. Extracted the SquashFS root filesystem (`unsquashfs`, 89 files).

The decrypted firmware, extracted rootfs, and PoE/I2C function-name list
aren't checked in — all regeneratable in a few commands, see
`../firmware/README.md`.

The `tp-link-decrypt` build itself wasn't preserved (scratch directory got
recycled mid-session) but it's trivial to rebuild: `git clone
https://github.com/robbins/tp-link-decrypt`, regenerate `include/DES_KEY.h`
/`include/DES_IV.h` with the byte values above (or re-run their
`extract_keys.sh` against `rtk-maple_gpl.tar.gz`), stub `RSA_0.h`/`RSA_1.h`,
`make`.

## What's inside the rootfs, PoE-relevant

The rootfs has no standalone `poe` binary — PoE logic is statically linked
into `usrImage/app/sbin/core` (the main management daemon, stripped ELF,
no symbol table) and partially exposed via `usrImage/lib/libservice.so.0`
(not stripped, has debug info — this is where the `des_key` symbol came
from too).

**Even though `core` is stripped, its string table wasn't scrubbed**, and
it directly names the PoE driver architecture:

- Confirms **multiple PoE chip vendors are supported by the same firmware
  family**, selected/probed at runtime: `_xs2184` (ours), `_2386x`,
  `_2388x`, `_mp3924` — e.g. `adPoeChipInit_xs2184`,
  `adPoeGetPortClassFromRegVal_xs2184`,
  `adPoePortPowerONControl_xs2184`, `adPoeInResetState_xs2184`,
  `adPoeStmEnter_xs2184` / `adPoeStmStep_xs2184` (state-machine driver
  pattern), `adPoeTurnOff_xs2184`, `adPoeUpdtEventStatus_xs2184`,
  `adPoeReConfig_xs2184`, `adPoeSetPortState_xs2184`,
  `adPoeCheckClass_xs2184`
- `adPoeBusProbe`, `adPoeChipGetAll` — the firmware auto-detects which PoE
  chip is physically present rather than hardcoding per board model
  (matches the 4-vendor driver set above)
- The physical bus is **bit-banged/GPIO I2C**, not a hardware I2C
  controller: `drv_gpio_i2c_read/write/ioctl/probe`,
  `drv_extGpio_i2c_init/read/write`. There's also
  `drv_rtl8231_i2c_read/write` — **RTL8231 is a Realtek GPIO expander
  chip that the OpenWrt RTL838x community already has (stalled) driver
  work on** (per `svanheule.net`'s `current_status` page — "RTL8231 GPIO
  driver (stalled)"). If the PoE I2C bus is bridged through an RTL8231
  on this board, that stalled upstream work becomes directly relevant to
  Phase 0, not just a curiosity.
- Config path `/tplink/usrapp/data/i2cAddr.cfg` plus
  `updateI2cAddrConfigInfo_default`/`_autoFix` — the I2C slave address(es)
  for the PoE chip(s) are read from a config file at runtime, not
  hardcoded in `core`. That file isn't present in the firmware image
  itself (presumably generated/written at first boot or during
  manufacturing calibration) — would need to be pulled from a live
  device's flash to get the real address value(s).
- No literal `"ChipUP"` or `"XS2184"` string constant (only present as a
  function-name suffix), and the `switch_TL_SG2210MP_V2.tp` board config
  in this firmware doesn't mention PoE at all — confirms PoE chip
  selection is fully runtime-probed, not board-config-driven.

## What's still needed to go further

Disassembling the actual `adPoe*_xs2184` function bodies (register-level
I2C read/write sequences, the state machine transitions) requires a
MIPS-aware disassembler. This environment only has generic x86_64
`binutils` (`objdump -i` lists no MIPS target). Options, in order of
effort:

1. `apt install binutils-mips-linux-gnu` (this is literally the package
   `tp-link-decrypt`'s own `preinstall.sh` recommends) — gives
   `mips-linux-gnu-objdump` for a straight linear disassembly.
2. Ghidra or IDA Free, both have MIPS32 support and would give proper
   function boundaries / decompilation instead of raw disassembly — much
   more tractable for actually reading the I2C register protocol than
   objdump output.
3. Cross-reference the `adPoe*_xs2184` string addresses against `core`'s
   `.rodata`/call sites to locate the function bodies, then read the
   I2C read/write sequences to reconstruct the actual register map
   ChipUP never published in a public datasheet excerpt we've seen so far
   (the datasheet link from the wiki teardown page is worth checking for
   a documented register interface before reverse engineering it blind —
   haven't checked that yet).

This closes the loop nicely with Phase 0's original "needs physical
confirmation" caveat about the PoE IC: **it doesn't, actually** — the
chip identity, the fact it's I2C-driven, and the exact vendor function
names were all recoverable purely from the public firmware image, no
teardown or multimeter required. Physical access is still needed for
bus sniffing (to get the actual register values) and for the UART/serial
console question, but not for identifying what to build for.
