#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
MODE="${1:?usage: collect_system_info.sh MODE OUTPUT_DIR}"
OUT="${2:?usage: collect_system_info.sh MODE OUTPUT_DIR}"
mkdir -p "${OUT}"
python3 -m hwbench.topology --expect-mode "${MODE}" --output "${OUT}/topology.json"
{
  hostname
  uname -a
  lscpu
  printf '\n=== lscpu extended ===\n'
  lscpu -e=CPU,NODE,SOCKET,CORE
  printf '\n=== numactl ===\n'
  numactl --hardware
  printf '\n=== memory ===\n'
  free -h
  cat /proc/meminfo
  printf '\n=== governor/frequency ===\n'
  for f in /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq; do [[ ! -r "$f" ]] || { printf '%s=' "$f"; cat "$f"; }; done
  printf '\n=== toolchain/tools ===\n'
  for command in gcc g++ icx icpx python3 perf numactl vtune advisor likwid-bench mlc apptainer; do command -v "$command" || true; done
  gcc --version 2>/dev/null | head -1 || true
  g++ --version 2>/dev/null | head -1 || true
  perf --version 2>/dev/null || true
  printf '\n=== libraries ===\n'
  ldconfig -p 2>/dev/null | grep -Ei 'dnnl|mkl|iomp|gomp' || true
  printf '\n=== environment ===\n'
  env | grep -E '^(OMP|KMP|MKL|DNNL)_' | sort || true
} >"${OUT}/system.txt" 2>&1
