# Run and retrieve

## Execution rules

The two memory configurations are run differently, on purpose.

| | Flat mode | Cache mode |
| --- | --- | --- |
| Where | the single dedicated Flat node (`hwbench.execution.FLAT_NODE`) | any other HBM node |
| How | `ssh` to the node, `tmux new-session -d`, **no Slurm** | `sbatch slurm/cache_campaign.sbatch` (exclusive node) |
| Guard | node idle: no Slurm job placed on it (`squeue -w`), 1-minute load below 1; every record is bracketed by load and job snapshots | `SLURM_JOB_ID` set, hostname is not the Flat node, topology says Cache |
| Recorded | `launch_method = ssh`, `foreign_jobs_before/after`, `loadavg_before/after`, `interference_suspected` | `launch_method = slurm_exclusive` |

`scripts/run_campaign.py` calls `hwbench.execution.require_context` before measuring and
refuses to run in the wrong context. A Slurm job that lands on the Flat node during a Flat
run marks the surrounding record `interference_suspected`, and processing rejects it.

`slurm/cache_campaign.sbatch` carries `#SBATCH --exclude=cresco8-hbm14`, the HBM
partition, `--exclusive` and `--mem=0`; `scripts/submit_cresco8.sh cache` only ever
submits that template and repeats `--exclude` on the command line.
`tests/test_slurm_exclusion.py` scans every `sbatch` call and `#SBATCH` block under
`scripts/` and `slurm/` and fails if the exclusion is missing. The Flat path never calls Slurm.

The October-11 thesis campaigns predate these rules: their Flat runs went through an
exclusive Slurm allocation pinned to the same node. They are labelled
`launch_method = slurm_exclusive` and a repeat run over SSH (part `xcheck`) bounds the
difference.

## Local analysis

Install with `.venv/bin/python -m pip install -r requirements.txt`. Plotly static export needs Kaleido and Chrome/Chromium. `bash scripts/make_analysis.sh` normalizes local raw records, validates, writes thesis tables, builds and executes the seven notebooks in independent kernels, and checks the figure exports. Raw data, processed tables and figure exports are versioned; `scripts/fetch_results.sh` runs `scripts/scrub_raw.py` after every retrieval so no account name or password-expiry line is committed, and `make_analysis.sh` refuses to run on unscrubbed data.

## Cluster measurements

The native kernels require Linux x86-64 with AVX-512/AMX, C++17, GNU OpenMP, numactl and objdump. oneDNN GEMMs additionally need the PyTorch container named in `AMX_CONTAINER`. Copy `configs/cresco8.env.example` to a private location outside the repository and fill it in.

```bash
source /private/path/hw-bench.env
bash scripts/submit_cresco8.sh flat isa
bash scripts/submit_cresco8.sh cache isa
```

Each invocation stages the source in a unique directory and runs one *part* as its own campaign directory, named `<mode>-<part>-<timestamp>`:

| Part | Measures |
| --- | --- |
| `isa` | peak throughput of AMX INT8/BF16, VNNI, AVX-512 BF16/FP32/FP64 at 1–56 cores (including 55) and as synchronized two-socket pairs, with effective clock and AMX-busy counters |
| `bandwidth2` | read-only and non-temporal-store bandwidth, local/remote, core scaling, Cache capacity, two-socket pairs |
| `hierarchy` | read bandwidth and idle latency against working-set size, one core and 56 cores |
| `gemm` | BF16 and INT8 oneDNN GEMM M-sweeps at Llama-3.1-8B shapes with weights streamed from memory |
| `span` | one 112-thread process: interleaved versus first-touch placement; Cache resident two-socket pairs |
| `xcheck` | repeat of reference points: SSH-versus-Slurm (Flat), node-to-node (Cache, `HW_BENCH_CACHE_NODE=<second node>`) |
| `smoke` | seconds of every kernel; proves build, counters and the INT8 probe, not a result |
| `memory`, `compute`, `sweep`, `memory-sweep`, `concurrency` | the October-11 thesis parts, kept so those campaigns stay reproducible |

Cache jobs request one hour by default (`HW_BENCH_TIME`). A job that runs out of time leaves a campaign without `COMPLETED`; submit the remainder with `HW_BENCH_RESUME=<interrupted campaign id>` — the new campaign skips records the old one holds and declares `resumes` in its metadata, and validation accepts the interrupted campaign only on that basis. An existing failed record is never overwritten.

## Retrieval

List the new campaign directories under `extended_campaigns` (and thesis campaigns under the existing keys) in `configs/analysis.json`, then:

```bash
bash scripts/fetch_results.sh
bash scripts/make_analysis.sh
```

Retrieval never deletes previous raw campaigns; there is no automatic newest-campaign selection.

## Synchronization and containers

Native participants share readiness files and a future monotonic-clock start time. GEMM participants use a job/group-specific directory in the host `/tmp`, shared by the containers. Results directories are explicitly bound writable and source directories read-only. Participants time their actual start/end and work count; normalization requires matching scheduled starts and at least 95% shared-window overlap (validation flags below 99%).
