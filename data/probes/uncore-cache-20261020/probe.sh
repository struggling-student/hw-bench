#!/usr/bin/env bash
# Node checks and event probe on the Cache node; run under srun on cresco8-hbm13.
set -uo pipefail
DIR="${1:?probe dir}"
HW="${2:?hardware binary}"
OUT="${DIR}/out"
mkdir -p "${OUT}"
{
  echo "== host"; hostname; uname -r; date -u
  echo "== sudo"; sudo -n -l 2>&1 | tail -4
  echo "== numa"; numactl -H | head -12
  echo "== paranoid"; cat /proc/sys/kernel/perf_event_paranoid
  echo "== pmus"; ls /sys/bus/event_source/devices | grep -E "m2m|type_14|imc|power|cha_0$|pcu|upi" | sort -V | tr "\n" " "; echo
  echo "== rapl"; for f in /sys/class/powercap/intel-rapl:0/constraint_*_{name,power_limit_uw,time_window_us}; do echo "$f $(cat $f 2>&1)"; done
  echo "== uncore freq"; for d in /sys/devices/system/cpu/intel_uncore_frequency/package_0*_die_00; do echo "$d min=$(cat $d/min_freq_khz) max=$(cat $d/max_freq_khz) init_max=$(cat $d/initial_max_freq_khz 2>/dev/null)"; done
  echo "== hmat"; for n in /sys/devices/system/node/node0/memory_side_cache/index*; do echo "$n size=$(cat $n/size) line=$(cat $n/line_size) indexing=$(cat $n/indexing) write=$(cat $n/write_policy)"; done
  echo "== turbostat"; timeout 20 sudo -n /usr/bin/turbostat --quiet --num_iterations 1 --interval 1 --show Package,Bzy_MHz,PkgWatt,RAMWatt,UncMHz 2>&1 | head -8
  echo "== ipmitool"; timeout 30 sudo -n /usr/bin/ipmitool sensor 2>&1 | grep -i -E "power|pwr|watt|temp" | head -12
  echo "== clocks idle 2s (imc dclk, hbm clk)"
  timeout 30 sudo -n /usr/bin/perf stat -a --per-socket -x, -e uncore_imc/event=0x01,name=imc_clk/,uncore_type_14/event=0x01,name=hbm_clk/ -- sleep 2 2>&1 | tail -4
} > "${OUT}/node.txt" 2>&1
cat "${OUT}/node.txt"
python3 "${DIR}/probe.py" "${HW}" "${OUT}"
