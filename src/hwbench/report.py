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

import numpy as np
import pandas as pd

from hwbench.analysis import ROOT, load_measurements, select_measurements
from hwbench.extended import select_extended, select_uncore
from hwbench.plotting import config_key
from hwbench.roofline import BANDWIDTH_KERNELS
from hwbench.theory import KERNEL_PATHS, Theory

COMPUTE_BENCHMARKS = {b for b, _ in KERNEL_PATHS}


def load(root: Path = ROOT):
    """Return (all rows, thesis selection, extended selection, policy)."""

    policy = json.loads((root / "configs/analysis.json").read_text())
    df = load_measurements(root / "data/processed/measurements.csv")
    return df, select_measurements(df, policy), select_extended(df, policy), policy


def load_uncore(root: Path = ROOT, mode: str | None = None) -> pd.DataFrame:
    """Rows of the campaigns measured with the privileged counters (perf and/or turbostat).

    ``mode`` keeps one memory mode: the notebook-06 tables of the Flat node take
    ``mode="flat"``, so Cache rows (other labels, other byte meanings) never merge into them.
    """

    policy = json.loads((root / "configs/analysis.json").read_text())
    out = select_uncore(load_measurements(root / "data/processed/measurements.csv"), policy)
    return out if mode is None else out[out.memory_mode.eq(mode)].copy()


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
                gops_min=part.performance_gops.min(),
                gops_max=part.performance_gops.max(),
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
def bandwidth_summary(ext: pd.DataFrame, thesis: pd.DataFrame, copy: bool = False) -> pd.DataFrame:
    """Triad (October), read and non-temporal Triad at full socket, by placement.

    ``copy`` adds the copy kernels (part ``copy``); they only serve the sweep's ceiling, so
    the tables and figures of the three headline kernels never see them.

    Cache-mode Triad is kept, including the capacity sweep: it is the best kernel past the
    HBM cache, so dropping it would understate the spilled ceiling.
    """

    triad = thesis[
        thesis.benchmark.eq("stream_triad")
        & thesis.locality.eq("local")
        & (
            (
                thesis.socket_scope.eq("single")
                & thesis.threads.eq(56)
                & thesis.notes.isin(["core_scaling", "capacity"])
            )
            | (thesis.socket_scope.eq("dual") & thesis.notes.eq("dual"))
        )
    ].assign(kernel="triad")
    new = ext[
        ext.benchmark.isin(BANDWIDTH_KERNELS)
        & ext.socket_scope.isin(["single", "dual"])
        & ext.threads.isin([56, 112])
        & ext.notes.str.match(r"bw2_(read|triad|triad_nt)(_remote|_capacity|_dual)?$")
    ].assign(kernel=lambda f: f.benchmark.map(BANDWIDTH_KERNELS))
    parts = [triad, new]
    if copy:
        parts.append(
            ext[ext.benchmark.isin(["stream_copy", "stream_copy_nt"]) & ext.notes.eq("copy_ceiling")].assign(
                kernel=lambda f: f.benchmark.map(BANDWIDTH_KERNELS)
            )
        )
    frame = with_config(pd.concat(parts, ignore_index=True))
    # Allocation rounding makes "8 GiB" 7.999996 GiB; compare working sets to 0.01 GiB.
    frame["working_set_gib"] = frame.working_set_gib.round(2)
    keys = ["memory_mode", "config", "kernel", "locality", "socket_scope", "socket", "working_set_gib"]
    return (
        frame.groupby(keys, dropna=False)
        .agg(
            gbs=("bandwidth_gbs", "median"),
            gbs_min=("bandwidth_gbs", "min"),
            gbs_max=("bandwidth_gbs", "max"),
            cv_percent=("bandwidth_gbs", _cv),
            ghz_effective=("ghz_effective", "median"),
            n_samples=("accepted", "size"),
            campaign_id=("campaign_id", _ids),
        )
        .reset_index()
    )


def read_scaling_clock(ext: pd.DataFrame) -> pd.DataFrame:
    """Effective clock of the read-scaling runs (socket 0), by configuration and core count."""

    data = with_config(ext[ext.notes.eq("bw2_read_scaling") & ext.socket.eq(0)])
    return data.groupby(["config", "threads"]).ghz_effective.median().rename("ghz").reset_index()


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


# --------------------------------------------------------------------- GEMM
def gemm_points(ext: pd.DataFrame) -> pd.DataFrame:
    """Achieved oneDNN GEMM points: rate, modeled traffic and intensity per shape and M.

    All timed windows are kept.  In Cache mode the first window of a spilled (96 GiB)
    pool is often cold, but the median of five moves by under 1% when it is dropped
    (``first_window_effect``), so the medians are not adjusted.
    """

    data = with_config(ext[ext.benchmark.eq("onednn_gemm_sweep") & ext.notes.eq("gemm_sweep")])
    keys = ["memory_mode", "config", "memory_target", "dtype", "n", "k", "m", "working_set_bytes"]
    out = (
        data.groupby(keys, dropna=False)
        .agg(
            gops=("performance_gops", "median"),
            gbs=("bandwidth_gbs", "median"),
            intensity=("arithmetic_intensity", "median"),
            cv_percent=("performance_gops", _cv),
            n_samples=("accepted", "size"),
            campaign_id=("campaign_id", _ids),
            node=("node", "first"),
        )
        .reset_index()
    )
    out["pool_gib"] = out.working_set_bytes / 2**30
    out["shape"] = out.n.astype(int).astype(str) + "x" + out.k.astype(int).astype(str)
    out["pool_x"] = out.working_set_bytes / ONCHIP_BYTES
    out["status"] = [_pool_status(x, m) for x, m in zip(out.pool_x, out.m)]
    return out


#: Pools of at least this many times the on-chip capacity count as converged: counted bandwidth
#: agrees between 16x and 64x (claim ``gemm_pool_convergence``).
CONVERGED_POOL_X = 16
#: Batch sizes up to this one are biased by a small pool (claim ``first_sweep_small_m_bias``);
#: at M = 256 the pool size no longer matters (claim ``pool_insensitive_large_m``).
SMALL_POOL_MAX_M = 32


def _pool_status(pool_x: float, m: float) -> str:
    if pool_x >= CONVERGED_POOL_X:
        return "converged pool"
    return "small pool, M ≤ 32" if m <= SMALL_POOL_MAX_M else "small pool, M ≥ 64"


def _layout(source_file: pd.Series, dtype: pd.Series) -> pd.Series:
    """Weight layout of a GEMM record: INT8 is always prepacked; BF16 records name it in the file."""

    packed = source_file.str.endswith("-prepacked.json") | dtype.eq("int8")
    return packed.map({True: "prepacked", False: "plain"})


def converged_sweep(ext: pd.DataFrame, shape: str = "14336x4096") -> pd.DataFrame:
    """The converged-pool M-sweep (part ``gemmconv``, label ``gemm_converged``).

    One row per tier, precision, weight layout and M, with modeled and counted bandwidth.  The pool
    is 16x the on-chip capacity, converged by claim ``gemm_pool_convergence``.  Empty when the
    campaign is not selected.
    """

    g = _gemm_frame(ext, ["gemm_converged"])
    g = g[g["shape"].eq(shape)]
    g = with_config(g.assign(layout=_layout(g.source_file, g["dtype"])))
    keys = ["memory_mode", "config", "memory_target", "dtype", "layout", "n", "k", "m", "working_set_bytes"]
    out = (
        g.groupby(keys)
        .agg(
            gops=("performance_gops", "median"),
            gbs=("bandwidth_gbs", "median"),
            counted_gbs=("counted_gbs", "median"),
            intensity=("arithmetic_intensity", "median"),
            cv_percent=("performance_gops", _cv),
            n_samples=("accepted", "size"),
            campaign_id=("campaign_id", _ids),
            node=("node", "first"),
        )
        .reset_index()
    )
    out["pool_gib"] = out.working_set_bytes / 2**30
    out["shape"] = shape
    out["pool_x"] = out.working_set_bytes / ONCHIP_BYTES
    out["status"] = "converged pool"
    return out


def headline_gemm_points(ext: pd.DataFrame, shape: str = "14336x4096", pool_x: int = 64) -> pd.DataFrame:
    """One Flat GEMM shape over M for the headline: converged-pool points where they exist.

    The converged M-sweep (``gemmconv``, plain BF16 and INT8) replaces the first sweep at every
    batch size it measured (M = 1 to 256).  Without it, the pool-size sweep (``gemm_pool``,
    ``pool_x`` times the on-chip capacity) replaces the first sweep at M = 1, 16 and 256.  Every
    other M comes from the first sweep and keeps its ``status``, so a small-pool point at M <= 32
    can be drawn hollow and left out of the ceiling audit.  Same columns as ``gemm_points``.
    """

    first = gemm_points(ext)
    first = first[first.memory_mode.eq("flat") & first["shape"].eq(shape)]
    conv = converged_sweep(ext, shape)
    conv = conv[conv.layout.eq("plain") | conv["dtype"].eq("int8")].drop(columns=["layout", "counted_gbs"])
    if conv.empty:
        g = _gemm_frame(ext, ["gemm_pool"])
        g = g[g.pool_x.eq(pool_x) & g["shape"].eq(shape)]
        conv = (
            with_config(g)
            .groupby(["memory_mode", "config", "memory_target", "dtype", "n", "k", "m", "working_set_bytes"])
            .agg(
                gops=("performance_gops", "median"),
                gbs=("bandwidth_gbs", "median"),
                intensity=("arithmetic_intensity", "median"),
                cv_percent=("performance_gops", _cv),
                n_samples=("accepted", "size"),
                campaign_id=("campaign_id", _ids),
                node=("node", "first"),
            )
            .reset_index()
        )
        conv["pool_gib"] = conv.working_set_bytes / 2**30
        conv["shape"] = shape
        conv["pool_x"] = conv.working_set_bytes / ONCHIP_BYTES
        conv["status"] = "converged pool"
    have = set(zip(conv.memory_target, conv["dtype"], conv.m))
    keep = [(t, d, m) not in have for t, d, m in zip(first.memory_target, first["dtype"], first.m)]
    out = pd.concat([conv, first[keep]], ignore_index=True)
    return out.sort_values(["memory_target", "dtype", "m"]).reset_index(drop=True)


def llm_phase_regions(
    ext: pd.DataFrame, shape: str = "14336x4096", decode=(1, 16), prefill=(256, 4096), pad: float = 1.3
) -> list[tuple[float, float, str]]:
    """Decode and prefill intensity intervals for ``plotting.roofline_figure(regions=...)``.

    A decode step runs one token per sequence, so its batch M is the number of sequences; a
    prefill step runs a whole prompt or chunk.  Each interval spans the modeled intensity of the
    BF16 headline points at its two batch sizes, widened by ``pad`` so the end points sit inside
    the band (``pad=1`` gives the bare intensities).  Intensity is not M: it is about M only while
    M is small next to the matrix, and 14336x4096 saturates near 1800 op/B at M = 4096.
    """

    head = headline_gemm_points(ext, shape)
    at = head[head["dtype"].eq("bf16")].groupby("m").intensity.median()
    return [(at.loc[lo] / pad, at.loc[hi] * pad, label) for (lo, hi), label in ((decode, "decode"), (prefill, "prefill"))]


# --------------------------------------------------------------------- span
def span_table(ext: pd.DataFrame) -> pd.DataFrame:
    """One process over 112 cores: interleaved versus first-touch placement."""

    data = with_config(ext[ext.socket_scope.eq("span")])
    data["placement"] = data.notes.str.extract(r"span_(interleave|firsttouch|compute)")[0]
    data["kind"] = data.notes.str.replace(r"^span_(interleave|firsttouch)_?", "", regex=True)
    keys = ["memory_mode", "config", "benchmark", "dtype", "placement", "k"]
    return (
        data.groupby(keys, dropna=False)
        .agg(
            gbs=("bandwidth_gbs", "median"),
            gops=("performance_gops", "median"),
            cv_percent=("bandwidth_gbs", _cv),
            ghz_effective=("ghz_effective", "median"),
            n_samples=("accepted", "size"),
            campaign_id=("campaign_id", _ids),
        )
        .reset_index()
    )


# ------------------------------------------------------------------- xcheck
def xcheck_table(ext: pd.DataFrame, thesis: pd.DataFrame, tolerance: float = 0.02) -> pd.DataFrame:
    """Repeat runs against the October values taken through Slurm.

    Flat repeats run over SSH on the same node; Cache repeats run on a second node,
    so the deviation there is node-to-node variance rather than launch method.
    """

    new = ext[ext.notes.eq("xcheck") & ext.socket_scope.eq("single")]
    old = thesis[thesis.socket_scope.eq("single") & thesis.threads.eq(56)]
    rows = []
    keys = ["memory_mode", "benchmark", "dtype", "memory_target", "socket"]
    for key, part in new.groupby(keys, dropna=False):
        mode, benchmark, dtype, target, socket = key
        reference = old[
            old.memory_mode.eq(mode) & old.benchmark.eq(benchmark) & old.socket.eq(socket)
        ]
        if benchmark == "stream_triad":
            reference = reference[
                reference.memory_target.eq(target) & reference.notes.eq("core_scaling")
            ]
            metric = "bandwidth_gbs"
        else:
            reference = reference[reference["dtype"].eq(dtype)]
            metric = "performance_gops"
        if reference.empty:
            continue
        new_value, old_value = part[metric].median(), reference[metric].median()
        rows.append(
            dict(
                memory_mode=mode,
                benchmark=benchmark,
                dtype=dtype,
                memory_target=target,
                socket=socket,
                node=part.node.iloc[0],
                new=new_value,
                october=old_value,
                october_launch=reference.launch_method.iloc[0],
                deviation_percent=100 * (new_value / old_value - 1),
                within_tolerance=abs(new_value / old_value - 1) <= tolerance,
                cv_percent=_cv(part[metric]),
                campaign_id=_ids(part.campaign_id),
            )
        )
    return pd.DataFrame(rows)


# --------------------------------------------------------- ceiling selection
PATH_BENCHMARK = {
    "fp64": ("avx512_peak", "fp64"),
    "fp32": ("avx512_peak", "fp32"),
    "avx512_bf16": ("avx512_bf16_peak", "bf16"),
    "vnni_int8": ("vnni_peak", "int8"),
    "amx_bf16": ("amx_peak", "bf16"),
    "amx_int8": ("int8_amx_peak", "int8"),
}


def compute_ceiling(ext: pd.DataFrame, path: str, mode: str, cores: int = 56, scope: str = "1S"):
    """Measured peak of one ISA path at a core count: the matching ceiling for a workload.

    ``cores`` must be one that was measured in the scaling sweep, and only the scaling and dual-socket
    sweep rows count, so repeat, cross-check and chain-count campaigns cannot move a ceiling.
    Socket 0 is the reference, as in the thesis.
    """

    from hwbench.roofline import Ceiling

    benchmark, dtype = PATH_BENCHMARK[path]
    wanted = ext[
        ext.notes.isin(["isa_scaling", "isa_dual"])
        & ext.benchmark.eq(benchmark)
        & ext["dtype"].eq(dtype)
        & ext.memory_mode.eq(mode)
        & ext.threads.eq(cores * (2 if scope == "2S" else 1))
        & ext.socket_scope.eq("dual" if scope == "2S" else "single")
        & (ext.socket.eq(0) if scope == "1S" else ext.socket.isna())
    ]
    if wanted.empty:
        raise LookupError(f"no {path} measurement for {mode} at {cores} cores ({scope})")
    return Ceiling(
        kind="measured_peak",
        precision=dtype,
        path=path,
        gops=float(wanted.performance_gops.median()),
        unit="GOP/s",
        scope=scope,
        mode=mode,
        cores=cores * (2 if scope == "2S" else 1),
        ghz=float(wanted.ghz_effective.median()),
        source_campaign=_ids(wanted.campaign_id),
        cv_percent=_cv(wanted.performance_gops),
    )


def theoretical_ceiling(theory: Theory, path: str, cores: int = 56, scope: str = "1S", mode=None):
    from hwbench.roofline import Ceiling

    entry = theory.isa(path)
    n = cores * (2 if scope == "2S" else 1)
    return Ceiling(
        kind="theoretical",
        precision=entry.dtype,
        path=path,
        gops=theory.peak_gops(path, n),
        unit="GOP/s",
        scope=scope,
        mode=mode,
        cores=n,
        ghz=theory.base_ghz,
        note=f"{entry.status}: {entry.basis}",
    )


#: Kernel sets, one per purpose.  ``read`` matches read-only streams (weights in decode) and is
#: the ceiling of every LLM statement: the headline roofline, the ridge table (T2), the decode
#: bound and the GEMM audit.  ``copy`` matches one load per store, the pattern of the intensity
#: sweep at low intensity, ``readwrite`` its stand-in where copy was not measured.  ``best`` is
#: the ERT reference envelope of the atlas: the best sustained rate of every kernel, copy included
#: (on Flat HBM copy is the fastest pattern measured).
ACCESS_KERNELS = {
    "best": {"read", "triad", "triad_nt", "copy", "copy_nt"},
    "read": {"read"},
    "readwrite": {"triad", "triad_nt"},
    "copy": {"copy", "copy_nt"},
}


def sweep_ceiling(ext: pd.DataFrame, thesis: pd.DataFrame, tier: str):
    """Ceiling for the intensity sweep: its own pattern (copy) when measured, else Triad's."""

    try:
        return memory_ceiling(ext, thesis, "flat", tier, access="copy")
    except LookupError:
        return memory_ceiling(ext, thesis, "flat", tier, access="readwrite")


def memory_ceiling(
    ext: pd.DataFrame,
    thesis: pd.DataFrame,
    mode: str,
    tier: str,
    scope: str = "1S",
    resident_gib: float = 16.0,
    access: str = "best",
    at_gib: float | None = None,
):
    """Bandwidth ceiling: the best sustained rate of the kernels matching ``access``.

    Flat uses the 8 GiB points.  Cache uses points that fit the HBM cache
    (<= ``resident_gib``) unless ``at_gib`` names the working set to read instead (a
    spilled case).  ``access`` selects which kernels may set the ceiling; see
    ``ACCESS_KERNELS``.
    """

    from hwbench.roofline import MemoryCeiling

    table = bandwidth_summary(ext, thesis, copy=access in ("copy", "best"))
    table = table[table.memory_mode.eq(mode) & table.locality.eq("local")]
    table = table[table.socket_scope.eq("dual" if scope == "2S" else "single")]
    table = table[table.kernel.isin(ACCESS_KERNELS[access])]
    if mode == "flat":
        table = table[table.config.eq("flat_hbm" if tier == "hbm" else "flat_ddr")]
    if scope == "1S":
        table = table[table.socket.eq(0)]
    if at_gib is not None:
        table = table[table.working_set_gib.sub(at_gib).abs().lt(0.5)]
    else:
        table = table[table.working_set_gib.le(resident_gib if mode == "cache" else 8.0 + 1e-6)]
    if table.empty:
        raise LookupError(f"no bandwidth for {mode}/{tier}/{scope}/{access}")
    best = table.loc[table.gbs.idxmax()]
    return MemoryCeiling(
        kind="measured_peak",
        tier=tier,
        kernel=best.kernel,
        gbs=float(best.gbs),
        scope=scope,
        mode=mode,
        working_set_gib=float(best.working_set_gib),
        source_campaign=best.campaign_id,
        cv_percent=None if pd.isna(best.cv_percent) else float(best.cv_percent),
    )


# ------------------------------------------------------------ socket scaling
def dual_efficiency(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Two processes (one per socket) timed over a shared window, against the sum of
    the same two processes run on their own.

    Pairs are matched within one campaign by benchmark, dtype, placement, working
    set and thread count; ``efficiency`` of 1 means the isolated rates were retained.
    """

    frame = pd.concat([ext, thesis], ignore_index=True).drop_duplicates(
        subset=["campaign_id", "source_file", "iteration", "socket_scope", "phase"]
    )
    frame = frame[frame.benchmark.isin(COMPUTE_BENCHMARKS | set(BANDWIDTH_KERNELS))]
    frame = with_config(frame)
    dual = frame[frame.socket_scope.eq("dual")]
    single = frame[frame.socket_scope.eq("single") & frame.locality.eq("local")]
    rows = []
    keys = ["campaign_id", "memory_mode", "config", "benchmark", "dtype", "working_set_gib"]
    for key, part in dual.groupby(keys, dropna=False):
        campaign, mode, config, benchmark, dtype, ws = key
        metric = "bandwidth_gbs" if benchmark in BANDWIDTH_KERNELS else "performance_gops"
        sel = single[
            single.campaign_id.ne(None)
            & single.memory_mode.eq(mode)
            & single.benchmark.eq(benchmark)
            & single.config.eq(config)
            & (single.threads.eq(56))
        ]
        sel = sel[sel["dtype"].eq(dtype)] if isinstance(dtype, str) else sel[sel["dtype"].isna()]
        if isinstance(ws, float) and not math.isnan(ws):
            sel = sel[sel.working_set_gib.sub(ws).abs().lt(0.01)]
        # Same campaign if the campaign measured both, otherwise the nearest sibling
        # (October measured the isolated sockets in a different campaign part).
        same = sel[sel.campaign_id.eq(campaign)]
        sel = same if not same.empty else sel
        iso = sel.groupby("socket")[metric].median()
        if len(iso) < 2:
            continue
        rows.append(
            dict(
                memory_mode=mode,
                # Compute kernels live in cache, so they have no memory tier: the
                # tier fallback used for matching must not be shown as a placement.
                config=config if metric == "bandwidth_gbs" else None,
                benchmark=benchmark,
                dtype=dtype,
                working_set_gib=ws,
                metric="GB/s" if metric == "bandwidth_gbs" else "GOP/s",
                dual=part[metric].median(),
                isolated_sum=iso.sum(),
                efficiency=part[metric].median() / iso.sum(),
                overlap_min=part.overlap_fraction.min(),
                n_samples=len(part),
                campaign_id=campaign,
            )
        )
    return pd.DataFrame(rows)


def locality_ratio(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Remote against local bandwidth for the Flat tiers."""

    bw = bandwidth_summary(ext, thesis)
    flat = bw[bw.memory_mode.eq("flat") & bw.socket_scope.eq("single")]
    local = flat[flat.locality.eq("local")].set_index(["config", "kernel", "socket"]).gbs
    remote = flat[flat.locality.eq("remote")].set_index(["config", "kernel", "socket"]).gbs
    out = pd.DataFrame({"local": local, "remote": remote}).dropna().reset_index()
    out["remote_over_local"] = out.remote / out.local
    return out


# ---------------------------------------------------------- workload points
def gemm_workload_points(gemm: pd.DataFrame, theory: Theory, cores: int = 56):
    """Achieved GEMM operating points as roofline workload points."""

    from hwbench.roofline import WorkloadPoint

    path = {"bf16": "amx_bf16", "int8": "amx_int8"}
    points = []
    for r in gemm.itertuples():
        points.append(
            WorkloadPoint(
                name=f"{r.dtype} gemm {r.shape} M={int(r.m)} · {r.config}",
                precision=r.dtype,
                isa_path=path[r.dtype],
                gops=float(r.gops),
                intensity=float(r.intensity),
                bytes_source="modeled",
                mode=r.memory_mode,
                scope="1S",
                cores=cores,
                threads=cores,
                memory_target=r.memory_target,
                provenance={
                    "campaign": r.campaign_id,
                    "pool_gib": r.pool_gib,
                    "cv_percent": r.cv_percent,
                    "series": r.shape,
                    "label": f"M={int(r.m)}",
                    "status": getattr(r, "status", ""),
                    # hollow marker, left out of the audit: a pool too small for the batch size
                    "open": getattr(r, "status", "") == "small pool, M ≤ 32",
                },
            )
        )
    return points


def fp64_sweep_points(thesis: pd.DataFrame, mode: str, tier: str, ws_gib: float = 8.0, socket: int = 0):
    """FP64 intensity sweep (October) as workload points."""

    from hwbench.roofline import WorkloadPoint

    sweep = thesis[
        thesis.benchmark.eq("roofline_sweep")
        & thesis.memory_mode.eq(mode)
        & thesis.memory_target.eq(tier)
        & thesis.socket.eq(socket)
        & thesis.working_set_gib.sub(ws_gib).abs().lt(0.01)
        & thesis.threads.eq(56)
    ]
    points = []
    for k, part in sweep.groupby("k"):
        points.append(
            WorkloadPoint(
                name=f"fp64 sweep K={int(k)} · {mode}/{tier}",
                precision="fp64",
                isa_path="fp64",
                gops=float(part.performance_gops.median()),
                intensity=float(part.arithmetic_intensity.median()),
                mode=mode,
                scope="1S",
                cores=56,
                threads=56,
                memory_target=tier,
                provenance={
                    "campaign": _ids(part.campaign_id),
                    "series": "fp64 sweep",
                    "cv_percent": _cv(part.performance_gops),
                },
            )
        )
    return points


# ----------------------------------------------------------- master tables
def library_ceiling(gm: pd.DataFrame, path: str, mode: str = "flat", tier: str = "hbm"):
    """What a library GEMM achieved at its best shape and batch: a ``measured_achievable`` ceiling."""

    from hwbench.roofline import Ceiling

    dtype = {"amx_bf16": "bf16", "amx_int8": "int8"}[path]
    sel = gm[gm.memory_mode.eq(mode) & gm.memory_target.eq(tier) & gm.dtype.eq(dtype)]
    best = sel.loc[sel.gops.idxmax()]
    return Ceiling(
        kind="measured_achievable",
        precision=dtype,
        path=path,
        gops=float(best.gops),
        unit="GOP/s",
        scope="1S",
        mode=mode,
        cores=56,
        source_campaign=best.campaign_id,
        note=f"oneDNN {best['shape']} at M={int(best.m)}",
        cv_percent=float(best.cv_percent) if best.cv_percent == best.cv_percent else None,
    )


LITERATURE_PATH = ROOT / "configs/literature.toml"


def literature_sources(path: Path = LITERATURE_PATH) -> pd.DataFrame:
    """The cited publications of ``configs/literature.toml``: key, citation, url, setup, same_mode."""

    import tomllib

    with open(path, "rb") as handle:
        return pd.DataFrame(tomllib.load(handle)["source"])


def literature_table(ext: pd.DataFrame, thesis: pd.DataFrame, path: Path = LITERATURE_PATH) -> pd.DataFrame:
    """Published Xeon Max 9480 bandwidths beside the values of this study (M3).

    One row per published number in ``configs/literature.toml``; ``measured`` is socket 0 at
    8 GiB (both sockets for two-socket rows) from :func:`bandwidth_summary`, ``ratio`` is
    measured over published.  Rows from a source whose setup differs from this study (the
    ``same_mode`` flag) are kept but marked, because a ratio there mixes a configuration
    difference with a measurement difference.  Tier ratios are in the same table, published
    over measured, with ``unit`` ``x``.  Loaded-latency rows set the counter-measured queue
    occupancy and concurrency of the same kernel type against this study's chase beside
    streaming cores and the concurrency Little's law implies from it (``unit`` ``ns`` or ``lines``).
    """

    import tomllib

    with open(path, "rb") as handle:
        spec = tomllib.load(handle)
    same = {s["key"]: bool(s["same_mode"]) for s in spec["source"]}
    bw = bandwidth_summary(ext, thesis)
    bw = bw[bw.memory_mode.eq("flat") & bw.locality.eq("local") & bw.working_set_gib.eq(8.0)]

    def value(key: list[str]) -> float:
        config, kernel, scope = key
        part = bw[bw.config.eq(config) & bw.kernel.eq(kernel) & bw.socket_scope.eq(scope)]
        if scope == "single":
            part = part[part.socket.eq(0)]
        if len(part) != 1:
            raise ValueError(f"expected one measured value for {key}, found {len(part)}")
        return float(part.gbs.iloc[0])

    rows = []
    for r in spec["row"]:
        measured = value(r["measure"])
        rows.append(dict(quantity=r["quantity"], source=r["source"], location=r["page"], unit="GB/s",
                         published=r["published"], measured=measured, ratio=measured / r["published"],
                         same_mode=same[r["source"]]))
    lat = loaded_latency(ext)
    lat["lines_per_core"] = lat.stream_gbs * lat.loaded_ns / 64 / lat.stream_cores
    for r in spec.get("loaded", []):
        pick = lat[lat.config.eq(r["config"]) & lat.stream_cores.eq(r["cores"])]
        if len(pick) != 1:
            raise ValueError(f"expected one loaded-latency row for {r['config']} at {r['cores']} cores, found {len(pick)}")
        measured = float(pick[r["field"]].iloc[0])
        rows.append(dict(quantity=r["quantity"], source=r["source"], location=r["page"], unit=r["unit"],
                         published=r["published"], measured=measured, ratio=measured / r["published"],
                         same_mode=same[r["source"]]))
    for r in spec["ratio"]:
        measured = value(r["numerator"]) / value(r["denominator"])
        rows.append(dict(quantity=r["quantity"], source=r["source"], location=r["page"], unit="x",
                         published=r["published"], measured=measured, ratio=measured / r["published"],
                         same_mode=same[r["source"]]))
    return pd.DataFrame(rows)


def local_remote_table(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Local and remote bandwidth per tier and kernel, for socket 0.

    Socket 0 is the reference for every headline number in this study.  ``*_spread`` is the
    absolute difference to socket 1, shown so the reader sees how far the two sockets
    differ; it is not a sample-to-sample figure.

    Where the remote repeat (5 s windows, a local control beside every remote point, part
    ``remotehbm``) measured a pair at 56 threads, its local and remote values replace those of
    the first campaign (``bandwidth2``); ``source`` says which campaign each row comes from.
    """

    loc = locality_ratio(ext, thesis)
    loc = loc[loc.kernel.isin(["read", "triad_nt"])].assign(source="first campaign")
    rt = remote_repeat_table(ext)
    rt = rt[rt.threads.eq(56)].assign(config=lambda f: ["flat_" + t for t in f.memory_target], source="remote repeat")
    rt = rt.rename(columns={"gbs_local": "local", "gbs_remote": "remote"})[["config", "kernel", "socket", "local", "remote", "source"]]
    have = set(zip(rt.config, rt.kernel, rt.socket))
    loc = pd.concat([rt, loc[[(c, k, s_) not in have for c, k, s_ in zip(loc.config, loc.kernel, loc.socket)]]], ignore_index=True)
    s0 = loc[loc.socket.eq(0)].set_index(["config", "kernel"])
    s1 = loc[loc.socket.eq(1)].set_index(["config", "kernel"])
    out = s0[["local", "remote", "source"]].copy()
    for col in ("local", "remote"):
        out[f"{col}_spread"] = (s1[col] - s0[col]).abs()
    out = out.reset_index()
    out["remote_over_local"] = out.remote / out.local
    tier = out.config.map({"flat_ddr": "DDR", "flat_hbm": "HBM"})
    out["label"] = tier + " " + out.kernel.map({"read": "read", "triad_nt": "NT Triad"})
    order = {"DDR read": 0, "DDR NT Triad": 1, "HBM read": 2, "HBM NT Triad": 3}
    return out.sort_values("label", key=lambda s_: s_.map(order)).reset_index(drop=True)


def span_reference(ext: pd.DataFrame, thesis: pd.DataFrame, kernel: str = "read") -> pd.DataFrame:
    """One 112-thread process by placement, with the two-isolated-sockets sum.

    ``kernel`` is ``read`` or ``triad``; the isolated sockets use the same kernel at 8 GiB.
    """

    sp = span_table(ext)
    sp = sp[sp.memory_mode.eq("flat") & sp.benchmark.eq(f"stream_{kernel}") & sp.placement.isin(["firsttouch", "interleave"])]
    bw = bandwidth_summary(ext, thesis)
    iso = bw[bw.locality.eq("local") & bw.socket_scope.eq("single") & bw.kernel.eq(kernel) & bw.working_set_gib.sub(8).abs().lt(0.5)]
    sums = iso.groupby("config").gbs.sum()
    out = sp[["config", "placement", "gbs"]].copy()
    out["isolated_sum"] = out.config.map(sums)
    name = {"read": "read", "triad": "Triad"}[kernel]
    out["label"] = out.config.map({"flat_ddr": "DDR", "flat_hbm": "HBM"}) + " " + name
    return out.sort_values("label", ascending=False).reset_index(drop=True)


def headline_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, unc: pd.DataFrame | None = None) -> pd.DataFrame:
    """T1: the headline ceilings of one socket (socket 0), each with its uncertainty.

    ``median``, ``min`` and ``max`` are the five samples of one run; ``sustained`` is the median
    without the first window (``first_window_effect``).  ``spread`` is half
    that range relative to the median.  ``repeat`` is the range of three independent launches
    of the same quantity on the same node (``repeat_ranges``); ``between`` is the range of every
    selected campaign that measured the quantity on its reference node (``campaign_spread``),
    launches on different days; ``cross_run`` is the largest
    deviation seen in the cross-check (SSH against the October Slurm runs, or a second
    Cache node), for the quantity or, where it was not repeated, its family; ``basis`` says
    which.  ``total`` is spread plus the largest of the three, a conservative linear sum.  ``kind`` says what sort of number it is: operation counts
    over a timed window, or kernel bytes over a timed window (modeled, not counted by the
    memory controller).
    """

    cross = cross_run_percent(ext, thesis)
    repeats = repeat_ranges(ext).set_index(["memory_mode", "quantity"])
    spread_c = campaign_spread(ext, thesis).set_index(["memory_mode", "quantity", "working_set_gib"])
    per_campaign = campaign_medians(ext, thesis)

    def between(mode: str, quantity: str, ws: float):
        key = (mode, quantity, ws)
        if key not in spread_c.index:
            return math.nan, 0
        row = spread_c.loc[key]
        return float(row.same_node_percent), int(row.same_node_campaigns)

    def sustained(mode: str, quantity: str, campaigns: str, ws: float = math.nan) -> float:
        sel = per_campaign[
            per_campaign.memory_mode.eq(mode) & per_campaign.quantity.eq(quantity) & per_campaign.campaign_id.isin(campaigns.split(";"))
            & (per_campaign.working_set_gib.isna() if ws != ws else per_campaign.working_set_gib.eq(ws))
        ]
        return float(sel.sustained.median()) if len(sel) else math.nan
    inverse = {path: key for key, path in KERNEL_PATHS.items()}

    def launches(mode: str, quantity: str):
        row = repeats.loc[(mode, quantity)] if (mode, quantity) in repeats.index else None
        return (math.nan, 0) if row is None else (float(row.repeat_range_percent), int(row.launches))

    peaks = isa_peaks(ext, theory)
    peaks = peaks[peaks.scope.eq("1S") & peaks.cores.eq(56) & peaks.memory_mode.eq("flat") & peaks.socket.eq(0)]
    bench_of = {key: b for b, key in [(b, k) for (b, d), k in KERNEL_PATHS.items()]}
    rows = []
    for key in ["fp64", "fp32", "avx512_bf16", "vnni_int8", "amx_bf16", "amx_int8"]:
        r = peaks[peaks.path.eq(key)].iloc[0]
        c = cross.get(("flat", bench_of[key])) or cross[("flat", "compute")]
        bench, dtype = inverse[key]
        rep_pct, n_launch = launches("flat", f"{bench}/{dtype}")
        btw, n_camp = between("flat", f"{bench}/{dtype}", math.nan)
        rows.append(
            dict(
                quantity=f"{theory.isa(key).label} peak", unit="TOP/s", median=r.gops / 1000, low=r.gops_min / 1000,
                high=r.gops_max / 1000, n=int(r.n_samples), kind="measured, ops counted",
                sustained=sustained("flat", f"{bench}/{dtype}", r.campaign_id) / 1000,
                repeat=rep_pct, launches=n_launch, between=btw, campaigns=n_camp, cross_run=c["percent"], basis=c["basis"],
            )
        )
    bw = bandwidth_summary(ext, thesis)
    bw = bw[bw.locality.eq("local") & bw.socket_scope.eq("single") & bw.socket.eq(0) & bw.working_set_gib.sub(8).abs().lt(0.5)]
    for cfg, kernel, name, mode, tier in [
        ("flat_hbm", "read", "Flat HBM read-only", "flat", "hbm"),
        ("flat_hbm", "triad", "Flat HBM Triad", "flat", "hbm"),
        ("flat_ddr", "read", "Flat DDR read-only", "flat", "ddr"),
        ("flat_ddr", "triad", "Flat DDR Triad", "flat", "ddr"),
        ("cache", "read", "Cache read-only, 8 GiB", "cache", "effective_cache"),
    ]:
        r = bw[bw.config.eq(cfg) & bw.kernel.eq(kernel)].iloc[0]
        c = cross[(mode, tier)]
        rep_pct, n_launch = launches(mode, f"stream_{kernel}/{tier}")
        basis = c["basis"] if kernel != "triad" or mode == "cache" else "repeat of this quantity"
        if mode == "cache":
            basis = "Triad on a second node"
        quantity = f"stream_{kernel}/{tier}"
        btw, n_camp = between(mode, quantity, 8.0)
        rows.append(
            dict(
                quantity=f"{name} (56 cores)", unit="GB/s", median=r.gbs, low=r.gbs_min, high=r.gbs_max, n=int(r.n_samples),
                kind="measured, bytes modeled", sustained=sustained(mode, quantity, r.campaign_id, 8.0),
                repeat=rep_pct, launches=n_launch, between=btw, campaigns=n_camp, cross_run=c["percent"], basis=basis,
            )
        )
    out = pd.DataFrame(rows)
    out["spread"] = 100 * (out.high - out.low) / 2 / out["median"]
    out["total"] = out.spread + out[["repeat", "between", "cross_run"]].max(axis=1)
    if unc is not None and len(unc):
        out = out.merge(_headline_measured(unc), on="quantity", how="left")
    return out


def _headline_measured(unc: pd.DataFrame) -> pd.DataFrame:
    """Measured traffic of the Table 1 bandwidth rows: the counted 56-core streams at 8 GiB.

    ``measured`` is the median rate of measured bytes (Flat: every controller channel, U1;
    Cache: ``bytes_source`` of the Cache node's ``ustreams``); ``measured_over_modeled`` divides
    it by the same records' modeled rate, so it is free of the launch-to-launch spread.
    """

    rows = []
    names = {("flat", "hbm", "read"): "Flat HBM read-only (56 cores)", ("flat", "hbm", "triad"): "Flat HBM Triad (56 cores)",
             ("flat", "ddr", "read"): "Flat DDR read-only (56 cores)", ("flat", "ddr", "triad"): "Flat DDR Triad (56 cores)",
             ("cache", "effective_cache", "read"): "Cache read-only, 8 GiB (56 cores)"}
    d = unc[unc.notes.isin(U1_STREAMS) & unc.threads.eq(56) & unc.working_set_bytes.div(2**30).sub(8).abs().lt(0.5) & unc.accepted]
    if d.empty:
        return pd.DataFrame(columns=["quantity", "measured", "measured_over_modeled", "bytes_source", "measured_campaign"])
    d = _with_measured(d).assign(kernel=lambda f: f.notes.map(U1_STREAMS))
    for (mode, tier, kernel), g in d.groupby(["memory_mode", "memory_target", "kernel"]):
        if (mode, tier, kernel) not in names or g.measured_gbs.isna().all():
            continue
        rows.append(dict(quantity=names[(mode, tier, kernel)], measured=g.measured_gbs.median(),
                         measured_over_modeled=(g.measured_gbs / g.bandwidth_gbs).median(),
                         bytes_source=g.bytes_source.dropna().iloc[0], measured_campaign=_ids(g.campaign_id)))
    return pd.DataFrame(rows)


def ridge_table(ext: pd.DataFrame, thesis: pd.DataFrame, unc: pd.DataFrame | None = None) -> pd.DataFrame:
    """T2: ridge point (operations per byte) of each compute path on each tier, one socket.

    Every column uses the read-only ceiling, the one the headline roofline and the decode bound
    use; Cache mode is read at 16 GiB (the weights of an 8B BF16 model), not at the best working set.
    """

    from hwbench.roofline import ridge as _ridge

    # With ``unc`` the ceilings are in measured bytes where a counted run measured them.
    tiers = {
        "HBM read": ceiling_or_modeled(unc, ext, thesis, "flat", "hbm"),
        "DDR read": ceiling_or_modeled(unc, ext, thesis, "flat", "ddr"),
        "Cache read at 16 GiB": ceiling_or_modeled(unc, ext, thesis, "cache", "effective_cache", at_gib=16),
    }
    rows = []
    for key, label in [("fp64", "AVX-512 FP64"), ("fp32", "AVX-512 FP32"), ("avx512_bf16", "AVX-512 BF16"), ("vnni_int8", "VNNI INT8"), ("amx_bf16", "AMX BF16"), ("amx_int8", "AMX INT8")]:
        c = compute_ceiling(ext, key, "flat", 56)
        rows.append({"path": label, "peak (TOP/s)": c.gops / 1000, **{f"{n} ({m.gbs:.0f} GB/s)": _ridge(c.gops, m.gbs) for n, m in tiers.items()}})
    return pd.DataFrame(rows)


def measured_theory_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, hmat: dict[str, float]) -> pd.DataFrame:
    """T3: memory bandwidth against the vendor or derived peak and the firmware-advertised figure.

    Compute peaks are compared with their per-cycle figures in the master notebook's efficiency figure
    (and their TOP/s are in Table 1), so they are not repeated here.
    """

    rows = []
    hbm_read = memory_ceiling(ext, thesis, "flat", "hbm", access="read").gbs
    ddr_read = memory_ceiling(ext, thesis, "flat", "ddr", access="read").gbs
    rows.append(dict(quantity="DDR read (GB/s)", measured=ddr_read, theoretical=theory.memory_gbs("ddr"), theory_status="derived", firmware=hmat["ddr"]))
    rows.append(dict(quantity="HBM read (GB/s)", measured=hbm_read, theoretical=theory.memory_gbs("hbm"), theory_status="vendor, rounded", firmware=hmat["hbm"]))
    out = pd.DataFrame(rows)
    out["measured_over_theoretical"] = out.measured / out.theoretical
    out["measured_over_firmware"] = out.measured / out.firmware
    return out


def unmeasured_table() -> pd.DataFrame:
    """T4: what this study does not measure, and what blocks it."""

    return pd.DataFrame(
        [
            ("Memory-controller traffic in Cache mode", "the Cache node (hbm13) allows privileged perf since 2026-10-20 but has no perf installed", "Cache-mode intensity uses the cores' DRAM line counts (pmu_ocr); Flat headline, atlas and decode points use controller bytes (notebooks 00, 05, 06)"),
            ("Cache-mode hit rate", "memory-side-cache tag events (M2M) need perf on the Cache node", "DRAM power (turbostat) shows DDR traffic from 32 GiB; the miss count itself is not measured"),
            ("Why Cache-mode spilled streams order read-only < GEMM ≤ Triad", "the same", "ordering reported, not explained"),
            ("Which agent issues the duplicated remote-HBM reads at 56 threads", "the CHA opcode-level events were not part of the session", "the duplication itself is counted (notebook 06); prefetch or retry is not resolved"),
            ("Address-translation share of far latency", "no TLB-miss counter is readable", "the Flat DDR chase to 128 GiB bounds it (a few ns per doubling), so Cache-mode far latency is mostly the memory-side cache"),

            ("HBM device capability beyond 56 cores", "SNC4 / HBM-only modes are not available on the node", "HBM ceiling is a 56-core figure"),
        ],
        columns=["not measured", "what blocks it", "consequence here"],
    )


# --------------------------------------------------------------- uncertainty
FAMILIES = {
    "compute": ["amx_peak", "avx512_bf16_peak", "avx512_peak", "int8_amx_peak", "vnni_peak"],
    "bandwidth": ["stream_read", "stream_triad", "stream_triad_nt", "stream_copy", "stream_copy_nt"],
    "gemm": ["onednn_gemm_sweep"],
    "latency": ["pointer_chase"],
    "sweep": ["roofline_sweep"],
}


def _family(benchmark: str) -> str:
    return next((f for f, names in FAMILIES.items() if benchmark in names), "other")


def sample_cv(ext: pd.DataFrame) -> pd.DataFrame:
    """Coefficient of variation of the samples of every *configuration*, one row each.

    A configuration is everything that defines one measurement: benchmark, dtype, scope,
    socket, tier, threads, working set, GEMM shape and batch (``m``, ``n``, ``k``),
    notes and campaign.  Grouping without the shape would pool different GEMMs into one
    spread; the first version of this table did that and overstated the tail.
    """

    keys = [
        "memory_mode", "benchmark", "dtype", "socket_scope", "socket", "memory_target", "threads",
        "working_set_bytes", "m", "n", "k", "notes", "campaign_id",
    ]
    metric = ext.bandwidth_gbs.where(ext.benchmark.isin(FAMILIES["bandwidth"] + FAMILIES["gemm"]), ext.performance_gops)
    metric = metric.fillna(ext.performance_gops).fillna(ext.latency_ns)
    g = ext.assign(_metric=metric).groupby(keys, dropna=False)._metric
    out = pd.DataFrame({"cv_percent": 100 * g.std() / g.mean(), "n_samples": g.size()}).dropna().reset_index()
    out["family"] = out.benchmark.map(_family)
    return out


def first_window_effect(ext: pd.DataFrame) -> pd.DataFrame:
    """How far the first timed window of a configuration lies from the later ones.

    ``ratio`` is the first window over the median of the others.  ``median_shift`` is how
    much keeping the first window moves the five-sample median relative to dropping it.
    A cold first window (ratio below 1) and a fast one (above 1, as on HBM at 56 cores) are
    both kept; the claims ``cold_first_window`` and ``hbm_first_window`` read them.
    """

    keys = [
        "memory_mode", "benchmark", "dtype", "socket", "memory_target", "locality", "threads", "working_set_bytes",
        "m", "n", "k", "notes", "campaign_id",
    ]
    metric = ext.bandwidth_gbs.where(ext.benchmark.isin(FAMILIES["bandwidth"] + FAMILIES["gemm"]), ext.performance_gops)
    data = ext[~ext.benchmark.eq("pointer_chase")].assign(_metric=metric.fillna(ext.performance_gops))
    rows = []
    for key, part in data.groupby(keys, dropna=False):
        part = part.sort_values("iteration")
        if len(part) < 5 or part.iteration.iloc[0] != 0:
            continue
        rest = part._metric.iloc[1:].median()
        rows.append(
            dict(
                zip(keys, key),
                family=_family(key[1]),
                ratio=part._metric.iloc[0] / rest,
                median_shift=part._metric.median() / rest - 1,
            )
        )
    return pd.DataFrame(rows)


#: The node most campaigns of a mode ran on: Flat has one node; Cache's October data are from hbm01.
REFERENCE_NODE = {"flat": "cresco8-hbm14", "cache": "cresco8-hbm01"}


def campaign_medians(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Median of every selected campaign that measured a headline configuration, one row each.

    Headline configurations are socket 0, one socket, 56 cores: the six compute paths and the
    read, Triad and non-temporal Triad streams on local memory at 8 GiB (and 96 GiB in Cache mode).
    ``median`` uses all five windows, as every table does; ``sustained`` drops the first window
    (``first_window_effect``).  Chain-count campaigns are left out (other kernels).
    """

    data = pd.concat([thesis, ext], ignore_index=True)
    data = data[
        data.socket_scope.eq("single") & data.socket.eq(0) & data.threads.eq(56) & data.accepted.astype(bool)
        & ~data.notes.fillna("").str.startswith("chains_")
    ]
    streams = data[
        data.benchmark.isin(["stream_read", "stream_triad", "stream_triad_nt"]) & data.locality.eq("local")
    ].copy()
    streams["working_set_gib"] = streams.working_set_gib.round(0)
    streams = streams[streams.working_set_gib.eq(8) | (streams.memory_mode.eq("cache") & streams.working_set_gib.eq(96))]
    streams["quantity"] = streams.benchmark + "/" + streams.memory_target
    streams["metric"] = streams.bandwidth_gbs
    comp = data[data.benchmark.isin(COMPUTE_BENCHMARKS) & data["dtype"].notna()].copy()
    comp["quantity"] = comp.benchmark + "/" + comp["dtype"]
    comp["working_set_gib"] = math.nan
    comp["metric"] = comp.performance_gops
    both = pd.concat([streams, comp], ignore_index=True)
    rows = []
    for (mode, quantity, ws, campaign), part in both.groupby(
        ["memory_mode", "quantity", "working_set_gib", "campaign_id"], dropna=False
    ):
        rows.append(
            dict(
                memory_mode=mode, quantity=quantity, working_set_gib=ws, campaign_id=campaign,
                node=part.node.iloc[0], median=part.metric.median(),
                sustained=part[part.iteration.ne(0)].metric.median(), n_samples=len(part),
            )
        )
    return pd.DataFrame(rows)


def campaign_spread(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Between-campaign spread of each headline configuration, on its reference node and overall.

    ``same_node_percent`` is (max - min) / mean of the campaign medians on the mode's reference
    node (``REFERENCE_NODE``); ``all_nodes_percent`` includes campaigns on other nodes.  These are
    independent launches on different days, unlike the three back-to-back ``repeat`` launches.
    """

    per = campaign_medians(ext, thesis)
    rows = []
    for (mode, quantity, ws), part in per.groupby(["memory_mode", "quantity", "working_set_gib"], dropna=False):
        ref = part[part.node.eq(REFERENCE_NODE[mode])]
        rng = lambda v: 100 * (v.max() - v.min()) / v.mean() if len(v) > 1 else math.nan  # noqa: E731
        rows.append(
            dict(
                memory_mode=mode, quantity=quantity, working_set_gib=ws,
                campaigns=len(part), same_node_campaigns=len(ref),
                same_node_low=ref["median"].min(), same_node_high=ref["median"].max(),
                same_node_percent=rng(ref["median"]), all_nodes_percent=rng(part["median"]),
                nodes=";".join(sorted(part.node.unique())),
            )
        )
    return pd.DataFrame(rows)


def cross_run_percent(ext: pd.DataFrame, thesis: pd.DataFrame) -> dict[tuple[str, str], dict]:
    """Largest repeat-run deviation (percent) by (mode, key), with the basis it rests on.

    Keys are compute benchmarks (``("flat", "amx_peak")``), tiers for Triad
    (``("flat", "hbm")``) and the pooled compute family (``("flat", "compute")``).  Flat
    repeats ran on the same node; Cache repeats ran on a second node, so that figure
    is node-to-node variance.
    """

    x = xcheck_table(ext, thesis)
    out: dict[tuple[str, str], dict] = {}
    for mode, part in x.groupby("memory_mode"):
        comp = part[~part.benchmark.eq("stream_triad")]
        for bench, rows in comp.groupby("benchmark"):
            out[(mode, bench)] = dict(percent=float(rows.deviation_percent.abs().max()), basis="repeat of this path")
        out[(mode, "compute")] = dict(percent=float(comp.deviation_percent.abs().max()), basis="largest repeated compute path")
        for tier, rows in part[part.benchmark.eq("stream_triad")].groupby("memory_target"):
            out[(mode, tier)] = dict(percent=float(rows.deviation_percent.abs().max()), basis="Triad repeat, same tier")
    return out


# ----------------------------------------------------------- counted traffic
def counted_table(df: pd.DataFrame) -> pd.DataFrame:
    """Counted against modeled memory traffic, one row per measured configuration.

    ``counted_bytes`` are 64-byte DRAM lines read plus written by the benchmark's own
    threads (offcore-response events); ``modeled_bytes`` is the kernel's traffic
    convention.  ``counted_over_modeled`` of 1 means the model describes what the cores
    moved.  ``read_share`` is the fraction of the counted lines that were reads, and
    ``intensity_counted`` places the point on a roofline with counted bytes.
    """

    data = df[df.counted_bytes.notna() & df.modeled_bytes.gt(0)].copy()
    if data.empty:
        return pd.DataFrame()
    data["_lines"] = data.dram_read_lines + data.dram_write_lines
    data["_read_share"] = data.dram_read_lines / data._lines
    data["_ipc"] = data.instructions / data.cycles
    keys = ["memory_mode", "benchmark", "kernel", "dtype", "memory_target", "threads", "working_set_bytes", "m", "n", "k", "notes", "campaign_id"]
    g = data.groupby(keys, dropna=False)
    out = g.agg(
        modeled_bytes=("modeled_bytes", "median"),
        counted_bytes=("counted_bytes", "median"),
        read_share=("_read_share", "median"),
        ipc=("_ipc", "median"),
        operations=("operations", "median"),
        n_samples=("counted_bytes", "size"),
    ).reset_index()
    out["counted_over_modeled"] = out.counted_bytes / out.modeled_bytes
    out["intensity_modeled"] = out.operations / out.modeled_bytes
    out["intensity_counted"] = out.operations / out.counted_bytes
    return out


# -------------------------------------------------------- follow-up campaigns
#: On-chip capacity that can hold weights: 112.5 MiB L3 (non-inclusive) + 56 x 2 MiB L2.
ONCHIP_BYTES = int(112.5 * 2**20) + 56 * 2 * 2**20
POOL_MULTIPLES = (4, 16, 64)


def _nominal_pool(working_set_bytes: float) -> int:
    ratio = working_set_bytes / ONCHIP_BYTES
    return min(POOL_MULTIPLES, key=lambda n: abs(math.log2(ratio / n)))


def _gemm_frame(ext: pd.DataFrame, notes: list[str]) -> pd.DataFrame:
    g = ext[ext.benchmark.eq("onednn_gemm_sweep") & ext.notes.isin(notes)].copy()
    g["counted_gbs"] = g.counted_bytes / g.elapsed_seconds / 1e9
    g["shape"] = g.n.astype(int).astype(str) + "x" + g.k.astype(int).astype(str)
    g["pool_x"] = [_nominal_pool(w) for w in g.working_set_bytes]
    return g


def gemm_pool_table(ext: pd.DataFrame) -> pd.DataFrame:
    """GEMM bandwidth against weight-pool size (4x, 16x, 64x the on-chip capacity).

    ``modeled_gbs`` assumes every weight byte comes from memory; ``counted_gbs`` is what the
    cores' DRAM counters saw.  A pool too small to defeat the caches shows as counted below
    modeled.
    """

    g = _gemm_frame(ext, ["gemm_pool"])
    keys = ["memory_target", "dtype", "shape", "m", "pool_x"]
    return (
        g.groupby(keys)
        .agg(
            modeled_gbs=("bandwidth_gbs", "median"),
            counted_gbs=("counted_gbs", "median"),
            gops=("performance_gops", "median"),
            cv_percent=("bandwidth_gbs", _cv),
            n_samples=("accepted", "size"),
        )
        .reset_index()
    )


def gemm_overhead_table(ext: pd.DataFrame) -> pd.DataFrame:
    """Time per call of small GEMMs: the fixed cost of one library call from Python.

    ``hot`` pools hold two copies of the weights (they stay in L2), ``stream`` pools are four
    times the on-chip capacity.
    """

    g = _gemm_frame(ext, ["gemm_overhead"])
    calls = g.operations / (2 * g.m * g.n * g.k)
    g["us_per_call"] = g.elapsed_seconds * 1e6 / calls
    g["pool"] = ["stream" if w > 1e8 else "hot" for w in g.working_set_bytes]
    return (
        g.groupby(["shape", "dtype", "memory_target", "pool", "m"])
        .agg(us_per_call=("us_per_call", "median"), gops=("performance_gops", "median"), n_samples=("accepted", "size"))
        .reset_index()
    )


def gemm_prepacked_table(ext: pd.DataFrame) -> pd.DataFrame:
    """BF16 with weights prepacked once against the same call with plain weights (4x pool)."""

    plain = _gemm_frame(ext, ["gemm_pool"])
    plain = plain[plain.dtype.eq("bf16") & plain.pool_x.eq(4)]
    packed = _gemm_frame(ext, ["gemm_prepacked"])
    keys = ["memory_target", "shape", "m"]
    a = plain.groupby(keys).agg(plain_gops=("performance_gops", "median"), plain_gbs=("bandwidth_gbs", "median"))
    b = packed.groupby(keys).agg(prepacked_gops=("performance_gops", "median"), prepacked_gbs=("bandwidth_gbs", "median"))
    out = pd.concat([a, b], axis=1).dropna().reset_index()
    out["speedup"] = out.prepacked_gops / out.plain_gops
    return out


def decode_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, shape: str = "14336x4096") -> pd.DataFrame:
    """What a decode step (M = 1) of one projection actually streams, against the read ceiling.

    One row per tier, precision and weight layout, from the converged pools where they exist:
    Flat plain BF16 and INT8 at 64x the on-chip capacity (``gemm_pool``, counted bytes beside
    modeled); Flat prepacked BF16 only at 4x (``gemm_prepacked``, not converged); Cache from the
    first sweep, whose 16 and 96 GiB pools are far beyond the on-chip capacity.  ``tokens_per_s``
    is the Llama-3.1-8B bound if every weight streamed at this rate: model bytes per precision
    over the weight rate.  14336x4096 is the largest projection and the fastest-streaming shape
    measured, so the bound is optimistic for the model as a whole.
    """

    params = theory.model_parameters()
    model_gb = {"bf16": params * 2 / 1e9, "int8": params * 1 / 1e9}
    read = {
        "Flat HBM": memory_ceiling(ext, thesis, "flat", "hbm", access="read").gbs,
        "Flat DDR": memory_ceiling(ext, thesis, "flat", "ddr", access="read").gbs,
        "Cache, 16 GiB": memory_ceiling(ext, thesis, "cache", "effective_cache", access="read", at_gib=16).gbs,
        "Cache, 96 GiB": memory_ceiling(ext, thesis, "cache", "effective_cache", access="read", at_gib=96).gbs,
    }
    tier_name = {"hbm": "Flat HBM", "ddr": "Flat DDR"}
    rows = []
    for tier, r in read.items():
        rows.append(dict(tier=tier, precision="—", layout="read-only kernel", pool="—", gbs=r, counted_gbs=math.nan, read_gbs=r))
    pool = gemm_pool_table(ext)
    pool = pool[pool["shape"].eq(shape) & pool.m.eq(1) & pool.pool_x.eq(64)]
    for r in pool.itertuples():
        rows.append(
            dict(tier=tier_name[r.memory_target], precision=r.dtype, layout="plain" if r.dtype == "bf16" else "prepacked",
                 pool="64× on-chip", gbs=r.modeled_gbs, counted_gbs=r.counted_gbs, read_gbs=read[tier_name[r.memory_target]])
        )
    # Prepacked BF16: the converged sweep (16x) when it ran, else the 4x pool of gemmvalid.
    cs = converged_sweep(ext, shape)
    cs = cs[cs.layout.eq("prepacked") & cs["dtype"].eq("bf16") & cs.m.eq(1)]
    if len(cs):
        pk, pool_text = cs.set_index("memory_target").rename(columns={"counted_gbs": "counted"}), "16× on-chip"
    else:
        pk = _gemm_frame(ext, ["gemm_prepacked"])
        pk = pk[pk["shape"].eq(shape) & pk.m.eq(1)].groupby("memory_target").agg(gbs=("bandwidth_gbs", "median"), counted=("counted_gbs", "median"))
        pool_text = "4× on-chip (not converged)"
    for tier, r in pk.iterrows():
        rows.append(
            dict(tier=tier_name[tier], precision="bf16", layout="prepacked", pool=pool_text, gbs=r.gbs,
                 counted_gbs=r.counted, read_gbs=read[tier_name[tier]])
        )
    gm = gemm_points(ext)
    cache = gm[gm.memory_mode.eq("cache") & gm["shape"].eq(shape) & gm.m.eq(1)]
    for r in cache.itertuples():
        tier = f"Cache, {r.pool_gib:.0f} GiB"
        rows.append(
            dict(tier=tier, precision=r.dtype, layout="plain" if r.dtype == "bf16" else "prepacked", pool=f"{r.pool_gib:.0f} GiB",
                 gbs=r.gbs, counted_gbs=math.nan, read_gbs=read[tier])
        )
    out = pd.DataFrame(rows)
    out["of_read_ceiling"] = out.gbs / out.read_gbs
    out["tokens_per_s"] = [g / model_gb[p] if p in model_gb else g / model_gb["bf16"] for g, p in zip(out.gbs, out.precision)]
    order = {t: i for i, t in enumerate(read)}
    out["_o"] = out.tier.map(order)
    return out.sort_values(["_o", "layout", "precision"], key=lambda c: c if c.name == "_o" else c.map(lambda v: (v != "read-only kernel", v))).drop(columns="_o").reset_index(drop=True)


def remote_repeat_table(ext: pd.DataFrame) -> pd.DataFrame:
    """Remote against local bandwidth by thread count (the 5 s remote-HBM repeat)."""

    d = ext[ext.notes.isin(["remote_repeat", "remote_repeat_local"])].copy()
    d["place"] = d.notes.map({"remote_repeat": "remote", "remote_repeat_local": "local"})
    g = d.groupby(["benchmark", "memory_target", "socket", "threads", "place"]).agg(
        gbs=("bandwidth_gbs", "median"), cv=("bandwidth_gbs", _cv)
    )
    out = g.unstack("place")
    out.columns = [f"{a}_{b}" for a, b in out.columns]
    out = out.reset_index()
    out["remote_over_local"] = out.gbs_remote / out.gbs_local
    out["kernel"] = out.benchmark.map(BANDWIDTH_KERNELS)
    return out


def chain_sweep(ext: pd.DataFrame) -> pd.DataFrame:
    """AVX-512 BF16 dot product against the number of independent accumulator chains."""

    d = ext[ext.notes.str.startswith("chains_bf16_c", na=False)].copy()
    d["chains"] = d.notes.str.extract(r"_c(\d+)$")[0].astype(int)
    d["ops_per_cycle_per_core"] = d.performance_gops / (d.ghz_effective * d.threads)
    return (
        d.groupby(["threads", "chains"])
        .agg(
            gops=("performance_gops", "median"),
            ghz=("ghz_effective", "median"),
            ops_per_cycle_per_core=("ops_per_cycle_per_core", "median"),
            cv_percent=("performance_gops", _cv),
            n_samples=("accepted", "size"),
        )
        .reset_index()
    )


def fp64_sweep12_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> pd.DataFrame:
    """FP64 intensity sweep with 12 chains (and the 8-chain control), against the FP64 peak.

    ``fraction_at_clock`` compares with the peak scaled to the clock the cores ran at, which
    separates a kernel shortfall from the clock drop under heavy memory traffic.
    """

    peak = compute_ceiling(ext, "fp64", "flat", 56)
    d = ext[ext.notes.isin(["sweep_c12", "sweep_c8"]) & ext.socket.eq(0)].copy()
    d["chains"] = d.notes.map({"sweep_c12": 12, "sweep_c8": 8})
    out = (
        d.groupby(["memory_target", "chains", "k"])
        .agg(
            gops=("performance_gops", "median"),
            intensity=("arithmetic_intensity", "median"),
            gbs=("bandwidth_gbs", "median"),
            ghz=("ghz_effective", "median"),
            cv_percent=("performance_gops", _cv),
            campaign_id=("campaign_id", _ids),
        )
        .reset_index()
    )
    out["fraction_of_peak"] = out.gops / peak.gops
    out["fraction_at_clock"] = out.gops / (peak.gops * out.ghz / peak.ghz)
    return out


def fp64_sweep12_points(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, tier: str):
    """The 12-chain sweep as roofline workload points."""

    from hwbench.roofline import WorkloadPoint

    t = fp64_sweep12_table(ext, thesis, theory)
    t = t[t.memory_target.eq(tier) & t.chains.eq(12)]
    return [
        WorkloadPoint(
            name=f"fp64 sweep K={int(r.k)} · 12 chains · {tier}", precision="fp64", isa_path="fp64", gops=float(r.gops),
            intensity=float(r.intensity), mode="flat", scope="1S", cores=56, threads=56, memory_target=tier,
            ghz_effective=float(r.ghz), provenance={"campaign": r.campaign_id, "series": "fp64 sweep · 12 chains", "cv_percent": r.cv_percent},
        )
        for r in t.itertuples()
    ]


def cache_latency_far(ext: pd.DataFrame) -> pd.DataFrame:
    """Cache-mode idle latency for working sets from inside the HBM cache to far beyond it."""

    d = ext[ext.notes.eq("hier_latency_far")]
    return (
        d.groupby(d.working_set_gib.round(0).rename("working_set_gib"))
        .agg(latency_ns=("latency_ns", "median"), cv_percent=("latency_ns", _cv), n_samples=("accepted", "size"))
        .reset_index()
    )


def flat_latency_far(ext: pd.DataFrame) -> pd.DataFrame:
    """Flat-mode idle latency of a one-core chase at 16-128 GiB (part ``flatfar``, review item R2).

    The control for :func:`cache_latency_far`: the same chase on memory without a memory-side
    cache, so what still rises with the working set is address translation, not a cache miss.
    """

    d = with_config(ext[ext.notes.eq("flat_latency_far")])
    return (
        d.groupby(["config", d.working_set_gib.round(0).rename("working_set_gib")])
        .agg(latency_ns=("latency_ns", "median"), cv_percent=("latency_ns", _cv), n_samples=("accepted", "size"),
             campaign_id=("campaign_id", _ids))
        .reset_index()
    )


def loaded_latency(ext: pd.DataFrame) -> pd.DataFrame:
    """Dependent-load latency of one core beside ``n`` cores streaming the same tier (part ``loadedlat``, R3).

    ``idle_ns`` is the chase alone in the same launch; ``stream_gbs`` the aggregate read rate of the
    ``n`` streaming cores during the shared window and ``control_gbs`` the same cores alone, so
    ``stream_over_control`` says how much the chase took from them.
    """

    d = with_config(ext[ext.notes.str.startswith("loaded_")])
    idle = d[d.notes.eq("loaded_latency_idle")].groupby("config").latency_ns.median()
    rows = []
    for config, part in d.groupby("config"):
        for n in sorted({int(x.rsplit("_n", 1)[1]) for x in part.notes if x.startswith("loaded_latency_n")}):
            chase = part[part.notes.eq(f"loaded_latency_n{n}")]
            load = part[part.notes.eq(f"loaded_stream_n{n}")]
            control = part[part.notes.eq(f"loaded_stream_control_n{n}")]
            rows.append(
                dict(
                    config=config, stream_cores=n, idle_ns=float(idle[config]), loaded_ns=float(chase.latency_ns.median()),
                    cv_percent=_cv(chase.latency_ns), stream_gbs=float(load.bandwidth_gbs.median()),
                    control_gbs=float(control.bandwidth_gbs.median()), n_samples=len(chase), campaign_id=_ids(chase.campaign_id),
                )
            )
    out = pd.DataFrame(rows)
    if len(out):
        out["latency_ratio"] = out.loaded_ns / out.idle_ns
        out["stream_over_control"] = out.stream_gbs / out.control_gbs
    return out


def counted_gemm_points(ext: pd.DataFrame, theory: Theory, tier: str = "hbm", shape: str = "14336x4096"):
    """The counted GEMM points as paired roofline markers: modeled and counted intensity.

    Both use the same operations and time; only the bytes differ (kernel convention against
    the cores' DRAM line counts).
    """

    from hwbench.roofline import WorkloadPoint

    g = _gemm_frame(ext, ["counted_gemm"])
    g = g[g.memory_mode.eq("flat") & g.memory_target.eq(tier) & g["shape"].eq(shape)]
    path = {"bf16": "amx_bf16", "int8": "amx_int8"}
    rows = g.groupby(["dtype", "m"]).agg(
        gops=("performance_gops", "median"), modeled=("modeled_bytes", "median"), counted=("counted_bytes", "median"),
        ops=("operations", "median"), campaign=("campaign_id", _ids),
    )
    out = []
    for (dtype, m), r in rows.iterrows():
        for source, nbytes in (("modeled", r.modeled), ("pmu_ocr", r.counted)):
            out.append(
                WorkloadPoint(
                    name=f"{dtype} gemm {shape} M={int(m)} · {source} bytes", precision=dtype, isa_path=path[dtype],
                    gops=float(r.gops), intensity=float(r.ops / nbytes), bytes_source=source, mode="flat", scope="1S",
                    cores=56, threads=56, memory_target=tier,
                    provenance={"campaign": r.campaign, "series": f"{dtype.upper()} · {'counted' if source == 'pmu_ocr' else 'modeled'} bytes", "label": f"M={int(m)}" if source == "pmu_ocr" else ""},
                )
            )
    return out


def repeat_launches(ext: pd.DataFrame) -> pd.DataFrame:
    """The median of each independent launch of the repeated headline quantities.

    ``relative`` is the launch's median over the mean of the launches of its quantity, so
    quantities of different units share one axis.
    """

    d = ext[ext.notes.eq("repeat")].copy()
    d["metric"] = d.bandwidth_gbs.fillna(d.performance_gops)
    d["quantity"] = [
        f"{b}/{dt}" if isinstance(dt, str) else f"{b}/{t}" for b, dt, t in zip(d.benchmark, d["dtype"], d.memory_target)
    ]
    per = d.groupby(["memory_mode", "quantity", "campaign_id"]).metric.median().reset_index()
    per["relative"] = per.metric / per.groupby(["memory_mode", "quantity"]).metric.transform("mean")
    return per


def repeat_ranges(ext: pd.DataFrame) -> pd.DataFrame:
    """Between-launch spread of the headline numbers: independent launches of one part.

    One row per quantity: the median of each launch, then (max - min) / mean as a percentage.
    """

    per = repeat_launches(ext)
    out = per.groupby(["memory_mode", "quantity"]).metric.agg(["min", "max", "mean", "count"]).reset_index()
    out["repeat_range_percent"] = 100 * (out["max"] - out["min"]) / out["mean"]
    return out.rename(columns={"count": "launches"})


def gemm_pool_points(ext: pd.DataFrame, pool_x: int = 64, shape: str = "14336x4096"):
    """GEMM points from the pool-size sweep at one pool size, as roofline workload points (modeled bytes)."""

    from hwbench.roofline import WorkloadPoint

    g = _gemm_frame(ext, ["gemm_pool"])
    g = g[g.pool_x.eq(pool_x) & g["shape"].eq(shape)]
    rows = g.groupby(["memory_target", "dtype", "m"]).agg(
        gops=("performance_gops", "median"), intensity=("arithmetic_intensity", "median"), cv=("performance_gops", _cv), campaign=("campaign_id", _ids)
    )
    path = {"bf16": "amx_bf16", "int8": "amx_int8"}
    return [
        WorkloadPoint(
            name=f"{dtype} gemm {shape} M={int(m)} · {tier} · {pool_x}× pool", precision=dtype, isa_path=path[dtype], gops=float(r.gops),
            intensity=float(r.intensity), mode="flat", scope="1S", cores=56, threads=56, memory_target=tier,
            provenance={"campaign": r.campaign, "series": f"{shape} · {pool_x}× pool", "cv_percent": r.cv},
        )
        for (tier, dtype, m), r in rows.iterrows()
    ]


# ------------------------------------------------- privileged uncore counters (U1-U4, R3)
#: Labels of the uncore campaign parts (scripts/run_campaign.py).
U1_STREAMS = {"u1_read": "read", "u1_triad": "triad", "u1_copy_nt": "copy_nt"}


def _sample_ratios(d: pd.DataFrame) -> pd.DataFrame:
    d = d.copy()
    d["ctrl_over_modeled"] = d.ctrl_bytes / d.modeled_bytes
    d["ctrl_over_counted"] = d.ctrl_bytes / d.counted_bytes
    hbm = d.ctrl_hbm_read_bytes + d.ctrl_hbm_write_bytes
    d["hbm_share"] = hbm / d.ctrl_bytes
    d["tier_share"] = d.hbm_share.where(d.memory_target.eq("hbm"), 1 - d.hbm_share)
    d["write_share"] = (d.ctrl_ddr_write_bytes + d.ctrl_hbm_write_bytes) / d.ctrl_bytes
    # The socket that does not compute runs no benchmark, but it is not idle: its uncore clock follows
    # the computing socket's, and its package power follows its clock (``uncore_coupling``).
    d["other_pkg_w"] = d.energy_pkg_j / d.elapsed_seconds - d.pkg_power_w
    d["other_ram_w"] = d.energy_ram_j / d.elapsed_seconds - d.ram_power_w
    if "uncore_ghz_s0" in d:
        d["other_uncore_ghz"] = socket_column(d, "uncore_ghz", other=True)
    d["core_ghz"] = d.ghz_effective
    return d


def socket_column(d: pd.DataFrame, name: str, which: str = "socket", other: bool = False) -> pd.Series:
    """Per-socket column ``name_s0`` / ``name_s1`` of one socket of each row.

    ``which`` is ``socket`` (the socket that computes) or ``memory_socket`` (the socket whose
    memory serves the data); ``other`` takes the opposite socket.  Rows without a socket use 0.
    """

    chosen = d[which].where(d[which].notna(), d["socket"]).fillna(0)
    if other:
        chosen = 1 - chosen
    return pd.Series(np.where(chosen == 1, d[f"{name}_s1"], d[f"{name}_s0"]), index=d.index)


def energy_scopes(d: pd.DataFrame) -> pd.DataFrame:
    """Power at two RAPL scopes and the energy per byte and per operation at each.

    * **socket**: package plus DRAM power of the socket that computes (``socket_w``), per
      byte the memory controllers of its memory socket moved (``ctrl_bytes_memory_socket``;
      Cache rows, which have none, use the measured bytes) and per operation.
    * **node**: package plus DRAM power of both sockets (``node_w``, ``node_power_w``), per
      byte every controller moved and per operation.

    Both include the idle floor; a third, wall scope (ipmitool) is added once it is measured.
    Needs ``pkg_power_w``, ``ram_power_w`` and ``node_power_w``; columns that cannot be
    formed are NaN.
    """

    d = _with_measured(d) if "measured_gbs" not in d else d.copy()
    d["socket_w"] = d.pkg_power_w + d.ram_power_w
    d["node_w"] = d["node_power_w"] if "node_power_w" in d else math.nan
    socket_gbs = d.ctrl_bytes_memory_socket / d.elapsed_seconds / 1e9
    socket_gbs = socket_gbs.where(d.memory_mode.eq("flat") & socket_gbs.notna(), d.measured_gbs)
    d["pj_per_byte"] = d.socket_w / socket_gbs * 1e3
    d["pj_per_byte_node"] = d.node_w / d.measured_gbs * 1e3
    gops = d.performance_gops
    d["pj_per_op"] = d.socket_w / gops * 1e3
    d["pj_per_op_node"] = d.node_w / gops * 1e3
    return d


def controller_table(unc: pd.DataFrame) -> pd.DataFrame:
    """Memory-controller bytes against modeled and per-core counted bytes (U1).

    One row per stream, tier and core count, medians over the five samples.
    ``ctrl_over_modeled`` divides the CAS bytes of every DDR and HBM channel of both
    sockets by the kernel's traffic convention; ``ctrl_over_counted`` divides them by the
    offcore-response lines of the benchmark's own threads.  ``tier_share`` is the share of
    the controller bytes that landed on the bound tier, ``write_share`` the share written.
    ``pj_per_byte`` and ``pj_per_byte_node`` are the energy per controller byte at the socket
    and node RAPL scopes (``energy_scopes``).
    """

    d = unc[unc.notes.isin(U1_STREAMS) & unc.ctrl_bytes.notna() & unc.modeled_bytes.gt(0)]
    if d.empty:
        return pd.DataFrame()
    d = energy_scopes(_sample_ratios(d)).assign(kernel=lambda f: f.notes.map(U1_STREAMS))
    out = d.groupby(["memory_target", "kernel", "threads"]).agg(
        gbs=("bandwidth_gbs", "median"),
        ctrl_gbs=("ctrl_bandwidth_gbs", "median"),
        ctrl_over_modeled=("ctrl_over_modeled", "median"),
        ctrl_over_counted=("ctrl_over_counted", "median"),
        tier_share=("tier_share", "median"),
        write_share=("write_share", "median"),
        socket_w=("socket_w", "median"),
        node_w=("node_w", "median"),
        pj_per_byte=("pj_per_byte", "median"),
        pj_per_byte_node=("pj_per_byte_node", "median"),
        intervals=("uncore_intervals", "median"),
        n_samples=("ctrl_bytes", "size"),
        campaign=("campaign_id", _ids),
    ).reset_index()
    return out


# ------------------------------------------------- the socket that runs nothing (A2)
#: Uncore clock (GHz) below which a socket is taken to be at its idle floor.
IDLE_UNCORE_GHZ = 1.0
WORKLOAD_FAMILIES = (
    ("compute peaks", ("u1_isa",)),
    ("GEMM", ("u4_gemm", "u_gemm_conv", "u_gemm_atlas", "usmoke_gemm")),
    ("FP64 sweep", ("u_sweep",)),
    ("chase", ("u_loaded", "usmoke")),
    ("streams", ("u1_", "u2_local", "u_copy_ceiling", "u3_")),
)


def workload_family(notes: pd.Series) -> pd.Series:
    """Group the counted workloads (``notes`` labels) into the families the coupling is read over."""

    out = pd.Series("other", index=notes.index)
    for family, prefixes in reversed(WORKLOAD_FAMILIES):
        out = out.mask(notes.str.startswith(prefixes), family)
    return out


def uncore_coupling_frame(*frames: pd.DataFrame) -> pd.DataFrame:
    """Samples in which socket 0 computes on its own memory, with the other socket's power and clock.

    One row per accepted one-socket sample of ``u*`` records (Flat from the perf session,
    Cache from turbostat) whose memory is on the computing socket: the other socket runs
    nothing, serves no memory, and is the one this coupling is read on.  Remote reads, where
    socket 1 serves the data, are left out.
    """

    rows = []
    for frame in frames:
        if frame is None or frame.empty or "pkg_power_w_s1" not in frame:
            continue
        d = frame[frame.accepted & frame.socket_scope.eq("single") & frame.socket.eq(0)
                  & (frame.memory_socket.isna() | frame.memory_socket.eq(0))
                  & frame.pkg_power_w_s1.notna() & frame.uncore_ghz_s1.notna()]
        rows.append(d.assign(family=workload_family(d.notes)))
    if not rows:
        return pd.DataFrame()
    out = pd.concat(rows, ignore_index=True)
    return out[["memory_mode", "campaign_id", "notes", "family", "benchmark", "memory_target", "threads", "iteration",
                "power_source", "pkg_power_w_s0", "pkg_power_w_s1", "ram_power_w_s1", "uncore_ghz_s0", "uncore_ghz_s1"]]


def uncore_coupling_fit(frame: pd.DataFrame) -> pd.DataFrame:
    """Per memory mode: how the idle socket's package power follows its uncore clock, and that clock the busy one's.

    ``slope_w_per_ghz`` and ``intercept_w`` are a least-squares line of the other socket's package
    power on its own uncore clock (``r2`` its fit); ``clock_corr`` is the correlation of the two
    sockets' uncore clocks and ``clock_ratio`` the median of other over computing.  ``floor_w`` is the
    median power of the other socket in samples where its uncore sits below ``IDLE_UNCORE_GHZ`` (the
    node's lowest observed state, not a measured idle: that needs a record with nothing running);
    ``induced_max_w`` is the largest power above that floor.
    """

    rows = []
    for mode, d in frame.groupby("memory_mode"):
        slope, intercept = np.polyfit(d.uncore_ghz_s1, d.pkg_power_w_s1, 1)
        resid = d.pkg_power_w_s1 - (slope * d.uncore_ghz_s1 + intercept)
        low = d[d.uncore_ghz_s1 < IDLE_UNCORE_GHZ]
        floor = float(low.pkg_power_w_s1.median()) if len(low) else math.nan
        rows.append(dict(
            memory_mode=mode, n_samples=len(d), slope_w_per_ghz=slope, intercept_w=intercept,
            r2=1 - float((resid**2).sum() / ((d.pkg_power_w_s1 - d.pkg_power_w_s1.mean()) ** 2).sum()),
            clock_corr=float(np.corrcoef(d.uncore_ghz_s0, d.uncore_ghz_s1)[0, 1]),
            clock_ratio=float((d.uncore_ghz_s1 / d.uncore_ghz_s0).median()),
            floor_w=floor, floor_ghz=float(low.uncore_ghz_s1.median()) if len(low) else math.nan,
            power_min_w=float(d.pkg_power_w_s1.min()), power_max_w=float(d.pkg_power_w_s1.max()),
            induced_max_w=float(d.pkg_power_w_s1.max()) - floor,
        ))
    return pd.DataFrame(rows)


def uncore_coupling(frame: pd.DataFrame) -> pd.DataFrame:
    """Medians per memory mode and workload family: both sockets' power and uncore clock.

    ``other_above_floor_w`` is the other socket's package power minus the mode's floor
    (``uncore_coupling_fit``): what the computing socket's activity induces on it.
    """

    floor = uncore_coupling_fit(frame).set_index("memory_mode").floor_w
    out = frame.groupby(["memory_mode", "family"]).agg(
        n_samples=("notes", "size"),
        computing_w=("pkg_power_w_s0", "median"),
        other_w=("pkg_power_w_s1", "median"),
        computing_ghz=("uncore_ghz_s0", "median"),
        other_ghz=("uncore_ghz_s1", "median"),
        other_w_max=("pkg_power_w_s1", "max"),
    ).reset_index()
    out["other_above_floor_w"] = out.other_w - out.memory_mode.map(floor)
    order = {f: i for i, (f, _) in enumerate(WORKLOAD_FAMILIES)}
    return out.sort_values(["memory_mode", "family"], key=lambda c: c.map(order) if c.name == "family" else c).reset_index(drop=True)


def counting_cost(unc: pd.DataFrame) -> pd.DataFrame:
    """The 56-core streams with the uncore session against the same point without it.

    Windows 3-5 only: the power burst after the idle setup lifts the first one or two
    one-second windows on HBM, and lasts longer with the session (``first_window_counters``).
    """

    unc = unc[unc.iteration.ge(2)]
    rows = []
    for label, kernel in U1_STREAMS.items():
        for tier in ("ddr", "hbm"):
            on = unc[unc.notes.eq(label) & unc.threads.eq(56) & unc.memory_target.eq(tier)]
            off = unc[unc.notes.eq(f"{label}_control") & unc.memory_target.eq(tier)]
            if on.empty or off.empty:
                continue
            rows.append(dict(kernel=kernel, memory_target=tier, with_session=on.bandwidth_gbs.median(),
                             without=off.bandwidth_gbs.median(), cv_with=_cv(on.bandwidth_gbs), cv_without=_cv(off.bandwidth_gbs)))
    out = pd.DataFrame(rows)
    if not out.empty:
        out["with_over_without"] = out.with_session / out.without
    return out


def power_table(unc: pd.DataFrame) -> pd.DataFrame:
    """Package and DRAM power, core and uncore clocks and the PCU limit, per configuration (U1).

    ``pkg_w`` and ``ram_w`` are the socket that computes.  ``other_pkg_w`` and
    ``other_uncore_ghz`` are the socket that runs nothing in the same window: it is not idle,
    because its uncore clock follows the computing socket's (``uncore_coupling``).  Energy is
    at two RAPL scopes (``energy_scopes``): ``pj_per_byte`` and ``pj_per_op`` are the computing
    socket's package plus DRAM power per byte its memory controllers moved and per operation;
    the ``_node`` columns use both sockets' package plus DRAM power (``node_w``) and every
    controller's bytes.  All include the idle floor.
    """

    d = unc[(unc.notes.isin(U1_STREAMS) | unc.notes.eq("u1_isa")) & unc.pkg_power_w.notna()]
    if d.empty:
        return pd.DataFrame()
    d = energy_scopes(_sample_ratios(d))
    from hwbench.plotting import PATH_LABELS

    paths = [PATH_LABELS.get(KERNEL_PATHS.get((b, t), ""), b) for b, t in zip(d.benchmark, d["dtype"])]
    d["kernel"] = d.notes.map(U1_STREAMS).fillna(pd.Series(paths, index=d.index))
    d["memory_target"] = d.memory_target.where(d.notes.ne("u1_isa"), "registers")
    streams = d.memory_target.ne("registers")
    for column in ("pj_per_byte", "pj_per_byte_node"):
        d[column] = d[column].where(streams)
    for column in ("pj_per_op", "pj_per_op_node"):
        d[column] = d[column].where(~streams)
    out = d.groupby(["memory_target", "kernel", "threads"]).agg(
        gbs=("bandwidth_gbs", "median"),
        gops=("performance_gops", "median"),
        core_ghz=("core_ghz", "median"),
        uncore_ghz=("uncore_ghz", "median"),
        pkg_w=("pkg_power_w", "median"),
        ram_w=("ram_power_w", "median"),
        other_pkg_w=("other_pkg_w", "median"),
        other_uncore_ghz=("other_uncore_ghz", "median"),
        node_w=("node_w", "median"),
        power_limited=("pcu_power_limit_frac", "median"),
        thermal_limited=("pcu_thermal_limit_frac", "median"),
        pj_per_byte=("pj_per_byte", "median"),
        pj_per_byte_node=("pj_per_byte_node", "median"),
        pj_per_op=("pj_per_op", "median"),
        pj_per_op_node=("pj_per_op_node", "median"),
        n_samples=("pkg_power_w", "size"),
    ).reset_index()
    return out


def first_window_counters(unc: pd.DataFrame) -> pd.DataFrame:
    """The first one-second window against windows 3-5, with power and clocks (C4).

    One row per 56-core stream and tier: the ratio first/rest of the kernel bandwidth, the
    controller bandwidth, the core and uncore clocks and the package power, the share of
    PCU cycles clipped by the power limit, and the second window's package power and
    bandwidth ratio.  "Rest" is windows 3-5: after the longer idle a counting session adds,
    the power burst reaches into window 2.
    """

    d = unc[unc.notes.isin(U1_STREAMS) & unc.threads.eq(56) & unc.pkg_power_w.notna()].copy()
    if d.empty:
        return pd.DataFrame()
    d["kernel"] = d.notes.map(U1_STREAMS)
    rows = []
    for (tier, kernel), g in d.groupby(["memory_target", "kernel"]):
        g = g.sort_values("iteration")
        first, second, rest = g.iloc[0], g.iloc[1], g.iloc[2:]
        row = dict(memory_target=tier, kernel=kernel)
        for column, name in [("bandwidth_gbs", "gbs"), ("ctrl_bandwidth_gbs", "ctrl_gbs"), ("ghz_effective", "core_ghz"),
                             ("uncore_ghz", "uncore_ghz"), ("pkg_power_w", "pkg_w")]:
            row[f"{name}_first"] = first[column]
            row[f"{name}_rest"] = rest[column].median()
            row[f"{name}_ratio"] = first[column] / rest[column].median()
        row["power_limited_first"] = first.pcu_power_limit_frac
        row["power_limited_rest"] = rest.pcu_power_limit_frac.median()
        row["pkg_w_second"] = second.pkg_power_w
        row["gbs_second_ratio"] = second.bandwidth_gbs / rest.bandwidth_gbs.median()
        rows.append(row)
    return pd.DataFrame(rows)


def remote_counter_table(unc: pd.DataFrame) -> pd.DataFrame:
    """Local against remote read with UPI and directory traffic per line moved (U2).

    ``upi_flits_per_line`` is the data flits sent over every UPI link (both sockets) per
    64-byte line the kernel read; ``dir_updates_per_line`` the directory updates per line;
    ``ctrl_write_per_read`` the controller write bytes per controller read byte, which a
    read-only kernel only causes through directory writes back to memory.  ``serving_*`` are
    the package power, uncore clock and share of PCU cycles clipped for power of the socket
    whose memory is read (the computing socket itself for a local read); ``pkg_w``,
    ``uncore_ghz`` and ``power_limited`` are the computing socket's.
    """

    d = unc[unc.notes.isin(["u2_local", "u2_remote"]) & unc.ctrl_bytes.notna()]
    if d.empty:
        return pd.DataFrame()
    d = _sample_ratios(d)
    lines = d.modeled_bytes / CACHE_LINE_BYTES
    d["upi_flits_per_line"] = (d.upi_tx_data_flits + d.upi_rx_data_flits) / 2 / lines
    d["dir_updates_per_line"] = d.m2m_directory_updates / lines
    writes = d.ctrl_ddr_write_bytes + d.ctrl_hbm_write_bytes
    d["ctrl_write_per_read"] = writes / (d.ctrl_bytes - writes)
    d["placement"] = d.notes.str.replace("u2_", "", regex=False)
    d["kernel"] = d.benchmark.str.replace("stream_", "", regex=False)
    for name in ("pkg_power_w", "uncore_ghz", "pcu_power_limit_frac"):
        d[f"serving_{name}"] = socket_column(d, name, which="memory_socket")
    out = d.groupby(["memory_target", "kernel", "threads", "placement"]).agg(
        gbs=("bandwidth_gbs", "median"),
        ctrl_over_modeled=("ctrl_over_modeled", "median"),
        upi_flits_per_line=("upi_flits_per_line", "median"),
        dir_updates_per_line=("dir_updates_per_line", "median"),
        ctrl_write_per_read=("ctrl_write_per_read", "median"),
        core_ghz=("core_ghz", "median"),
        uncore_ghz=("uncore_ghz", "median"),
        pkg_w=("pkg_power_w", "median"),
        power_limited=("pcu_power_limit_frac", "median"),
        serving_pkg_w=("serving_pkg_power_w", "median"),
        serving_uncore_ghz=("serving_uncore_ghz", "median"),
        serving_power_limited=("serving_pcu_power_limit_frac", "median"),
        n_samples=("ctrl_bytes", "size"),
    ).reset_index()
    return out


CACHE_LINE_BYTES = 64


def gemm_controller_table(unc: pd.DataFrame) -> pd.DataFrame:
    """GEMM traffic at the controllers against modeled and per-core counted bytes (U4).

    ``intensity_ctrl`` places the GEMM on a roofline with the bytes the memory controllers
    served; ``ctrl_over_counted`` near 1 means the cores' own offcore counts already gave
    the memory traffic.  ``pj_per_op`` and ``pj_per_op_node`` are the energy per operation at the
    socket and node RAPL scopes (``energy_scopes``), ``other_pkg_w`` the other socket's package power.
    """

    d = unc[unc.notes.eq("u4_gemm") & unc.ctrl_bytes.notna()]
    if d.empty:
        return pd.DataFrame()
    d = energy_scopes(_sample_ratios(d))
    d["intensity_ctrl"] = d.operations / d.ctrl_bytes
    d["ctrl_read_over_modeled"] = (d.ctrl_ddr_read_bytes + d.ctrl_hbm_read_bytes) / d.modeled_bytes
    d["ctrl_write_over_modeled"] = (d.ctrl_ddr_write_bytes + d.ctrl_hbm_write_bytes) / d.modeled_bytes
    d["counted_write_over_modeled"] = d.dram_write_lines * CACHE_LINE_BYTES / d.modeled_bytes
    out = d.groupby(["memory_target", "dtype", "m"]).agg(
        gops=("performance_gops", "median"),
        gbs_modeled=("bandwidth_gbs", "median"),
        ctrl_gbs=("ctrl_bandwidth_gbs", "median"),
        ctrl_over_modeled=("ctrl_over_modeled", "median"),
        ctrl_over_counted=("ctrl_over_counted", "median"),
        ctrl_read_over_modeled=("ctrl_read_over_modeled", "median"),
        ctrl_write_over_modeled=("ctrl_write_over_modeled", "median"),
        counted_write_over_modeled=("counted_write_over_modeled", "median"),
        intensity_modeled=("arithmetic_intensity", "median"),
        intensity_ctrl=("intensity_ctrl", "median"),
        tier_share=("tier_share", "median"),
        core_ghz=("core_ghz", "median"),
        uncore_ghz=("uncore_ghz", "median"),
        pkg_w=("pkg_power_w", "median"),
        node_w=("node_w", "median"),
        other_pkg_w=("other_pkg_w", "median"),
        power_limited=("pcu_power_limit_frac", "median"),
        pj_per_op=("pj_per_op", "median"),
        pj_per_op_node=("pj_per_op_node", "median"),
        n_samples=("ctrl_bytes", "size"),
    ).reset_index()
    return out


def controller_gemm_points(unc: pd.DataFrame) -> list:
    """The U4 GEMM points as roofline markers at controller-measured intensity.

    Each (tier, dtype, M) appears twice at the same rate: filled at the intensity the memory
    controllers give (operations over CAS bytes of every channel) and hollow at its modeled
    intensity, so the shift from model to measurement is visible.  Only HBM points carry an
    M label; DDR points sit at almost the same intensity.
    """

    from hwbench.roofline import WorkloadPoint

    gc = gemm_controller_table(unc)
    path = {"bf16": "amx_bf16", "int8": "amx_int8"}
    out = []
    for r in gc.itertuples():
        for source, intensity in (("uncore_cas", r.intensity_ctrl), ("modeled", r.intensity_modeled)):
            provenance = {"series": r.dtype.upper(), "open": source == "modeled"}
            if r.memory_target == "hbm":
                provenance["label"] = f"M={int(r.m)}" if source == "uncore_cas" else ""
            out.append(
                WorkloadPoint(
                    name=f"{r.dtype} gemm 14336x4096 M={int(r.m)} · {source} bytes", precision=r.dtype,
                    isa_path=path[r.dtype], gops=float(r.gops), intensity=float(intensity), bytes_source=source,
                    mode="flat", scope="1S", cores=56, threads=56, memory_target=r.memory_target,
                    provenance=provenance,
                )
            )
    return out


def loaded_concurrency(unc: pd.DataFrame) -> pd.DataFrame:
    """Loaded latency with the bandwidth the controllers served in the same windows (R3).

    ``lines_in_flight`` is Little's law on the bound tier: controller bandwidth times the
    chase's latency over 64 bytes, a measured lower bound on the misses outstanding;
    ``lines_in_flight_modeled`` uses the streaming cores' modeled bandwidth instead.
    """

    chase = unc[unc.notes.str.match(r"u_loaded_latency_(idle|n\d+)$") & unc.latency_ns.notna()].copy()
    if chase.empty:
        return pd.DataFrame()
    chase["streaming_cores"] = chase.notes.str.extract(r"_n(\d+)$")[0].astype(float).fillna(0).astype(int)
    hbm = chase.ctrl_hbm_read_bytes + chase.ctrl_hbm_write_bytes
    ddr = chase.ctrl_ddr_read_bytes + chase.ctrl_ddr_write_bytes
    chase["tier_gbs"] = hbm.where(chase.memory_target.eq("hbm"), ddr) / chase.elapsed_seconds / 1e9
    load = unc[unc.notes.str.match(r"u_loaded_stream_n\d+$") & unc.bandwidth_gbs.notna()].copy()
    load["streaming_cores"] = load.notes.str.extract(r"_n(\d+)$")[0].astype(int)
    modeled = load.groupby(["memory_target", "streaming_cores"]).bandwidth_gbs.median().rename("stream_gbs_modeled")
    out = chase.groupby(["memory_target", "streaming_cores"]).agg(
        latency_ns=("latency_ns", "median"),
        tier_gbs=("tier_gbs", "median"),
        uncore_ghz=("uncore_ghz", "median"),
        pkg_w=("pkg_power_w", "median"),
        n_samples=("latency_ns", "size"),
    ).join(modeled).reset_index()
    out["lines_in_flight"] = out.tier_gbs * out.latency_ns / CACHE_LINE_BYTES
    out["lines_in_flight_modeled"] = out.stream_gbs_modeled * out.latency_ns / CACHE_LINE_BYTES
    return out


def uncore_series(unc: pd.DataFrame, notes: str, tier: str, threads: int = 56) -> pd.DataFrame:
    """Per-interval controller bandwidth, package power and uncore clock of one record."""

    from hwbench import uncore as uncore_counters

    rows = unc[unc.notes.eq(notes) & unc.memory_target.eq(tier) & unc.threads.eq(threads)]
    if rows.empty:
        return pd.DataFrame()
    source = Path(rows.source_file.iloc[0])
    path = source if source.is_absolute() else ROOT / "data/raw" / source
    record = json.loads(path.read_text())
    out = pd.DataFrame(uncore_counters.series(record.get("uncore"), record.get("result") or {}))
    if not out.empty:
        samples = (record.get("result") or {}).get("samples") or []
        origin = samples[0]["start_ns"] if samples else 0
        out.attrs["windows"] = [((s["start_ns"] - origin) / 1e9, (s["end_ns"] - origin) / 1e9) for s in samples]
    return out


def data_pattern_counters(campaign: str, root: Path = ROOT) -> pd.DataFrame:
    """The read-only kernel with four data patterns on HBM and DDR, with counters (E6).

    One row per launch: the kernel's median iteration rate after the first (``gbs``) and,
    over the read phase of the system-wide session (``uncore.kernel_phase``), the bound
    tier's controller bandwidth, socket 0's package and DRAM power, uncore clock and the
    share of PCU cycles clipped for power.  ``docs/STREAMGAP.md`` describes E0-E5.
    """

    import gzip
    import re
    import statistics

    from hwbench import uncore as uncore_counters

    base = root / "data/raw/streamgap" / campaign / "records"
    rows = []
    for path in sorted(base.glob("e6_*.json")):
        text = path.read_text().strip()
        perf = path.with_name(path.stem + ".perf.csv.gz")
        if not text or not perf.exists():
            continue
        d = json.loads(text)
        match = re.match(r"e6_read_(hbm|ddr)_(\w+)_r(\d+)$", d["label"])
        tier, init, rep = match.group(1), match.group(2), int(match.group(3))
        rate = [d["bytes_per_iter"] / 1e9 / t for t in d["times_s"]]
        parsed = uncore_counters.parse(gzip.decompress(perf.read_bytes()).decode(), uncore_counters.BASE_EVENTS, started=True)
        rows.append(dict(memory_target=tier, init=init, repeat=rep, gbs=statistics.median(rate[1:]), wrong=d.get("wrong"),
                         **uncore_counters.kernel_phase(parsed, tier)))
    return pd.DataFrame(rows)


def second_window_ratio(ext: pd.DataFrame) -> pd.DataFrame:
    """Window 2 against windows 3-5 for the 56-core local Flat streams of the extended campaigns.

    ``drop1_over_drop2`` is the sustained median Table 1 uses (windows 2-5) over the median of
    windows 3-5: how much of the power burst the sustained figure still holds.
    """

    d = ext[ext.benchmark.str.startswith("stream") & ext.memory_mode.eq("flat") & ext.threads.eq(56) & ext.locality.eq("local")
            & ext.socket_scope.eq("single") & ext.working_set_bytes.ge(2**30) & ext.iteration.notna()]
    keys = ["campaign_id", "memory_target", "benchmark", "working_set_bytes", "socket", "notes"]
    rows = []
    for key, g in d.groupby(keys):
        g = g.set_index("iteration").bandwidth_gbs
        if not {0, 1, 2, 3, 4} <= set(g.index):
            continue
        late = g.loc[[2, 3, 4]].median()
        rows.append(dict(zip(keys, key), second_ratio=g.loc[1] / late, drop1_over_drop2=g.loc[[1, 2, 3, 4]].median() / late))
    return pd.DataFrame(rows)


# ------------------------------------------------- measured intensity (counted re-runs)
#: Labels of the counted re-runs behind the measured-intensity roofline (scripts/run_campaign.py).
COUNTED_GEMM_LABELS = ("u_gemm_conv", "u_gemm_atlas")
COUNTED_SWEEP_LABEL = "u_sweep_c12"
COUNTED_CEILING_LABELS = ("u_copy_ceiling", "u1_read", "u1_triad", "u1_copy_nt", "u3_read_capacity",
                          "u3_triad_capacity", "u3_triad_nt_capacity")


def measured_bytes(d: pd.DataFrame) -> tuple[pd.Series, pd.Series]:
    """Memory traffic each sample measured, and what measured it.

    Flat: the CAS bytes of every DDR and HBM channel (``uncore_cas``).  Cache: the bytes the
    memory-side cache served (``served_bytes``, its tag lookups, also ``uncore_cas``) when the
    perf session counted them, else the DRAM lines the cores' own offcore events counted
    (``pmu_ocr``).  In Cache mode the controller sum is no traffic measure: a miss is a DDR read
    plus an HBM fill, and every lookup also reads the HBM tag.
    """

    flat = d.memory_mode.eq("flat")
    served = d["served_bytes"] if "served_bytes" in d else pd.Series(math.nan, index=d.index)
    ctrl = d["ctrl_bytes"] if "ctrl_bytes" in d else pd.Series(math.nan, index=d.index)
    counted = d["counted_bytes"] if "counted_bytes" in d else pd.Series(math.nan, index=d.index)
    nbytes = ctrl.where(flat, served)
    source = pd.Series("uncore_cas", index=d.index).where(nbytes.notna())
    fallback = nbytes.isna() & ~flat & counted.notna()
    nbytes = nbytes.where(~fallback, counted)
    source = source.where(~fallback, "pmu_ocr")
    return nbytes, source


def _with_measured(d: pd.DataFrame) -> pd.DataFrame:
    d = d.copy()
    d["measured_bytes"], d["bytes_source"] = measured_bytes(d)
    d["measured_gbs"] = d.measured_bytes / d.elapsed_seconds / 1e9
    d["intensity_measured"] = d.operations / d.measured_bytes
    return d


def counted_gemm_frame(unc: pd.DataFrame, labels=COUNTED_GEMM_LABELS, shape: str | None = None) -> pd.DataFrame:
    """GEMM points of the counted re-runs: rate, modeled and measured intensity, power.

    One row per mode, tier, precision, weight layout, shape, M and pool; medians over the
    timed windows.  ``intensity`` is the measured one (``bytes_source`` says how it was
    measured), ``intensity_modeled`` the tensor-size convention of the other notebooks.
    ``j_per_op`` is package plus DRAM energy of the computing socket per operation
    (``power_w``), ``j_per_op_node`` that of both sockets (``node_w``).  Same
    columns as ``gemm_points`` where they overlap, so the workload-point helpers accept it.
    """

    d = unc[unc.benchmark.eq("onednn_gemm_sweep") & unc.notes.isin(labels) & unc.accepted]
    if d.empty:
        return pd.DataFrame()
    d = with_config(_with_measured(d))
    d["layout"] = _layout(d.source_file, d["dtype"])
    d["shape"] = d.n.astype(int).astype(str) + "x" + d.k.astype(int).astype(str)
    if shape is not None:
        d = d[d["shape"].eq(shape)]
    d["power_w"] = d.pkg_power_w + d.ram_power_w
    d["node_w"] = d["node_power_w"] if "node_power_w" in d else math.nan
    keys = ["memory_mode", "config", "memory_target", "dtype", "layout", "shape", "n", "k", "m", "working_set_bytes"]
    out = d.groupby(keys, dropna=False).agg(
        gops=("performance_gops", "median"),
        gbs=("bandwidth_gbs", "median"),
        measured_gbs=("measured_gbs", "median"),
        intensity=("intensity_measured", "median"),
        intensity_modeled=("arithmetic_intensity", "median"),
        bytes_source=("bytes_source", "first"),
        power_w=("power_w", "median"),
        node_w=("node_w", "median"),
        power_source=("power_source", "first"),
        cv_percent=("performance_gops", _cv),
        n_samples=("accepted", "size"),
        campaign_id=("campaign_id", _ids),
        node=("node", "first"),
    ).reset_index()
    out["measured_over_modeled"] = out.intensity_modeled / out.intensity
    out["j_per_op"] = out.power_w / (out.gops * 1e9)
    out["j_per_op_node"] = out.node_w / (out.gops * 1e9)
    out["pool_gib"] = out.working_set_bytes / 2**30
    out["pool_x"] = out.working_set_bytes / ONCHIP_BYTES
    out["status"] = "counted"
    return out


def measured_workload_points(frame: pd.DataFrame, cores: int = 56, twins: bool = True, series=None) -> list:
    """Counted points as roofline markers: filled at measured intensity, hollow twin at modeled.

    ``frame`` is ``counted_gemm_frame`` or ``counted_sweep_points`` output.  The hollow twin
    carries no label and is left out of the audit (``open``).  ``series`` maps a row to its
    legend series (default: the shape, or "fp64 sweep").
    """

    from hwbench.roofline import WorkloadPoint

    path = {"bf16": "amx_bf16", "int8": "amx_int8", "fp64": "fp64"}
    out = []
    for r in frame.itertuples():
        name = f"{r.dtype} {getattr(r, 'shape', 'sweep')} {'M' if r.dtype != 'fp64' else 'K'}={int(r.m)} · {r.config}"
        label = f"{'M' if r.dtype != 'fp64' else 'K'}={int(r.m)}"
        kinds = [(r.bytes_source, r.intensity, False)] + ([("modeled", r.intensity_modeled, True)] if twins else [])
        for source, intensity, hollow in kinds:
            if intensity is None or not math.isfinite(intensity):
                continue
            out.append(WorkloadPoint(
                name=f"{name} · {source} bytes", precision=r.dtype, isa_path=path[r.dtype], gops=float(r.gops),
                intensity=float(intensity), bytes_source=source, mode=r.memory_mode, scope="1S", cores=cores, threads=cores,
                memory_target=r.memory_target,
                provenance={"campaign": r.campaign_id, "cv_percent": r.cv_percent, "pool_gib": getattr(r, "pool_gib", None),
                            "series": series(r) if series else getattr(r, "shape", "fp64 sweep"),
                            "label": "" if hollow else label, "status": "modeled twin" if hollow else "counted", "open": hollow},
            ))
    return out


def counted_sweep_points(unc: pd.DataFrame, label: str = COUNTED_SWEEP_LABEL) -> pd.DataFrame:
    """The counted FP64 intensity sweep (12 chains), one row per mode, tier, working set and K."""

    d = unc[unc.benchmark.eq("roofline_sweep") & unc.notes.eq(label) & unc.accepted]
    if d.empty:
        return pd.DataFrame()
    d = with_config(_with_measured(d))
    keys = ["memory_mode", "config", "memory_target", "working_set_bytes", "k"]
    out = d.groupby(keys).agg(
        gops=("performance_gops", "median"),
        gbs=("bandwidth_gbs", "median"),
        measured_gbs=("measured_gbs", "median"),
        intensity=("intensity_measured", "median"),
        intensity_modeled=("arithmetic_intensity", "median"),
        bytes_source=("bytes_source", "first"),
        cv_percent=("performance_gops", _cv),
        n_samples=("accepted", "size"),
        campaign_id=("campaign_id", _ids),
    ).reset_index()
    out["dtype"] = "fp64"
    out["m"] = out.k
    out["pool_gib"] = out.working_set_bytes / 2**30
    out["measured_over_modeled"] = out.intensity_modeled / out.intensity
    return out


def measured_memory_ceiling(unc: pd.DataFrame, mode: str, tier: str, access: str = "read", gib: float | None = None):
    """Bandwidth ceiling in measured bytes: the best counted 56-core stream of ``access``.

    Taken from the counted ceilings (``COUNTED_CEILING_LABELS``) on socket 0; Flat at 8 GiB,
    Cache at ``gib`` (default 16 GiB, resident).  The rate is measured bytes over the window,
    the same bytes that place the counted points.  Raises ``LookupError`` when nothing was
    counted, so callers can fall back to ``memory_ceiling``.
    """

    from hwbench.roofline import MemoryCeiling

    gib = gib if gib is not None else (8.0 if mode == "flat" else 16.0)
    kernel = unc.benchmark.map(BANDWIDTH_KERNELS)
    d = unc[unc.memory_mode.eq(mode) & unc.memory_target.eq(tier) & unc.notes.isin(COUNTED_CEILING_LABELS)
            & kernel.isin(ACCESS_KERNELS[access]) & unc.threads.eq(56) & unc.socket.eq(0) & unc.accepted
            & (unc.memory_socket.isna() | unc.memory_socket.eq(0))
            & unc.working_set_bytes.div(2**30).sub(gib).abs().lt(0.5)]
    if d.empty:
        raise LookupError(f"no counted bandwidth for {mode}/{tier}/{access} at {gib} GiB")
    d = _with_measured(d).assign(kernel=kernel)
    d = d[d.measured_gbs.notna()]
    if d.empty:
        raise LookupError(f"no measured bytes for {mode}/{tier}/{access} at {gib} GiB")
    med = d.groupby(["kernel", "campaign_id"]).agg(gbs=("measured_gbs", "median"), cv=("measured_gbs", _cv),
                                                   source=("bytes_source", "first")).reset_index()
    best = med.loc[med.gbs.idxmax()]
    return MemoryCeiling(
        kind="measured_peak", tier=tier, kernel=best.kernel, gbs=float(best.gbs), scope="1S", mode=mode,
        working_set_gib=gib, source_campaign=best.campaign_id, cv_percent=None if pd.isna(best.cv) else float(best.cv),
        note=f"bytes measured ({best.source})",
    )


def ceiling_or_modeled(unc: pd.DataFrame | None, ext: pd.DataFrame, thesis: pd.DataFrame, mode: str, tier: str,
                       access: str = "read", at_gib: float | None = None):
    """``measured_memory_ceiling`` when the counted re-runs measured it, else ``memory_ceiling``."""

    if unc is not None and len(unc):
        try:
            return measured_memory_ceiling(unc, mode, tier, access, at_gib)
        except LookupError:
            pass
    return memory_ceiling(ext, thesis, mode, tier, access=access, at_gib=at_gib)


def measured_phase_regions(counted: pd.DataFrame, decode=(1, 16), prefill=(256, 4096), pad: float = 1.3,
                           shape: str = "14336x4096", tier: str = "hbm", mode: str = "flat"):
    """Decode and prefill intervals from measured intensity (``llm_phase_regions`` on counted bytes).

    Uses the BF16 plain-layout points of ``counted_gemm_frame`` for one tier; empty when a
    batch size at either end was not counted.
    """

    c = counted[counted.memory_mode.eq(mode) & counted.memory_target.eq(tier) & counted["dtype"].eq("bf16")
                & counted.layout.eq("plain") & counted["shape"].eq(shape)]
    at = c.groupby("m").intensity.median()
    if not {decode[0], decode[1], prefill[0], prefill[1]} <= set(at.index):
        return []
    return [(at.loc[lo] / pad, at.loc[hi] * pad, label) for (lo, hi), label in ((decode, "decode"), (prefill, "prefill"))]


# ------------------------------------------------- Cache mode: turbostat (and perf, once installed)
def turbostat_validation(unc: pd.DataFrame) -> pd.DataFrame:
    """turbostat against the perf session in the same records (Flat smoke, both sessions on).

    One row per record: median over its samples of the turbostat package and DRAM power
    over perf's RAPL power, and the turbostat uncore ratio minus the CHA clock.  Both read
    the same RAPL counters, so the ratios check the interval bookkeeping; the uncore clocks
    differ in kind (an instantaneous ratio against counted ticks).
    """

    d = unc[unc.memory_mode.eq("flat") & unc.ts_pkg_power_w.notna() & unc.pkg_power_w.notna()].copy()
    if d.empty:
        return pd.DataFrame()
    d["pkg_ratio"] = d.ts_pkg_power_w / d.pkg_power_w
    d["ram_ratio"] = d.ts_ram_power_w / d.ram_power_w
    d["uncore_diff"] = d.ts_uncore_ghz - d.uncore_ghz
    out = d.groupby(["notes", "benchmark", "memory_target", "threads"]).agg(
        pkg_w_perf=("pkg_power_w", "median"), pkg_w_turbostat=("ts_pkg_power_w", "median"),
        pkg_ratio=("pkg_ratio", "median"), ram_ratio=("ram_ratio", "median"),
        uncore_ghz_perf=("uncore_ghz", "median"), uncore_diff=("uncore_diff", "median"),
        intervals=("ts_intervals", "median"), coverage=("ts_coverage", "median"), n_samples=("ts_pkg_power_w", "size"),
    ).reset_index()
    out["seconds"] = (out.intervals / out.coverage * 0.1).round(1)
    return out


def _cache_frame(unc: pd.DataFrame, labels) -> pd.DataFrame:
    d = unc[unc.memory_mode.eq("cache") & unc.notes.isin(labels) & unc.accepted]
    if d.empty:
        return d
    d = _with_measured(d)
    d["kernel"] = d.benchmark.map(BANDWIDTH_KERNELS)
    d["working_set_gib"] = (d.working_set_bytes / 2**30).round(1)
    d = energy_scopes(d)
    d["power_w"] = d.socket_w
    if "nm_hit_rate" not in d:
        d["nm_hit_rate"] = math.nan
    if "far_bytes" not in d:
        d["far_bytes"] = math.nan
    d["far_gbs"] = d.far_bytes / d.elapsed_seconds / 1e9
    return d


def _cache_agg(d: pd.DataFrame, keys: list[str]) -> pd.DataFrame:
    return d.groupby(keys).agg(
        gbs=("bandwidth_gbs", "median"),
        measured_gbs=("measured_gbs", "median"),
        bytes_source=("bytes_source", "first"),
        hit_rate=("nm_hit_rate", "median"),
        far_gbs=("far_gbs", "median"),
        core_ghz=("ghz_effective", "median"),
        uncore_ghz=("uncore_ghz", "median"),
        pkg_w=("pkg_power_w", "median"),
        ram_w=("ram_power_w", "median"),
        node_w=("node_w", "median"),
        pj_per_byte=("pj_per_byte", "median"),
        pj_per_byte_node=("pj_per_byte_node", "median"),
        power_source=("power_source", "first"),
        cv_percent=("bandwidth_gbs", _cv),
        n_samples=("accepted", "size"),
        campaign=("campaign_id", _ids),
        node=("node", "first"),
    ).reset_index()


def cache_stream_table(unc: pd.DataFrame) -> pd.DataFrame:
    """Cache-mode streams against cores at 8 GiB (resident) and 96 GiB (spilled), with power and clocks.

    From part ``ustreams`` on the Cache node.  ``measured_gbs`` is the measured traffic
    (``bytes_source``: served bytes of the memory-side cache, or the cores' DRAM lines until
    perf counts it); ``pj_per_byte`` is package plus DRAM energy of the computing socket per
    measured byte.  Power and clocks come from turbostat (``power_source``).
    """

    d = _cache_frame(unc, U1_STREAMS)
    if d.empty:
        return pd.DataFrame()
    return _cache_agg(d, ["working_set_gib", "kernel", "threads"])


def cache_capacity_table(unc: pd.DataFrame) -> pd.DataFrame:
    """Cache-mode streams at 56 cores over the working set (part ``ucapacity``, U3).

    One row per kernel and working set: rate, measured traffic, hit rate and far (DDR)
    traffic when the perf session counted them, clocks, power and energy per byte.
    """

    d = _cache_frame(unc, ["u3_read_capacity", "u3_triad_capacity", "u3_triad_nt_capacity"])
    if d.empty:
        return pd.DataFrame()
    return _cache_agg(d, ["kernel", "working_set_gib"])


def mode_power_comparison(unc_flat: pd.DataFrame, unc_cache: pd.DataFrame) -> pd.DataFrame:
    """The 56-core streams of both modes side by side: rate, power, clocks, energy per byte.

    Flat rows come from U1 (controller bytes), Cache rows from ``ustreams`` on the Cache
    node at 8 GiB (resident) and 96 GiB (spilled).  ``pj_per_byte`` divides package plus
    DRAM power by the measured traffic of each mode (the computing socket's, as ``pj_per_byte``);
    ``node_w`` and ``pj_per_byte_node`` are the same at the node RAPL scope (both sockets).
    """

    rows = []
    flat = power_table(unc_flat[unc_flat.memory_mode.eq("flat")]) if len(unc_flat) else pd.DataFrame()
    if not flat.empty:
        f = flat[flat.threads.eq(56) & flat.memory_target.isin(["hbm", "ddr"])]
        ct = controller_table(unc_flat).set_index(["memory_target", "kernel", "threads"])
        for r in f.itertuples():
            key = (r.memory_target, r.kernel, 56)
            rows.append(dict(config=f"Flat {r.memory_target.upper()}", working_set_gib=8.0, kernel=r.kernel, gbs=r.gbs,
                             measured_gbs=ct.ctrl_gbs.get(key, math.nan), core_ghz=r.core_ghz, uncore_ghz=r.uncore_ghz,
                             pkg_w=r.pkg_w, ram_w=r.ram_w, node_w=r.node_w, pj_per_byte=r.pj_per_byte,
                             pj_per_byte_node=r.pj_per_byte_node, power_source="perf"))
    cache = cache_stream_table(unc_cache)
    if not cache.empty:
        for r in cache[cache.threads.eq(56)].itertuples():
            rows.append(dict(config=f"Cache, {r.working_set_gib:.0f} GiB", working_set_gib=r.working_set_gib, kernel=r.kernel,
                             gbs=r.gbs, measured_gbs=r.measured_gbs, core_ghz=r.core_ghz, uncore_ghz=r.uncore_ghz, pkg_w=r.pkg_w,
                             ram_w=r.ram_w, node_w=r.node_w, pj_per_byte=r.pj_per_byte, pj_per_byte_node=r.pj_per_byte_node,
                             power_source=r.power_source))
    return pd.DataFrame(rows)


def decode_table_measured(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, unc: pd.DataFrame,
                          shape: str = "14336x4096") -> pd.DataFrame:
    """T5 at measured bytes: what a decode step (M = 1) moves, against the measured read ceiling.

    Rows come from the counted re-runs (``ugemmconv``): Flat plain BF16, prepacked BF16 and
    INT8 at 16x the on-chip capacity on HBM and DDR (controller bytes); Cache at the 16 GiB
    (resident) and 96 GiB (spilled) pools (``bytes_source`` says how they were measured).
    ``gbs`` is the measured traffic rate and ``modeled_gbs`` the tensor-size convention beside
    it; ``read_gbs`` is the read-only kernel in the same bytes.  ``tokens_per_s`` is the
    Llama-3.1-8B bound if every weight streamed at ``gbs``; ``j_per_token`` is the computing
    socket's package plus DRAM energy for one token at that rate (``power_w``), ``j_per_token_node`` that
    of both sockets (``node_w``).  Falls back to
    ``decode_table`` when nothing was counted.
    """

    counted = counted_gemm_frame(unc, shape=shape) if unc is not None and len(unc) else pd.DataFrame()
    if counted.empty:
        return decode_table(ext, thesis, theory, shape)
    params = theory.model_parameters()
    model_gb = {"bf16": params * 2 / 1e9, "int8": params * 1 / 1e9}
    read = {
        "Flat HBM": ceiling_or_modeled(unc, ext, thesis, "flat", "hbm"),
        "Flat DDR": ceiling_or_modeled(unc, ext, thesis, "flat", "ddr"),
        "Cache, 16 GiB": ceiling_or_modeled(unc, ext, thesis, "cache", "effective_cache", at_gib=16),
        "Cache, 96 GiB": ceiling_or_modeled(unc, ext, thesis, "cache", "effective_cache", at_gib=96),
    }
    rows = []
    for tier, c in read.items():
        rows.append(dict(tier=tier, precision="—", layout="read-only kernel", pool="—", gbs=c.gbs, modeled_gbs=math.nan,
                         bytes_source=c.note.removeprefix("bytes measured (").rstrip(")") if c.note else "modeled",
                         power_w=math.nan, node_w=math.nan, read_gbs=c.gbs))
    m1 = counted[counted.m.eq(1)]
    for r in m1.itertuples():
        tier = (f"Flat {r.memory_target.upper()}" if r.memory_mode == "flat" else f"Cache, {r.pool_gib:.0f} GiB")
        if tier not in read:
            continue
        pool = f"{r.pool_x:.0f}× on-chip" if r.memory_mode == "flat" else f"{r.pool_gib:.0f} GiB"
        rows.append(dict(tier=tier, precision=r.dtype, layout=r.layout, pool=pool, gbs=r.measured_gbs, modeled_gbs=r.gbs,
                         bytes_source=r.bytes_source, power_w=r.power_w, node_w=r.node_w, read_gbs=read[tier].gbs))
    out = pd.DataFrame(rows)
    out["of_read_ceiling"] = out.gbs / out.read_gbs
    out["tokens_per_s"] = [g / model_gb.get(p, model_gb["bf16"]) for g, p in zip(out.gbs, out.precision)]
    out["j_per_token"] = out.power_w / out.tokens_per_s
    out["j_per_token_node"] = out.node_w / out.tokens_per_s
    order = {t: i for i, t in enumerate(read)}
    out["_o"] = out.tier.map(order)
    return out.sort_values(["_o", "layout", "precision"], key=lambda c: c if c.name == "_o" else c.map(lambda v: (v != "read-only kernel", v))).drop(columns="_o").reset_index(drop=True)


# ------------------------------------------------- Flat against Cache at equal workloads (A5)
def _tier_label(mode: str, target: str, pool_gib: float) -> str:
    return f"Flat {target.upper()}" if mode == "flat" else f"Cache, {pool_gib:.0f} GiB"


def energy_table(unc: pd.DataFrame, theory: Theory, shape: str = "14336x4096") -> pd.DataFrame:
    """Energy per operation and per token of the same workloads in Flat and Cache mode, at both RAPL scopes.

    A long frame, one row per ``kind``, tier and point; ``pj_per_op`` is the computing socket's
    package plus DRAM power per operation and ``pj_per_op_node`` that of both sockets
    (``energy_scopes``); both include the idle floor.

    * ``gemm``: the counted GEMM of ``shape`` against the batch size ``x`` = M (decode at M = 1
      through prefill at M = 4096), BF16 plain and INT8 prepacked, on Flat HBM and DDR at 16×
      the on-chip capacity and in Cache mode resident (16 GiB) and spilled (96 GiB).
      ``j_per_token`` is the energy of one Llama-3.1-8B token if the whole model ran at this
      point's rate and power (2 × parameters operations per token); at M = 1 it is the decode
      bound, which ``decode_table_measured`` states at measured bytes.
    * ``sweep``: the counted 12-chain FP64 sweep against its measured intensity (``x`` = K),
      an energy roofline: Flat HBM and DDR at 8 GiB, Cache at 16 GiB (resident) and 96 GiB.
    * ``peak``: the 56-core compute peaks of each ISA path in both modes (a sanity check that
      the mode does not change the energy of work that touches no memory).

    ``intensity`` is the measured one (``bytes_source`` says how it was measured).
    """

    cols = ["kind", "tier", "precision", "layout", "x", "intensity", "gops", "socket_w", "node_w", "pj_per_op",
            "pj_per_op_node", "j_per_token", "j_per_token_node", "bytes_source", "power_source", "n_samples", "campaign"]
    rows = []
    cg = counted_gemm_frame(unc, shape=shape)
    ops_per_token = 2 * theory.model_parameters()
    for r in cg.itertuples():
        tier = _tier_label(r.memory_mode, r.memory_target, r.pool_gib)
        rows.append(dict(
            kind="gemm", tier=tier, precision=r.dtype, layout=r.layout, x=r.m, intensity=r.intensity, gops=r.gops,
            socket_w=r.power_w, node_w=r.node_w, pj_per_op=r.j_per_op * 1e12, pj_per_op_node=r.j_per_op_node * 1e12,
            j_per_token=r.j_per_op * ops_per_token, j_per_token_node=r.j_per_op_node * ops_per_token,
            bytes_source=r.bytes_source, power_source=r.power_source, n_samples=r.n_samples, campaign=r.campaign_id))
    d = unc[unc.benchmark.eq("roofline_sweep") & unc.notes.eq(COUNTED_SWEEP_LABEL) & unc.accepted]
    if len(d):
        d = energy_scopes(_with_measured(d))
        d["tier"] = [_tier_label(m, t, w / 2**30) for m, t, w in zip(d.memory_mode, d.memory_target, d.working_set_bytes)]
        g = d.groupby(["tier", "k"]).agg(
            intensity=("intensity_measured", "median"), gops=("performance_gops", "median"), socket_w=("socket_w", "median"),
            node_w=("node_w", "median"), pj_per_op=("pj_per_op", "median"), pj_per_op_node=("pj_per_op_node", "median"),
            bytes_source=("bytes_source", "first"), power_source=("power_source", "first"), n_samples=("k", "size"),
            campaign=("campaign_id", _ids)).reset_index()
        for r in g.itertuples():
            rows.append(dict(kind="sweep", tier=r.tier, precision="fp64", layout="—", x=r.k, **{c: getattr(r, c) for c in (
                "intensity", "gops", "socket_w", "node_w", "pj_per_op", "pj_per_op_node", "bytes_source", "power_source", "n_samples", "campaign")}))
    d = unc[unc.notes.eq("u1_isa") & unc.threads.eq(56) & unc.accepted & unc.pkg_power_w.notna()]
    if len(d):
        from hwbench.plotting import PATH_LABELS

        d = energy_scopes(d)
        d["path"] = [PATH_LABELS.get(KERNEL_PATHS.get((b, t), ""), b) for b, t in zip(d.benchmark, d["dtype"])]
        d["tier"] = d.memory_mode.map({"flat": "Flat", "cache": "Cache"})
        g = d.groupby(["tier", "path", "dtype"]).agg(
            gops=("performance_gops", "median"), socket_w=("socket_w", "median"), node_w=("node_w", "median"),
            pj_per_op=("pj_per_op", "median"), pj_per_op_node=("pj_per_op_node", "median"), power_source=("power_source", "first"),
            n_samples=("path", "size"), campaign=("campaign_id", _ids)).reset_index()
        for r in g.itertuples():
            rows.append(dict(kind="peak", tier=r.tier, precision=r.dtype, layout=r.path, x=math.nan, intensity=math.nan, gops=r.gops,
                             socket_w=r.socket_w, node_w=r.node_w, pj_per_op=r.pj_per_op, pj_per_op_node=r.pj_per_op_node,
                             bytes_source="—", power_source=r.power_source, n_samples=r.n_samples, campaign=r.campaign))
    return pd.DataFrame(rows, columns=cols)

