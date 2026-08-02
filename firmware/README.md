# Regenerating the firmware artifacts

This directory intentionally holds no binaries — everything here is
derived from a publicly downloadable firmware image plus documented
tools/keys, all captured in `../docs/03-firmware-decryption.md` and
`../docs/04-xs2184-poe-driver-analysis.md`. Rerun these steps to get
back the exact same artifacts.

## 1. Get the encrypted firmware

```
curl -sL -o fw.zip https://archive.org/download/TP-Link_TL-SG2210MPV1_20240115_06a9f/06a9ffdc8d8dcac5e64ae0c0a7aa5abc.zip
unzip fw.zip
FWBIN="TL-SG2210MP(UN)_V1_1.0.9 Build 20240115/TL-SG2210MPv1_en_1.0.9_[20240115-rel72847]_up.bin"
```

## 2. Decrypt it (plain DES-CBC, whole file, no padding-aware framing)

```
DES_KEY=0001020304050607
DES_IV=f51010736efbabb2
```

Build `robbins/tp-link-decrypt` (`git clone https://github.com/robbins/tp-link-decrypt`),
drop those two values into `include/DES_KEY.h`/`include/DES_IV.h` in the
`xxd -i` format it expects (or re-run its own `extract_keys.sh` against
`rtk-maple_gpl.tar.gz` from `https://svanheule.net/switches/gpl/rtk-maple_gpl.tar.gz`
— that's where the keys actually came from), stub empty `RSA_0.h`/`RSA_1.h`
(unused for switch firmware), `make`, then:

```
bin/tp-link-decrypt "$FWBIN"
```

Gives `*.bin.dec` — a `rtk-maple.all.bin` image: plaintext partition
table, SquashFS, a `bix`-header kernel image, and a small JFFS2 tail.

## 3. Carve out the pieces

```
dd if="$FWBIN.dec" bs=1 skip=512 count=4710074 of=rootfs.squashfs
unsquashfs -d rootfs-1.0.9 rootfs.squashfs

dd if="$FWBIN.dec" bs=1 skip=4710976 count=$((9218960-4710976)) of=vmlinux_gz.bin
python3 -c "
import zlib
data = open('vmlinux_gz.bin','rb').read()
d = zlib.decompressobj(31)
out = d.decompress(data); out += d.flush()
open('vmlinux_org.bin','wb').write(out)
"  # plain gunzip chokes on ~360KB of unrelated trailing firmware data after the gzip member

dd if="$FWBIN.dec" bs=1 skip=9205344 count=13616 of=tail.jffs2
pip3 install jefferson && jefferson tail.jffs2 -d jffs2-extracted  # just an empty "log" dir, see docs/04
```

## 4. Full kernel disassembly (only needed if re-doing the GOT-resolution work)

```
mips-linux-gnu-objdump -D -b binary -m mips:isa32r2 -EB --adjust-vma=0x80100000 vmlinux_org.bin > kernel_full.asm
```

48MB of output — that's why it isn't checked in. `docs/04-xs2184-poe-driver-analysis.md`
has the full method for resolving GOT-relative calls to real symbol
names (dynsym-index arithmetic), and the interesting excerpts are kept
in `../disasm/*.asm`.
