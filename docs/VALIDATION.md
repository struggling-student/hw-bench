# Validation and preserved anomalies

The campaign intentionally retains unsuccessful and superseded output. Final figures
select corrected records by explicit metadata rather than deleting inconvenient data.

## Flat staging failures

Two initial Flat launches demonstrated that detached processes cannot depend on an AFS
token: the first could not read the top-level script and the second lost access while
launching a child. The campaign was moved to a compute-node-accessible staged copy. A further BF16
container launch showed that Apptainer did not expose that staged source directory;
an explicit read-only bind fixed it. `direct.err` preserves all three diagnostics.

## Cache normalization wrapper

The first Cache Slurm job completed every measurement but exited nonzero when the final
cluster-side normalization command lacked `PYTHONPATH`. Raw counts were complete and
the error occurred after the last intensity record. Local normalization is the intended
authoritative path and the top-level script now exports its own `src` directory.

Two malformed exploratory `sbatch --wrap` submissions also allowed a superseded
compute command to continue on the login host after `sbatch` rejected its arguments.
Those records are preserved but excluded automatically because their hostname does not
match the topology snapshot for the target mode. No reported ceiling includes them.

## oneDNN BF16 affinity anomaly

oneDNN 3.12 verbose output proved that `brg_matmul:avx10_1_512_amx` was selected, but
the initial 4096³ series scaled inversely when `OMP_PROC_BIND=close` and
`OMP_PLACES=cores` were inherited by the container. A controlled three-policy probe on
the same node class showed:

- `close` and `spread`: multi-thread performance declined;
- both variables unset, while retaining identical `numactl` CPU and memory masks:
  expected positive scaling returned;
- 6144³ and 8192³ size probes were stable, so 6144³ was selected to keep the full
  scaling campaign efficient while remaining compute-dominant.

Rejected records have empty notes. Accepted records carry
`onednn_numactl_only_omp_affinity_unset`. The notebook and final summary select only
the latter, while raw data retains both.

## Arithmetic-intensity dependency anomaly

The first intensity kernel used one recurrence chain. Its performance rose in the
memory-bound region and then fell at high `K`, correctly measuring its own FMA latency
but failing to exercise the compute Roofline. The replacement operates on eight
independent AVX-512 accumulator chains, is checksum-validated, and carries the note
`avx512_8_independent_chains`. Only corrected points are overlaid on Roofline figures;
the dependency-limited records remain available for audit.

## Acceptance rules

- No result with a nonzero benchmark return code or failed checksum enters the
  normalized dataset, except that known launch failures are reported as preserved
  warnings.
- oneDNN BF16 data requires an AMX implementation name in verbose output.
- Native AMX binaries must contain `tdpbf16ps` and `tdpbssd` in retained disassembly.
- Results above the model’s 3.5 GHz max-turbo architectural bound fail validation.
- Important bandwidth groups require at least five steady timed repetitions.
- Coefficient of variation above 5% is flagged in `summary.csv` for inspection.
