"""Fake-device state model for impersonating a US-8-150W (model US8P150).

Field names and structure come from phase1-recon-findings.md (USW/Port
structs verified against unifi-poller's real Go source, and the model
capability table in unifi_device_models.json). Not yet validated against
real inform traffic — Phase 2 work.

This module only builds the data structures; it doesn't talk to Omada or
the network. Wiring this into an actual Omada-backed poller/controller is
deferred pending real hardware (the SG2210MP) and a live Omada controller
to test the mapping against.
"""
from __future__ import annotations

from dataclasses import dataclass, field

MODEL = "US8P150"
STANDARD_PORTS = 8
SFP_PORTS = (9, 10)
TOTAL_MAX_POWER = 150

# ChipUP XS2184 class-detect register -> wattage (deciwatts), recovered
# from disassembling adPoeGetPortClassFromRegVal_xs2184 in the real
# TL-SG2210MP firmware (see disasm/xs2184_poe_driver_analysis.md).
# Matches the IEEE 802.3 PoE class power table. Useful if/when the shim
# needs to translate an Omada-reported PoE class into the same convention
# UniFi's port_table.poe_class field expects.
POE_CLASS_DECIWATTS = {
    2: 40,   # Class 1 -> 4.0W
    3: 70,   # Class 2 -> 7.0W
    4: 154,  # Class 3 -> 15.4W
    5: 300,  # Class 4 -> 30.0W
}
POE_CLASS_DEFAULT_DECIWATTS = 901  # unknown/sentinel


def _default_port(port_idx: int, is_sfp: bool) -> dict:
    port = {
        "port_idx": port_idx,
        "name": f"Port {port_idx}",
        "media": "GE" if not is_sfp else "SFP",
        "port_poe": not is_sfp,
        "enable": True,
        "up": False,
        "speed": 0,
        "full_duplex": False,
        "autoneg": True,
        "is_uplink": False,
        "op_mode": "switch",
        "stp_state": "disabled",
        "flowctrl_rx": False,
        "flowctrl_tx": False,
        "rx_bytes": 0,
        "tx_bytes": 0,
        "rx_packets": 0,
        "tx_packets": 0,
        "rx_errors": 0,
        "tx_errors": 0,
        "rx_dropped": 0,
        "tx_dropped": 0,
        "rx_broadcast": 0,
        "tx_broadcast": 0,
        "rx_multicast": 0,
        "tx_multicast": 0,
        "portconf_id": "",
    }
    if not is_sfp:
        port.update(
            {
                "poe_enable": False,
                "poe_mode": "auto",
                "poe_good": False,
                "poe_class": "",
                "poe_power": "0.00",
                "poe_voltage": "0.00",
                "poe_current": "0.00",
                "poe_caps": 7,
            }
        )
    else:
        port.update(
            {
                "sfp_found": False,
                "sfp_part": "",
                "sfp_vendor": "",
                "sfp_serial": "",
                "sfp_rev": "",
                "sfp_compliance": "",
            }
        )
    return port


def build_port_table() -> list[dict]:
    ports = [_default_port(i, is_sfp=False) for i in range(1, STANDARD_PORTS + 1)]
    ports += [_default_port(i, is_sfp=True) for i in SFP_PORTS]
    return ports


@dataclass
class SwitchState:
    mac: str
    serial: str
    ip: str
    inform_url: str
    adopted: bool = False
    model: str = MODEL
    board_rev: int = 1
    version: str = "5.11.0.11599"
    cfgversion: str = "?"
    port_table: list[dict] = field(default_factory=build_port_table)
    port_overrides: list[dict] = field(default_factory=list)
    total_max_power: int = TOTAL_MAX_POWER

    def to_inform_payload(self) -> dict:
        """Shape matching USW's inform/REST fields (see phase1-recon-findings.md)."""
        return {
            "mac": self.mac,
            "serial": self.serial,
            "ip": self.ip,
            "model": self.model,
            "board_rev": self.board_rev,
            "version": self.version,
            "cfgversion": self.cfgversion,
            "adopted": self.adopted,
            "inform_url": self.inform_url,
            "is_access_point": False,
            "type": "usw",
            "total_max_power": self.total_max_power,
            "port_table": self.port_table,
            "port_overrides": self.port_overrides,
            "switch_caps": {
                "feature_caps": 0,
                "max_mirror_sessions": 4,
                "max_aggregate_sessions": 8,
            },
        }

    def apply_port_override(self, port_idx: int, **fields) -> None:
        """Handle a controller config-push (port_overrides in a set-param inform reply)."""
        for override in self.port_overrides:
            if override["port_idx"] == port_idx:
                override.update(fields)
                break
        else:
            self.port_overrides.append({"port_idx": port_idx, **fields})

        for port in self.port_table:
            if port["port_idx"] == port_idx:
                port.update(fields)
                break


if __name__ == "__main__":
    state = SwitchState(
        mac="00:0d:b9:47:65:f9",
        serial="ABCDEF123456",
        ip="192.168.1.50",
        inform_url="http://192.168.1.1:8080/inform",
    )
    payload = state.to_inform_payload()
    assert len(payload["port_table"]) == STANDARD_PORTS + len(SFP_PORTS)
    assert payload["model"] == MODEL
    state.apply_port_override(3, poe_mode="off")
    assert state.port_table[2]["poe_mode"] == "off"
    print("device_state self-test OK,", len(payload["port_table"]), "ports")
