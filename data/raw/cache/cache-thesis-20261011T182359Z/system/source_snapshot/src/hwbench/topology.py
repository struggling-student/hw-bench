"""Discover CPU sockets and NUMA memory tiers without assuming node numbers."""

from __future__ import annotations

import argparse
import json
import platform
import re
import subprocess
from pathlib import Path
from typing import Any


def _text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8").strip()
    except OSError:
        return ""


def _expand_cpu_list(spec: str) -> list[int]:
    cpus: list[int] = []
    for part in filter(None, (item.strip() for item in spec.split(","))):
        if "-" in part:
            start, end = (int(value) for value in part.split("-", 1))
            cpus.extend(range(start, end + 1))
        else:
            cpus.append(int(part))
    return cpus


def _lscpu() -> dict[str, Any]:
    completed = subprocess.run(
        ["lscpu", "--json"], check=True, capture_output=True, text=True
    )
    return {
        row["field"].rstrip(":"): row.get("data")
        for row in json.loads(completed.stdout)["lscpu"]
    }


def discover(root: str | Path = "/sys/devices/system/node") -> dict[str, Any]:
    """Return a machine-readable socket/tier map derived from Linux topology."""

    base = Path(root)
    lscpu = _lscpu()
    cpu_to_socket: dict[int, int] = {}
    core_keys: set[tuple[int, int]] = set()
    rows = subprocess.run(
        ["lscpu", "-p=CPU,SOCKET,CORE"], check=True, capture_output=True, text=True
    ).stdout
    for line in rows.splitlines():
        if not line or line.startswith("#"):
            continue
        cpu, socket, core = (int(value) for value in line.split(","))
        cpu_to_socket[cpu] = socket
        core_keys.add((socket, core))

    nodes: list[dict[str, Any]] = []
    for node_dir in sorted(base.glob("node[0-9]*"), key=lambda p: int(p.name[4:])):
        node_id = int(node_dir.name[4:])
        cpu_spec = _text(node_dir / "cpulist")
        cpus = _expand_cpu_list(cpu_spec)
        meminfo = _text(node_dir / "meminfo")
        match = re.search(r"MemTotal:\s+(\d+)\s+kB", meminfo)
        memory_bytes = int(match.group(1)) * 1024 if match else 0
        distances = [int(value) for value in _text(node_dir / "distance").split()]
        sockets = sorted({cpu_to_socket[cpu] for cpu in cpus if cpu in cpu_to_socket})
        nodes.append(
            {
                "node": node_id,
                "cpulist": cpu_spec,
                "cpus": cpus,
                "has_cpus": bool(cpus),
                "socket": sockets[0] if len(sockets) == 1 else None,
                "memory_bytes": memory_bytes,
                "memory_gib": memory_bytes / 2**30,
                "distances": distances,
            }
        )

    memory_only = [node for node in nodes if node["memory_bytes"] and not node["has_cpus"]]
    mode = "flat" if memory_only else "cache"
    cpu_nodes = [node for node in nodes if node["has_cpus"]]
    for node in nodes:
        if node["has_cpus"]:
            node["memory_tier"] = "ddr"
            continue
        if node["memory_bytes"]:
            node["memory_tier"] = "hbm"
            candidates = [
                (node["distances"][candidate["node"]], candidate)
                for candidate in cpu_nodes
                if candidate["node"] < len(node["distances"])
            ]
            if candidates:
                _, local = min(candidates, key=lambda item: item[0])
                node["local_cpu_node"] = local["node"]
                node["socket"] = local["socket"]
        else:
            node["memory_tier"] = "none"

    sockets: list[dict[str, Any]] = []
    for socket in sorted(set(cpu_to_socket.values())):
        socket_nodes = [node for node in nodes if node.get("socket") == socket]
        physical_cores = len({core for sock, core in core_keys if sock == socket})
        sockets.append(
            {
                "socket": socket,
                "physical_cores": physical_cores,
                "logical_cpus": sorted(cpu for cpu, sock in cpu_to_socket.items() if sock == socket),
                "cpu_nodes": [node["node"] for node in socket_nodes if node["has_cpus"]],
                "ddr_nodes": [node["node"] for node in socket_nodes if node["memory_tier"] == "ddr"],
                "hbm_nodes": [node["node"] for node in socket_nodes if node["memory_tier"] == "hbm"],
            }
        )

    return {
        "schema_version": "1.0",
        "hostname": platform.node(),
        "cpu_model": lscpu.get("Model name"),
        "architecture": lscpu.get("Architecture"),
        "memory_mode": mode,
        "socket_count": len(sockets),
        "physical_cores": len(core_keys),
        "logical_cpus": len(cpu_to_socket),
        "threads_per_core": int(lscpu.get("Thread(s) per core") or 0),
        "sockets": sockets,
        "numa_nodes": nodes,
        "mapping_method": "CPU-bearing nodes are DDR; CPU-less memory nodes are HBM and are paired to the nearest CPU node by NUMA distance.",
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path)
    parser.add_argument("--expect-mode", choices=("cache", "flat"))
    args = parser.parse_args(argv)
    result = discover()
    if args.expect_mode and result["memory_mode"] != args.expect_mode:
        raise SystemExit(
            f"expected {args.expect_mode} mode, detected {result['memory_mode']} on {result['hostname']}"
        )
    payload = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(payload, encoding="utf-8")
    else:
        print(payload, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
