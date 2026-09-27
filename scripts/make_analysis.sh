#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
python3 -m hwbench.process --input "${ROOT}/data/raw/cache" --input "${ROOT}/data/raw/flat" \
  --output "${ROOT}/data/processed/measurements.csv" \
  --summary-output "${ROOT}/data/processed/summary.csv"
python3 -m hwbench.validate --measurements "${ROOT}/data/processed/measurements.csv" \
  --raw "${ROOT}/data/raw/cache" --raw "${ROOT}/data/raw/flat" \
  --output "${ROOT}/data/processed/validation.json"
png_args=()
[[ "${HW_BENCH_EXPORT_PNG:-0}" == 1 ]] && png_args+=(--png)
python3 -m hwbench.analysis --measurements "${ROOT}/data/processed/measurements.csv" \
  --topology "${ROOT}/data/processed/topology_flat.json" --figures "${ROOT}/figures" \
  --summary "${ROOT}/data/processed/final_summary.json" "${png_args[@]}"
python3 "${ROOT}/scripts/generate_notebook.py"
jupyter nbconvert --to notebook --execute --inplace --ExecutePreprocessor.timeout=600 \
  "${ROOT}/notebooks/roofline_analysis.ipynb"
