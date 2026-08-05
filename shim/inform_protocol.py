"""UniFi inform-protocol codec (encode/decode) and L2 discovery TLV builder.

Reconstructed from public documentation (fxkr/unifi-protocol-reverse-engineering,
jeffreykog/unifi-inform-protocol, jrjparks.github.io/unofficial-unifi-guide) and
cross-checked against a real (if unfinished/never-adopted) implementation,
stephanlascar/unifi-gateway. Header layout and defaults below are now validated
against a live packet capture of three real, currently-adopted Ubiquiti devices
(see `../docs/05-shim-vs-real-controller-probe.md`) — all ten captured packets
agreed exactly on `pkt_version=0`, `flags=0x000d` (ENCRYPTED|SNAPPY|GCM), and a
full-width 16-byte GCM nonce with no zero-padding. The payload itself is still
unread (needs a per-device key, not captured), so JSON field shapes remain
unvalidated against real traffic.

Header layout (40 bytes, big-endian), followed by the payload:
    0:4   magic       b"TNBU"
    4:8   pkt_version uint32 (0 on real hardware)
    8:14  mac         6 bytes
    14:16 flags       uint16 (bit0=encrypted, bit1=zlib, bit2=snappy, bit3=gcm)
    16:32 iv          16 bytes (AES-CBC IV, or full-width GCM nonce -- real
                       hardware does NOT truncate-and-pad a 12-byte nonce here)
    32:36 payload_version uint32
    36:40 payload_len uint32
"""
from __future__ import annotations

import json
import struct
import zlib
from dataclasses import dataclass

from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

MAGIC = b"TNBU"

FLAG_ENCRYPTED = 0x01
FLAG_ZLIB = 0x02
FLAG_SNAPPY = 0x04
FLAG_GCM = 0x08

# Default per-device key used before adoption assigns a real one.
DEFAULT_ADOPTION_KEY = bytes.fromhex("ba86f2bbe107c7c57eb5f2690775c712")


class InformError(Exception):
    pass


def _pkcs7_pad(data: bytes, block_size: int = 16) -> bytes:
    pad_len = block_size - (len(data) % block_size)
    return data + bytes([pad_len]) * pad_len


def _pkcs7_unpad(data: bytes) -> bytes:
    pad_len = data[-1]
    if pad_len < 1 or pad_len > 16 or data[-pad_len:] != bytes([pad_len]) * pad_len:
        raise InformError("invalid PKCS7 padding")
    return data[:-pad_len]


def encode_inform(
    payload: dict,
    mac: bytes,
    key: bytes = DEFAULT_ADOPTION_KEY,
    pkt_version: int = 0,
    payload_version: int = 1,
    use_gcm: bool = True,
) -> bytes:
    """Build a full inform packet (header + encrypted/compressed payload).

    Defaults match real captured hardware: GCM + Snappy, pkt_version 0.
    Pass use_gcm=False to build the (still wire-format-valid, but never
    observed in the wild) CBC + zlib variant instead.
    """
    if len(mac) != 6:
        raise InformError("mac must be 6 bytes")

    json_bytes = json.dumps(payload).encode()

    if use_gcm:
        import snappy

        body = snappy.compress(json_bytes)
        flags = FLAG_ENCRYPTED | FLAG_SNAPPY | FLAG_GCM
        # Real hardware uses a full-width 16-byte GCM nonce, not the
        # standard 12-byte nonce padded to 16.
        nonce = get_random_bytes(16)
        # GCM is a stream cipher (no padding), so ciphertext length equals
        # plaintext length; the 16-byte tag is appended after. That means
        # the final payload_len is known before encrypting, which matters
        # because the header (below) doubles as the AAD and must exist
        # before the cipher runs.
        payload_len = len(body) + 16
        header = (
            MAGIC
            + struct.pack(">I", pkt_version)
            + mac
            + struct.pack(">H", flags)
            + nonce
            + struct.pack(">I", payload_version)
            + struct.pack(">I", payload_len)
        )
        cipher = AES.new(key, AES.MODE_GCM, nonce=nonce)
        # Confirmed via decompiling the real controller's InformServlet:
        # GCM inform binds the 40-byte plaintext header itself as AAD
        # (com.ubnt.net.InformServlet$jRsSex.TgovGTpPRqBiOa() builds this
        # exact header-only byte string before the decrypt call). Skipping
        # this makes the tag fail to verify even with the correct key.
        cipher.update(header)
        ciphertext, tag = cipher.encrypt_and_digest(body)
        encrypted = ciphertext + tag
    else:
        body = zlib.compress(json_bytes)
        flags = FLAG_ENCRYPTED | FLAG_ZLIB
        iv_field = get_random_bytes(16)
        cipher = AES.new(key, AES.MODE_CBC, iv_field)
        encrypted = cipher.encrypt(_pkcs7_pad(body))
        header = (
            MAGIC
            + struct.pack(">I", pkt_version)
            + mac
            + struct.pack(">H", flags)
            + iv_field
            + struct.pack(">I", payload_version)
            + struct.pack(">I", len(encrypted))
        )
    return header + encrypted


def decode_inform(data: bytes, key: bytes = DEFAULT_ADOPTION_KEY) -> dict:
    """Parse a full inform packet and return the decoded JSON payload."""
    if data[0:4] != MAGIC:
        raise InformError(f"bad magic: {data[0:4]!r}")

    mac = data[8:14]
    flags = struct.unpack(">H", data[14:16])[0]
    iv = data[16:32]
    payload_len = struct.unpack(">I", data[36:40])[0]
    body = data[40 : 40 + payload_len]

    if flags & FLAG_ENCRYPTED:
        if flags & FLAG_GCM:
            nonce, tag = iv, body[-16:]
            cipher = AES.new(key, AES.MODE_GCM, nonce=nonce)
            cipher.update(data[0:40])  # AAD = the 40-byte plaintext header
            body = cipher.decrypt_and_verify(body[:-16], tag)
        else:
            cipher = AES.new(key, AES.MODE_CBC, iv)
            body = _pkcs7_unpad(cipher.decrypt(body))

    if flags & FLAG_ZLIB:
        body = zlib.decompress(body)
    elif flags & FLAG_SNAPPY:
        import snappy

        body = snappy.decompress(body)

    return {"mac": mac.hex(), "flags": flags, "data": json.loads(body)}


@dataclass
class DiscoveryTLVBuilder:
    """Builds the UDP broadcast (port 10001) L2 discovery announcement.

    TLV type numbers per the fxkr/jeffreykog docs; field assignment (which
    goes in 19 vs 21 vs 22/27) cross-checked against stephanlascar/unifi-
    gateway's working encoder rather than re-derived — flag as unconfirmed
    for switches specifically until Phase 2 captures real traffic.
    """

    mac: bytes
    ip: bytes
    hostname: str
    model: str
    firmware: str
    uptime_seconds: int

    def build(self, sequence: int, version: int = 2, command: int = 6) -> bytes:
        entries = [
            (1, self.mac),
            (2, self.mac + self.ip),
            (3, f"{self.hostname}.v{self.firmware}".encode()),
            (10, struct.pack(">I", self.uptime_seconds)),
            (11, self.hostname.encode()),
            (12, self.model.encode()),
            (18, struct.pack(">I", sequence)),
            (19, self.mac),
            (21, self.model.encode()),
            (22, self.firmware.encode()),
            (27, self.firmware.encode()),
        ]
        body = bytearray()
        for tlv_type, value in entries:
            body.append(tlv_type)
            body += struct.pack(">H", len(value))
            body += value

        header = bytes([version, command, 0, len(body)])
        return header + bytes(body)


if __name__ == "__main__":
    mac = bytes.fromhex("00" + "0db94765f9")
    payload = {"mac": "00:0d:b9:47:65:f9", "model": "US8P150", "state": 1}

    for use_gcm in (False, True):
        packet = encode_inform(payload, mac, use_gcm=use_gcm)
        decoded = decode_inform(packet)
        assert decoded["data"] == payload, decoded
        print(f"round-trip OK (gcm={use_gcm}), packet size={len(packet)}")

    tlv = DiscoveryTLVBuilder(
        mac=mac,
        ip=bytes([192, 168, 1, 50]),
        hostname="switch01",
        model="US8P150",
        firmware="1.0.0",
        uptime_seconds=42,
    )
    disco = tlv.build(sequence=1)
    print(f"discovery packet: {disco.hex()}")
