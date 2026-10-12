#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
PYTHON="${HW_BENCH_PYTHON:-${ROOT}/.venv/bin/python}"
"${PYTHON}" -m hwbench.process --input "${ROOT}/data/raw/cache" --input "${ROOT}/data/raw/flat" --output "${ROOT}/data/processed/measurements.csv"
"${PYTHON}" -m hwbench.validate --measurements "${ROOT}/data/processed/measurements.csv" --raw "${ROOT}/data/raw/cache" --raw "${ROOT}/data/raw/flat" --output "${ROOT}/data/processed/validation.json"
"${PYTHON}" -m hwbench.analysis
"${PYTHON}" "${ROOT}/scripts/execute_notebooks.py"
