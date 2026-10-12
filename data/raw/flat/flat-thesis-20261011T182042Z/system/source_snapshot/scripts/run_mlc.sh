#!/usr/bin/env bash
# Optional cross-check. It never requests privilege; unavailable counters are retained as failures.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
BIN="${1:?usage: run_mlc.sh MLC_BINARY OUTPUT_DIR}"
OUT="${2:?usage: run_mlc.sh MLC_BINARY OUTPUT_DIR}"
[[ -x "${BIN}" ]] || { echo "not executable: ${BIN}" >&2; exit 2; }
mkdir -p "${OUT}"
for kind in bandwidth latency; do
  flag="--${kind}_matrix"
  raw="${OUT}/mlc-${kind}.txt"
  status=0
  "${BIN}" "${flag}" >"${raw}" 2>&1 || status=$?
  if (( status == 0 )); then
    python3 -m hwbench.mlc --kind "${kind}" --input "${raw}" --output "${OUT}/mlc-${kind}.json"
  else
    printf '{"benchmark":"intel_mlc","kernel":"%s_matrix","valid":false,"returncode":%d}\n' "${kind}" "${status}" >"${OUT}/mlc-${kind}.json"
  fi
done
