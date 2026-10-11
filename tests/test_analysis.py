"""Regression tests for scientific comparisons rather than figure trace counts."""

import math

import pandas as pd

from hwbench.analysis import (
    fp64_rooflines,
    knees_table,
    memory_table,
    scaling_table,
    select_measurements,
)


def measurements():
    rows = []
    for mode in ["flat", "cache"]:
        for socket in [0, 1]:
            memories = (
                [("ddr", 8, 200), ("hbm", 8, 500)]
                if mode == "flat"
                else [("effective_cache", 16, 450), ("effective_cache", 96, 180)]
            )
            for target, ws, bw in memories:
                rows.append(
                    dict(
                        campaign_id=mode + "-test",
                        memory_mode=mode,
                        socket=socket,
                        memory_target=target,
                        working_set_bytes=ws * 2**30,
                        working_set_gib=ws,
                        threads=56,
                        socket_scope="single",
                        benchmark="stream_triad",
                        phase="steady",
                        locality="local",
                        notes="core_scaling" if ws == 8 else "capacity",
                        bandwidth_gbs=bw * (1 if socket == 0 else 0.8),
                        implementation="native_avx512",
                        dtype="",
                        kernel="triad",
                        m=float("nan"),
                        n=float("nan"),
                        k=1,
                        accepted=True,
                        synchronized=False,
                    )
                )
            for dtype, peak in [("fp64", 4000), ("fp32", 8000), ("bf16", 100000)]:
                rows.append(
                    dict(
                        campaign_id=mode + "-test",
                        memory_mode=mode,
                        socket=socket,
                        memory_target="registers",
                        working_set_bytes=0,
                        working_set_gib=float("nan"),
                        threads=56,
                        socket_scope="single",
                        benchmark="amx_peak" if dtype == "bf16" else "avx512_peak",
                        phase="steady",
                        locality="local",
                        notes="compute_scaling",
                        performance_gops=peak * (1 if socket == 0 else 0.8),
                        implementation="native_amx_4_tiles"
                        if dtype == "bf16"
                        else "native_avx512",
                        dtype=dtype,
                        kernel=dtype,
                        m=float("nan"),
                        n=float("nan"),
                        k=1,
                        accepted=True,
                        synchronized=False,
                    )
                )
    for dtype, peak in [("fp64", 7200), ("fp32", 14400)]:
        rows.append(
            dict(
                campaign_id="flat-test",
                memory_mode="flat",
                socket=float("nan"),
                memory_target="registers",
                working_set_bytes=0,
                working_set_gib=float("nan"),
                threads=112,
                socket_scope="dual",
                benchmark="avx512_peak",
                phase="steady",
                locality="local",
                notes="dual",
                performance_gops=peak,
                implementation="native_avx512",
                dtype=dtype,
                kernel=dtype,
                m=float("nan"),
                n=float("nan"),
                k=1,
                accepted=True,
                synchronized=True,
                overlap_fraction=0.99,
            )
        )
    return pd.DataFrame(rows)


def test_selection_does_not_pool_other_campaigns_or_rejected_samples():
    df = measurements()
    other = df.iloc[[0]].copy()
    other["campaign_id"] = "old"
    other["bandwidth_gbs"] = 9999
    rejected = df.iloc[[0]].copy()
    rejected["accepted"] = False
    selected = select_measurements(
        pd.concat([df, other, rejected]),
        {"primary_campaigns": {"flat": "flat-test", "cache": "cache-test"}},
    )
    assert len(selected) == len(df)
    assert set(selected.campaign_id) == {"flat-test", "cache-test"}


def test_memory_statistics_preserve_socket_asymmetry():
    table = memory_table(measurements())
    hbm = table[table.memory_mode.eq("flat") & table.memory_target.eq("hbm")].set_index(
        "socket"
    )
    assert hbm.loc[0, "median"] == 500
    assert hbm.loc[1, "median"] == 400


def test_roofline_uses_matching_socket_and_never_mixes_precisions():
    df = measurements()
    table = knees_table(df)
    assert math.isclose(
        table[
            (table.memory_mode == "flat")
            & (table.socket == 0)
            & (table.dtype == "fp64")
            & (table.memory_target == "hbm")
        ]
        .iloc[0]
        .knee_flop_per_byte,
        8,
    )
    assert math.isclose(
        table[
            (table.memory_mode == "flat")
            & (table.socket == 1)
            & (table.dtype == "fp64")
            & (table.memory_target == "hbm")
        ]
        .iloc[0]
        .knee_flop_per_byte,
        8,
    )
    figure = fp64_rooflines(df)
    assert figure.layout.xaxis.title.text == "Modeled FLOP/byte"
    assert figure.layout.yaxis.title.text == "TFLOP/s"
    assert max(figure.data[0].y) == 4
    assert not any(len(trace.x) > 0 for trace in figure.data if trace.mode == "markers")


def test_scaling_uses_sum_of_isolated_sockets_and_separates_dtypes():
    result = scaling_table(measurements()).set_index("dtype")
    assert set(result.index) == {"fp32", "fp64"}
    assert result.loc["fp64", "isolated_sum"] == 7200
    assert result.loc["fp64", "efficiency"] == 1
    assert result.loc["fp32", "isolated_sum"] == 14400


def _row(campaign, threads, notes="core_scaling", bw=100.0):
    return dict(
        campaign_id=campaign,
        memory_mode="flat",
        socket_scope="single",
        socket=0,
        memory_socket=0,
        memory_target="hbm",
        benchmark="stream_triad",
        dtype=None,
        m=None,
        n=None,
        k=1,
        threads=threads,
        working_set_bytes=8 * 2**30,
        notes=notes,
        phase="steady",
        accepted=True,
        bandwidth_gbs=bw,
    )


def test_superseding_campaign_replaces_only_the_configurations_it_measured():
    df = pd.DataFrame([_row("base", 28), _row("base", 56), _row("long", 56, bw=500.0)])
    policy = {"primary_campaigns": {"flat": "base"}, "supersede": {"flat": "long"}}
    chosen = select_measurements(df, policy)
    assert sorted(zip(chosen.campaign_id, chosen.threads)) == [
        ("base", 28),
        ("long", 56),
    ]
    policy.pop("supersede")
    assert set(select_measurements(df, policy).campaign_id) == {"base"}
