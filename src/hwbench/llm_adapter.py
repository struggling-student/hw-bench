"""Map LLM serving results onto the generic roofline workload point.

The ``llm-backend-analysis`` repository measures vLLM and llama.cpp operating
points on the same sockets.  This module defines how one of its rows becomes a
:class:`~hwbench.roofline.WorkloadPoint` so that a point can be drawn on the
measured rooflines of this repository.  It does not import any results; it ships
with a unit test on a synthetic fixture only.

Conventions
-----------
* Operations are modeled, not counted: ``2 x linear parameters`` per generated
  token (the projections and the output head), because the core PMU has no usable
  FLOP counter.  Attention over the KV cache is excluded and noted per point.
* Bytes are read from the memory-controller side of the PMU
  (``bytes_source = "pmu_l3miss"``), never mixed with modeled bytes.
* Each configuration maps to one execution path, which selects the ceiling it is
  judged against (see ``CONFIGURATION_PATHS``).
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import pandas as pd

from hwbench.roofline import WorkloadPoint

#: configuration_id -> (precision, ISA path as named in configs/theory.toml)
CONFIGURATION_PATHS = {
    "vllm_bf16": ("bf16", "amx_bf16"),
    "vllm_int8": ("int8", "amx_int8"),
    "llama_cpp_bf16": ("bf16", "avx512_bf16"),
    "llama_cpp_int8": ("int8", "amx_int8"),
}


@dataclass(frozen=True)
class ModelSpec:
    layers: int
    hidden: int
    intermediate: int
    heads: int
    kv_heads: int
    head_dim: int
    vocab: int

    @property
    def linear_params(self) -> int:
        attention = self.hidden * self.head_dim * (2 * self.heads + 2 * self.kv_heads)
        mlp = 3 * self.hidden * self.intermediate
        return self.layers * (attention + mlp)

    @property
    def decode_ops_per_token(self) -> float:
        return 2.0 * (self.linear_params + self.hidden * self.vocab)


MODEL_SPECS = {
    "llama31_8b": ModelSpec(32, 4096, 14336, 32, 8, 128, 128256),
    "llama32_1b": ModelSpec(16, 2048, 8192, 32, 8, 64, 128256),
}

REQUIRED_COLUMNS = {
    "model",
    "configuration_id",
    "output_tok_s_mean",
    "mem_total_gbs_mean",
}


def from_online_points(
    source: str | Path | pd.DataFrame,
    mode: str = "cache",
    cores: int = 55,
    memory_target: str = "effective_cache",
) -> list[WorkloadPoint]:
    """Convert ``online_points.csv`` rows into workload points.

    Placement defaults follow the serving layout: cache mode, 55 compute cores of
    socket 0 (so the 55-thread ceilings apply), memory bound to socket 0.
    """

    frame = pd.read_csv(source) if not isinstance(source, pd.DataFrame) else source
    missing = REQUIRED_COLUMNS - set(frame.columns)
    if missing:
        raise ValueError(f"online points lack columns: {sorted(missing)}")
    points = []
    for row in frame.itertuples(index=False):
        if row.configuration_id not in CONFIGURATION_PATHS:
            raise ValueError(f"unknown configuration: {row.configuration_id}")
        if row.model not in MODEL_SPECS:
            raise ValueError(f"unknown model: {row.model}")
        precision, path = CONFIGURATION_PATHS[row.configuration_id]
        gops = row.output_tok_s_mean * MODEL_SPECS[row.model].decode_ops_per_token / 1e9
        traffic = row.mem_total_gbs_mean
        isl, osl = getattr(row, "isl", None), getattr(row, "osl", None)
        points.append(
            WorkloadPoint(
                name=f"{row.configuration_id}/{row.model}/C{getattr(row, 'concurrency', '?')}",
                precision=precision,
                isa_path=path,
                gops=float(gops),
                intensity=float(gops / traffic) if traffic else float("nan"),
                bytes_source="pmu_l3miss",
                mode=mode,
                scope="1S",
                cores=cores,
                threads=cores,
                memory_target=memory_target,
                phase="decode",
                ghz_effective=_optional(row, "ghz_effective_per_core_mean"),
                amx_busy_frac=_optional(row, "amx_busy_frac_mean"),
                provenance={
                    "backend": getattr(row, "backend", None),
                    "model": row.model,
                    "isl": _number(isl),
                    "osl": _number(osl),
                    "concurrency": _number(getattr(row, "concurrency", None)),
                    "operations": "modeled: 2 x (linear params + output head) per token",
                },
            )
        )
    return points


def _number(value):
    try:
        return float(value)
    except (TypeError, ValueError):
        return None


def _optional(row, name):
    value = getattr(row, name, None)
    return None if value is None or pd.isna(value) else float(value)


def to_frame(points: list[WorkloadPoint]) -> pd.DataFrame:
    return pd.DataFrame([p.as_dict() for p in points])
