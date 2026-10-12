"""Selection and checks for the extended campaigns (ISA, bandwidth, hierarchy, GEMM, span).

The October-11 thesis campaigns are selected by ``analysis.select_measurements``.
The extended campaigns are listed explicitly under ``extended_campaigns`` in
``configs/analysis.json`` and are never mixed in implicitly.  This module selects
their rows and applies the validity rules that decide whether they may be used:

* execution context: Flat on the dedicated node (SSH, or the earlier exclusive
  Slurm runs), Cache on any other node under Slurm, topology matching the mode;
* no foreign Slurm job on the Flat node before, during or after the campaign;
* five steady samples per configuration, with variation above 5% flagged;
* no result above the theoretical peak at the clock the cores actually ran at;
* synchronized dual-socket windows overlapping by at least 99%.
"""

from __future__ import annotations

import json
import math
from pathlib import Path

import pandas as pd

from hwbench.execution import flat_node
from hwbench.theory import Theory

CONFIGURATION = [
    "campaign_id",
    "memory_mode",
    "socket_scope",
    "socket",
    "memory_socket",
    "memory_target",
    "benchmark",
    "kernel",
    "dtype",
    "m",
    "n",
    "k",
    "threads",
    "working_set_bytes",
    "notes",
]
MIN_OVERLAP = 0.99
PEAK_TOLERANCE = 1.02


def extended_ids(policy: dict) -> dict[str, list[str]]:
    return {mode: list(ids) for mode, ids in policy.get("extended_campaigns", {}).items()}


def select_extended(df: pd.DataFrame, policy: dict, include_rejected: bool = False):
    """Steady, accepted rows of the listed extended campaigns."""

    ids = {c for campaigns in extended_ids(policy).values() for c in campaigns}
    selected = df[df.phase.eq("steady") & df.campaign_id.isin(ids)]
    if not include_rejected:
        selected = selected[selected.accepted]
    return selected.copy()


def campaign_context_errors(mode: str, campaign: str, raw_roots: list[Path]) -> list[str]:
    """Check one campaign's recorded execution context against the rules."""

    errors = []
    roots = [r / campaign for r in raw_roots if r.name == mode and (r / campaign).exists()]
    if not roots:
        return [f"Missing raw campaign directory: {campaign}"]
    root = roots[0]
    if not (root / "COMPLETED").exists():
        errors.append(f"Campaign is not complete: {campaign}")
    try:
        meta = json.loads((root / "system/campaign.json").read_text())
        topology = json.loads((root / "system/topology.json").read_text())
    except (OSError, json.JSONDecodeError):
        return errors + [f"Missing campaign metadata: {campaign}"]
    host = str(meta.get("node") or topology.get("hostname", "")).split(".", 1)[0]
    method = meta.get("launch_method")
    dedicated = flat_node()
    if topology.get("memory_mode") != mode:
        errors.append(f"Topology mode mismatch: {campaign}")
    if mode == "flat":
        if host != dedicated:
            errors.append(f"Flat campaign off the dedicated node: {campaign} on {host}")
        if method not in {"ssh", "slurm_exclusive"}:
            errors.append(f"Flat campaign launch method {method!r}: {campaign}")
        post = (meta.get("postflight") or {}).get("foreign_jobs") or []
        pre = (meta.get("preflight") or {}).get("foreign_jobs") or []
        if post or pre:
            errors.append(f"Foreign Slurm job on the Flat node during {campaign}")
    else:
        if host == dedicated:
            errors.append(f"Cache campaign ran on the Flat node: {campaign}")
        if method not in {"slurm", "slurm_exclusive"}:
            errors.append(f"Cache campaign launch method {method!r}: {campaign}")
    if meta.get("memory_mode_verified") is False:
        errors.append(f"Memory mode not verified: {campaign}")
    return errors


def check_extended(
    all_rows: pd.DataFrame,
    policy: dict,
    raw_roots: list[Path],
    theory: Theory | None = None,
) -> tuple[list[str], list[str]]:
    """Return (errors, warnings) for the extended campaigns."""

    errors: list[str] = []
    warnings: list[str] = []
    theory = theory or Theory.load()
    for mode, campaigns in extended_ids(policy).items():
        for campaign in campaigns:
            errors += campaign_context_errors(mode, campaign, raw_roots)
    chosen = select_extended(all_rows, policy)
    attempted = select_extended(all_rows, policy, include_rejected=True)
    for campaign, part in attempted.groupby("campaign_id"):
        rejected = part[~part.accepted]
        if len(rejected):
            reasons = sorted({r for v in rejected.exclusion_reason.dropna() for r in v.split(";") if r})
            warnings.append(f"{campaign}: {len(rejected)} rejected samples ({', '.join(reasons)})")
    keys = [c for c in CONFIGURATION if c in chosen]
    minimum = policy.get("minimum_samples", 5)
    for key, part in chosen.groupby(keys, dropna=False):
        label = dict(zip(keys, key))
        if part.socket_scope.iloc[0] != "dual_component" and len(part) < minimum:
            errors.append(f"Fewer than {minimum} samples: {label}")
        metric = _metric(part.iloc[0])
        values = part[metric].dropna() if metric else pd.Series(dtype=float)
        if len(values) > 1 and values.mean() and values.std() / values.mean() * 100 > policy.get(
            "variance_warning_percent", 5
        ):
            warnings.append(f"Variation above 5%: {tuple(label.values())}")
    errors += peak_violations(chosen, theory)
    dual = chosen[chosen.socket_scope.eq("dual")]
    low = dual[dual.overlap_fraction.lt(MIN_OVERLAP)]
    if len(low):
        warnings.append(f"{len(low)} dual-socket samples overlap by less than {MIN_OVERLAP:.0%}")
    return sorted(set(errors)), sorted(set(warnings))


def _metric(row) -> str | None:
    if row.benchmark == "pointer_chase":
        return "latency_ns"
    if row.benchmark in {"stream_triad", "stream_triad_nt", "stream_read", "onednn_gemm_sweep"}:
        return "bandwidth_gbs" if row.benchmark != "onednn_gemm_sweep" else "performance_gops"
    return "performance_gops"


def peak_violations(rows: pd.DataFrame, theory: Theory) -> list[str]:
    """Compute results above the theoretical peak at the measured clock."""

    from hwbench.theory import KERNEL_PATHS

    errors = []
    compute = rows[
        rows.socket_scope.isin(["single", "dual"])
        & rows.ghz_effective.notna()
        & rows.performance_gops.notna()
    ]
    for _, row in compute.iterrows():
        key = KERNEL_PATHS.get((row.benchmark, row["dtype"]))
        if key is None:
            continue
        peak = theory.peak_gops(
            theory.isa_for(row.benchmark, row["dtype"]).key, int(row.threads), row.ghz_effective
        )
        if row.performance_gops > peak * PEAK_TOLERANCE and not math.isnan(peak):
            errors.append(
                f"{row.campaign_id}: {row.benchmark}/{row['dtype']} at {int(row.threads)} threads "
                f"exceeds the peak at {row.ghz_effective:.2f} GHz"
            )
    return errors
