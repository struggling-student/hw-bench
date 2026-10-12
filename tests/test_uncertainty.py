"""Uncertainty and the conventions that keep numbers consistent across notebooks."""

import math
from pathlib import Path

import pandas as pd
import pytest

from hwbench import report
from hwbench.theory import Theory

ROOT = Path(__file__).resolve().parents[1]


@pytest.fixture(scope="module")
def evidence():
    if not (ROOT / "data/processed/measurements.csv").exists():
        pytest.skip("no processed data in this checkout")
    _, thesis, ext, _ = report.load(ROOT)
    return ext, thesis, Theory.load()


def test_cv_is_per_configuration_not_pooled_across_gemm_shapes(evidence):
    ext, *_ = evidence
    cv = report.sample_cv(ext)
    gemm = cv[cv.family.eq("gemm")]
    # The same dtype, tier and batch with different shapes must stay separate rows.
    shapes = gemm[gemm.m.eq(64) & gemm["dtype"].eq("int8") & gemm.memory_target.eq("hbm")][["n", "k"]].drop_duplicates()
    assert len(shapes) == 4
    assert cv.cv_percent.max() < 50 and cv.cv_percent.quantile(0.99) < 25


def test_every_headline_entry_has_an_uncertainty_and_its_basis(evidence):
    ext, thesis, theory = evidence
    t1 = report.headline_table(ext, thesis, theory)
    assert len(t1) == 11
    assert t1[["spread", "cross_run", "total"]].notna().all().all()
    assert (t1.basis.str.len() > 0).all()
    assert all(math.isclose(r.total, r.spread + r.cross_run) for r in t1.itertuples())
    ddr = t1[t1.quantity.str.startswith("Flat DDR read")].iloc[0]
    assert ddr.basis == "Triad repeat, same tier"
    cache = t1[t1.quantity.str.startswith("Cache")].iloc[0]
    assert cache.cross_run > 5  # node-to-node variance is large and must not be hidden


def test_socket_zero_is_the_reference_for_local_remote(evidence):
    ext, thesis, _ = evidence
    lr = report.local_remote_table(ext, thesis).set_index("label")
    bw = report.bandwidth_summary(ext, thesis)
    hbm0 = bw[bw.config.eq("flat_hbm") & bw.kernel.eq("read") & bw.locality.eq("local") & bw.socket.eq(0) & bw.socket_scope.eq("single")]
    assert math.isclose(lr.loc["HBM read", "local"], float(hbm0.gbs.iloc[0]))
    assert lr.loc["HBM read", "local_spread"] > 0  # socket 1 differs, and the difference is shown


def test_cold_first_window_is_a_spilled_cache_effect_that_leaves_medians_alone(evidence):
    ext, *_ = evidence
    fw = report.first_window_effect(ext)
    gemm = fw[fw.family.eq("gemm")]
    spilled = gemm[gemm.memory_mode.eq("cache") & gemm.working_set_bytes.gt(64 * 2**30)]
    flat = gemm[gemm.memory_mode.eq("flat")]
    assert spilled.ratio.median() < 0.95 and spilled.ratio.min() < 0.6
    assert abs(flat.ratio.median() - 1) < 0.03
    assert gemm.median_shift.abs().max() < 0.03


def test_knees_table_declares_the_kernel_behind_its_bandwidth():
    path = ROOT / "data/processed/thesis/knees.csv"
    if not path.exists():
        pytest.skip("no thesis tables in this checkout")
    knees = pd.read_csv(path)
    assert set(knees.bandwidth_kernel) == {"triad (October core scaling)"}
