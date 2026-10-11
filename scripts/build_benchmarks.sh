#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD="${HW_BENCH_BUILD_DIR:-${ROOT}/build}"
mkdir -p "${BUILD}"
CXX="${CXX:-g++}"
FLAGS=(-O3 -march=native -fopenmp -std=c++17 -Wall -Wextra -mavx512f -mfma -mamx-tile -mamx-bf16)
"${CXX}" "${FLAGS[@]}" -o "${BUILD}/hardware" "${ROOT}/benchmarks/hardware.cpp"
objdump -d "${BUILD}/hardware" >"${BUILD}/hardware.asm"
rg_cmd=grep
"${rg_cmd}" -Eq 'vfmadd[^[:space:]]*[[:space:]].*%zmm' "${BUILD}/hardware.asm"
"${rg_cmd}" -q 'tdpbf16ps' "${BUILD}/hardware.asm"
"${CXX}" --version | head -1 | python3 -c 'import json,sys; print(json.dumps({"compiler":sys.stdin.read().strip(),"flags":"-O3 -march=native -fopenmp -std=c++17 -Wall -Wextra -mavx512f -mfma -mamx-tile -mamx-bf16","verification":{"avx512_fma":True,"amx_bf16":True}},indent=2))' >"${BUILD}/build_metadata.json"
