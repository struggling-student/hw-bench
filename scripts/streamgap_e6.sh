#!/usr/bin/env bash
# E6 of the Triad-gap investigation: the data-pattern effect of E5 with the privileged uncore
# counters (hwbench.uncore) that E0 could not read. The read-only kernel of hardware.cpp, as
# reproduced in stream_gap, runs with the thesis data (varied), constants, random mantissas and
# zeros on HBM and, untested in E5, on DDR; a system-wide perf session beside every launch reads
# controller bytes, package and DRAM energy, the uncore clock and the PCU's power-limit cycles
# every 100 ms. The session's workload is a `tail --pid` on the launch, so it ends with it. The
# pattern order rotates between repeats so run order cannot favour one.
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
gcc -O3 -march=sapphirerapids -fopenmp -std=gnu11 -Wall -Wextra -o "${BUILD}/stream_gap" \
  "${STAGE}/benchmarks/streamgap/stream_gap.c"
EVENTS="$(python3 -c "import sys; sys.path.insert(0, '${STAGE}/src'); from hwbench import uncore; print(','.join(uncore.BASE_EVENTS.values()))")"
echo "${EVENTS}" >"${OUT}/system/perf_events.txt"
counted() {
  local label="$1" node="$2"
  shift 2
  OMP_NUM_THREADS=56 OMP_PLACES=cores OMP_PROC_BIND=close \
    numactl --physcpubind=0-55 --membind="${node}" "${BUILD}/stream_gap" --label "${label}" "$@" \
    >"${OUT}/records/${label}.json" &
  local pid=$!
  sudo -n /usr/bin/perf stat -a --per-socket -I 100 -x, -e "${EVENTS}" \
    -- tail -s 0.1 --pid="${pid}" -f /dev/null >"${OUT}/records/${label}.perf.csv" 2>&1
  wait "${pid}"
  gzip -n "${OUT}/records/${label}.perf.csv"
}
READ_E=1073741824 # doubles in the 8 GiB read working set of the thesis
inits=(varied const random zero)
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  for k in 0 1 2 3; do
    init="${inits[$(((k + rep - 1) % 4))]}"
    counted "e6_read_hbm_${init}_r${rep}" 2 --kernel read --init "${init}" --elements "${READ_E}" --ntimes 600
    counted "e6_read_ddr_${init}_r${rep}" 0 --kernel read --init "${init}" --elements "${READ_E}" --ntimes 300
  done
done
touch "${OUT}/COMPLETED"
log done
