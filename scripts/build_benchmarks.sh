#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD="${ROOT}/build"
mkdir -p "${BUILD}"
CXX="${CXX:-g++}"
COMMON=(-O3 -march=native -fopenmp -std=c++17 -Wall -Wextra)
set -x
"${CXX}" "${COMMON[@]}" -o "${BUILD}/stream_triad" "${ROOT}/benchmarks/stream/stream_triad.cpp"
"${CXX}" "${COMMON[@]}" -mavx512f -mfma -o "${BUILD}/compute_peak" "${ROOT}/benchmarks/avx512/compute_peak.cpp"
"${CXX}" "${COMMON[@]}" -mamx-tile -mamx-bf16 -mamx-int8 -o "${BUILD}/amx_peak" "${ROOT}/benchmarks/amx/amx_peak.cpp"
"${CXX}" "${COMMON[@]}" -mavx512f -mfma -ffp-contract=fast -o "${BUILD}/intensity" "${ROOT}/benchmarks/roofline_sweep/intensity.cpp"
set +x
objdump -d "${BUILD}/compute_peak" >"${BUILD}/compute_peak.asm"
objdump -d "${BUILD}/amx_peak" >"${BUILD}/amx_peak.asm"
grep -Eq 'vfmadd[^[:space:]]*[[:space:]].*%zmm' "${BUILD}/compute_peak.asm" || { echo 'AVX-512 FMA verification failed' >&2; exit 1; }
grep -q 'tdpbf16ps' "${BUILD}/amx_peak.asm" || { echo 'AMX BF16 verification failed' >&2; exit 1; }
grep -q 'tdpbssd' "${BUILD}/amx_peak.asm" || { echo 'AMX INT8 verification failed' >&2; exit 1; }
{
  printf '{\n  "compiler": '
  "${CXX}" --version | head -1 | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read().strip())+",")'
  printf '  "flags": "-O3 -march=native -fopenmp -std=c++17",\n'
  printf '  "verification": {"avx512_fma": true, "amx_bf16": true, "amx_int8": true}\n}\n'
} >"${BUILD}/build_metadata.json"
