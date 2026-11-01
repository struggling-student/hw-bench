#!/usr/bin/env bash
# E7 of the Triad-gap investigation: how close to the memory's limit can a kernel get? E0-E6 found
# the thesis Triad (554 GB/s) 21% under the published STREAM figure and explained it; E7 goes on from
# there and looks for the highest sustained rate on each tier, one factor at a time from the E4
# kernel (Triad, 4 lines, non-temporal, constants, 56 cores):
#   unroll      1, 2, 4, 8, 16 cache lines per iteration
#   pad         stagger of the arrays' start addresses (every array otherwise starts on a 2 MiB
#               boundary, so a, b and c hit the same channel and bank offset at the same time)
#   reads       read:write mix, 1 (Copy) to 4 read streams per write stream
#   width       zmm against ymm vectors (fewer core watts under the 350 W package limit)
#   store       ordinary against non-temporal stores
#   cores       fewer cores leave more of the power budget to the uncore clock (E6), close and spread
#   data        constants, thesis pattern, random
# on HBM (node 2) and on DDR (node 0) of socket 0, with the thesis kernel and the vendored STREAM
# as references at the start and end. The order of the configurations rotates between repeats.
# A short smoke phase runs every kernel on a small array first: the harness checks each element, and
# a wrong result stops the campaign before the long runs.
set -euo pipefail
STAGE="${1:?staged source tree}"
OUT="${2:?output directory}"
REPEATS="${STREAMGAP_REPEATS:-3}"
HBM_NODE=2
DDR_NODE=0
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
{
  echo "host $(hostname) $(date -u +%FT%TZ) load $(cat /proc/loadavg)"
  echo "governor $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)"
  for d in /sys/devices/system/cpu/intel_uncore_frequency/package_*; do
    echo "uncore $(basename "$d") min_khz $(cat "$d/min_freq_khz") max_khz $(cat "$d/max_freq_khz")"
  done
  gcc --version | head -1
} >"${OUT}/system/node_state.txt"

FLAGS=(-O3 -march=sapphirerapids -fopenmp)
gcc "${FLAGS[@]}" -std=gnu11 -Wall -Wextra -o "${BUILD}/stream_gap" "${STAGE}/benchmarks/streamgap/stream_gap.c"
g++ "${FLAGS[@]}" -std=c++17 -mamx-tile -mamx-bf16 -mamx-int8 -mavx512bf16 -mavx512vnni \
  -o "${BUILD}/hardware" "${STAGE}/benchmarks/hardware.cpp"
STREAMC="${STAGE}/third_party/stream/stream.c"
gcc "${FLAGS[@]}" -DSTREAM_ARRAY_SIZE=160000000 -DNTIMES=100 -mcmodel=medium -o "${BUILD}/stream_gcc_160M" "${STREAMC}"

# bound CORES BIND NODE command...: CORES threads on cores 0-55 of socket 0, memory on NODE.
bound() {
  local n="$1" bind="$2" node="$3"
  shift 3
  OMP_NUM_THREADS="${n}" OMP_PLACES=cores OMP_PROC_BIND="${bind}" \
    numactl --physcpubind=0-55 --membind="${node}" "$@"
}

# ---- smoke: every kernel on 16 MiB arrays and 4 threads, results checked element by element
log "smoke"
for width in 512 256; do
  for store in reg nt; do
    for unroll in 1 2 4 8 16; do
      for reads in 1 2 3 4; do
        bound 4 close "${HBM_NODE}" "${BUILD}/stream_gap" --label smoke --kernel mix --width "${width}" \
          --store "${store}" --unroll "${unroll}" --reads "${reads}" --pad 3 --init varied \
          --elements 2097152 --ntimes 3 >>"${OUT}/system/smoke.jsonl" \
          || { log "smoke failed: width ${width} ${store} u${unroll} k${reads}"; exit 1; }
      done
    done
  done
done
log "smoke passed"

READ_E=1073741824  # doubles in the 8 GiB read working set of the thesis
ARRAY_E=357913920  # elements per array of the thesis 8 GiB, three-array Triad

# One configuration per line: name|cores|bind|width|store|unroll|reads|pad|init
configs=()
add() { configs+=("$1|${2:-56}|${3:-close}|${4:-512}|${5:-nt}|${6:-4}|${7:-2}|${8:-0}|${9:-const}"); }
add ref_u4
for u in 1 2 8 16; do add "unroll_${u}" 56 close 512 nt "${u}"; done
for p in 1 4 16 64 67 1031; do add "pad_${p}" 56 close 512 nt 8 2 "${p}"; done
for k in 1 3 4; do add "reads_${k}" 56 close 512 nt 8 "${k}"; done
add width256_u4 56 close 256 nt 4
add width256_u8 56 close 256 nt 8
add store_reg_u8 56 close 512 reg 8
for n in 28 36 42 48 52; do
  add "cores_${n}_close" "${n}" close 512 nt 8
  add "cores_${n}_spread" "${n}" spread 512 nt 8
done
add data_varied_u8 56 close 512 nt 8 2 0 varied
add data_random_u8 56 close 512 nt 8 2 0 random
add ref_u8 56 close 512 nt 8

run_config() { # tier node ntimes rep index
  local tier="$1" node="$2" ntimes="$3" rep="$4" i="$5"
  local name cores bind width store unroll reads pad init
  IFS='|' read -r name cores bind width store unroll reads pad init <<<"${configs[$i]}"
  local label="e7_${tier}_${name}_r${rep}"
  bound "${cores}" "${bind}" "${node}" "${BUILD}/stream_gap" --label "${label}" --kernel mix \
    --width "${width}" --store "${store}" --unroll "${unroll}" --reads "${reads}" --pad "${pad}" \
    --init "${init}" --elements "${ARRAY_E}" --ntimes "${ntimes}" >"${OUT}/records/${label}.json"
}

references() { # tag
  bound 56 close "${HBM_NODE}" "${BUILD}/hardware" --kind triad_nt --seconds 1 --repetitions 5 \
    --bytes 8589934592 >"${OUT}/records/base_hw_hbm_triad_nt_$1.json"
  bound 56 close "${DDR_NODE}" "${BUILD}/hardware" --kind triad_nt --seconds 1 --repetitions 5 \
    --bytes 8589934592 >"${OUT}/records/base_hw_ddr_triad_nt_$1.json"
  bound 56 close "${HBM_NODE}" "${BUILD}/stream_gcc_160M" >"${OUT}/records/base_stream_hbm_$1.txt"
  bound 56 close "${DDR_NODE}" "${BUILD}/stream_gcc_160M" >"${OUT}/records/base_stream_ddr_$1.txt"
}

references start
total=${#configs[@]}
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  shift_by=$(( (rep - 1) * total / REPEATS ))
  for k in $(seq 0 $((total - 1))); do
    i=$(( (k + shift_by) % total ))
    run_config hbm "${HBM_NODE}" 300 "${rep}" "${i}"
    run_config ddr "${DDR_NODE}" 150 "${rep}" "${i}"
  done
done
references end
touch "${OUT}/COMPLETED"
log done
