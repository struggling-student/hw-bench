"""Tables for the extended measurements, built from ``measurements.csv``.

Every function takes the *selected* extended rows (``extended.select_extended``)
and, where a comparison needs it, the October thesis selection.  Tables carry the
campaign ids and sample counts they come from, so a number in a notebook can be
traced to raw records.
"""

from __future__ import annotations

import json
import math
from pathlib import Path

import pandas as pd

from hwbench.analysis import ROOT, load_measurements, select_measurements
from hwbench.extended import select_extended
from hwbench.plotting import config_key
from hwbench.roofline import BANDWIDTH_KERNELS
from hwbench.theory import KERNEL_PATHS, Theory

COMPUTE_BENCHMARKS = {b for b, _ in KERNEL_PATHS}


def load(root: Path = ROOT):
    """Return (all rows, thesis selection, extended selection, policy)."""

    policy = json.loads((root / "configs/analysis.json").read_text())
    df = load_measurements(root / "data/processed/measurements.csv")
    return df, select_measurements(df, policy), select_extended(df, policy), policy


def _cv(series: pd.Series) -> float:
    mean = series.mean()
    return 100 * series.std() / mean if mean and len(series) > 1 else math.nan


def _ids(series: pd.Series) -> str:
    return ";".join(sorted(series.unique()))


def with_config(frame: pd.DataFrame) -> pd.DataFrame:
    out = frame.copy()
    out["config"] = [config_key(m, t) for m, t in zip(out.memory_mode, out.memory_target)]
    return out


# ------------------------------------------------------------------ compute
def isa_peaks(ext: pd.DataFrame, theory: Theory) -> pd.DataFrame:
    """Peak per ISA path, mode and scope with efficiency at base and measured clock."""

    data = ext[
        ext.benchmark.isin(COMPUTE_BENCHMARKS)
        & ext.socket_scope.isin(["single", "dual"])
        & ext.notes.isin(["isa_scaling", "isa_dual"])
    ]
    rows = []
    keys = ["memory_mode", "benchmark", "dtype", "socket_scope", "socket", "threads"]
    for (mode, benchmark, dtype, scope, socket, threads), part in data.groupby(keys, dropna=False):
        path = theory.isa_for(benchmark, dtype)
        gops = part.performance_gops.median()
        ghz = part.ghz_effective.median()
        cores = int(threads)
        base = theory.peak_gops(path.key, cores)
        at_clock = theory.peak_gops(path.key, cores, ghz)
        rows.append(
            dict(
                memory_mode=mode,
                path=path.key,
                label=path.label,
                dtype=dtype,
                scope="2S" if scope == "dual" else "1S",
                socket=socket,
                cores=cores,
                gops=gops,
                cv_percent=_cv(part.performance_gops),
                ghz_effective=ghz,
                amx_busy_frac=part.amx_busy_frac.median(),
                ops_per_cycle_per_core=gops / cores / ghz,
                theory_ops_per_cycle=path.ops_per_cycle,
                efficiency_base=gops / base,
                efficiency_at_clock=gops / at_clock,
                theory_status=path.status,
                n_samples=len(part),
                campaign_id=_ids(part.campaign_id),
            )
        )
    return pd.DataFrame(rows)


def isa_scaling(ext: pd.DataFrame) -> pd.DataFrame:
    data = ext[ext.notes.eq("isa_scaling") & ext.benchmark.isin(COMPUTE_BENCHMARKS)]
    return (
        data.groupby(["memory_mode", "benchmark", "dtype", "socket", "threads"])
        .agg(
            gops=("performance_gops", "median"),
            std=("performance_gops", "std"),
            ghz_effective=("ghz_effective", "median"),
            n_samples=("accepted", "size"),
        )
        .reset_index()
    )


# ------------------------------------------------------------------- memory
def bandwidth_summary(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Triad (October), read and non-temporal Triad at full socket, by placement."""

    triad = thesis[
        thesis.benchmark.eq("stream_triad")
        & thesis.socket_scope.eq("single")
        & thesis.threads.eq(56)
        & thesis.notes.eq("core_scaling")
        & thesis.locality.eq("local")
    ].assign(kernel="triad")
    triad = triad[~triad.memory_mode.eq("cache")]
    new = ext[
        ext.benchmark.isin(BANDWIDTH_KERNELS)
        & ext.socket_scope.isin(["single", "dual"])
        & ext.threads.isin([56, 112])
        & ext.notes.str.match(r"bw2_(read|triad_nt)(_remote|_capacity)?$")
    ].assign(kernel=lambda f: f.benchmark.map(BANDWIDTH_KERNELS))
    frame = with_config(pd.concat([triad, new], ignore_index=True))
    keys = ["memory_mode", "config", "kernel", "locality", "socket_scope", "socket", "working_set_gib"]
    return (
        frame.groupby(keys, dropna=False)
        .agg(
            gbs=("bandwidth_gbs", "median"),
            cv_percent=("bandwidth_gbs", _cv),
            ghz_effective=("ghz_effective", "median"),
            n_samples=("accepted", "size"),
            campaign_id=("campaign_id", _ids),
        )
        .reset_index()
    )


def read_scaling(ext: pd.DataFrame) -> pd.DataFrame:
    data = with_config(ext[ext.notes.eq("bw2_read_scaling")])
    return (
        data.groupby(["config", "socket", "threads"])
        .agg(gbs=("bandwidth_gbs", "median"), std=("bandwidth_gbs", "std"))
        .reset_index()
    )


def hierarchy(ext: pd.DataFrame) -> pd.DataFrame:
    """Read bandwidth (per core and aggregate) and idle latency against working set."""

    data = with_config(ext[ext.notes.isin(["hier_read_1", "hier_read_56", "hier_latency"])])
    data["per_thread_bytes"] = data.working_set_bytes / data.threads.where(
        data.notes.ne("hier_latency"), 1
    )
    out = (
        data.groupby(["config", "notes", "threads", "per_thread_bytes"])
        .agg(
            gbs=("bandwidth_gbs", "median"),
            latency_ns=("latency_ns", "median"),
            std_gbs=("bandwidth_gbs", "std"),
            n_samples=("accepted", "size"),
        )
        .reset_index()
    )
    out["gbs_per_core"] = out.gbs / out.threads
    return out


def level_summary(table: pd.DataFrame) -> pd.DataFrame:
    """One representative value per cache level from the hierarchy sweep.

    L1: 32 KiB per core, L2: 1 MiB, LLC: 16 MiB (one core owns the socket's L3),
    memory: 4 GiB (one core) / 256 MiB per thread x 56 (all cores).
    """

    picks = {
        "L1 (32 KiB)": (32 * 2**10, "hier_read_1"),
        "L2 (1 MiB)": (2**20, "hier_read_1"),
        "LLC (16 MiB)": (16 * 2**20, "hier_read_1"),
        "memory, 1 core (4 GiB)": (4 * 2**30, "hier_read_1"),
        "L1, 56 cores (32 KiB/core)": (32 * 2**10, "hier_read_56"),
        "L2, 56 cores (1 MiB/core)": (2**20, "hier_read_56"),
        "memory, 56 cores (256 MiB/core)": (256 * 2**20, "hier_read_56"),
    }
    rows = []
    for config, part in table.groupby("config"):
        for name, (size, note) in picks.items():
            hit = part[part.notes.eq(note) & part.per_thread_bytes.eq(size)]
            if len(hit):
                rows.append(dict(config=config, level=name, gbs=hit.gbs.iloc[0]))
    latency = []
    for config, part in table.groupby("config"):
        lat = part[part.notes.eq("hier_latency")]
        for name, size in [
            ("L1", 16 * 2**10),
            ("L2", 1 * 2**20),
            ("LLC", 32 * 2**20),
            ("memory", 4 * 2**30),
        ]:
            hit = lat[lat.per_thread_bytes.eq(size)]
            if len(hit):
                latency.append(dict(config=config, level=name, latency_ns=hit.latency_ns.iloc[0]))
    return pd.DataFrame(rows), pd.DataFrame(latency)
