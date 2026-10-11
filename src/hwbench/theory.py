"""Theoretical peaks from ``configs/theory.toml``, with provenance attached.

Everything numeric lives in the TOML file so that each number can be traced to a
vendor statement, a derivation, or a measurement; this module only evaluates it.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from typing import Any

try:  # Python 3.11+
    import tomllib
except ModuleNotFoundError:  # pragma: no cover - analysis requires 3.11+
    tomllib = None  # type: ignore[assignment]

ROOT = Path(__file__).resolve().parents[2]
DEFAULT_PATH = ROOT / "configs/theory.toml"

#: Measured kernel -> theory path key, matched on (benchmark, dtype).
KERNEL_PATHS = {
    ("avx512_peak", "fp64"): "fp64",
    ("avx512_peak", "fp32"): "fp32",
    ("avx512_bf16_peak", "bf16"): "avx512_bf16",
    ("vnni_peak", "int8"): "vnni_int8",
    ("amx_peak", "bf16"): "amx_bf16",
    ("int8_amx_peak", "int8"): "amx_int8",
}


@dataclass(frozen=True)
class Peak:
    key: str
    label: str
    dtype: str
    ops_per_cycle: float
    status: str
    basis: str


class Theory:
    def __init__(self, data: dict[str, Any]):
        self.data = data
        platform = data["platform"]
        self.cores_per_socket = int(platform["cores_per_socket"])
        self.sockets = int(platform["sockets"])
        self.base_ghz = float(platform["base_ghz"])
        self.max_turbo_ghz = float(platform["max_turbo_ghz"])

    @classmethod
    def load(cls, path: Path | str = DEFAULT_PATH) -> Theory:
        if tomllib is None:
            raise RuntimeError("theory.toml needs Python 3.11+ (tomllib)")
        with open(path, "rb") as handle:
            return cls(tomllib.load(handle))

    def isa(self, key: str) -> Peak:
        entry = self.data["isa"][key]
        return Peak(
            key=key,
            label=entry["label"],
            dtype=entry["dtype"],
            ops_per_cycle=float(entry["ops_per_cycle"]),
            status=entry["status"],
            basis=entry["basis"],
        )

    def isa_for(self, benchmark: str, dtype: str) -> Peak:
        return self.isa(KERNEL_PATHS[(benchmark, dtype)])

    def peak_gops(self, key: str, cores: int, ghz: float | None = None) -> float:
        """Peak giga-operations per second of ``cores`` cores at ``ghz``."""

        return self.isa(key).ops_per_cycle * cores * (ghz or self.base_ghz)

    def memory_gbs(self, tier: str, sockets: int = 1) -> float:
        return float(self.data["memory"][tier]["gbs_per_socket"]) * sockets
