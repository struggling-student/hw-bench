#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
MODE="${1:?usage: run_all.sh cache|flat OUTPUT_DIR}"
OUT="${2:?usage: run_all.sh cache|flat OUTPUT_DIR}"
mkdir -p "${OUT}/system"
"${ROOT}/scripts/collect_system_info.sh" "${MODE}" "${OUT}/system"
"${ROOT}/scripts/build_benchmarks.sh" >"${OUT}/system/build.log" 2>&1
cp "${ROOT}/build/build_metadata.json" "${OUT}/system/"
"${ROOT}/scripts/run_bandwidth.sh" "${MODE}" "${OUT}"
"${ROOT}/scripts/run_compute.sh" "${MODE}" "${OUT}"
"${ROOT}/scripts/run_roofline_sweep.sh" "${MODE}" "${OUT}"
python3 -m hwbench.process --input "${OUT}" --output "${OUT}/measurements.csv"
