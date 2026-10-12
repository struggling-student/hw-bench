#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PYTHONPATH="${ROOT}/src${PYTHONPATH:+:${PYTHONPATH}}"
MODE="${1:?usage: collect_system_info.sh MODE OUTPUT_DIR}"
OUT="${2:?usage: collect_system_info.sh MODE OUTPUT_DIR}"
mkdir -p "${OUT}"
python3 -m hwbench.topology --expect-mode "${MODE}" --output "${OUT}/topology.json"
python3 -m hwbench.platform_record --output "${OUT}/platform.json"
if command -v lstopo-no-graphics >/dev/null; then
  lstopo-no-graphics --no-io >"${OUT}/lstopo.txt" 2>&1 || true
  lstopo-no-graphics --of xml "${OUT}/lstopo.xml" 2>/dev/null || true
fi
if command -v lstopo >/dev/null; then
  lstopo --no-io --of png "${OUT}/lstopo.png" 2>/dev/null || true
fi
{
  printf '=== os-release ===\n'
  cat /etc/os-release 2>/dev/null || true
  printf '\n=== slurm job ===\n'
  [[ -z "${SLURM_JOB_ID:-}" ]] || scontrol show job "${SLURM_JOB_ID}" 2>&1 || true
  printf '\n=== slurm node ===\n'
  scontrol show node "$(hostname -s)" 2>&1 || true
  printf '\n=== infiniband ===\n'
  ibstat 2>&1 || true
  printf '\n=== modules ===\n'
  bash -lc 'module -t list' 2>&1 | grep -viE 'password|expiration' || true
} >"${OUT}/site.txt" 2>&1
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
