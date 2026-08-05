"""Throwaway recon tool: keep the fake device "alive" continuously (L2
discovery + inform, like a real device does every ~10-20s) while also
running the SSH adoption-capture server -- all from one process bound to
the same IP the controller already associates with this MAC, since the
controller's adopt attempt connects back to the device's own IP.

Not part of the shim's eventual persistent network loop (see
shim/README.md) -- purpose-built for this one recon session to (a) keep
the "ready for adoption" pending state from expiring again before there's
time to click Adopt in the UI, and (b) capture the real set-adopt SSH
command when it happens.

Run with: python3 persistent_shim.py <controller_ip> <my_ip>
"""
from __future__ import annotations

import asyncio
import json
import os
import socket
import sys
import time

import asyncssh
import requests
import urllib3

urllib3.disable_warnings()

from device_state import SwitchState
from inform_protocol import DEFAULT_ADOPTION_KEY, DiscoveryTLVBuilder, decode_inform, encode_inform

STATE_PATH = "/shim/state.json"

current_key = DEFAULT_ADOPTION_KEY
current_cfgversion = "?"
adopted = False


def _load_state() -> None:
    """Real devices persist their assigned key to local flash; this shim
    needs to do the same across container restarts, or a restart looks to
    the controller like the device forgot its key and reverted to the
    factory default -- which it will now reject, since it's adopted."""
    global current_key, current_cfgversion, adopted
    if not os.path.exists(STATE_PATH):
        return
    with open(STATE_PATH) as f:
        state = json.load(f)
    current_key = bytes.fromhex(state["key_hex"])
    current_cfgversion = state["cfgversion"]
    adopted = state["adopted"]
    print(f"[state] loaded: key={state['key_hex']} cfgversion={current_cfgversion!r} adopted={adopted}",
          flush=True)


def _save_state() -> None:
    with open(STATE_PATH, "w") as f:
        json.dump({"key_hex": current_key.hex(), "cfgversion": current_cfgversion, "adopted": adopted}, f)

FAKE_MAC_HEX = "020000000001"
FAKE_MAC = bytes.fromhex(FAKE_MAC_HEX)
FAKE_MAC_STR = ":".join(FAKE_MAC_HEX[i : i + 2] for i in range(0, 12, 2))


class CaptureServer(asyncssh.SSHServer):
    def connection_made(self, conn):
        peer = conn.get_extra_info("peername")
        print(f"[ssh] connection from {peer}", flush=True)

    def connection_lost(self, exc):
        print(f"[ssh] connection closed ({exc!r})", flush=True)

    def begin_auth(self, username):
        print(f"[ssh] begin_auth user={username!r}", flush=True)
        return True

    def password_auth_supported(self):
        return True

    def validate_password(self, username, password):
        print(f"[ssh] password auth: user={username!r} password={password!r}", flush=True)
        return True

    def kbdint_auth_supported(self):
        return False

    def public_key_auth_supported(self):
        return False


async def handle_process(process: asyncssh.SSHServerProcess) -> None:
    cmd = process.command
    print(f"[ssh] EXEC COMMAND: {cmd!r}", flush=True)
    if process.env:
        print(f"[ssh] env: {dict(process.env)!r}", flush=True)
    process.stdout.write("")
    process.exit(0)


async def run_ssh_server() -> None:
    host_key = asyncssh.generate_private_key("ssh-rsa")
    await asyncssh.create_server(
        CaptureServer,
        "0.0.0.0",
        22,
        server_host_keys=[host_key],
        process_factory=handle_process,
    )
    print("[ssh] listening on 0.0.0.0:22", flush=True)


def send_discovery(broadcast_ip: str, my_ip: str, sequence: int) -> None:
    tlv = DiscoveryTLVBuilder(
        mac=FAKE_MAC,
        ip=bytes(int(o) for o in my_ip.split(".")),
        hostname="sg2210mp-shim",
        model="US8P150",
        firmware="5.11.0.11599",
        uptime_seconds=int(time.monotonic()),
    )
    packet = tlv.build(sequence=sequence)
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    sock.sendto(packet, (broadcast_ip, 10001))
    sock.close()
    print(f"[discovery] sent seq={sequence}", flush=True)


def _apply_mgmt_cfg(mgmt_cfg: str) -> None:
    """Parse the setparam response's newline-delimited key=value config
    block and apply anything we track (new authkey, cfgversion)."""
    global current_key, current_cfgversion, adopted
    for line in mgmt_cfg.splitlines():
        if "=" not in line:
            continue
        key, _, value = line.partition("=")
        if key == "authkey":
            current_key = bytes.fromhex(value)
            adopted = True
            print(f"[adopt] switching to new authkey: {value}", flush=True)
        elif key == "cfgversion":
            current_cfgversion = value
            print(f"[adopt] cfgversion now: {value}", flush=True)
    _save_state()


def send_inform(controller_ip: str, my_ip: str) -> None:
    state = SwitchState(
        mac=FAKE_MAC_STR,
        serial="SG2210MPSHIM01",
        ip=my_ip,
        inform_url=f"http://{controller_ip}:8080/inform",
    )
    state.adopted = adopted
    state.cfgversion = current_cfgversion
    payload = state.to_inform_payload()
    packet = encode_inform(payload, FAKE_MAC, key=current_key)
    try:
        resp = requests.post(
            f"http://{controller_ip}:8080/inform",
            data=packet,
            headers={"Content-Type": "application/x-binary"},
            timeout=10,
        )
        print(f"[inform] status={resp.status_code} body_len={len(resp.content)} "
              f"sent_key={current_key.hex()} sent_cfgversion={current_cfgversion!r} "
              f"sent_adopted={state.adopted}", flush=True)
        if resp.content[:4] == b"TNBU":
            for label, key in (("current", current_key), ("default", DEFAULT_ADOPTION_KEY)):
                try:
                    decoded = decode_inform(resp.content, key=key)
                    print(f"[inform] response decoded with {label} key: {decoded}", flush=True)
                    data = decoded.get("data", {})
                    if data.get("_type") == "setparam" and "mgmt_cfg" in data:
                        _apply_mgmt_cfg(data["mgmt_cfg"])
                    break
                except Exception as exc:
                    print(f"[inform] response decode with {label} key failed: {exc!r}", flush=True)
        elif resp.content:
            print(f"[inform] response raw (not TNBU): {resp.content[:300]!r}", flush=True)
    except requests.RequestException as exc:
        print(f"[inform] failed: {exc!r}", flush=True)


async def run_announce_loop(controller_ip: str, my_ip: str) -> None:
    broadcast_ip = ".".join(my_ip.split(".")[:3]) + ".255"
    seq = 1
    while True:
        send_discovery(broadcast_ip, my_ip, seq)
        send_inform(controller_ip, my_ip)
        seq += 1
        await asyncio.sleep(10)


async def main() -> None:
    if len(sys.argv) != 3:
        print("usage: persistent_shim.py <controller_ip> <my_ip>", file=sys.stderr)
        sys.exit(1)
    controller_ip, my_ip = sys.argv[1], sys.argv[2]
    _load_state()
    await run_ssh_server()
    await run_announce_loop(controller_ip, my_ip)


if __name__ == "__main__":
    asyncio.run(main())
