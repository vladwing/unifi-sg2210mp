# Regenerating the firmware artifacts

This directory intentionally holds no binaries — everything here is
derived from a publicly downloadable firmware image plus documented
tools/keys, all captured in `../docs/03-firmware-decryption.md` and
`../docs/04-xs2184-poe-driver-analysis.md`. Rerun these steps to get
back the exact same artifacts.

Two hardware/firmware generations are covered below: **v1** (the one
the disassembly docs were done against) and **v2** (current shipping
hardware revision — same DES key, same kernel version, same rootfs
layout, different byte offsets; see the v2 subsections below).

## 1. Get the encrypted firmware

### v1 (hardware rev 1, firmware 1.0.9)

```
curl -sL -o fw.zip https://archive.org/download/TP-Link_TL-SG2210MPV1_20240115_06a9f/06a9ffdc8d8dcac5e64ae0c0a7aa5abc.zip
unzip fw.zip
FWBIN="TL-SG2210MP(UN)_V1_1.0.9 Build 20240115/TL-SG2210MPv1_en_1.0.9_[20240115-rel72847]_up.bin"
```

### v2 (hardware rev 2, firmware 2.0.4 — current TP-Link download)

```
curl -sL -o fw_v2.zip "https://static.tp-link.com/upload/firmware/2022/202209/20220914/TL-SG2210MP(UN)_v2_2.0.4_20220909.zip"
unzip fw_v2.zip
FWBIN="TL-SG2210MPv2_en_2.0.4_[20220909-rel75392]_up.bin"
```

## 2. Decrypt it (plain DES-CBC, whole file, no padding-aware framing)

```
DES_KEY=0001020304050607
DES_IV=f51010736efbabb2
```

The same key/IV pair decrypts both v1 and v2 images — confirmed by the
decrypted output starting with the plaintext `rtk-maple.all.bin` image
name in both cases. Quick way to check without building the C tool:

```
openssl enc -d -des-cbc -provider legacy -provider default \
  -K "$DES_KEY" -iv "$DES_IV" -in "$FWBIN" -out "$FWBIN.dec" -nopad
```

(`-provider legacy` is required on OpenSSL 3.x, which drops DES from
the default provider.)

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

The image layout (plaintext partition-table header, then SquashFS at a
fixed offset, then a U-Boot-legacy-header-wrapped gzip kernel, then a
JFFS2 tail) is the same shape across versions but the exact byte
offsets differ per build. Don't hardcode offsets blind — derive them
from the actual headers each time (see "deriving offsets" below).

### v1 (firmware 1.0.9)

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

### v2 (firmware 2.0.4)

SquashFS still starts at the same fixed offset 512; the other offsets
shifted because the image is smaller (8,967,360 bytes total vs. v1's
~9.2MB):

```
dd if="$FWBIN.dec" bs=1 skip=512 count=4540683 of=rootfs.squashfs
unsquashfs -d rootfs-2.0.4 rootfs.squashfs   # 84 files, 9 dirs — same usrapp/usrImage/kernel layout as v1

dd if="$FWBIN.dec" bs=1 skip=4543040 count=4077825 of=vmlinux_gz.bin
python3 -c "
import zlib
data = open('vmlinux_gz.bin','rb').read()
d = zlib.decompressobj(31)
out = d.decompress(data); out += d.flush()
open('vmlinux_org.bin','wb').write(out)
"  # gzip stream is exact here (0 unused_data) since the count comes from the uImage size field, not a guess

dd if="$FWBIN.dec" bs=1 skip=8620865 count=346495 of=tail.jffs2
```

Kernel: `Linux version 2.6.32.58` — identical to v1. JFFS2 tail is
again just an empty `log` dir, but the JFFS2 magic (`0x1985`) doesn't
start at byte 0 of the tail region here — it's ~44KB in (unidentified
padding/footer before it, not investigated further). Skip to the magic
before running jefferson:

```
python3 -c "
data = open('tail.jffs2','rb').read()
open('tail2.jffs2','wb').write(data[data.find(b'\x19\x85'):])
"
pip3 install jefferson && jefferson tail2.jffs2 -d jffs2-extracted-2.0.4
```

### Deriving offsets for a new version

Don't hand-guess these — parse them straight out of the headers:

```
python3 -c "
import struct
data = open('$FWBIN.dec','rb').read()

# SquashFS superblock (magic 'hsqs' at a fixed offset — check with data.find(b'hsqs'))
sqfs_start = data.find(b'hsqs')
magic, inodes, mtime, bsize, fragc, comp, blog, flags, nids, smaj, smin = \
    struct.unpack('<4sIIIIHHHHHH', data[sqfs_start:sqfs_start+32])
bytes_used = struct.unpack('<Q', data[sqfs_start+32+8:sqfs_start+32+16])[0]
print('squashfs:', sqfs_start, bytes_used)

# U-Boot legacy uImage header (magic 0x27051956, big-endian fields) follows immediately
kern_hdr = sqfs_start + bytes_used
# may need to scan forward a little for alignment padding before the magic
kern_hdr = data.find(b'\x27\x05\x19\x56', kern_hdr, kern_hdr + 4096)
isize = struct.unpack('>I', data[kern_hdr+8:kern_hdr+12])[0]
comp = data[kern_hdr+31]
gzip_off = kern_hdr + 64
print('kernel gzip payload:', gzip_off, isize, 'comp=', comp)  # comp=1 is gzip

tail_off = gzip_off + isize
print('jffs2 tail:', tail_off, len(data) - tail_off)
"
```

## 4. Full kernel disassembly (only needed if re-doing the GOT-resolution work)

```
mips-linux-gnu-objdump -D -b binary -m mips:isa32r2 -EB --adjust-vma=0x80100000 vmlinux_org.bin > kernel_full.asm
```

48MB of output — that's why it isn't checked in. `docs/04-xs2184-poe-driver-analysis.md`
has the full method for resolving GOT-relative calls to real symbol
names (dynsym-index arithmetic), and the interesting excerpts are kept
in `../disasm/*.asm`.
