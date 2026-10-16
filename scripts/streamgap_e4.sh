#!/usr/bin/env bash
# E4 of the Triad-gap investigation: what makes the thesis kernel (hardware --kind triad_nt, 554
# GB/s) slower than the same non-temporal Triad in stream_gap? Two differences are isolated:
# the pointer reloads of the lambda in hardware.cpp (variant u1r) and the initial data (arithmetic
# patterns instead of constants), and a 10 s run checks whether the gap is sustained.
set -euo pipefail
STAGE="${1:?staged source tree}"
OUT="${2:?output directory}"
REPEATS="${STREAMGAP_REPEATS:-3}"
mkdir -p "${OUT}/records" "${OUT}/system" "${OUT}/build"
BUILD="${OUT}/build"
log() { echo "[$(date -u +%H:%M:%S)] $*" | tee -a "${OUT}/run.log"; }
for _ in $(seq 1 120); do
  awk '{exit !($1 < 0.5)}' /proc/loadavg && break
  sleep 5
done
awk '{exit !($1 < 0.5)}' /proc/loadavg || { log "node not idle: $(cat /proc/loadavg)"; exit 1; }
FLAGS=(-O3 -march=sapphirerapids -fopenmp)
gcc "${FLAGS[@]}" -std=gnu11 -Wall -Wextra -o "${BUILD}/stream_gap" "${STAGE}/benchmarks/streamgap/stream_gap.c"
g++ "${FLAGS[@]}" -std=c++17 -mamx-tile -mamx-bf16 -mamx-int8 -mavx512bf16 -mavx512vnni \
  -o "${BUILD}/hardware" "${STAGE}/benchmarks/hardware.cpp"
run_bound() {
  OMP_NUM_THREADS=56 OMP_PLACES=cores OMP_PROC_BIND=close \
    numactl --physcpubind=0-55 --membind=2 "$@"
}
gap() { local label="$1"; shift; run_bound "${BUILD}/stream_gap" --label "${label}" "$@" >"${OUT}/records/${label}.json"; }
base() { run_bound "${BUILD}/hardware" --kind "$1" --seconds 1 --repetitions 5 --bytes 8589934592 >"${OUT}/records/base_hw_$1_$2.json"; }
E=357913920 # elements per array of the thesis 8 GiB Triad
N=250       # about 2.5 s
base triad_nt start
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  for init in const varied; do
    gap "e4_u4nt_${init}_r${rep}" --kernel triad --variant u4 --store nt --init "${init}" --elements "${E}" --ntimes "${N}"
    gap "e4_u1nt_${init}_r${rep}" --kernel triad --variant u1 --store nt --init "${init}" --elements "${E}" --ntimes "${N}"
    gap "e4_u1rnt_${init}_r${rep}" --kernel triad --variant u1r --store nt --init "${init}" --elements "${E}" --ntimes "${N}"
    gap "e4_plain_${init}_r${rep}" --kernel triad --variant plain --store reg --init "${init}" --elements "${E}" --ntimes "${N}"
  done
  for init in const varied; do
    gap "e4_long_u4nt_${init}_r${rep}" --kernel triad --variant u4 --store nt --init "${init}" --elements "${E}" --ntimes 1000
  done
  base triad_nt "r${rep}"
done
touch "${OUT}/COMPLETED"
log done
