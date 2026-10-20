"""Measured intensity: which bytes place a point, counted GEMM points, ceilings and bands."""

from __future__ import annotations

import math

import pandas as pd
import pytest

from hwbench import report

ONCHIP = report.ONCHIP_BYTES


def _row(**kw):
    base = dict(
        memory_mode="flat", memory_target="hbm", benchmark="onednn_gemm_sweep", notes="u_gemm_conv", accepted=True,
        dtype="bf16", n=14336, k=4096, m=1, working_set_bytes=16 * ONCHIP, elapsed_seconds=1.0, operations=1e11,
        modeled_bytes=1.2e11, ctrl_bytes=1.25e11, counted_bytes=1.24e11, served_bytes=math.nan, performance_gops=100.0,
        bandwidth_gbs=120.0, arithmetic_intensity=1e11 / 1.2e11, pkg_power_w=350.0, ram_power_w=21.0, power_source="perf",
        campaign_id="flat-ugemmconv-x", node="cresco8-hbm14", source_file="flat/x/records/a.json", socket=0, threads=56,
        memory_socket=0, locality="local", socket_scope="single",
    )
    base.update(kw)
    return base


def test_measured_bytes_by_mode():
    d = pd.DataFrame([
        _row(),
        _row(memory_mode="cache", memory_target="effective_cache", served_bytes=1.3e11),
        _row(memory_mode="cache", memory_target="effective_cache"),
        _row(memory_mode="cache", memory_target="effective_cache", counted_bytes=math.nan),
    ])
    nbytes, source = report.measured_bytes(d)
    assert list(nbytes[:3]) == [1.25e11, 1.3e11, 1.24e11]
    assert list(source[:3]) == ["uncore_cas", "uncore_cas", "pmu_ocr"]
    # Cache controller sums double-count (fill + tag reads) and are never used.
    assert math.isnan(nbytes.iloc[3]) and pd.isna(source.iloc[3])


def test_counted_gemm_frame_and_twins():
    rows = [_row(m=m, operations=1e11 * m, performance_gops=100.0 * m, arithmetic_intensity=m / 1.2) for m in (1, 16, 256, 4096)]
    rows.append(_row(m=1, notes="u4_gemm"))  # not a counted re-run label
    frame = report.counted_gemm_frame(pd.DataFrame(rows))
    assert list(frame.m) == [1, 16, 256, 4096]
    assert frame.intensity.iloc[0] == pytest.approx(1e11 / 1.25e11)
    assert frame.measured_over_modeled.iloc[0] == pytest.approx((1 / 1.2) / (1e11 / 1.25e11))
    assert frame.j_per_op.iloc[0] == pytest.approx(371.0 / 100e9)
    assert set(frame.layout) == {"plain"} and set(frame.bytes_source) == {"uncore_cas"}
    pts = report.measured_workload_points(frame)
    filled = [p for p in pts if not p.provenance["open"]]
    hollow = [p for p in pts if p.provenance["open"]]
    assert len(filled) == len(hollow) == 4
    assert all(p.bytes_source == "uncore_cas" for p in filled) and all(p.bytes_source == "modeled" for p in hollow)
    assert all(p.provenance["label"] == "" for p in hollow) and filled[0].provenance["label"] == "M=1"
    bands = report.measured_phase_regions(frame, pad=1)
    assert bands[0][0] == pytest.approx(frame.intensity.iloc[0]) and bands[1][1] == pytest.approx(frame.intensity.iloc[3])


def test_phase_regions_need_both_ends():
    frame = report.counted_gemm_frame(pd.DataFrame([_row(m=1), _row(m=16)]))
    assert report.measured_phase_regions(frame) == []


def test_measured_ceiling_and_fallback():
    stream = dict(benchmark="stream_read", notes="u1_read", working_set_bytes=8 * 2**30, dtype=None, n=0, k=0, m=0)
    d = pd.DataFrame([_row(**stream, ctrl_bytes=5.46e11, elapsed_seconds=1.0), _row(**stream, ctrl_bytes=5.40e11, elapsed_seconds=1.0)])
    c = report.measured_memory_ceiling(d, "flat", "hbm")
    assert c.gbs == pytest.approx(543.0) and c.kernel == "read" and "uncore_cas" in c.note
    with pytest.raises(LookupError):
        report.measured_memory_ceiling(d, "flat", "ddr")
    with pytest.raises(LookupError):
        report.measured_memory_ceiling(d, "cache", "effective_cache")
