import os
from pathlib import Path

from hwbench.platform_record import (
    edac_memory,
    job_cgroup,
    kernel_policy,
    memory_side_caches,
    selected_option,
    telemetry_access,
)


def _write(path: Path, value: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(value + "\n", encoding="utf-8")


def test_selected_option() -> None:
    assert selected_option("[always] madvise never") == "always"
    assert selected_option("always defer defer+madvise [madvise] never") == "madvise"
    assert selected_option("false") == "false"
    assert selected_option(None) is None


def test_memory_side_cache_as_reported_in_cache_mode(tmp_path: Path) -> None:
    index = tmp_path / "node0" / "memory_side_cache" / "index1"
    _write(index / "size", "68719476736")
    _write(index / "line_size", "64")
    _write(index / "indexing", "0")
    _write(index / "write_policy", "0")
    (tmp_path / "node1").mkdir()

    caches = memory_side_caches(tmp_path)

    assert list(caches) == ["0"]
    assert caches["0"] == [
        {
            "level": "1",
            "size_bytes": 64 * 2**30,
            "line_size_bytes": 64,
            "indexing": "direct-mapped",
            "write_policy": "write-back",
        }
    ]


def test_edac_separates_ddr_dimms_from_hbm_channels(tmp_path: Path) -> None:
    for mc, chan in ((0, 0), (0, 1), (1, 0)):
        dimm = tmp_path / f"mc{mc}" / f"dimm{2 * chan}"
        _write(dimm / "size", "65536")
        _write(dimm / "dimm_mem_type", "Unbuffered-DDR5")
        _write(dimm / "dimm_label", f"CPU_SrcID#0_MC#{mc}_Chan#{chan}_DIMM#0")
    hbm = tmp_path / "mc10" / "dimm0"
    _write(hbm / "size", "2048")
    _write(hbm / "dimm_label", "CPU_SrcID#0_HBMC#10_Chan#0")
    empty = tmp_path / "mc2" / "dimm0"
    _write(empty / "size", "0")

    memory = edac_memory(tmp_path)

    assert len(memory["devices"]) == 4
    assert memory["per_socket"]["0"] == {
        "ddr_dimms": 3,
        "ddr_mib": 3 * 65536,
        "ddr_dimm_sizes_mib": [65536],
        "hbm_channels": 1,
        "hbm_mib": 2048,
    }


def test_kernel_policy(tmp_path: Path) -> None:
    proc, mm = tmp_path / "proc", tmp_path / "mm"
    _write(proc / "sys" / "kernel" / "numa_balancing", "0")
    _write(proc / "sys" / "vm" / "zone_reclaim_mode", "1")
    _write(proc / "sys" / "kernel" / "perf_event_paranoid", "2")
    _write(proc / "cmdline", "ro intel_pstate=disable")
    _write(mm / "numa" / "demotion_enabled", "false")
    _write(mm / "transparent_hugepage" / "enabled", "[always] madvise never")
    _write(mm / "transparent_hugepage" / "defrag", "always defer defer+madvise [madvise] never")

    policy = kernel_policy(proc, mm)

    assert policy["numa_balancing"] == 0
    assert policy["zone_reclaim_mode"] == 1
    assert policy["transparent_hugepage"] == "always"
    assert policy["transparent_hugepage_defrag"] == "madvise"
    assert policy["perf_event_paranoid"] == 2


def test_telemetry_access_distinguishes_missing_from_unreadable(tmp_path: Path) -> None:
    energy = tmp_path / "powercap" / "intel-rapl:0" / "energy_uj"
    _write(energy, "123")
    energy.chmod(0)
    (tmp_path / "events" / "uncore_imc_0").mkdir(parents=True)
    (tmp_path / "events" / "uncore_imc_1").mkdir()
    (tmp_path / "events" / "cpu").mkdir()

    access = telemetry_access(tmp_path / "powercap", tmp_path / "dev_cpu", tmp_path / "events")

    energy.chmod(0o644)
    # Root can read a mode-000 file, so only an ordinary user sees False.
    assert access["rapl_energy_readable"] is (os.geteuid() == 0)
    assert access["msr_readable"] is None
    assert access["event_sources"] == ["cpu", "uncore_imc"]


def test_job_cgroup(tmp_path: Path) -> None:
    _write(tmp_path / "self_cgroup", "0::/system.slice/job_1/step_batch")
    base = tmp_path / "cg" / "system.slice" / "job_1" / "step_batch"
    _write(base / "cpuset.mems.effective", "0-1")
    _write(base / "cpuset.cpus.effective", "0-111")

    cgroup = job_cgroup(tmp_path / "self_cgroup", tmp_path / "cg")

    assert cgroup["path"] == "/system.slice/job_1/step_batch"
    assert cgroup["cpuset_mems_effective"] == "0-1"
    assert cgroup["memory_max"] is None
