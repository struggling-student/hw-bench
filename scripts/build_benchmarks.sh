#!/usr/bin/env bash
# Build benchmarks/hardware.cpp and prove from the disassembly that each kernel
# really uses the instruction it claims to measure.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD="${HW_BENCH_BUILD_DIR:-${ROOT}/build}"
mkdir -p "${BUILD}"
CXX="${CXX:-g++}"
FLAGS=(-O3 -march=sapphirerapids -fopenmp -std=c++17 -Wall -Wextra -mamx-tile -mamx-bf16 -mamx-int8 -mavx512bf16 -mavx512vnni)
"${CXX}" "${FLAGS[@]}" -o "${BUILD}/hardware" "${ROOT}/benchmarks/hardware.cpp"
objdump -d "${BUILD}/hardware" >"${BUILD}/hardware.asm"
ASM="${BUILD}/hardware.asm"
# name:pattern pairs; every pattern must appear in the executable code.
declare -A CHECKS=(
  [avx512_fma]='vfmadd[^[:space:]]*[[:space:]].*%zmm'
  [amx_bf16]='tdpbf16ps'
  [amx_int8]='tdpbssd'
  [avx512_vnni]='vpdpbusd[[:space:]].*%zmm'
  [avx512_bf16]='vdpbf16ps[[:space:]].*%zmm'
  [nt_store]='vmovntpd[[:space:]].*%zmm'
)
verification="{"
for name in "${!CHECKS[@]}"; do
  grep -Eq "${CHECKS[$name]}" "${ASM}" || { echo "missing ${name} in disassembly" >&2; exit 1; }
  verification+="\"${name}\": true, "
done
verification="${verification%, }}"
"${CXX}" --version | head -1 | VERIFICATION="${verification}" FLAGS="${FLAGS[*]}" python3 -c '
import json, os, sys
print(json.dumps({"compiler": sys.stdin.read().strip(), "flags": os.environ["FLAGS"],
                  "verification": json.loads(os.environ["VERIFICATION"])}, indent=2, sort_keys=True))
' >"${BUILD}/build_metadata.json"
