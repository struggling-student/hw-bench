#!/usr/bin/env bash
# Migrated DDR+HBM concurrency probe: split one socket's cores between tiers.
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${HERE}/_common.sh"
OUT="${1:?usage: run_concurrent_tiers.sh FLAT_OUTPUT_DIR [SOCKET] [BYTES]}"
SOCKET="${2:-0}"
BYTES="${3:-8589934592}"
TOPOLOGY="${OUT}/system/topology.json"
[[ "$(topology_value "${TOPOLOGY}" 'd["memory_mode"]')" == flat ]] || die "requires Flat Mode"
require_binaries
cores="$(socket_field "${TOPOLOGY}" "${SOCKET}" physical_cores)"
half=$((cores/2))
all_cpus="$(cpu_list_for "${TOPOLOGY}" "${SOCKET}" "${cores}")"
IFS=, read -r -a cpu_array <<<"${all_cpus}"
ddr_cpus="$(IFS=,; echo "${cpu_array[*]:0:half}")"
hbm_cpus="$(IFS=,; echo "${cpu_array[*]:half:half}")"
ddr_node="$(socket_field "${TOPOLOGY}" "${SOCKET}" ddr_nodes)"
hbm_node="$(socket_field "${TOPOLOGY}" "${SOCKET}" hbm_nodes)"
pair="flat-concurrent-tier-s${SOCKET}-$(stamp)"
mkdir -p "${OUT}/concurrent_tiers"
export OMP_NUM_THREADS="${half}" OMP_PROC_BIND=close OMP_PLACES=cores
record_run --output "${OUT}/concurrent_tiers/${pair}-ddr.json" --memory-mode flat \
  --memory-target ddr --socket-scope concurrent_tier_component --socket "${SOCKET}" \
  --cpu-bind "${ddr_cpus}" --mem-bind "${ddr_node}" --threads "${half}" \
  --working-set-bytes "${BYTES}" --pair-id "${pair}" -- \
  numactl --physcpubind="${ddr_cpus}" --membind="${ddr_node}" \
    "${BUILD_DIR}/stream_triad" --bytes "${BYTES}" --warmups 2 --repetitions 5 &
pid_a=$!
record_run --output "${OUT}/concurrent_tiers/${pair}-hbm.json" --memory-mode flat \
  --memory-target hbm --socket-scope concurrent_tier_component --socket "${SOCKET}" \
  --cpu-bind "${hbm_cpus}" --mem-bind "${hbm_node}" --threads "${half}" \
  --working-set-bytes "${BYTES}" --pair-id "${pair}" -- \
  numactl --physcpubind="${hbm_cpus}" --membind="${hbm_node}" \
    "${BUILD_DIR}/stream_triad" --bytes "${BYTES}" --warmups 2 --repetitions 5 &
pid_b=$!
status=0; wait "${pid_a}" || status=$?; wait "${pid_b}" || status=$?
exit "${status}"
