#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_common.sh
source "${HERE}/_common.sh"
MODE="${1:?usage: run_bandwidth.sh cache|flat OUTPUT_DIR}"
OUT="${2:?usage: run_bandwidth.sh cache|flat OUTPUT_DIR}"
[[ "${MODE}" == cache || "${MODE}" == flat ]] || die "mode must be cache or flat"
require_binaries
mkdir -p "${OUT}/bandwidth"
TOPOLOGY="${OUT}/system/topology.json"
[[ -r "${TOPOLOGY}" ]] || die "missing ${TOPOLOGY}"

export OMP_PROC_BIND=close OMP_PLACES=cores
THREAD_CANDIDATES=(1 2 4 8 14 28 56)
SCALE_BYTES=$((8*1024*1024*1024))
CACHE_SIZES_GIB=(8 16 32 48 64 96 128)

run_one() {
  local socket=$1 tier=$2 memnode=$3 threads=$4 bytes=$5 scope=$6 label=$7 pair=${8:-}
  local cpus file
  cpus="$(cpu_list_for "${TOPOLOGY}" "${socket}" "${threads}")"
  file="${OUT}/bandwidth/${label}-socket${socket}-${tier}-t${threads}-b${bytes}-$(stamp).json"
  OMP_NUM_THREADS="${threads}" record_run \
    --output "${file}" --memory-mode "${MODE}" --memory-target "${tier}" \
    --socket-scope "${scope}" --socket "${socket}" --cpu-bind "${cpus}" --mem-bind "${memnode}" \
    --threads "${threads}" --working-set-bytes "${bytes}" ${pair:+--pair-id "${pair}"} -- \
    numactl --physcpubind="${cpus}" --membind="${memnode}" \
      "${BUILD_DIR}/stream_triad" --bytes "${bytes}" --warmups 2 --repetitions 5
}

SOCKET_COUNT="$(topology_value "${TOPOLOGY}" 'd["socket_count"]')"
for ((socket=0; socket<SOCKET_COUNT; ++socket)); do
  cores="$(socket_field "${TOPOLOGY}" "${socket}" physical_cores)"
  cpu_node="$(socket_field "${TOPOLOGY}" "${socket}" cpu_nodes)"
  tiers=(effective_cache)
  [[ "${MODE}" == flat ]] && tiers=(ddr hbm)
  for tier in "${tiers[@]}"; do
    memnode="${cpu_node}"
    [[ "${tier}" == hbm ]] && memnode="$(socket_field "${TOPOLOGY}" "${socket}" hbm_nodes)"
    for threads in "${THREAD_CANDIDATES[@]}"; do
      (( threads <= cores )) || continue
      run_one "${socket}" "${tier}" "${memnode}" "${threads}" "${SCALE_BYTES}" single scaling
    done
  done
  if [[ "${MODE}" == cache ]]; then
    for gib in "${CACHE_SIZES_GIB[@]}"; do
      run_one "${socket}" effective_cache "${cpu_node}" "${cores}" "$((gib*1024*1024*1024))" single working_set
    done
  fi
done

dual_pair() {
  local tier=$1 bytes=$2 label=$3
  local pair="${MODE}-${tier}-${bytes}-$(stamp)" pids=()
  for ((socket=0; socket<SOCKET_COUNT; ++socket)); do
    cores="$(socket_field "${TOPOLOGY}" "${socket}" physical_cores)"
    memnode="$(socket_field "${TOPOLOGY}" "${socket}" cpu_nodes)"
    [[ "${tier}" == hbm ]] && memnode="$(socket_field "${TOPOLOGY}" "${socket}" hbm_nodes)"
    run_one "${socket}" "${tier}" "${memnode}" "${cores}" "${bytes}" dual_component "${label}" "${pair}" &
    pids+=("$!")
  done
  status=0; for pid in "${pids[@]}"; do wait "${pid}" || status=$?; done
  (( status == 0 )) || return "${status}"
}

if (( SOCKET_COUNT > 1 )); then
  if [[ "${MODE}" == flat ]]; then
    dual_pair ddr "${SCALE_BYTES}" dual_scaling
    dual_pair hbm "${SCALE_BYTES}" dual_scaling
  else
    for gib in "${CACHE_SIZES_GIB[@]}"; do dual_pair effective_cache "$((gib*1024*1024*1024))" dual_working_set; done
  fi
fi
