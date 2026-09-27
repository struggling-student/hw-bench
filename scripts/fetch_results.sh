#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?source a private cluster config}"
: "${HW_BENCH_RESULTS_ROOT:?source a private cluster config}"
for mode in cache flat; do
  remote_run="$(ssh "${HW_BENCH_LOGIN_ALIAS}" "find '${HW_BENCH_RESULTS_ROOT}' -mindepth 1 -maxdepth 1 -type d -name '${mode}-*' | sort | tail -1")"
  [[ -n "${remote_run}" ]] || { echo "no ${mode} run under ${HW_BENCH_RESULTS_ROOT}" >&2; exit 1; }
  local_run="${ROOT}/data/raw/${mode}/$(basename "${remote_run}")"
  mkdir -p "${local_run}"
  rsync -a "${HW_BENCH_LOGIN_ALIAS}:${remote_run}/" "${local_run}/"
  cp "${local_run}/system/topology.json" "${ROOT}/data/processed/topology_${mode}.json"
done
PYTHONPATH="${ROOT}/src" python3 -m hwbench.process \
  --input "${ROOT}/data/raw/cache" --input "${ROOT}/data/raw/flat" \
  --output "${ROOT}/data/processed/measurements.csv" \
  --summary-output "${ROOT}/data/processed/summary.csv"
