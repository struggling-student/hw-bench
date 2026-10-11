# Run and retrieve

## Local analysis

Install with `.venv/bin/python -m pip install -r requirements.txt`. Plotly static export needs Kaleido and Chrome/Chromium. `bash scripts/make_analysis.sh` normalizes local raw records, checks coverage and provenance, writes thesis tables, then executes the three canonical notebooks in independent kernels. Each figure cell exports SVG and PNG before displaying the same figure. Raw data and generated exports are git-ignored.

## Cluster measurements

The native kernels require Linux x86-64, AVX-512/AMX, C++17, GNU OpenMP, numactl, and objdump. oneDNN measurements additionally require a compatible PyTorch container. Supply site values by copying `configs/cresco8.env.example` to a private location outside the repository.

```bash
source /private/path/hw-bench.env
bash scripts/submit_cresco8.sh flat
bash scripts/submit_cresco8.sh cache
```

Both routes submit exclusive Slurm allocations with one node and 112 CPUs. Every submission creates unique source and output directories and verifies the requested memory mode on the compute node. There is no direct-node launch fallback. Never run saturating kernels on gateway/login nodes.

Set `HW_BENCH_CAMPAIGN_PART=compute`, `memory`, `sweep`, or `memory-sweep` to run only the needed subsystem. The default is `all`. Record each returned job ID and output directory. A `COMPLETED` marker is written only after every requested measurement succeeds.

After successful runs, update the explicit campaign selection in `configs/analysis.json`, then retrieve those exact directories:

```bash
bash scripts/fetch_results.sh
bash scripts/make_analysis.sh
```

Retrieval never deletes previous raw campaigns. Failed attempts remain separate and are not selected for thesis analysis. An existing failed record is never overwritten: submit a new campaign. Compute follow-ups replace the named benchmark families explicitly; no automatic newest-campaign selection occurs.

## Synchronization and containers

Native participants share readiness files and a future monotonic-clock start time. GEMM participants use a job/group-specific directory in the host `/tmp`, shared by the containers. Results directories are explicitly bound writable and source directories read-only. Participants time their actual start/end and work count; normalization requires matching scheduled starts and at least 95% shared-window overlap.
