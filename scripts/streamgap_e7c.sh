#!/usr/bin/env bash
# E7c of the Triad-gap investigation: E7 found no kernel change that lifts the HBM or DDR rate and
# left open why HBM stops at 640-655 GB/s. E6 pointed at the 350 W package limit setting the uncore
# clock. Here the main E7 configurations run again with a system-wide perf session beside every
# launch (controller bytes, package and DRAM energy, uncore clock, PCU power-limit cycles every
# 100 ms), so rate can be set against uncore clock and power per configuration: whether fewer cores
# or ymm vectors buy a faster uncore, and how the read:write mix and the data pattern move it.
# The session's workload is a `tail --pid` on the launch, so it ends with it. Configuration order
# rotates between repeats.
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
if [[ -n "$(squeue -h -w "$(hostname -s)" 2>/dev/null || true)" ]]; then
  log "foreign Slurm job on this node"; exit 1
fi
gcc -O3 -march=sapphirerapids -fopenmp -std=gnu11 -Wall -Wextra -o "${BUILD}/stream_gap" \
  "${STAGE}/benchmarks/streamgap/stream_gap.c"
EVENTS="$(python3 -c "import sys; sys.path.insert(0, '${STAGE}/src'); from hwbench import uncore; print(','.join(uncore.BASE_EVENTS.values()))")"
echo "${EVENTS}" >"${OUT}/system/perf_events.txt"
ARRAY_E=357913920  # elements per array of the thesis 8 GiB, three-array Triad
READ_E=1073741824  # doubles in the 8 GiB read working set of the thesis

# counted LABEL NODE CORES BIND args...: one launch with a perf session beside it
counted() {
  local label="$1" node="$2" cores="$3" bind="$4"
  shift 4
  OMP_NUM_THREADS="${cores}" OMP_PLACES=cores OMP_PROC_BIND="${bind}" \
    numactl --physcpubind=0-55 --membind="${node}" "${BUILD}/stream_gap" --label "${label}" "$@" \
    >"${OUT}/records/${label}.json" &
  local pid=$!
  sudo -n /usr/bin/perf stat -a --per-socket -I 100 -x, -e "${EVENTS}" \
    -- tail -s 0.1 --pid="${pid}" -f /dev/null >"${OUT}/records/${label}.perf.csv" 2>&1
  wait "${pid}"
  gzip -n "${OUT}/records/${label}.perf.csv"
}

# One configuration per line: tier|name|cores|bind|width|store|unroll|reads|init|pad
configs=()
add() { configs+=("$1|$2|${3:-56}|${4:-close}|${5:-512}|${6:-nt}|${7:-8}|${8:-2}|${9:-const}|${10:-0}"); }
for tier in hbm ddr; do
  add "${tier}" ref_u8
  add "${tier}" reads_1 56 close 512 nt 8 1
  add "${tier}" data_varied_u8 56 close 512 nt 8 2 varied
  add "${tier}" cores_28 28 close
done
add hbm reads_4 56 close 512 nt 8 4
add hbm cores_36 36 close
add hbm cores_42 42 close
add hbm cores_48 48 close
add hbm cores_52 52 close
add hbm width256_u8 56 close 256 nt 8
add hbm store_reg_u8 56 close 512 reg 8
add hbm pad_67 56 close 512 nt 8 2 const 67

total=${#configs[@]}
for rep in $(seq 1 "${REPEATS}"); do
  log "repeat ${rep}"
  shift_by=$(( (rep - 1) * total / REPEATS ))
  for k in $(seq 0 $((total - 1))); do
    i=$(( (k + shift_by) % total ))
    IFS='|' read -r tier name cores bind width store unroll reads init pad <<<"${configs[$i]}"
    node=2; ntimes=300
    if [[ "${tier}" == ddr ]]; then node=0; ntimes=150; fi
    counted "e7c_${tier}_${name}_r${rep}" "${node}" "${cores}" "${bind}" --kernel mix --width "${width}" \
      --store "${store}" --unroll "${unroll}" --reads "${reads}" --pad "${pad:-0}" --init "${init}" \
      --elements "${ARRAY_E}" --ntimes "${ntimes}"
  done
  # the read-only kernel with constants, the E6 reference, once per repeat on each tier
  counted "e7c_hbm_read_const_r${rep}" 2 56 close --kernel read --init const --elements "${READ_E}" --ntimes 300
  counted "e7c_ddr_read_const_r${rep}" 0 56 close --kernel read --init const --elements "${READ_E}" --ntimes 150
done
touch "${OUT}/COMPLETED"
log done
