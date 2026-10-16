import math
from pathlib import Path

import pandas as pd
import pytest

from hwbench import report
from hwbench.roofline import (
    Ceiling,
    MemoryCeiling,
    WorkloadPoint,
    audit_points,
    compute_ceilings,
    envelope,
    memory_ceilings,
    primary_memory_ceiling,
    ridge,
)
from hwbench.theory import Theory


def test_envelope_and_ridge():
    assert envelope(0.5, 4000, 500) == 250
    assert envelope(100, 4000, 500) == 4000
    assert ridge(4000, 500) == 8
    assert ridge(1, 0) == math.inf
    series = envelope(pd.Series([1.0, 100.0]), 4000, 500)
    assert list(series) == [500.0, 4000.0]


def frame(rows):
    base = dict(
        campaign_id="c",
        memory_mode="flat",
        socket_scope="single",
        socket=0,
        locality="local",
        threads=56,
        working_set_gib=8.0,
        dtype=None,
        ghz_effective=float("nan"),
        amx_busy_frac=float("nan"),
        performance_gops=float("nan"),
        bandwidth_gbs=float("nan"),
        memory_target=None,
    )
    return pd.DataFrame([{**base, **row} for row in rows])


def test_compute_efficiency_is_reported_against_base_and_measured_clock():
    t = Theory.load()
    df = frame(
        [
            dict(
                benchmark="amx_peak",
                dtype="bf16",
                performance_gops=100_000,
                ghz_effective=1.96,
            ),
            dict(
                benchmark="amx_peak",
                dtype="bf16",
                performance_gops=102_000,
                ghz_effective=1.98,
            ),
            dict(
                benchmark="avx512_peak",
                dtype="fp64",
                performance_gops=4400,
                ghz_effective=2.46,
            ),
        ]
    )
    table = compute_ceilings(df, t).set_index("path")
    amx = table.loc["amx_bf16"]
    assert amx.scope == "1S" and amx.n_samples == 2
    assert math.isclose(amx.efficiency_base, 101_000 / (1024 * 56 * 1.9))
    assert amx.efficiency_at_clock < amx.efficiency_base  # clock above base: larger peak
    assert math.isclose(table.loc["fp64"].theory_gops_base, 32 * 56 * 1.9)


def test_memory_ceiling_prefers_best_sustained_kernel():
    df = frame(
        [
            dict(benchmark="stream_triad", memory_target="hbm", bandwidth_gbs=550.0),
            dict(benchmark="stream_read", memory_target="hbm", bandwidth_gbs=700.0),
            dict(benchmark="stream_triad_nt", memory_target="hbm", bandwidth_gbs=620.0),
            dict(benchmark="stream_triad", memory_target="ddr", bandwidth_gbs=235.0),
        ]
    )
    table = memory_ceilings(df)
    best = primary_memory_ceiling(table, "flat", "hbm", "1S")
    assert (best.kernel, best.gbs) == ("read", 700.0)
    assert primary_memory_ceiling(table, "flat", "ddr", "1S").kernel == "triad"
    assert primary_memory_ceiling(table, "cache", "hbm", "1S") is None


def test_workload_point_round_trips_to_a_dict():
    p = WorkloadPoint(
        "workload", "bf16", "avx512_bf16", 50.0, 1.0, bytes_source="pmu_ocr"
    )
    assert p.as_dict()["bytes_source"] == "pmu_ocr"


def _point(name, gops, intensity, cv=0.5, tier="hbm"):
    return WorkloadPoint(
        name, "fp64", "fp64", gops, intensity, mode="flat", memory_target=tier,
        provenance={"cv_percent": cv},
    )


def _ceilings(mem_cv=0.5):
    memory = [MemoryCeiling("measured_peak", "hbm", "triad", 500.0, "1S", "flat", cv_percent=mem_cv)]
    compute = [Ceiling("measured_peak", "fp64", "fp64", 4000.0, "GOP/s", "1S", "flat", 56)]
    return memory, compute


def test_audit_flags_only_points_above_the_bound_beyond_their_spread():
    memory, compute = _ceilings()
    points = [
        _point("below", 200.0, 0.5),  # bound 250
        _point("within spread", 251.0, 0.5, cv=1.0),  # +0.4% <= 1%
        _point("above memory slope", 260.0, 0.5),  # +4% > 0.5%
        _point("above compute roof", 4100.0, 100.0),  # compute-limited, +2.5%
    ]
    audit = audit_points(points, memory, compute).set_index("point")
    assert list(audit.exceeds) == [False, False, True, True]
    assert audit.loc["above memory slope", "limiting"] == "memory"
    assert audit.loc["above compute roof", "limiting"] == "compute"
    assert math.isclose(audit.loc["below", "bandwidth_gbs"], 400.0)


def test_audit_keeps_points_without_a_ceiling():
    memory, compute = _ceilings()
    audit = audit_points([_point("orphan", 10.0, 1.0, tier="ddr")], memory, [])
    assert audit.limiting.iloc[0] == "none" and not audit.exceeds.iloc[0]


def test_ceilings_on_committed_data_are_the_max_of_their_kernels():
    root = Path(__file__).resolve().parents[1]
    if not (root / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    _, thesis, ext, _ = report.load(root)
    table = report.bandwidth_summary(ext, thesis)
    # Cache-mode Triad must be present: it is the best kernel past the HBM cache.
    spilled = table[table.memory_mode.eq("cache") & table.working_set_gib.eq(96.0) & table.socket.eq(0)]
    assert "triad" in set(spilled.kernel)
    for mode, tier, kwargs in [
        ("flat", "hbm", {}),
        ("flat", "ddr", {}),
        ("cache", "effective_cache", {"resident_gib": 16}),
        ("cache", "effective_cache", {"at_gib": 96}),
    ]:
        best = report.memory_ceiling(ext, thesis, mode, tier, **kwargs)
        for access in ("read", "readwrite"):
            matched = report.memory_ceiling(ext, thesis, mode, tier, access=access, **kwargs)
            assert best.gbs >= matched.gbs, (mode, tier, access)
    spilled_best = report.memory_ceiling(ext, thesis, "cache", "effective_cache", at_gib=96)
    assert spilled_best.kernel == "triad"  # not non-temporal Triad, which is 21% lower


def test_counted_table_reports_counted_over_modeled_and_read_share():
    base = dict(
        memory_mode="flat", benchmark="stream_triad", kernel="triad", dtype=None, memory_target="hbm", threads=56,
        working_set_bytes=2400, m=None, n=None, k=None, notes="x", campaign_id="c", operations=200.0,
    )
    rows = pd.DataFrame(
        [
            dict(base, modeled_bytes=2400.0, dram_read_lines=26.0, dram_write_lines=12.0, counted_bytes=38 * 64.0, instructions=4.0, cycles=2.0),
            dict(base, modeled_bytes=2400.0, dram_read_lines=24.0, dram_write_lines=12.0, counted_bytes=36 * 64.0, instructions=4.0, cycles=2.0),
            dict(base, modeled_bytes=2400.0, dram_read_lines=float("nan"), dram_write_lines=float("nan"), counted_bytes=float("nan"), instructions=4.0, cycles=2.0),
        ]
    )
    t = report.counted_table(rows)
    assert len(t) == 1 and t.n_samples.iloc[0] == 2  # the sample without counters is left out
    assert math.isclose(t.counted_over_modeled.iloc[0], 37 * 64 / 2400)
    assert math.isclose(t.read_share.iloc[0], 25 / 37, rel_tol=0.01)
    assert math.isclose(t.ipc.iloc[0], 2.0)


def _stream_rows(rows):
    base = dict(
        socket_scope="single", threads=56, memory_mode="flat", locality="local", socket=0,
        working_set_gib=8.0, ghz_effective=2.0, accepted=True, campaign_id="c", dtype=None,
    )
    return pd.DataFrame([dict(base, **row) for row in rows])


def test_sweep_ceiling_uses_copy_when_it_was_measured_and_triad_otherwise():
    """The sweep loads one array and stores one: copy is its ceiling, Triad the stand-in."""

    from hwbench import report

    triad = [
        dict(benchmark="stream_triad_nt", memory_target="hbm", bandwidth_gbs=554.0, notes="bw2_triad_nt"),
        dict(benchmark="stream_read", memory_target="hbm", bandwidth_gbs=543.0, notes="bw2_read"),
    ]
    copy = [
        dict(benchmark="stream_copy", memory_target="hbm", bandwidth_gbs=580.0, notes="copy_ceiling"),
        dict(benchmark="stream_copy_nt", memory_target="hbm", bandwidth_gbs=571.0, notes="copy_ceiling"),
    ]
    thesis = pd.DataFrame(columns=["benchmark", "locality", "socket_scope", "threads", "notes", "memory_mode", "memory_target"])
    without = report.sweep_ceiling(_stream_rows(triad), thesis, "hbm")
    assert (without.kernel, without.gbs) == ("triad_nt", 554.0)
    with_copy = report.sweep_ceiling(_stream_rows(triad + copy), thesis, "hbm")
    assert (with_copy.kernel, with_copy.gbs) == ("copy", 580.0)
    # The ERT envelope ("best") includes copy; the headline kernel tables never see the copy rows.
    best = report.memory_ceiling(_stream_rows(triad + copy), thesis, "flat", "hbm", access="best")
    assert (best.kernel, best.gbs) == ("copy", 580.0)
    assert not report.bandwidth_summary(_stream_rows(triad + copy), thesis).kernel.str.startswith("copy").any()
