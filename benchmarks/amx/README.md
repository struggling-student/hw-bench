# AMX ceiling benchmark

`amx_peak.cpp` is the fallback used because the CRESCO8 base image has no oneDNN
development library. It requests Linux XTILEDATA permission, configures tiles in
every OpenMP worker, and measures register/tile-resident BF16 or INT8 dot-product
instructions. The build script rejects binaries whose disassembly does not contain
`tdpbf16ps` and `tdpbssd`; raw campaign metadata retains that verification.

Operations follow the GEMM convention (multiply + add = 2 operations): BF16 does
`2*16*16*32` operations and INT8 does `2*16*16*64` operations per tile instruction.
