"""Throwaway recon tool: minimal SSH server to capture the controller's real
adoption command, not part of the shim's eventual SSH-adoption handling.

The controller adopts a device by SSHing in with the factory default
`ubnt:ubnt` and running `syswrapper.sh set-adopt <inform_url> <key>`
(per docs/00-plan.md) -- but nobody has published the exact command syntax
or what it expects back. Rather than guess, accept the login (default creds
are public knowledge, not a secret) and log whatever command actually gets
exec'd, then report success so the controller proceeds as if adoption
worked, in case it reveals a further step (e.g. a wait for the next inform
with a new key).

Run with: python3 ssh_adopt_capture.py
"""
from __future__ import annotations

import asyncio

import asyncssh


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


async def main() -> None:
    host_key = asyncssh.generate_private_key("ssh-rsa")
    await asyncssh.create_server(
        CaptureServer,
        "0.0.0.0",
        22,
        server_host_keys=[host_key],
        process_factory=handle_process,
    )
    print("[ssh] listening on 0.0.0.0:22", flush=True)
    await asyncio.Event().wait()


if __name__ == "__main__":
    asyncio.run(main())
