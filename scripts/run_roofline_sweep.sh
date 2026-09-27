#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${HERE}/_common.sh"
MODE="${1:?usage: run_roofline_sweep.sh cache|flat OUTPUT_DIR}"
OUT="${2:?usage: run_roofline_sweep.sh cache|flat OUTPUT_DIR}"
require_binaries
mkdir -p "${OUT}/roofline_sweep"
TOPOLOGY="${OUT}/system/topology.json"
export OMP_PROC_BIND=close OMP_PLACES=cores
socket=0
cores="$(socket_field "${TOPOLOGY}" "${socket}" physical_cores)"
cpus="$(cpu_list_for "${TOPOLOGY}" "${socket}" "${cores}")"
cpu_node="$(socket_field "${TOPOLOGY}" "${socket}" cpu_nodes)"
K_VALUES=(1 2 4 8 16 32 64 128 256)

run_sweep() {
  local target=$1 memnode=$2 bytes=$3 regime=$4
  for k in "${K_VALUES[@]}"; do
    file="${OUT}/roofline_sweep/${target}-${regime}-k${k}-$(stamp).json"
    OMP_NUM_THREADS="${cores}" record_run --output "${file}" --memory-mode "${MODE}" \
      --memory-target "${target}" --socket-scope single --socket "${socket}" \
      --cpu-bind "${cpus}" --mem-bind "${memnode}" --threads "${cores}" \
      --working-set-bytes "${bytes}" --notes "${regime};avx512_8_independent_chains" -- \
      numactl --physcpubind="${cpus}" --membind="${memnode}" \
        "${BUILD_DIR}/intensity" --bytes "${bytes}" --k "${k}" --repetitions 5
  done
}

if [[ "${MODE}" == flat ]]; then
  run_sweep ddr "${cpu_node}" $((8*1024*1024*1024)) flat
  run_sweep hbm "$(socket_field "${TOPOLOGY}" "${socket}" hbm_nodes)" $((8*1024*1024*1024)) flat
else
  run_sweep effective_cache "${cpu_node}" $((16*1024*1024*1024)) below_hbm_capacity
  run_sweep effective_cache "${cpu_node}" $((96*1024*1024*1024)) above_hbm_capacity
fi
