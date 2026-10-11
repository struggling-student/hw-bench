"""Record the platform configuration that conditions every measurement.

The record covers what the topology map does not: the memory-side cache that
Cache Mode exposes through ACPI HMAT, the DIMM population reported by EDAC,
frequency control, kernel page policies, counter and energy permissions, the
job's cgroup, network adapters, and local storage.  Every probe is
best-effort and readable without root; an unreadable source is recorded as
such, because its unreadability is itself part of the platform record.
"""

from __future__ import annotations

import argparse
import json
import os
import platform
import re
import shutil
from pathlib import Path
from typing import Any

ISA_PREFIXES = ("amx", "avx512", "avx_vnni")


def _text(path: Path) -> str | None:
    try:
        return path.read_text(encoding="utf-8").strip()
    except OSError:
        return None


def _int(path: Path) -> int | None:
    value = _text(path)
    try:
        return int(value) if value is not None else None
    except ValueError:
        return None


def selected_option(value: str | None) -> str | None:
    """Return the bracketed choice of a sysfs option list such as THP's."""

    if value is None:
        return None
    match = re.search(r"\[([^\]]+)\]", value)
    return match.group(1) if match else value


def memory_side_caches(node_root: Path) -> dict[str, list[dict[str, Any]]]:
    """Memory-side caches per NUMA node, as described by ACPI HMAT."""

    caches: dict[str, list[dict[str, Any]]] = {}
    for node_dir in sorted(node_root.glob("node[0-9]*"), key=lambda p: int(p.name[4:])):
        entries = []
        for index in sorted((node_dir / "memory_side_cache").glob("index*")):
            indexing = _int(index / "indexing")
            write_policy = _int(index / "write_policy")
            entries.append(
                {
                    "level": index.name[len("index"):],
                    "size_bytes": _int(index / "size"),
                    "line_size_bytes": _int(index / "line_size"),
                    # Documentation/admin-guide/mm/numaperf.rst: 0 means
                    # direct-mapped and write-back respectively.
                    "indexing": None if indexing is None
                    else ("direct-mapped" if indexing == 0 else "associative"),
                    "write_policy": None if write_policy is None
                    else ("write-back" if write_policy == 0 else "write-through"),
                }
            )
        if entries:
            caches[node_dir.name[4:]] = entries
    return caches


def hmat_access(node_root: Path) -> dict[str, dict[str, int | None]]:
    """Firmware-reported access attributes (MiB/s and ns) per NUMA node."""

    access: dict[str, dict[str, int | None]] = {}
    for node_dir in sorted(node_root.glob("node[0-9]*"), key=lambda p: int(p.name[4:])):
        initiators = node_dir / "access0" / "initiators"
        if not initiators.is_dir():
            continue
        access[node_dir.name[4:]] = {
            name: _int(initiators / name)
            for name in ("read_bandwidth", "write_bandwidth", "read_latency", "write_latency")
        }
    return access


def edac_memory(edac_root: Path) -> dict[str, Any]:
    """DIMMs and HBM pseudo-channels reported by the EDAC driver.

    Labels such as ``CPU_SrcID#0_MC#2_Chan#1_DIMM#0`` name a DDR DIMM, while
    ``CPU_SrcID#0_HBMC#10_Chan#0`` names an HBM pseudo-channel.
    """

    devices = []
    for dimm in sorted(edac_root.glob("mc*/dimm*")):
        size = _int(dimm / "size")
        if not size:
            continue
        label = _text(dimm / "dimm_label") or ""
        socket = re.search(r"SrcID#(\d+)", label)
        devices.append(
            {
                "controller": dimm.parent.name,
                "label": label,
                "socket": int(socket.group(1)) if socket else None,
                "kind": "hbm" if "HBMC#" in label else "ddr",
                "size_mib": size,
                "type": _text(dimm / "dimm_mem_type"),
            }
        )

    per_socket: dict[str, dict[str, Any]] = {}
    for device in devices:
        key = str(device["socket"])
        summary = per_socket.setdefault(
            key, {"ddr_dimms": 0, "ddr_mib": 0, "ddr_dimm_sizes_mib": [], "hbm_channels": 0, "hbm_mib": 0}
        )
        if device["kind"] == "ddr":
            summary["ddr_dimms"] += 1
            summary["ddr_mib"] += device["size_mib"]
            if device["size_mib"] not in summary["ddr_dimm_sizes_mib"]:
                summary["ddr_dimm_sizes_mib"].append(device["size_mib"])
        else:
            summary["hbm_channels"] += 1
            summary["hbm_mib"] += device["size_mib"]
    return {"devices": devices, "per_socket": per_socket}


def processor(cpu_root: Path, cpuinfo: Path) -> dict[str, Any]:
    info = _text(cpuinfo) or ""
    first = info.split("\n\n", 1)[0]
    fields = {
        key.strip(): value.strip()
        for key, _, value in (line.partition(":") for line in first.splitlines())
    }
    flags = fields.get("flags", "").split()
    cpufreq = cpu_root / "cpu0" / "cpufreq"
    return {
        "model_name": fields.get("model name"),
        "microcode": fields.get("microcode"),
        "isa_flags": sorted(flag for flag in flags if flag.startswith(ISA_PREFIXES)),
        "smt_active": _int(cpu_root / "smt" / "active"),
        "smt_control": _text(cpu_root / "smt" / "control"),
        "scaling_driver": _text(cpufreq / "scaling_driver"),
        "scaling_governor": _text(cpufreq / "scaling_governor"),
        "cpuinfo_min_khz": _int(cpufreq / "cpuinfo_min_freq"),
        "cpuinfo_max_khz": _int(cpufreq / "cpuinfo_max_freq"),
        "intel_pstate_status": _text(cpu_root / "intel_pstate" / "status"),
        "intel_pstate_no_turbo": _int(cpu_root / "intel_pstate" / "no_turbo"),
        "cpuidle_driver": _text(cpu_root / "cpuidle" / "current_driver"),
    }


def kernel_policy(proc: Path, sys_mm: Path) -> dict[str, Any]:
    return {
        "numa_balancing": _int(proc / "sys" / "kernel" / "numa_balancing"),
        "zone_reclaim_mode": _int(proc / "sys" / "vm" / "zone_reclaim_mode"),
        "numa_demotion_enabled": _text(sys_mm / "numa" / "demotion_enabled"),
        "transparent_hugepage": selected_option(_text(sys_mm / "transparent_hugepage" / "enabled")),
        "transparent_hugepage_defrag": selected_option(_text(sys_mm / "transparent_hugepage" / "defrag")),
        "perf_event_paranoid": _int(proc / "sys" / "kernel" / "perf_event_paranoid"),
        "kernel_cmdline": _text(proc / "cmdline"),
    }


def _readable(path: Path) -> bool | None:
    if not path.exists():
        return None
    try:
        with path.open("rb") as handle:
            handle.read(1)
        return True
    except OSError:
        return False


def telemetry_access(powercap: Path, dev_cpu: Path, event_sources: Path) -> dict[str, Any]:
    return {
        "rapl_energy_readable": _readable(powercap / "intel-rapl:0" / "energy_uj"),
        "msr_readable": _readable(dev_cpu / "0" / "msr"),
        "event_sources": sorted(
            {re.sub(r"_\d+$", "", p.name) for p in event_sources.iterdir()}
        ) if event_sources.is_dir() else [],
    }


def job_cgroup(self_cgroup: Path, cgroup_root: Path) -> dict[str, Any]:
    line = (_text(self_cgroup) or "").splitlines()
    path = line[-1].split(":", 2)[-1] if line else ""
    base = cgroup_root / path.lstrip("/")
    return {
        "path": path,
        "cpuset_cpus_effective": _text(base / "cpuset.cpus.effective"),
        "cpuset_mems_effective": _text(base / "cpuset.mems.effective"),
        "memory_max": _text(base / "memory.max"),
    }


def infiniband(ib_root: Path) -> list[dict[str, Any]]:
    ports = []
    for port in sorted(ib_root.glob("*/ports/*")):
        ports.append(
            {
                "device": port.parent.parent.name,
                "port": port.name,
                "state": _text(port / "state"),
                "rate": _text(port / "rate"),
                "link_layer": _text(port / "link_layer"),
            }
        )
    return ports


def storage(block_root: Path, mounts: tuple[str, ...]) -> dict[str, Any]:
    disks = []
    for disk in sorted(block_root.iterdir()) if block_root.is_dir() else []:
        if disk.name.startswith(("loop", "ram", "zram", "dm-")):
            continue
        sectors = _int(disk / "size")
        disks.append(
            {
                "name": disk.name,
                "size_bytes": sectors * 512 if sectors is not None else None,
                "rotational": _int(disk / "queue" / "rotational"),
                "model": _text(disk / "device" / "model"),
            }
        )
    filesystems = {}
    for mount in mounts:
        try:
            usage = shutil.disk_usage(mount)
        except OSError:
            continue
        filesystems[mount] = {"total_bytes": usage.total, "free_bytes": usage.free}
    return {"block_devices": disks, "filesystems": filesystems}


def os_release(path: Path) -> dict[str, str]:
    release = {}
    for line in (_text(path) or "").splitlines():
        key, _, value = line.partition("=")
        if key in ("NAME", "VERSION_ID", "PRETTY_NAME"):
            release[key.lower()] = value.strip('"')
    return release


def collect() -> dict[str, Any]:
    """Collect the platform record of the running node."""

    sys_root = Path("/sys")
    node_root = sys_root / "devices" / "system" / "node"
    return {
        "schema_version": "1.0",
        "hostname": platform.node(),
        "slurm": {
            key.lower(): os.environ.get(key)
            for key in ("SLURM_JOB_ID", "SLURM_JOB_PARTITION", "SLURM_JOB_NODELIST")
        },
        "os": {**os_release(Path("/etc/os-release")), "kernel": platform.release()},
        "processor": processor(sys_root / "devices" / "system" / "cpu", Path("/proc/cpuinfo")),
        "memory_side_cache": memory_side_caches(node_root),
        "hmat_access": hmat_access(node_root),
        "edac_memory": edac_memory(sys_root / "devices" / "system" / "edac" / "mc"),
        "kernel_policy": kernel_policy(Path("/proc"), sys_root / "kernel" / "mm"),
        "telemetry_access": telemetry_access(
            sys_root / "class" / "powercap", Path("/dev/cpu"), sys_root / "bus" / "event_source" / "devices"
        ),
        "cgroup": job_cgroup(Path("/proc/self/cgroup"), sys_root / "fs" / "cgroup"),
        "infiniband": infiniband(sys_root / "class" / "infiniband"),
        "storage": storage(sys_root / "block", ("/tmp", "/dev/shm")),
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--output", type=Path)
    args = parser.parse_args(argv)
    payload = json.dumps(collect(), indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(payload, encoding="utf-8")
    else:
        print(payload, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
