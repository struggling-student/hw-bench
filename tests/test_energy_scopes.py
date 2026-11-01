"""Energy at two RAPL scopes, the socket that runs nothing, the serving socket and Flat against Cache."""

from __future__ import annotations

import math
from pathlib import Path

import numpy as np
import pandas as pd
import pytest

from hwbench import claims, report
from hwbench.theory import Theory

ROOT = Path(__file__).resolve().parents[1]


def _row(**kw):
    base = dict(
        memory_mode="flat", memory_target="hbm", benchmark="stream_read", notes="u1_read", accepted=True, socket=0, memory_socket=0,
        socket_scope="single", threads=56, elapsed_seconds=2.0, operations=0.0, modeled_bytes=4e11, ctrl_bytes=4e11,
        ctrl_bytes_memory_socket=3.9e11, counted_bytes=3.9e11, served_bytes=math.nan, performance_gops=float("nan"),
        pkg_power_w=350.0, ram_power_w=20.0, node_power_w=540.0, power_source="perf", campaign_id="c", node="n",
    )
    base.update(kw)
    return base


def test_energy_scopes_use_the_memory_socket_bytes_and_the_node_bytes():
    d = report.energy_scopes(pd.DataFrame([_row()]))
    assert d.socket_w.iloc[0] == 370.0 and d.node_w.iloc[0] == 540.0
    # 370 W over the 195 GB/s its own controllers moved; 540 W over every controller's 200 GB/s.
    assert d.pj_per_byte.iloc[0] == pytest.approx(370.0 / 195.0 * 1e3)
    assert d.pj_per_byte_node.iloc[0] == pytest.approx(540.0 / 200.0 * 1e3)


def test_energy_scopes_cache_has_no_controller_bytes_and_divides_by_the_measured_ones():
    cache = _row(memory_mode="cache", memory_target="effective_cache", ctrl_bytes=math.nan, ctrl_bytes_memory_socket=math.nan,
                 counted_bytes=3.0e11)
    d = report.energy_scopes(pd.DataFrame([cache]))
    assert d.pj_per_byte.iloc[0] == pytest.approx(370.0 / 150.0 * 1e3)
    assert d.pj_per_byte_node.iloc[0] == pytest.approx(540.0 / 150.0 * 1e3)


def test_energy_per_operation_includes_dram_and_the_other_socket():
    d = report.energy_scopes(pd.DataFrame([_row(benchmark="amx_peak", ctrl_bytes_memory_socket=math.nan, performance_gops=100_000.0)]))
    assert d.pj_per_op.iloc[0] == pytest.approx(370.0 / 100_000.0 * 1e3)
    assert d.pj_per_op_node.iloc[0] == pytest.approx(540.0 / 100_000.0 * 1e3)


def test_energy_scopes_without_node_power_gives_nan_not_an_error():
    frame = pd.DataFrame([_row()]).drop(columns="node_power_w")
    d = report.energy_scopes(frame)
    assert math.isnan(d.node_w.iloc[0]) and not math.isnan(d.pj_per_byte.iloc[0])


def test_socket_column_picks_the_computing_the_serving_and_the_other_socket():
    d = pd.DataFrame(dict(socket=[0, 0, 1], memory_socket=[0, 1, float("nan")], x_s0=[1.0, 2.0, 3.0], x_s1=[10.0, 20.0, 30.0]))
    assert list(report.socket_column(d, "x")) == [1.0, 2.0, 30.0]
    assert list(report.socket_column(d, "x", which="memory_socket")) == [1.0, 20.0, 30.0]
    assert list(report.socket_column(d, "x", other=True)) == [10.0, 20.0, 3.0]


def _coupled(mode="flat", n=60, remote=False):
    rng = np.random.default_rng(1)
    ghz1 = rng.uniform(0.8, 2.4, n)
    ghz0 = ghz1 / 0.97
    return pd.DataFrame(dict(
        memory_mode=mode, campaign_id="c", notes="u1_read", benchmark="stream_read", memory_target="hbm", threads=14, iteration=0,
        power_source="perf", accepted=True, socket_scope="single", socket=0, memory_socket=1 if remote else 0,
        pkg_power_w_s0=350.0, pkg_power_w_s1=60.0 * ghz1 + 75.0 + rng.normal(0, 1, n), ram_power_w_s1=20.0,
        uncore_ghz_s0=ghz0, uncore_ghz_s1=ghz1,
    ))


def test_coupling_frame_keeps_local_samples_and_the_fit_recovers_the_line():
    frame = report.uncore_coupling_frame(pd.concat([_coupled("flat"), _coupled("cache"), _coupled("flat", remote=True)]))
    assert set(frame.memory_mode) == {"flat", "cache"} and len(frame) == 120  # the remote samples are left out
    assert set(frame.family) == {"streams"}
    fit = report.uncore_coupling_fit(frame).set_index("memory_mode")
    assert fit.slope_w_per_ghz.between(58, 62).all() and fit.intercept_w.between(72, 78).all() and (fit.r2 > 0.99).all()
    assert fit.clock_ratio.between(0.96, 0.98).all() and (fit.clock_corr > 0.99).all()
    # The floor is the median power below 1 GHz, and the table counts power above it.
    assert fit.floor_w.between(120, 135).all()
    table = report.uncore_coupling(frame)
    assert (table.other_above_floor_w > 0).all() and set(table.memory_mode) == {"flat", "cache"}


def test_workload_families():
    notes = pd.Series(["u1_isa", "u1_read_control", "u2_local", "u_gemm_atlas", "u4_gemm", "u_sweep_c12", "u_loaded_latency_n4", "usmoke_gemm", "x"])
    assert list(report.workload_family(notes)) == ["compute peaks", "streams", "streams", "GEMM", "GEMM", "FP64 sweep", "chase", "GEMM", "other"]


def test_aggregate_columns_are_listed_for_every_new_system_field():
    from hwbench import process

    for name in (*process.uncore.SOCKET_FIELDS, "node_power_w"):
        assert name in process.FIELDS
    assert set(process.SYSTEM_TOTALS).isdisjoint(process.SYSTEM_RATES)


@pytest.fixture(scope="module")
def evidence():
    if not (ROOT / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    flat, cache = report.load_uncore(ROOT, "flat"), report.load_uncore(ROOT, "cache")
    if flat.empty or cache.empty:
        pytest.skip("no uncore campaigns selected")
    return flat, cache, Theory.load()


def test_every_power_row_of_the_committed_data_has_both_sockets(evidence):
    flat, cache, _ = evidence
    for frame in (flat, cache):
        d = frame[frame.pkg_power_w.notna() & frame.accepted & frame.socket_scope.eq("single")]
        assert d[["pkg_power_w_s0", "pkg_power_w_s1", "ram_power_w_s0", "ram_power_w_s1", "uncore_ghz_s0", "uncore_ghz_s1", "node_power_w"]].notna().all().all()
        own = report.socket_column(d, "pkg_power_w")
        assert (own - d.pkg_power_w).abs().max() < 1e-9
        assert (d.node_power_w / d.system_power_w - 1).abs().max() < 1e-9


def test_the_other_socket_is_not_idle_in_the_committed_data(evidence):
    flat, cache, _ = evidence
    fit = report.uncore_coupling_fit(report.uncore_coupling_frame(flat, cache)).set_index("memory_mode")
    assert (fit.r2 > 0.9).all() and fit.floor_w.between(120, 150).all() and (fit.induced_max_w > 60).all()


def test_remote_serving_socket_is_socket_one_and_not_power_clipped(evidence):
    flat, _, _ = evidence
    rc = report.remote_counter_table(flat).set_index(["memory_target", "kernel", "threads", "placement"])
    remote, local = rc.loc[("hbm", "read", 56, "remote")], rc.loc[("hbm", "read", 56, "local")]
    assert remote.serving_uncore_ghz > 2.4 and remote.serving_power_limited < 0.05 and remote.power_limited > 0.9
    # A local read is served by the computing socket itself.
    assert local.serving_pkg_w == pytest.approx(local.pkg_w) and local.serving_uncore_ghz == pytest.approx(local.uncore_ghz)


def test_hbm13_package_limit_comes_from_its_probe_record():
    limits = claims.probe_power_limits(ROOT)
    assert limits == {"pl1_w": 350.0, "pl2_w": 420.0}


def test_energy_table_scopes_and_decode_ordering(evidence):
    flat, cache, theory = evidence
    et = report.energy_table(pd.concat([flat, cache], ignore_index=True), theory)
    assert {"gemm", "sweep", "peak"} == set(et.kind)
    assert (et.pj_per_op_node > et.pj_per_op).all()
    decode = et[et.kind.eq("gemm") & et.x.eq(1) & et.precision.eq("bf16") & et.layout.eq("plain")].set_index("tier").j_per_token
    assert decode["Flat HBM"] < decode["Cache, 16 GiB"] < decode["Flat DDR"] < decode["Cache, 96 GiB"]
    # J/token is operations per token times energy per operation.
    row = et[et.kind.eq("gemm")].iloc[0]
    assert row.j_per_token == pytest.approx(row.pj_per_op * 1e-12 * 2 * theory.model_parameters())


def test_the_new_energy_claims_hold(evidence):
    flat, cache, theory = evidence
    both = pd.concat([flat, cache], ignore_index=True)
    found = {c.id: c for c in claims.uncore_coupling(flat, cache) + claims.energy_flat_vs_cache(both, theory)}
    assert set(found) == {"idle_socket_uncore_coupling", "energy_flat_vs_cache"}
    assert all(c.holds for c in found.values())


def test_idle_floor_of_both_nodes_and_the_bmc_rails(evidence):
    flat, cache, _ = evidence
    floor = report.idle_floor(pd.concat([flat, cache], ignore_index=True))
    assert set(floor.index) == {"flat", "cache"} and (floor.n_samples >= 5).all()
    # Both nodes rest in the same state: uncores at 0.8 GHz, within 3% of each other, turbostat = perf to 0.1%.
    assert (floor.uncore_ghz_s0 < 0.85).all() and abs(floor.node_w.max() / floor.node_w.min() - 1) < 0.03
    assert ((floor.ts_over_perf - 1).abs() < 0.001).all() and (floor.wall_w > floor.node_w).all()
    loads = report.idle_load_table(pd.concat([flat, cache], ignore_index=True))
    assert loads.bmc_cpu_over_rapl.sub(1).abs().max() < 0.02 and loads.bmc_mem_over_rapl.sub(1).abs().max() < 0.02
    # RAPL "ram" is the DDR DIMMs: an HBM read leaves it at the floor, a DDR read does not.
    assert loads[loads.notes.str.endswith("hbm")].ram_over_idle_w.abs().max() < 2
    assert loads[loads.notes.str.endswith(("ddr", "96g"))].ram_over_idle_w.min() > 20


def test_dynamic_energy_is_the_total_minus_the_floor(evidence):
    flat, _, _ = evidence
    floor = report.idle_floor(flat).iloc[0]
    pt = report.power_table(flat)
    row = pt[(pt.memory_target == "hbm") & (pt.kernel == "read") & (pt.threads == 56)].iloc[0]
    assert row.pj_per_byte_dyn == pytest.approx(row.pj_per_byte * (row.pkg_w + row.ram_w - floor.socket_w) / (row.pkg_w + row.ram_w), rel=0.03)
    assert row.pj_per_byte_node_dyn < row.pj_per_byte_node


def test_two_sockets_at_once_scale_and_cost_less_than_twice_the_power(evidence):
    flat, cache, theory = evidence
    for frame, mode in ((flat, "flat"), (cache, "cache")):
        t = report.dual_energy(frame, theory)
        assert len(t) == 7 and set(t.memory_mode) == {mode}
        assert t.scaling.between(0.93, 1.07).all() and t.node_power_ratio.between(1.1, 1.5).all()
        assert (t.per_watt_gain_node > 1.3).all()
        decode = t[t.kind == "decode GEMM"]
        # With both sockets working the node's energy per token is the computing-socket figure of one.
        assert ((decode.j_per_token_node_dual / decode.j_per_token_socket_single) - 1).abs().max() < 0.07


def test_cache_counters_follow_the_probe_identities(evidence):
    _, cache, _ = evidence
    cc = report.cache_capacity_table(cache)
    assert cc.campaign.str.contains("ucapacity-20261031").all() and cc.hit_rate.notna().all()
    # Hit rate falls with the working set and is the same for every kernel; the served bytes are the cores' own DRAM lines.
    for _, part in cc.groupby("kernel"):
        assert part.sort_values("working_set_gib").hit_rate.is_monotonic_decreasing
    spread = cc.pivot(index="working_set_gib", columns="kernel", values="hit_rate")
    assert (spread.max(axis=1) - spread.min(axis=1)).max() < 0.02
    assert abs(cc.served_over_counted.median() - 1) < 0.02 and cc.served_over_modeled.between(0.98, 1.02).all()
    gt = report.cache_gemm_table(cache)
    assert (gt.groupby("pool_gib").hit_rate.median() < [0.9, 0.35]).all()


def test_the_cache_tag_session_is_validation_only(evidence):
    probe = report.load_session_probe(ROOT)
    assert probe.uncore_event_set.eq("cache").any()
    flat, cache, _ = evidence
    # No rate, latency or power figure comes from a launch that ran the tag-event session.
    assert not cache.uncore_event_set.eq("cache").any() and not flat.uncore_event_set.eq("cache").any()
    found = {c.id: c for c in claims.cache_session_claims(probe, cache)}
    assert set(found) == {"cache_tag_session_cost", "cache_hit_rate_from_cas"} and all(c.holds for c in found.values())
