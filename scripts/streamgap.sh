#!/usr/bin/env bash
# Why is the Flat HBM Triad below the published STREAM Triad? Tests E0-E3 of docs/STREAMGAP.md on
# the dedicated Flat node, outside Slurm, started by streamgap_submit.sh inside tmux.
#   E0  node state (THP, governor, uncore range, compilers) and huge pages in use during a run
#   E1  array size, and STREAM's best-of-N against the median, from the per-iteration times
#   E2  the vendored, unmodified stream.c: GCC and Intel icx, close and spread placement
#   E3  kernel variants: compiler loop, unrolled intrinsics, non-temporal, software prefetch
# The thesis kernel (hardware --kind triad_nt) is re-measured at the start, middle and end, so a
# drifting node shows as a drifting baseline.
set -euo pipefail
STAGE="${1:?staged source tree}"
OUT="${2:?output directory}"
REPEATS="${STREAMGAP_REPEATS:-3}"
NODE_HBM=2 # HBM node of socket 0 on CRESCO8 (campaign topology.json)
CPUS=0-55
mkdir -p "${OUT}/records" "${OUT}/system" "${OUT}/build"
BUILD="${OUT}/build"
log() { echo "[$(date -u +%H:%M:%S)] $*" | tee -a "${OUT}/run.log"; }

for _ in $(seq 1 120); do
  awk '{exit !($1 < 0.5)}' /proc/loadavg && break
  sleep 5
done
awk '{exit !($1 < 0.5)}' /proc/loadavg || { log "node not idle: $(cat /proc/loadavg)"; exit 1; }
if [[ -n "$(squeue -h -w "$(hostname -s)" 2>/dev/null || true)" ]]; then
  log "foreign Slurm job on this node"; exit 1
fi

# ---- E0: node state
{
  echo "host $(hostname) $(date -u +%FT%TZ) load $(cat /proc/loadavg)"
  echo "thp_enabled $(cat /sys/kernel/mm/transparent_hugepage/enabled)"
  echo "thp_defrag $(cat /sys/kernel/mm/transparent_hugepage/defrag)"
  echo "governor $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor) driver $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver)"
  echo "cpufreq_min_max_khz $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq) $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq)"
  for d in /sys/devices/system/cpu/intel_uncore_frequency/package_*; do
    echo "uncore $(basename "$d") min_khz $(cat "$d/min_freq_khz") max_khz $(cat "$d/max_freq_khz")"
  done
  echo "perf_event_paranoid $(cat /proc/sys/kernel/perf_event_paranoid)"
  lscpu | grep -E "Model name|MHz"
} >"${OUT}/system/node_state.txt"

# ---- builds
GCCFLAGS=(-O3 -march=sapphirerapids -fopenmp)
gcc "${GCCFLAGS[@]}" -std=gnu11 -Wall -Wextra -o "${BUILD}/stream_gap" "${STAGE}/benchmarks/streamgap/stream_gap.c"
g++ "${GCCFLAGS[@]}" -std=c++17 -mamx-tile -mamx-bf16 -mamx-int8 -mavx512bf16 -mavx512vnni \
  -o "${BUILD}/hardware" "${STAGE}/benchmarks/hardware.cpp"
STREAMC="${STAGE}/third_party/stream/stream.c"
sha256sum "${STREAMC}" >"${OUT}/system/stream_c.sha256"
# STREAM_ARRAY_SIZE is in elements per array; 160M = 1.2 GiB per array, 3.6 GiB in all (STREAM's
# rule of thumb is four times the last-level cache, 105 MB per socket here, and then some).
build_stream() { # name size compiler flags...
  local name="$1" size="$2"; shift 2
  "$@" -DSTREAM_ARRAY_SIZE="${size}" -DNTIMES=100 -mcmodel=medium -o "${BUILD}/${name}" "${STREAMC}"
}
build_stream stream_gcc_160M 160000000 gcc "${GCCFLAGS[@]}"
build_stream stream_gcc_10M 10000000 gcc "${GCCFLAGS[@]}"
ICX=0
if [[ -f /opt/intel/oneapi2025.3/setvars.sh ]]; then
  # shellcheck disable=SC1091
  set +u; source /opt/intel/oneapi2025.3/setvars.sh >/dev/null 2>&1 || true; set -u
  if command -v icx >/dev/null; then
    ICX=1
    icx --version | head -1 >"${OUT}/system/icx_version.txt"
    IFLAGS=(icx -O3 -xSAPPHIRERAPIDS -qopenmp -qopt-zmm-usage=high)
    build_stream stream_icx_auto_160M 160000000 "${IFLAGS[@]}"
    build_stream stream_icx_ss_160M 160000000 "${IFLAGS[@]}" -qopt-streaming-stores=always
    build_stream stream_icx_nss_160M 160000000 "${IFLAGS[@]}" -qopt-streaming-stores=never
    build_stream stream_icx_auto_10M 10000000 "${IFLAGS[@]}"
    build_stream stream_icx_ss_10M 10000000 "${IFLAGS[@]}" -qopt-streaming-stores=always
  fi
fi
gcc --version | head -1 >"${OUT}/system/gcc_version.txt"
log "built (icx=${ICX})"

run_bound() { # proc_bind then command...
  local bind="$1"; shift
  OMP_NUM_THREADS=56 OMP_PLACES=cores OMP_PROC_BIND="${bind}" \
    numactl --physcpubind="${CPUS}" --membind="${NODE_HBM}" "$@"
}
gap() { # label extra args...  -> one JSON record
  local label="$1"; shift
  run_bound close "${BUILD}/stream_gap" --label "${label}" "$@" >"${OUT}/records/${label}.json"
}
baseline() { # tag
  run_bound close "${BUILD}/hardware" --kind triad_nt --seconds 1 --repetitions 5 --bytes 8589934592 \
    >"${OUT}/records/base_hw_triad_nt_$1.json"
  run_bound close "${BUILD}/hardware" --kind triad --seconds 1 --repetitions 5 --bytes 8589934592 \
    >"${OUT}/records/base_hw_triad_$1.json"
}
ntimes_for() { # elements -> iterations that last about 3 s at 500 GB/s
  python3 -c "import sys; e=int(sys.argv[1]); print(max(20, min(400, int(3.0/(24*e/500e9)))))" "$1"
}

E3_SIZE=160000000
THESIS_SIZE=357913920 # elements per array of the 8 GiB, three-array Triad of the campaign
baseline start
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  # ---- E2: vendored stream.c, as built by an ordinary user
  stream_runs=(stream_gcc_160M stream_gcc_10M)
  if [[ "${ICX}" == 1 ]]; then
    stream_runs+=(stream_icx_auto_160M stream_icx_ss_160M stream_icx_nss_160M stream_icx_auto_10M stream_icx_ss_10M)
  fi
  for exe in "${stream_runs[@]}"; do
    for bind in close spread; do
      run_bound "${bind}" "${BUILD}/${exe}" >"${OUT}/records/e2_${exe}_${bind}_r${rep}.txt"
    done
  done
  # ---- E1: array size, compiler loop and the best unrolled non-temporal kernel
  for e in 10000000 40000000 160000000 320000000 640000000 1280000000; do
    n=$(ntimes_for "${e}")
    gap "e1_triad_plain_e${e}_r${rep}" --kernel triad --variant plain --store reg --elements "${e}" --ntimes "${n}"
    gap "e1_triad_u4nt_e${e}_r${rep}" --kernel triad --variant u4 --store nt --elements "${e}" --ntimes "${n}"
  done
  # ---- E3: kernel variants at one size, and at the thesis size for the two that matter
  n=$(ntimes_for "${E3_SIZE}")
  for spec in "plain reg" "u1 reg" "u1 nt" "u4 reg" "u4 nt"; do
    set -- ${spec}
    gap "e3_triad_${1}_${2}_r${rep}" --kernel triad --variant "$1" --store "$2" --elements "${E3_SIZE}" --ntimes "${n}"
  done
  for store in reg nt; do
    for d in 8 16 32 64; do
      gap "e3_triad_u4_${store}_pf${d}t0_r${rep}" --kernel triad --variant u4 --store "${store}" --pf "${d}" --hint 0 --elements "${E3_SIZE}" --ntimes "${n}"
    done
  done
  for d in 16 32 64; do
    gap "e3_triad_u4_nt_pf${d}t1_r${rep}" --kernel triad --variant u4 --store nt --pf "${d}" --hint 1 --elements "${E3_SIZE}" --ntimes "${n}"
  done
  for spec in "plain reg" "u4 reg" "u4 nt"; do
    set -- ${spec}
    gap "e3_copy_${1}_${2}_r${rep}" --kernel copy --variant "$1" --store "$2" --elements "${E3_SIZE}" --ntimes "${n}"
  done
  gap "e3_copy_u4_nt_pf32t0_r${rep}" --kernel copy --variant u4 --store nt --pf 32 --hint 0 --elements "${E3_SIZE}" --ntimes "${n}"
  nt=$(ntimes_for "${THESIS_SIZE}")
  gap "e3_triad_u4_nt_thesis_r${rep}" --kernel triad --variant u4 --store nt --elements "${THESIS_SIZE}" --ntimes "${nt}"
  gap "e3_triad_plain_thesis_r${rep}" --kernel triad --variant plain --store reg --elements "${THESIS_SIZE}" --ntimes "${nt}"
  [[ "${rep}" == 2 ]] && baseline mid
done
baseline end
touch "${OUT}/COMPLETED"
log "done"
