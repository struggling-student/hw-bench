"""Regression checks for the aggregate Roofline and figure semantics."""

import math

import pandas as pd

from hwbench.analysis import MEMORY_CASES, cache_working_set, concurrent_tiers, roofline_overview


def _measurements() -> pd.DataFrame:
    rows = []
    for mode, target, ws, _, _ in MEMORY_CASES:
        bw = {"ddr": 200, "hbm": 500, "effective_cache": 450 if ws == 16 else 180}[target]
        for scope, factor in (("single", 1), ("dual", 2)):
            rows.append({"memory_mode": mode, "memory_target": target,
                         "benchmark": "stream_triad", "phase": "steady", "socket_scope": scope,
                         "working_set_gib": ws, "threads": 56 * factor, "socket": 0,
                         "bandwidth_gbs": bw * factor})
    for dtype, peak in (("fp64", 4000), ("fp32", 8000), ("bf16", 20000), ("int8", 100000)):
        for scope, factor in (("single", 1), ("dual", 2)):
            rows.append({"memory_mode": "flat", "memory_target": "registers",
                         "benchmark": "amx_peak" if dtype in ("bf16", "int8") else "avx512_peak",
                         "phase": "steady", "socket_scope": scope, "working_set_gib": None,
                         "threads": 56 * factor, "socket": 0, "dtype": dtype,
                         "performance_gops": peak * factor, "notes": "numactl_only"})
    return pd.DataFrame(rows)


def test_roofline_overview_has_every_case_with_separate_units() -> None:
    df = _measurements()
    single = roofline_overview(df, "single")
    dual = roofline_overview(df, "dual")
    assert len(single.data) == len(dual.data) == 20  # four cases + one peak, four panels
    assert single.layout.yaxis4.title.text == "TOPS"
    assert single.layout.xaxis4.title.text == "OP/byte"
    assert single.layout.yaxis.title.text == "TFLOP/s"
    assert math.isclose(single.data[0].y[-1], 4.0)  # 4000 GOP/s -> 4 TFLOP/s
    assert math.isclose(dual.data[0].y[-1], 8.0)
    assert [trace.name for trace in single.data[:4]] == [case[3] for case in MEMORY_CASES]
    assert not any(trace.mode == "markers" for trace in single.data)  # no invented sweep points


def test_cache_capacity_marker_is_at_real_linear_working_set() -> None:
    rows = []
    for scope, factor in (("single", 1), ("dual", 2)):
        for ws in (16, 64, 96):
            for phase in ("first", "steady"):
                rows.append({"memory_mode": "cache", "memory_target": "effective_cache",
                             "benchmark": "stream_triad", "socket_scope": scope,
                             "threads": 56 * factor, "working_set_gib": ws, "phase": phase,
                             "bandwidth_gbs": 400 * factor / (ws / 16)})
    fig = cache_working_set(pd.DataFrame(rows))
    assert fig.layout.xaxis.type != "log"
    assert fig.layout.xaxis2.type != "log"
    assert len(fig.layout.shapes) == 2
    assert all(shape.x0 == shape.x1 == 64 for shape in fig.layout.shapes)


def test_concurrent_tier_diagnostic_keeps_components_separate() -> None:
    rows = []
    for scope, target, value in (("concurrent_tier_component", "ddr", 200),
                                  ("concurrent_tier_component", "hbm", 300),
                                  ("concurrent_tiers", "ddr+hbm", 500)):
        rows.append({"memory_mode": "flat", "benchmark": "stream_triad",
                     "phase": "steady", "socket_scope": scope,
                     "memory_target": target, "bandwidth_gbs": value})
    fig = concurrent_tiers(pd.DataFrame(rows))
    assert list(fig.data[0].x) == [200, 300, 500]
    assert list(fig.data[0].y) == ["DDR · 28 cores", "HBM · 28 cores", "Combined · 56 cores"]
