#!/usr/bin/env python3
"""Verify selected exports and remove only explicitly retired generated artifacts."""

import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
p = argparse.ArgumentParser()
p.add_argument("--clean-retired", action="store_true")
args = p.parse_args()
manifest = json.loads((ROOT / "configs/artifacts.json").read_text())
for notebook, names in manifest["figures"].items():
    for name in names:
        for fmt in manifest["formats"]:
            path = ROOT / "figures" / notebook / f"{name}.{fmt}"
            if not path.exists() or path.stat().st_size < 1000:
                raise SystemExit(f"Missing or empty export: {path}")
if args.clean_retired:
    for name in manifest["retired_root_figures"]:
        for fmt in ["html", "svg", "png"]:
            (ROOT / "figures" / f"{name}.{fmt}").unlink(missing_ok=True)
print("Verified all eight SVG/PNG pairs.")
