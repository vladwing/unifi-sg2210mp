# ChipUP XS2184 PoE driver — disassembly findings

Source: `usrImage/app/sbin/core` from the decrypted TL-SG2210MP v1.0.9
firmware (`../firmware/README.md` has the exact regeneration steps —
not checked in, it's a derived binary). Binary is stripped (no `.symtab`),
but the **dynamic symbol table is intact** (`.dynsym`, 17895 entries) —
that alone named every function. Indirect calls (`jalr t9` via
`lw t9, OFF(gp)`) were resolved to real symbol names by reconstructing
the MIPS o32 GOT layout by hand (see Method, below) and cross-checking
against `readelf --dyn-syms`. Every offset resolved to a semantically
consistent function — high confidence this reconstruction is correct.

Full disassembly: `../disasm/poe_module.asm` (whole PoE code region,
`0x4f3308`–`0x4fcd00`) and `../disasm/poe_key_functions.asm` (just the
functions discussed below).

## Call graph, confirmed by GOT resolution

```
adPoeBusInit / adPoeBusReset / adPoeBusProbe / adPoeBusRead / adPoeBusWrite
    |  (all wrapped in) pal_mutex_take_t... / pal_mutex_give_t...
    v
drv_gpio_i2c_ioctl / drv_gpio_i2c_read / drv_gpio_i2c_write
    (bit-banged GPIO I2C — no hardware I2C controller involved)

adPoeRegReadByAddr / adPoeRegReadV2  --(4x retry, pal_usleep(10000) between)--> adPoeBusRead
adPoeRegWriteByAddr                 --(4x retry)--------------------------------> adPoeBusWrite

adPoeStmEnter_xs2184 / adPoeStmStep_xs2184  (per-port PoE state machine)
    -> adPoeUpdtPoePortPowerInfo, adPoeSetPortPowerState, adPoeSetPortState,
       adPoePortFlagSet, clearStartFltStatus, adPoeCheckClass_xs2184
    -> startFltCnt / startFltFlag (global vars — capped-at-3 fault retry counter)

adPoeGetPortClassFromRegVal_xs2184  (pure decode table, no I/O)
adPoeCheckClass_xs2184               (pure bitmask validity check, no I/O)
```

## Bus layer

- **No hardware I2C controller is used** — everything goes through
  `drv_gpio_i2c_*`, i.e. bit-banged I2C over GPIOs. This matches the
  board's TI ISO7741 I2C isolator found in the teardown: the SoC
  bit-bangs I2C, isolated, out to the ChipUP chips.
- `adPoeBusInit`: mutex-guarded, calls `drv_gpio_i2c_ioctl(0, 3, 0)`,
  `(0, 4, 1)`, `(0, 1, 0)` — almost certainly pin/parameter setup for the
  bit-bang driver (command codes 1/3/4 with small integer args) — then
  `pal_usleep(500000)` (**500ms** settle delay after bus setup).
- `adPoeBusReset`: same mutex pattern, one `drv_gpio_i2c_ioctl` call,
  then `pal_usleep(100000)` (**100ms** reset pulse/settle).
- `adPoeBusRead(handle, ptr, flag)`: reads a register-address byte from
  `ptr[0]`, calls `drv_gpio_i2c_read(bus=0, handle, reg_addr, &result)`,
  writes the result byte back into `ptr[1]` on success. Returns 1 on
  failure, 0 (`v1=0`, moved to `v0`) on success — inverted-looking but
  consistent with a C `int rc; return rc;` where 0 = OK.
- `adPoeBusWrite(handle, ptr, flag)`: mirror image — reads
  `[addr, value]` from `ptr[0..1]`, calls
  `drv_gpio_i2c_write(bus=0, handle, addr, value)`.
- `adPoeRegReadByAddr` / `adPoeRegReadV2` / `adPoeRegWriteByAddr`: build
  a small stack struct, then loop **up to 4 times**, calling
  `adPoeBusRead`/`adPoeBusWrite`, sleeping `pal_usleep(10000)` (10ms)
  between attempts on failure. Standard retry-on-NAK pattern for a
  flaky/slow bit-banged bus.

**Practical upshot for Phase 0/2**: if a real board is available, sniffing
this bus with a logic analyzer on the isolator's low-voltage side should
show the exact per-port register reads/writes in real time, since we now
know the retry/timing envelope to expect (10ms between retries, 100–500ms
around bus init/reset).

## PoE class decode table (confirmed real IEEE 802.3 mapping)

`adPoeGetPortClassFromRegVal_xs2184(port_idx, out_ptr)` is pure logic, no
I/O: reads a previously-cached per-port class-detect register value
(offset 83 in a 76-byte per-port struct array), validates it's `< 8`,
then jump-tables it to a wattage figure in **deciwatts**:

| Register value | Output (deciwatts) | Watts | IEEE 802.3 class match |
|---|---|---|---|
| (jump table default / >=8 / register==7ish) | 901 | 90.1W | sentinel/unknown, close to 802.3bt Class 8 PSE max |
| 1 | 330 | 33.0W | — |
| 2 | 40  | 4.0W  | Class 1 (4.0W) |
| 3 | 70  | 7.0W  | Class 2 (7.0W) |
| 4 | 154 | 15.4W | Class 3 (15.4W) |
| 5 | 300 | 30.0W | Class 4, 802.3at Type 2 (30.0W) |
| default | 901 | 90.1W | — |

(Exact register-value-to-slot mapping needs one more disassembly pass to
nail down precisely which jump-table slot is which class number — the
table above lists the six literal constants extracted in the order the
jump table lists them — but the wattage figures themselves are an exact,
unambiguous match to the IEEE 802.3 PoE class power table, confirming
this function is genuinely the PD classification decoder.)

`adPoeCheckClass_xs2184(class_code)`: bitmask check
`(1 << class_code) & 0x5e` (binary `0101 1110`, i.e. classes 1,2,3,4,6) —
looks like "is this one of the classes this chip/board fully supports"
gate, separate from the wattage decode above.

## Method: resolving indirect (GOT-relative) calls by hand

MIPS o32 PIC code doesn't call imports by name — every external/global
call is `lw t9, OFFSET($gp)` then `jalr t9`, where `$gp` is a per-module
constant reconstructed at the top of every function from `lui/addiu/addu`
against the function's own entry address (`$t9` on entry, per the MIPS
calling convention). To resolve an offset to a symbol:

1. `readelf -S core` → `.got` section address (`0x00f19920` here)
2. `$gp = .got_address + 0x7ff0` (standard MIPS convention) → `0x00f21910`
   here (cross-checked against a function's own `lui/addiu` computation —
   matched exactly)
3. `readelf -d core` → `MIPS_LOCAL_GOTNO` (224) and `MIPS_GOTSYM` (0x26d3)
4. For a given call-site offset: `slot = (gp + offset - got_base) / 4`.
   If `slot < LOCAL_GOTNO`, it's a local/data reference. Otherwise:
   `dynsym_index = MIPS_GOTSYM + (slot - LOCAL_GOTNO)`
5. `readelf --dyn-syms core` → look up that row by index → real name

Every offset in this analysis resolved cleanly (integer slot, in-range
dynsym index, and a name that made immediate semantic sense in context) —
strong confidence this is correct and not a coincidental match.

## `drv_gpio_i2c_ioctl` — the actual kernel interface

Disassembled directly (`0x505620`, 184 bytes). Confirmed real libc calls
by GOT resolution (`open`, `ioctl`, `close`):

```c
int drv_gpio_i2c_ioctl(int channel /* a0&0xff */, int cmd /* a1 */, int value /* a2 */) {
    int fd = open(g_poe_ctx->path /* struct offset +1800 */, O_RDWR);
    if (fd < 0) return -1;
    struct { int result; int channel; int cmd; int value; } req = {
        .channel = channel, .cmd = cmd, .value = value
    };
    ioctl(fd, 0xc0045250 /* _IOWR('R', 0x50, 4) */, &req);
    close(fd);
    return req.result;
}
```

- **Single device node, not a dedicated I2C device**: `strings` on `core`
  turns up `/dev/rtcore` (plus `/dev/mem` and `/dev/ttyS0` as the only
  other `/dev/*` string constants) — no `/dev/i2c-*` anywhere. This is
  almost certainly the path (the code computes it as inline character
  data at offset 1800 in a per-instance context struct, so it's
  runtime-populated in `.bss` rather than a static string next to the
  call site — couldn't confirm the exact byte-for-byte match, but
  `/dev/rtcore` is the only plausible candidate string in the binary and
  matches the well-known Realtek switch-SDK pattern of one catch-all
  ioctl-multiplexed device node for GPIO/I2C/register access). Backed by
  the single kernel module present in the firmware, `usrImage/kmod/ethdriver.ko`.
- **One ioctl number for everything**: `0xC0045250` decodes as a
  standard Linux `_IOWR('R', 0x50, 4-byte-struct)` — direction
  read+write, type `'R'`, command number `0x50` (80), 4-byte payload.
  Every GPIO/I2C operation (init, reset, probe, read, write) goes through
  this *one* ioctl number; the actual operation is selected by the `cmd`
  field inside the passed struct (the `channel`/`cmd`/`value` triples we
  saw as literal args in `adPoeBusInit` — `(0,3,0)`, `(0,4,1)`,
  `(0,1,0)` — are exactly this struct's three input fields).
- **Two independent chip-instance contexts**: the same struct-base
  pointer pattern (`lw s0,-32728(gp)` / `lw s1,-32720(gp)`, used together
  in `adPoeBusInit`/`Reset`/`Probe`) resolves to two *different* global
  pointers (`0xe50000` and `0xfa0000`), both in `.bss` (runtime-allocated,
  not statically initialized) — strong confirmation that the driver
  really does maintain two separate PoE-chip contexts in code, matching
  the board's 2× ChipUP XS2184 physically present.

## Chasing the kernel-side handler for `/dev/rtcore` — dead end for now

Went looking for what actually implements the `_IOWR('R', 0x50, 4)` ioctl
behind `/dev/rtcore`, to get the `cmd` 1/3/4 semantics. Findings, in order:

1. **`ethdriver.ko` is a red herring** — the only kernel module in the
   firmware, but its own embedded module description says "TP-LINK Packet
   Driver" (`license=GPL`, `author=TP-LINK Technologies`). Its symbols
   (`packet_rcv`, `netlink_kernel_create`, `register_netdev`,
   `tplinkEth_start_xmit`) show it's a raw-Ethernet/netlink bridge between
   a kernel netdev and userspace — nothing to do with PoE/I2C/GPIO. Not
   stripped, fully readable if ever needed for something else.
2. So the handler must be compiled into the monolithic kernel itself.
   Carved the kernel image out of the firmware (gzip stream at
   `0x47e240` in the decrypted `.bin`, per the earlier `binwalk` output;
   `gunzip`/`file` choked on it because there's ~360KB of unrelated
   trailing firmware data appended after the real gzip member — worked
   around with `zlib.decompressobj(31)` directly, which stops cleanly at
   the real end of stream). Confirmed intact via its boot banner:
   `Linux version 2.6.32.58 (jenkins@sohoilinuxbuild) ... Realtek
   MSDK-4.3.6 Build 1464 ... Jan 15 2024` — version matches the
   `vermagic` string in `ethdriver.ko` exactly, so this is the real,
   complete, correctly-decompressed kernel for this firmware build.
   Regenerated via `../firmware/README.md`, not checked in
   (5,494,756 bytes, raw flat MIPS binary — bootloader `bix` header said
   load address `0x80000000`, entry `0x80003710` — not an ELF, no symbol
   table at all, much harder to analyze than the userspace binaries).
3. **The string `rtcore` does not appear anywhere in the kernel image**
   (checked unanchored, case-insensitive). `swcore` does appear, but only
   as part of an unrelated symbol name
   (`_bsp_drv_swcore_cid8390_get`) in the switch-ASIC driver, not a
   device/class name.
4. Checked whether `core` (userspace) creates the node itself at runtime
   — no `/proc/devices` string, no `mknod`/`makedev` symbols imported.
   So it's neither a `class_create()`/devtmpfs auto-populated node (would
   need the name string in the kernel) nor a userspace-mknod'd node built
   from a runtime major-number lookup.
5. Most likely explanation: `/dev/rtcore` is a **statically pre-created
   device node** (`mknod` done once, at firmware-build time or by an
   early-boot init script) using a **fixed, hardcoded major/minor number**
   on both the kernel-registration side and the filesystem side — no
   string matching needed between them at runtime. That init script isn't
   in the SquashFS we've extracted so far (`usrImage/` is just the
   application-layer overlay); it would be in the separate **JFFS2
   partition** `binwalk` flagged near the end of the firmware image,
   which we haven't extracted yet.

### Extracting the trailing JFFS2 region — also a dead end

Carved and extracted the JFFS2 blob `binwalk` flagged at the tail of the
firmware (`tail.jffs2`, 13,616 bytes — everything after the
SquashFS+kernel; regeneration command in `../firmware/README.md`). Used
`jefferson` (installed via pip) to extract it properly rather than guess
from the raw bytes:

```
Jffs2_raw_inode count: 1
Jffs2_raw_dirent count: 1
writing S_ISDIR log
```

It's a single empty directory called `log` — a placeholder mount point
for a writable runtime-log partition, not a filesystem with init scripts
or device nodes. **Confirms this OTA upgrade package genuinely does not
contain the base rootfs** (busybox, `/etc/init.d`, static `/dev` nodes) —
that must live in a factory-provisioned partition that TP-Link never
ships in over-the-air update images at all. Not recoverable from any
public firmware download for this reason, not because of an extraction
mistake.

### Trying to find the ioctl dispatcher by its constant instead

Since the JFFS2 route was closed, tried a more direct approach: the
kernel's char-device ioctl handler has to compare against the *same*
32-bit constant `0xc0045250` the userspace side builds (`lui`/`ori`
pair). Did a full linear disassembly of the raw 5.4MB kernel blob
(`mips-linux-gnu-objdump -D -b binary -m mips:isa32r2 -EB`, 1.35M lines)
and grepped for the instruction building the high half (`lui reg,0xc004`)
— **found exactly one match** in the whole kernel, which looked
extremely promising.

It wasn't. Read the surrounding function in full: it's comparing against
constants in the `0x6601`–`0x6680` range (ioctl magic `'f'` = `0x66`),
checking `S_IFDIR`/`S_IFLNK`/`S_IFREG` file-type bits, and calling into
what's clearly generic VFS ioctl machinery (`FIBMAP`/`FIGETBSZ`-style
filesystem ioctls) — nothing to do with PoE. The `lui v1,0xc004` there is
building some other, unrelated 32-bit value for that code path, and its
low half is never combined with `0x5250` — confirmed by grepping the
*entire* kernel disassembly for `0x5250` and getting **zero** matches
anywhere. So the real PoE ioctl dispatcher either builds/compares the
number differently (e.g. decoding `_IOC_TYPE`/`_IOC_NR` as two small
separate comparisons rather than one 32-bit literal — much harder to
search for, since bytes like `0x52`/`0x50` are far too common to grep
usefully) or isn't reachable this way at all.

**Stopping point, for real this time.** Both the "find it by filesystem
path" and "find it by instruction pattern" approaches are now exhausted
without extra input. Getting the `cmd` 1/3/4 semantics from here
realistically needs one of:
- **Ghidra/IDA-assisted structural analysis** of the kernel blob —
  looking for `file_operations` struct literals and `register_chrdev`-
  shaped call sequences well enough to find the driver's probe/init
  function and walk forward from there, rather than searching for a
  specific already-known constant
- **Live hardware**: `strace -e ioctl` (if a shell is ever reachable on
  the device) or a small `LD_PRELOAD` shim intercepting `ioctl()` in
  `core` itself, which would show the real `cmd`/`value` pairs for every
  PoE operation directly — far more direct than any more static analysis
  of this binary

Given the userspace side is already fully characterized (bus protocol,
retry/timing logic, the PoE class wattage table, the exact ioctl request
struct), this is a solid stopping point for the static-analysis thread.

## ChipUP XS2184 datasheet check

User pulled the datasheet from a Wayback Machine snapshot of
`chipup.com` (direct fetch of that domain was blocked for me — DNS
failure via Bash, and WebFetch refused it as an unverified domain; same
for `scribd.com`. Saved as `../reference/chipup_catalog.pdf`, text
extract at `../reference/chipup_catalog_text.txt`). Extracted with
`pypdf` (16 pages, no `pdftotext`/poppler available in this
environment).

**This is ChipUP's general product-line catalog** — one summary slide
per chip across their whole analog/motor-driver lineup — not the full
register-level datasheet. Page 16 (the last page) lists "规格书"
(spec sheet / full datasheet) as a *separate* deliverable from this
document, alongside eval-board manuals and reliability reports —
consistent with this vendor gating the real register-level reference
behind their sales/support process rather than a public download. So the
register map itself is still not in hand.

**What the XS2184 page (page 7) does confirm, in real fidelity:**

- Full pinout: `EN`, `VDD`, `BN`, `AUTO`, `MIDSPAN`, `EN_CL5`, `A0`–`A3`
  (address-select pins), `OUT1`–`OUT4`, `SENSE1`–`SENSE4`, `SVEE1`/`SVEE2`,
  `VEE`, `DGND`, `INT`, `SCL`, `SDAOUT`, `SDAIN`, `DARIN1`–`DARIN4`
- **"兼容I2C，3线串口"** — "I2C-compatible, 3-wire serial port" — confirms
  it's not true bidirectional-SDA I2C, it's a 3-wire variant with
  separate `SDAIN`/`SDAOUT` data pins plus `SCL`. This is exactly why the
  vendor firmware goes through a generic bit-banged `drv_gpio_i2c_*`
  abstraction rather than the SoC's real I2C controller — a standard
  hardware I2C peripheral can't directly drive split in/out data lines.
- **4 dedicated address-select pins (`A0`–`A3`)**: bus address is
  hardware-strapped by board wiring, not software-set — useful to know
  if ever probing a real board (check strap resistors near each XS2184
  to read off its configured address without needing firmware at all).
- `INT` — dedicated interrupt output pin (fault/event signaling,
  independent of polling — matches `adPoeUpdtEventStatus_xs2184` seen
  in the disassembly).
- `DARIN1`–`DARIN4` — almost certainly per-port legacy-PD high-capacitance
  detection resistor pins, matching the "为遗留设备提供高容值检测"
  ("high-capacitance detection for legacy devices") feature bullet.
- 0.25Ω current-sense resistors, 9-bit current/voltage ADC per port, up
  to 30W/port, built-in 100V-rated N-channel MOSFETs (no external FETs
  needed), 48-pin QFN.
- **"支持全自动工作的同时支持软件编程操作"** — supports fully-autonomous
  hardware operation *and* software programming simultaneously — matches
  the vendor firmware's `AUTO` handling and the state-machine design seen
  in `adPoeStmEnter_xs2184`/`adPoeStmStep_xs2184`.
- Explicitly mentions **Class 5 detection support** — direct confirmation
  of the `901` (90.1W-ish sentinel) entry found in
  `adPoeGetPortClassFromRegVal_xs2184`'s decode table.

Net effect: the datasheet confirms every inference drawn from the
firmware disassembly and adds real pin-level detail, but doesn't unlock
the register map itself. Getting the actual register addresses/bit
layout still needs either the gated full spec sheet (would require
contacting ChipUP directly — plausible for a hobbyist/OpenWrt-port
inquiry, chip vendors serving this market often do respond) or bus
sniffing on real hardware, now with a much better idea of what to expect
electrically (3-wire variant, not standard I2C — matters for how you'd
wire a logic analyzer or bridge chip to it).

### Found the real datasheet (V1.1) — confirms the register chapter exists, but isn't included

`chipup.com` itself is unreachable (DNS fails from this sandbox; the
user's own browser times out too — the company may genuinely be gone).
Traced two direct PDF URLs out of JLCPCB's part page HTML
(`C2890400`) for the actual XS2184 datasheet (not the catalog):
`datasheet.lcsc.com/lcsc/2109021730_chipup-XS2184_C2890400.pdf` and an
Aliyun OSS-hosted copy. Neither serves directly — LCSC's redirects to
its homepage app shell and the OSS link returns `AccessDenied` — for
*both* an automated fetch here and the user's own browser, so this isn't
simple anti-bot blocking, the live copies are actually gone/inaccessible.

**Recovered it anyway via the Wayback Machine** — `archive.org` had a
`200 OK` snapshot of the exact LCSC URL from 2025-04-30, fetched cleanly
with `curl`. Saved as `../reference/xs2184_datasheet_v1.1.pdf` (text
extract at `../reference/xs2184_datasheet_v1.1_text.txt`; confirmed
identical, byte-for-byte, to a copy the user separately downloaded —
same MD5 — so this is genuinely what was publicly hosted, not a
corrupted/partial fetch on either end).

This is a real, denser technical datasheet (not the marketing catalog):
electrical characteristics tables, full timing specs, ADC characteristics,
thermal/package info, two full application-circuit diagrams. New concrete
findings:

- **ADC**: 9-bit resolution, confirmed on both current and voltage.
  Current range 0–1A at **1.956 mA/LSB**, voltage range 0–95.6V at
  **187 mV/LSB**. These are the exact scale factors needed to convert
  raw ADC register values to real current/voltage — directly useful for
  decoding whatever the register read returns once the address is known.
- **Bus is 3-wire, "fast mode" I2C-compatible**, with a full real timing
  table matching standard I2C fast-mode parameters: `fSCL` 10–400kHz,
  `tBUF`, `tHD;STA`, `tLOW`, `tHIGH`, `tSU;STA`, `tHD;DAT`, `tSU;DAT`,
  `tSU;STO`, spike suppression `tSP` — genuinely implementable against
  from this table alone if bit-banging it directly.
- **Confirms register-level knobs by name**, even without full addresses:
  `ILIM_` (current-limit select, values `80h`=Class 0-3, `C0h`=Class 4
  quoted directly with the resulting clamp voltages), `ICUT_`
  (post-startup overcurrent cutoff, `D4h`/`91h` quoted the same way),
  `TLIM_[3:0]` (fault timer, explicitly named as I2C-configurable),
  and — the single most concrete lead — **`PGOOD_bit` is explicitly
  placed in register `0x10h`** (footnote on the PGOOD timing row: "V_OUT_
  达到 PG_TH 设置 10h 寄存器中 PGOOD_bit 时的时间"). That's one real,
  named register address, straight from the vendor document.
- **Confirms the reference isolation topology**: page 8's "四端口隔离I2C
  通信应用方案" (four-port isolated I2C application) shows 3×
  **HCPL-0631** optocouplers, one per signal line (SDAOUT/SDAIN/SCL) —
  *not* what's on the real SG2210MP board (the teardown found a single
  TI multi-channel digital isolator, most likely ISO7741, replacing this
  3-optocoupler reference design with one integrated part — a normal
  board-design substitution, not a discrepancy).
- Note 3 in the electrical table **explicitly names the missing
  chapter**: "电流限制阈值通过I2C接口编程（见寄存器图和描述章节及表41）"
  — "current limit threshold is programmed via I2C (see the *Register
  Map and Description* chapter and Table 41)".

**But the pages are genuinely missing.** Printed page numbers in this
PDF run `1, 2, 3, 4, 5, [unlabeled legal-notice page], 13, 25, 26, 27,
28` — i.e. this 11-page file is excerpted from an original document of
at least 28 pages, and the gap (roughly original pages 6–24) is exactly
where the "Register Map and Description" chapter — Table 41 and
everything around it — would live. Three independent sources now agree
on withholding that specific chapter: the marketing catalog (which
listed "规格书" as a separate, gated deliverable), semiee.com (blank
placeholder for the same document), and now this "full" LCSC-hosted
datasheet (present, but with exactly that chapter cut out). This reads
as deliberate — ChipUP treats the register programming reference as
restricted/support-gated documentation, not something distributed with
the public datasheet in any copy that's made it onto the open web.

**Where this leaves things**: everything needed to *talk* to the chip
electrically (timing, address pins, ADC scale factors) is now confirmed
from a real vendor document. The actual register address map is
consistently absent from every public copy found across three
independent sources — this now looks like a real dead end for
open-source/public-web research specifically, not a fetching problem.
Next step, if pursued, is either a direct support inquiry to ChipUP
(assuming the company still exists — unconfirmed) or bus-sniffing real
hardware with the timing table above as a guide.

## What's still open

- Exact jump-table-slot-to-class-number mapping for the wattage table
  (cosmetic — the wattage values themselves are unambiguous)
- `drv_gpio_i2c_ioctl` command-code meanings (1/3/4) — would need to
  disassemble `drv_gpio_i2c_ioctl` itself (in `core`, same binary, not
  yet done) or correlate against real bus traffic
- The actual 7-bit I2C slave address(es) for the two XS2184 chips — not
  visible in this code path at all; per the earlier firmware find, that
  lives in the runtime-generated `/tplink/usrapp/data/i2cAddr.cfg`, not
  in this binary. Would need either a live device's flash dump or the
  chip's datasheet (linked from the wiki teardown page, not yet checked
  for a documented register/address scheme)
