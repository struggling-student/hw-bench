# BF16 measurements

The native AMX tile kernel is in `benchmarks/hardware.cpp`. It requests tile permission in every OpenMP worker, uses four independent accumulator tiles, verifies all destination elements, and reports the actual worker count. Retained disassembly must contain `tdpbf16ps`.

`torch_amx.py` measures warmed BF16 oneDNN GEMM separately. Primitive execution during an untimed warm-up must identify an AMX implementation. Timed measurements omit oneDNN verbose logging and validate the resulting matrix against independent FP32 dot products. CPU and memory affinity remain enforced by numactl; inner GNU OpenMP placement overrides are omitted.

Instruction throughput and achieved GEMM throughput are distinct references. Multiply and add count as two FLOPs in both.
