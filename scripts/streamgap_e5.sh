#!/usr/bin/env bash
# E5 of the Triad-gap investigation: does the data pattern also move the read-only HBM ceiling (the
# ceiling every LLM statement uses)? The read kernel of hardware.cpp is reproduced in stream_gap and
# run with the thesis data (varied), constants, random mantissas and zeros, with the thesis kernel
# (hardware --kind read) as the reference at start and end. The non-temporal Triad is run with the
# same patterns. The pattern order rotates between repeats so run order cannot favour one.
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
READ_E=1073741824   # doubles in the 8 GiB read working set of the thesis
TRIAD_E=357913920   # elements per array of the thesis 8 GiB Triad
inits=(varied const random zero)
base read start
base triad_nt start
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  for k in 0 1 2 3; do
    init="${inits[$(( (k + rep - 1) % 4 ))]}"
    gap "e5_read_${init}_r${rep}" --kernel read --init "${init}" --elements "${READ_E}" --ntimes 200
    gap "e5_triadnt_${init}_r${rep}" --kernel triad --variant u4 --store nt --init "${init}" --elements "${TRIAD_E}" --ntimes 250
  done
  for init in varied const; do
    gap "e5_long_read_${init}_r${rep}" --kernel read --init "${init}" --elements "${READ_E}" --ntimes 600
  done
  base read "r${rep}"
done
base triad_nt end
touch "${OUT}/COMPLETED"
log done
