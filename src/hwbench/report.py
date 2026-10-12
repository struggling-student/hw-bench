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
def bandwidth_summary(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """Triad (October), read and non-temporal Triad at full socket, by placement.

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
    frame = with_config(pd.concat([triad, new], ignore_index=True))
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
    return out


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

    ``cores`` must be one that was measured in the scaling sweep.  Socket 0 is the
    reference, as in the thesis.
    """

    from hwbench.roofline import Ceiling

    benchmark, dtype = PATH_BENCHMARK[path]
    wanted = ext[
        ext.benchmark.eq(benchmark)
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


#: Kernel sets for workload-matched ceilings: ``best`` is the ERT convention, ``read``
#: matches read-only streams (weights in decode), ``readwrite`` matches kernels that also
#: write (the intensity sweep stores one array per array it loads).
ACCESS_KERNELS = {
    "best": {"read", "triad", "triad_nt"},
    "read": {"read"},
    "readwrite": {"triad", "triad_nt"},
}


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

    table = bandwidth_summary(ext, thesis)
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
                config=config,
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

    ``median``, ``min`` and ``max`` are the five samples of one run.  ``spread`` is half
    that range relative to the median.  ``cross_run`` is the largest deviation seen when
    the quantity (or, where it was not repeated, its family) was measured again in a
    separate run; ``basis`` says which.  ``total`` is spread plus cross-run, a
    conservative linear sum.  ``kind`` says what sort of number it is: operation counts
    over a timed window, or kernel bytes over a timed window (modeled, not counted by the
    memory controller).
    """

    cross = cross_run_percent(ext, thesis)
    peaks = isa_peaks(ext, theory)
    peaks = peaks[peaks.scope.eq("1S") & peaks.cores.eq(56) & peaks.memory_mode.eq("flat") & peaks.socket.eq(0)]
    bench_of = {key: b for b, key in [(b, k) for (b, d), k in KERNEL_PATHS.items()]}
    rows = []
    for key in ["fp64", "fp32", "avx512_bf16", "vnni_int8", "amx_bf16", "amx_int8"]:
        r = peaks[peaks.path.eq(key)].iloc[0]
        c = cross.get(("flat", bench_of[key])) or cross[("flat", "compute")]
        rows.append(
            dict(
                quantity=f"{theory.isa(key).label} peak", unit="TOP/s", median=r.gops / 1000, low=r.gops_min / 1000,
                high=r.gops_max / 1000, n=int(r.n_samples), kind="measured, ops counted",
                cross_run=c["percent"], basis=c["basis"] if c["basis"] != "repeat of this path" else "repeat of this path",
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
        basis = c["basis"] if kernel != "triad" or mode == "cache" else "repeat of this quantity"
        if mode == "cache":
            basis = "Triad repeat on a second node" if kernel == "triad" else "Triad repeat on a second node (node-to-node)"
        rows.append(
            dict(
                quantity=f"{name} (56 cores)", unit="GB/s", median=r.gbs, low=r.gbs_min, high=r.gbs_max, n=int(r.n_samples),
                kind="measured, bytes modeled", cross_run=c["percent"], basis=basis,
            )
        )
    out = pd.DataFrame(rows)
    out["spread"] = 100 * (out.high - out.low) / 2 / out["median"]
    out["total"] = out.spread + out.cross_run
    return out


def ridge_table(ext: pd.DataFrame, thesis: pd.DataFrame) -> pd.DataFrame:
    """T2: ridge point (operations per byte) of each compute path on each tier, one socket."""

    from hwbench.roofline import ridge as _ridge

    tiers = {
        "HBM": memory_ceiling(ext, thesis, "flat", "hbm"),
        "DDR": memory_ceiling(ext, thesis, "flat", "ddr"),
        "Cache, 16 GiB": memory_ceiling(ext, thesis, "cache", "effective_cache", resident_gib=16),
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
            ("Memory-controller traffic (uncore_imc CAS counts)", "needs CAP_PERFMON or paranoid ≤ 0", "a per-core DRAM line count exists for new campaigns (docs/06_COUNTERS.md); none of the analysed data has it, so bandwidth and intensity here are modeled"),
            ("Cache-mode hit rate", "memory-side-cache tag events are uncore (M2M)", "conflict misses are inferred from bandwidth"),
            ("Why remote HBM collapses", "UPI and CHA counters are uncore", "mechanism unidentified; one campaign"),
            ("Why the clock falls while HBM streams", "power and turbostat counters need privileges", "cause unidentified"),
            ("Energy", "RAPL needs privileges", "no energy figures"),
            ("Latency of a Cache-mode miss", "not run (pointer chase beyond 64 GiB)", "spilled latency is blank"),
            ("HBM device capability beyond 56 cores", "SNC4 / HBM-only modes are not available on the node", "HBM ceiling is a 56-core figure"),
            ("SMT", "SMT is off on CRESCO8", "no SMT effect"),
        ],
        columns=["not measured", "what blocks it", "consequence here"],
    )


# --------------------------------------------------------------- uncertainty
FAMILIES = {
    "compute": ["amx_peak", "avx512_bf16_peak", "avx512_peak", "int8_amx_peak", "vnni_peak"],
    "bandwidth": ["stream_read", "stream_triad", "stream_triad_nt"],
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
    """

    keys = [
        "memory_mode", "benchmark", "dtype", "socket", "memory_target", "threads", "working_set_bytes",
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
