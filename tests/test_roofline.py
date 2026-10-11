import math

import pandas as pd

from hwbench.roofline import (
    WorkloadPoint,
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
        "decode", "bf16", "avx512_bf16", 50.0, 1.0, bytes_source="pmu_l3miss"
    )
    assert p.as_dict()["bytes_source"] == "pmu_l3miss"
