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


def headline_gemm_points(ext: pd.DataFrame, shape: str = "14336x4096", pool_x: int = 64) -> pd.DataFrame:
    """One Flat GEMM shape over M for the headline: converged-pool points where they exist.

    The pool-size sweep (``gemm_pool``, ``pool_x`` times the on-chip capacity) replaces the first
    sweep at the batch sizes it measured (M = 1, 16, 256); every other M comes from the first sweep
    and keeps its ``status``, so a small-pool point at M <= 32 can be drawn hollow and left out of the
    ceiling audit.  Same columns as ``gemm_points``.
    """

    first = gemm_points(ext)
    first = first[first.memory_mode.eq("flat") & first["shape"].eq(shape)]
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


def local_remote_table(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Local and remote bandwidth per tier and kernel, for socket 0.

    Socket 0 is the reference for every headline number in this study.  ``*_spread`` is the
    absolute difference to socket 1, shown so the reader sees how far the two sockets
    differ; it is not a sample-to-sample figure.
    """

    loc = locality_ratio(ext, thesis)
    loc = loc[loc.kernel.isin(["read", "triad_nt"])]
    s0 = loc[loc.socket.eq(0)].set_index(["config", "kernel"])
    s1 = loc[loc.socket.eq(1)].set_index(["config", "kernel"])
    out = s0[["local", "remote"]].copy()
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


def headline_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory) -> pd.DataFrame:
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
    return out


def ridge_table(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """T2: ridge point (operations per byte) of each compute path on each tier, one socket.

    Every column uses the read-only ceiling, the one the headline roofline and the decode bound
    use; Cache mode is read at 16 GiB (the weights of an 8B BF16 model), not at the best working set.
    """

    from hwbench.roofline import ridge as _ridge

    tiers = {
        "HBM read": memory_ceiling(ext, thesis, "flat", "hbm", access="read"),
        "DDR read": memory_ceiling(ext, thesis, "flat", "ddr", access="read"),
        "Cache read at 16 GiB": memory_ceiling(ext, thesis, "cache", "effective_cache", access="read", at_gib=16),
    }
    rows = []
    for key, label in [("fp64", "AVX-512 FP64"), ("fp32", "AVX-512 FP32"), ("avx512_bf16", "AVX-512 BF16"), ("vnni_int8", "VNNI INT8"), ("amx_bf16", "AMX BF16"), ("amx_int8", "AMX INT8")]:
        c = compute_ceiling(ext, key, "flat", 56)
        rows.append({"path": label, "peak (TOP/s)": c.gops / 1000, **{f"{n} ({m.gbs:.0f} GB/s)": _ridge(c.gops, m.gbs) for n, m in tiers.items()}})
    return pd.DataFrame(rows)


def measured_theory_table(ext: pd.DataFrame, thesis: pd.DataFrame, theory: Theory, hmat: dict[str, float]) -> pd.DataFrame:
    """T3: measured against vendor or derived peak and against the firmware-advertised figure."""

    peaks = isa_peaks(ext, theory)
    peaks = peaks[peaks.scope.eq("1S") & peaks.cores.eq(56) & peaks.memory_mode.eq("flat") & peaks.socket.eq(0)].set_index("path")
    rows = []
    for key in ["fp64", "fp32", "avx512_bf16", "vnni_int8", "amx_bf16", "amx_int8"]:
        r = peaks.loc[key]
        rows.append(
            dict(
                quantity=f"{theory.isa(key).label} (TOP/s)", measured=r.gops / 1000, theoretical=r.theory_gops_at_clock / 1000 if "theory_gops_at_clock" in r else r.gops / r.efficiency_at_clock / 1000,
                theory_status=r.theory_status, firmware=math.nan,
            )
        )
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
            ("Memory-controller traffic (uncore_imc CAS counts)", "needs CAP_PERFMON or paranoid ≤ 0", "per-core DRAM line counts exist for the follow-up campaigns (counted against modeled in notebook 02); the October data and the first GEMM sweep have none, and DDR and HBM bytes cannot be told apart"),
            ("Cache-mode hit rate", "memory-side-cache tag events are uncore (M2M)", "conflict misses are inferred from bandwidth"),
            ("Why remote HBM collapses", "UPI and CHA counters are uncore", "mechanism unidentified; one campaign"),
            ("Why the clock falls while HBM streams", "power and turbostat counters need privileges", "cause unidentified"),
            ("Energy", "RAPL needs privileges", "no energy figures"),
            ("HBM device capability beyond 56 cores", "SNC4 / HBM-only modes are not available on the node", "HBM ceiling is a 56-core figure"),
            ("SMT", "SMT is off on CRESCO8", "no SMT effect"),
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
    pk = _gemm_frame(ext, ["gemm_prepacked"])
    pk = pk[pk["shape"].eq(shape) & pk.m.eq(1)].groupby("memory_target").agg(gbs=("bandwidth_gbs", "median"), counted=("counted_gbs", "median"))
    for tier, r in pk.iterrows():
        rows.append(
            dict(tier=tier_name[tier], precision="bf16", layout="prepacked", pool="4× on-chip (not converged)", gbs=r.gbs,
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
            provenance={"campaign": r.campaign, "series": f"{dtype.upper()} {shape} · {pool_x}× pool", "cv_percent": r.cv},
        )
        for (tier, dtype, m), r in rows.iterrows()
    ]
