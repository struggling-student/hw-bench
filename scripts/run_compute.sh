#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${HERE}/_common.sh"
MODE="${1:?usage: run_compute.sh cache|flat OUTPUT_DIR}"
OUT="${2:?usage: run_compute.sh cache|flat OUTPUT_DIR}"
require_binaries
mkdir -p "${OUT}/compute"
TOPOLOGY="${OUT}/system/topology.json"
export OMP_PROC_BIND=close OMP_PLACES=cores
read -r -a THREAD_CANDIDATES <<<"${COMPUTE_THREADS:-1 2 4 8 14 28 56}"
read -r -a KERNELS <<<"${COMPUTE_KERNELS:-avx512_fp32 avx512_fp64 amx_bf16 amx_int8}"

run_compute_one() {
  local socket=$1 threads=$2 kernel=$3 repetition=$4 scope=$5 pair=${6:-}
  local cpus cpu_node binary args file notes=""
  cpus="$(cpu_list_for "${TOPOLOGY}" "${socket}" "${threads}")"
  cpu_node="$(socket_field "${TOPOLOGY}" "${socket}" cpu_nodes)"
  case "${kernel}" in
    avx512_fp32) binary="${BUILD_DIR}/compute_peak"; args=(--mode fp32 --iterations 300000000) ;;
    avx512_fp64) binary="${BUILD_DIR}/compute_peak"; args=(--mode fp64 --iterations 300000000) ;;
    amx_bf16)
      if [[ -n "${AMX_CONTAINER:-}" && "${AMX_BF16_IMPL:-onednn}" != native ]]; then
        # GNU OpenMP binding variables caused oneDNN 3.12 to serialize this
        # kernel on CRESCO8. NUMA/CPU affinity is already enforced by numactl;
        # remove only the inner runtime variables and retain this choice in raw metadata.
        binary=env; args=(-u OMP_PROC_BIND -u OMP_PLACES apptainer exec --bind "${SCRIPT_ROOT}:${SCRIPT_ROOT}:ro" "${AMX_CONTAINER}" python3 "${SCRIPT_ROOT}/benchmarks/amx/torch_amx.py" --dtype bf16 --size 6144 --warmups 3)
        notes="onednn_numactl_only_omp_affinity_unset"
      else
        binary="${BUILD_DIR}/amx_peak"; args=(--mode bf16 --outer 250000 --inner 256)
      fi ;;
    amx_int8)
      # torch._int_mm reports oneDNN's generic gemm_api rather than an AMX
      # implementation name on this image, so it cannot meet our verification
      # rule. Use the disassembly-verified native AMX INT8 ceiling instead.
      binary="${BUILD_DIR}/amx_peak"; args=(--mode int8 --outer 125000 --inner 256) ;;
    *) die "unknown kernel ${kernel}" ;;
  esac
  file="${OUT}/compute/${scope}-socket${socket}-${kernel}-t${threads}-r${repetition}-$(stamp).json"
  OMP_NUM_THREADS="${threads}" DNNL_VERBOSE="${DNNL_VERBOSE:-1}" record_run --output "${file}" --memory-mode "${MODE}" \
    --memory-target registers --socket-scope "${scope}" --socket "${socket}" \
    --cpu-bind "${cpus}" --mem-bind "${cpu_node}" --threads "${threads}" --repetition "${repetition}" \
    --notes "${notes}" ${pair:+--pair-id "${pair}"} -- numactl --physcpubind="${cpus}" --membind="${cpu_node}" "${binary}" "${args[@]}"
}

SOCKET_COUNT="$(topology_value "${TOPOLOGY}" 'd["socket_count"]')"
for ((socket=0; socket<SOCKET_COUNT; ++socket)); do
  cores="$(socket_field "${TOPOLOGY}" "${socket}" physical_cores)"
  for threads in "${THREAD_CANDIDATES[@]}"; do
    (( threads <= cores )) || continue
    for kernel in "${KERNELS[@]}"; do
      for repetition in 1 2 3 4 5; do run_compute_one "${socket}" "${threads}" "${kernel}" "${repetition}" single; done
    done
  done
done

if (( SOCKET_COUNT > 1 )); then
  for kernel in "${KERNELS[@]}"; do
    for repetition in 1 2 3 4 5; do
      pair="${MODE}-${kernel}-${repetition}-$(stamp)"; pids=()
      for ((socket=0; socket<SOCKET_COUNT; ++socket)); do
        cores="$(socket_field "${TOPOLOGY}" "${socket}" physical_cores)"
        run_compute_one "${socket}" "${cores}" "${kernel}" "${repetition}" dual_component "${pair}" & pids+=("$!")
      done
      status=0; for pid in "${pids[@]}"; do wait "${pid}" || status=$?; done
      (( status == 0 )) || exit "${status}"
    done
  done
fi
