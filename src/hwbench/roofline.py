"""Roofline quantities with stated reference origins and measurement scope.

Theoretical references use ``configs/theory.toml``. Measured peaks are rates of
dedicated kernels, and measured-achievable references describe observed library
GEMMs. These references can be compared on a plot with their origins identified.
"""

from __future__ import annotations

import math
from dataclasses import asdict, dataclass, field
from typing import Any, Literal

import pandas as pd

from hwbench.theory import KERNEL_PATHS, Theory

CeilingKind = Literal["theoretical", "measured_peak", "measured_achievable"]
SCOPES = ("1S", "2S")

#: Memory kernels, in the order a roofline should prefer them (best sustained wins).
BANDWIDTH_KERNELS = {
    "stream_triad": "triad",
    "stream_triad_nt": "triad_nt",
    "stream_read": "read",
    "stream_copy": "copy",
    "stream_copy_nt": "copy_nt",
}


@dataclass(frozen=True)
class Ceiling:
    """A compute ceiling (operations per second) for one precision/ISA path."""

    kind: CeilingKind
    precision: str
    path: str
    gops: float
    unit: str
    scope: str
    mode: str | None
    cores: int
    ghz: float | None = None
    source_campaign: str | None = None
    note: str = ""
    cv_percent: float | None = None


@dataclass(frozen=True)
class MemoryCeiling:
    """A bandwidth ceiling for one memory tier and kernel."""

    kind: CeilingKind
    tier: str
    kernel: str
    gbs: float
    scope: str
    mode: str | None
    working_set_gib: float | None = None
    source_campaign: str | None = None
    note: str = ""
    cv_percent: float | None = None
    bytes_source: Literal["modeled", "pmu_ocr", "uncore_cas"] | None = None
    cores: int | None = None


@dataclass
class WorkloadPoint:
    """One achieved operating point on a measured roofline.

    ``bytes_source`` says whether traffic was modeled from tensor sizes or read from
    hardware counters (the cores' offcore events, or CAS counts at the memory controllers); the two are not interchangeable and must not be mixed
    silently.
    """

    name: str
    precision: str
    isa_path: str
    gops: float
    intensity: float
    bytes_source: Literal["modeled", "pmu_ocr", "uncore_cas"] = "modeled"
    mode: str | None = None
    scope: str = "1S"
    cores: int | None = None
    threads: int | None = None
    memory_target: str | None = None
    phase: str | None = None
    ghz_effective: float | None = None
    amx_busy_frac: float | None = None
    provenance: dict[str, Any] = field(default_factory=dict)

    def as_dict(self) -> dict[str, Any]:
        return asdict(self)


def envelope(intensity: float | pd.Series, compute_gops: float, bandwidth_gbs: float):
    """Attainable rate ``min(peak, bandwidth * intensity)`` (GOP/s)."""

    if isinstance(intensity, pd.Series):
        return (intensity * bandwidth_gbs).clip(upper=compute_gops)
    return min(compute_gops, bandwidth_gbs * intensity)


def ridge(compute_gops: float, bandwidth_gbs: float) -> float:
    """Operational intensity (op/byte) at which the two ceilings meet."""

    if bandwidth_gbs <= 0:
        return math.inf
    return compute_gops / bandwidth_gbs


def audit_points(
    points: list[WorkloadPoint],
    memory: list[MemoryCeiling],
    compute: list[Ceiling],
) -> pd.DataFrame:
    """Compare every achieved point with the roofline built from its own ceilings.

    The reference is ``min(compute, bandwidth * intensity)`` with matching tier, mode,
    scope, traffic basis, Cache working set, and ISA path. Retain the available term
    if a matching reference for the other term is missing. ``above_reference`` reports
    every crossing. ``exceeds`` also applies a descriptive tolerance based on the
    larger within-launch coefficient of variation of the point and limiting reference.
    """

    rows = []
    for p in points:
        pool = p.provenance.get("pool_gib")
        matching_memory = [
            m for m in memory
            if m.tier == p.memory_target and m.mode == p.mode and m.scope == p.scope
            and (m.bytes_source is None or m.bytes_source == p.bytes_source)
            and (m.cores is None or p.cores is None or m.cores == p.cores)
            and (p.mode != "cache" or pool is None or m.working_set_gib is None
                 or abs(m.working_set_gib - pool) < 0.5)
        ]
        if len(matching_memory) > 1:
            raise ValueError(f"multiple bandwidth references match {p.name}")
        mem = matching_memory[0] if matching_memory else None
        cmp_ = next(
            (
                c
                for c in compute
                if c.kind == "measured_peak" and c.path == p.isa_path and c.mode == p.mode and c.scope == p.scope
                and (p.cores is None or p.cores == c.cores)
            ),
            None,
        )
        bound, limiting, spread = math.nan, "none", [p.provenance.get("cv_percent")]
        candidates = []
        if mem:
            candidates.append((mem.gbs * p.intensity, "memory", mem.cv_percent))
        if cmp_:
            candidates.append((cmp_.gops, "compute", cmp_.cv_percent))
        if candidates:
            bound, limiting, ceiling_cv = min(candidates, key=lambda c: c[0])
            spread.append(ceiling_cv)
        tolerance = max((v for v in spread if v is not None and v == v), default=0.0)
        ratio = p.gops / bound if bound == bound else math.nan
        rows.append(
            dict(
                point=p.name,
                series=p.provenance.get("series", p.isa_path),
                intensity=p.intensity,
                gops=p.gops,
                bytes_source=p.bytes_source,
                campaign=p.provenance.get("campaign"),
                working_set_gib=pool,
                bandwidth_gbs=p.gops / p.intensity,
                bound_gops=bound,
                ceiling_gbs=mem.gbs if mem else math.nan,
                ceiling_kernel=mem.kernel if mem else "",
                ceiling_campaign=mem.source_campaign if mem else None,
                ceiling_working_set_gib=mem.working_set_gib if mem else None,
                limiting=limiting,
                ratio=ratio,
                tolerance_percent=tolerance,
                above_reference=bool(ratio > 1),
                exceeds=bool(ratio == ratio and ratio > 1 + tolerance / 100),
                unconverged=bool(p.provenance.get("open", False)),
            )
        )
    return pd.DataFrame(rows)


def _scope(row) -> str:
    return "2S" if row.socket_scope == "dual" else "1S"


def compute_ceilings(
    df: pd.DataFrame, theory: Theory, threads: int | None = None
) -> pd.DataFrame:
    """Measured peak per (mode, path, scope) next to the theoretical peak.

    Efficiency is reported against the base-clock peak (what a datasheet says) and
    against the peak at the clock the cores actually ran at, because the two differ
    by tens of percent between AVX-512 and AMX code.
    """

    wanted = df[
        df.benchmark.isin({b for b, _ in KERNEL_PATHS})
        & df.socket_scope.isin(["single", "dual"])
        & df.dtype.notna()
    ].copy()
    wanted = wanted[
        [(b, d) in KERNEL_PATHS for b, d in zip(wanted.benchmark, wanted.dtype)]
    ]
    if threads is not None:
        wanted = wanted[wanted.threads.eq(threads)]
    rows = []
    keys = ["memory_mode", "benchmark", "dtype", "socket_scope", "socket", "threads"]
    for key, part in wanted.groupby(keys, dropna=False):
        mode, benchmark, dtype, scope, socket, thr = key
        path = theory.isa_for(benchmark, dtype)
        gops = part.performance_gops.median()
        ghz = part.ghz_effective.median() if "ghz_effective" in part else math.nan
        cores = int(thr)
        base = theory.peak_gops(path.key, cores)
        at_clock = (
            theory.peak_gops(path.key, cores, ghz) if not math.isnan(ghz) else math.nan
        )
        rows.append(
            dict(
                memory_mode=mode,
                path=path.key,
                label=path.label,
                dtype=dtype,
                scope="2S" if scope == "dual" else "1S",
                socket=socket,
                cores=cores,
                campaign_id=";".join(sorted(part.campaign_id.unique())),
                n_samples=len(part),
                gops=gops,
                cv_percent=100 * part.performance_gops.std() / gops
                if gops
                else math.nan,
                ghz_effective=ghz,
                amx_busy_frac=part.amx_busy_frac.median()
                if "amx_busy_frac" in part
                else math.nan,
                theory_gops_base=base,
                theory_gops_at_clock=at_clock,
                efficiency_base=gops / base,
                efficiency_at_clock=gops / at_clock
                if at_clock == at_clock
                else math.nan,
                theory_status=path.status,
            )
        )
    return pd.DataFrame(rows)


def memory_ceilings(df: pd.DataFrame) -> pd.DataFrame:
    """Best sustained bandwidth per (mode, tier, kernel, scope) at full core count."""

    wanted = df[
        df.benchmark.isin(BANDWIDTH_KERNELS)
        & df.socket_scope.isin(["single", "dual"])
        & df.locality.isin(["local"])
    ].copy()
    rows = []
    keys = [
        "memory_mode",
        "memory_target",
        "benchmark",
        "socket_scope",
        "socket",
        "threads",
        "working_set_gib",
    ]
    for key, part in wanted.groupby(keys, dropna=False):
        mode, target, benchmark, scope, socket, thr, ws = key
        gbs = part.bandwidth_gbs.median()
        rows.append(
            dict(
                memory_mode=mode,
                tier=target,
                kernel=BANDWIDTH_KERNELS[benchmark],
                scope="2S" if scope == "dual" else "1S",
                socket=socket,
                threads=thr,
                working_set_gib=ws,
                campaign_id=";".join(sorted(part.campaign_id.unique())),
                n_samples=len(part),
                gbs=gbs,
                cv_percent=100 * part.bandwidth_gbs.std() / gbs if gbs else math.nan,
            )
        )
    return pd.DataFrame(rows)


def primary_memory_ceiling(table: pd.DataFrame, mode: str, tier: str, scope: str):
    """ERT convention: the best sustained of read, triad_nt and triad."""

    part = table[
        table.memory_mode.eq(mode)
        & table.tier.eq(tier)
        & table.scope.eq(scope)
        & table.threads.eq(112 if scope == "2S" else 56)
    ]
    if part.empty:
        return None
    best = part.loc[part.gbs.idxmax()]
    return MemoryCeiling(
        kind="measured_peak",
        tier=tier,
        kernel=best.kernel,
        gbs=float(best.gbs),
        scope=scope,
        mode=mode,
        working_set_gib=None
        if pd.isna(best.working_set_gib)
        else float(best.working_set_gib),
        source_campaign=best.campaign_id,
        cv_percent=None if pd.isna(best.cv_percent) else float(best.cv_percent),
        bytes_source="modeled",
        cores=int(best.threads),
    )
