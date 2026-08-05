"""Throwaway recon driver: point the inform_protocol/device_state scaffold at a
REAL UniFi Network Application and record how it responds.

This is deliberately not part of the shim's eventual "real" network loop
(shim/README.md's "what's not here yet" list) -- it's a Phase 2/4 crossover
probe: run the existing codec against a live controller, pre-adoption, to
resolve some of the "still genuinely unknown" items in
docs/01-phase1-protocol-recon.md (raw inform payload shape vs REST API,
CBC-vs-GCM, what an unadopted-device POST actually gets back) without
needing real hardware yet.

Must run from inside the controller's management VLAN/subnet (L2 discovery
is a broadcast; the inform POST needs to reach the controller's container
IP directly since :8080 isn't published to the host).

Usage: python3 probe_controller.py <controller_ip>
"""
from __future__ import annotations

import socket
import sys
import time

import requests

from device_state import SwitchState
from inform_protocol import DEFAULT_ADOPTION_KEY, DiscoveryTLVBuilder, decode_inform, encode_inform

# Locally-administered MAC (bit 1 of first octet set) -- clearly fake, not
# impersonating any real device's OUI/address for this recon probe.
FAKE_MAC_HEX = "020000000001"
FAKE_MAC = bytes.fromhex(FAKE_MAC_HEX)
FAKE_MAC_STR = ":".join(FAKE_MAC_HEX[i : i + 2] for i in range(0, 12, 2))


def send_discovery(broadcast_ip: str, my_ip: str) -> None:
    tlv = DiscoveryTLVBuilder(
        mac=FAKE_MAC,
        ip=bytes(int(o) for o in my_ip.split(".")),
        hostname="sg2210mp-shim",
        model="US8P150",
        firmware="5.11.0.11599",
        uptime_seconds=42,
    )
    packet = tlv.build(sequence=1)
    print(f"[discovery] {len(packet)} bytes, hex={packet.hex()}")
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    sock.sendto(packet, (broadcast_ip, 10001))
    sock.close()
    print(f"[discovery] sent to {broadcast_ip}:10001")


def try_inform(controller_ip: str, my_ip: str, use_gcm: bool) -> None:
    state = SwitchState(
        mac=FAKE_MAC_STR,
        serial="SG2210MPSHIM01",
        ip=my_ip,
        inform_url=f"http://{controller_ip}:8080/inform",
    )
    payload = state.to_inform_payload()
    packet = encode_inform(payload, FAKE_MAC, use_gcm=use_gcm)
    print(f"\n[inform:{'gcm' if use_gcm else 'cbc'}] sending {len(packet)} bytes to "
          f"http://{controller_ip}:8080/inform")
    try:
        resp = requests.post(
            f"http://{controller_ip}:8080/inform",
            data=packet,
            headers={"Content-Type": "application/x-binary"},
            timeout=10,
        )
    except requests.RequestException as exc:
        print(f"[inform:{'gcm' if use_gcm else 'cbc'}] request failed: {exc!r}")
        return

    print(f"[inform:{'gcm' if use_gcm else 'cbc'}] status={resp.status_code}")
    print(f"[inform:{'gcm' if use_gcm else 'cbc'}] headers={dict(resp.headers)}")
    body = resp.content
    print(f"[inform:{'gcm' if use_gcm else 'cbc'}] body_len={len(body)} raw={body[:200]!r}")

    if body[:4] == b"TNBU":
        try:
            decoded = decode_inform(body, key=DEFAULT_ADOPTION_KEY)
            print(f"[inform:{'gcm' if use_gcm else 'cbc'}] decoded with default key: {decoded}")
        except Exception as exc:
            print(f"[inform:{'gcm' if use_gcm else 'cbc'}] decode with default key failed: {exc!r}")


def probe_http_surface(controller_ip: str) -> None:
    for port, scheme in ((8080, "http"), (8443, "https"), (8843, "https"), (8880, "http")):
        url = f"{scheme}://{controller_ip}:{port}/"
        try:
            resp = requests.get(url, timeout=5, verify=False)
            print(f"[surface] {url} -> {resp.status_code}, "
                  f"server={resp.headers.get('Server')!r}, len={len(resp.content)}")
        except requests.RequestException as exc:
            print(f"[surface] {url} -> {exc!r}")


def main() -> None:
    if len(sys.argv) != 3:
        print("usage: probe_controller.py <controller_ip> <my_ip>", file=sys.stderr)
        sys.exit(1)
    controller_ip, my_ip = sys.argv[1], sys.argv[2]
    broadcast_ip = ".".join(my_ip.split(".")[:3]) + ".255"

    print("=== HTTP surface probe ===")
    probe_http_surface(controller_ip)

    print("\n=== L2 discovery broadcast ===")
    send_discovery(broadcast_ip, my_ip)
    time.sleep(1)

    print("\n=== inform POST (CBC, default adoption key) ===")
    try_inform(controller_ip, my_ip, use_gcm=False)

    print("\n=== inform POST (GCM, default adoption key) ===")
    try_inform(controller_ip, my_ip, use_gcm=True)


if __name__ == "__main__":
    main()
