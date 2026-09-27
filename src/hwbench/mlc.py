"""Best-effort parser for Intel Memory Latency Checker NUMA matrices."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

HEADER = re.compile(r"^\s*Numa node\s+(?P<columns>[\d\s]+)$", re.IGNORECASE)
ROW = re.compile(r"^\s*(?P<row>\d+)\s+(?P<values>[\d.\s]+)$")


def parse_matrix(text: str) -> dict[str, dict[str, float]]:
    columns: list[str] | None = None
    matrix: dict[str, dict[str, float]] = {}
    for line in text.splitlines():
        match = HEADER.match(line)
        if match:
            columns = match["columns"].split()
            continue
        match = ROW.match(line)
        if columns and match:
            values = match["values"].split()
            if len(values) == len(columns):
                matrix[match["row"]] = dict(zip(columns, map(float, values)))
    if not matrix:
        raise ValueError("no NUMA matrix found in MLC output")
    return matrix


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--kind", choices=("bandwidth", "latency"), required=True)
    args = parser.parse_args()
    result = {"benchmark": "intel_mlc", "kernel": f"{args.kind}_matrix",
              "matrix": parse_matrix(args.input.read_text()), "valid": True}
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
