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
# Every kernel's instruction must sit in an innermost loop with at least as many copies as
# the kernel has chains or tiles (src/hwbench/disasm.py); a whole-binary grep would also be
# satisfied by a function that is never timed.
verification="$(PYTHONPATH="${ROOT}/src" python3 -m hwbench.disasm "${ASM}")" || {
  echo "disassembly check failed (see above)" >&2
  exit 1
}
"${CXX}" --version | head -1 | VERIFICATION="${verification}" FLAGS="${FLAGS[*]}" python3 -c '
import json, os, sys
print(json.dumps({"compiler": sys.stdin.read().strip(), "flags": os.environ["FLAGS"],
                  "verification": json.loads(os.environ["VERIFICATION"])}, indent=2, sort_keys=True))
' >"${BUILD}/build_metadata.json"
