# Follow-up runs (roadmap step 6)

**Status (2026-10-15): all parts ran on 2026-10-12 and their results are in the analysis.** The raw
campaigns are committed (`data/raw`, listed under `extended_campaigns` in
`configs/analysis.json`); notebooks 01–05 carry the results and
[the status report](STATUS_2026-10-12.md) lists the outcomes. The text below is the original
plan and is kept for the run recipe. The part `gemmconv` of the 2026-10-16 review ran on
2026-10-16 (next section).

## `gemmconv` (review of 2026-10-16, item R1): ran 2026-10-16

The headline roofline, the GEMM-efficiency figure and the decode table need the 14336×4096
projection over the decode-to-prefill range with a converged weight pool; the first GEMM sweep
used a pool of about twice the on-chip capacity, which overstates the weight traffic at M ≤ 32
by 10–25% (claim `first_sweep_small_m_bias`).

| Part | Mode | Records | Timed windows | What it measures | Acceptance |
| --- | --- | ---: | ---: | --- | --- |
| `gemmconv` | Flat | 54 | 4.5 min | 14336×4096, M = 1, 2, 4, 8, 16, 32, 64, 128, 256, pool 16× the on-chip capacity (3.77 GB), two warm-up passes; BF16 plain, BF16 prepacked and INT8; HBM and DDR; socket 0; counters on (label `gemm_converged`) | counted/modeled 0.97–1.03 at M ≤ 16; no point above its read ceiling; M = 1 and 16 within 3% of the 64× `gemm_pool` points |

```bash
.venv/bin/python scripts/run_campaign.py flat /tmp/unused --only gemmconv --dry-run
scripts/submit_cresco8.sh flat gemmconv
```

**Outcome.** Campaign `flat-gemmconv-20261016T111248Z` on `cresco8-hbm14`, 54 records, all valid,
listed under `extended_campaigns`. No point streams above its read ceiling. Two criteria as first
written were not met: counted over modeled bytes at M ≤ 16 is 0.967–0.982 (not ≥ 0.97 everywhere),
and DDR INT8 at M = 1 and 16 is 3.7% and 3.3% above the modeled 64× pool (not within 3%). The
counters explain both: a 16× pool still serves 1.8–3.3% of the weights on chip (64× pool:
0–1.6%). Convergence was therefore judged in counted bytes, the basis of claim
`gemm_pool_convergence`: the sweep agrees with the 64× pool within 2.9% in counted bytes. The
residual on-chip share, and the fact that the modeled rates and intensities at small M are that
much high, are stated in claim `gemm_converged_sweep`. `report.headline_gemm_points` takes the
sweep for every M ≤ 256, `report.decode_table` takes its prepacked BF16 row.

## `flatfar` and `loadedlat` (review of 2026-10-16, items R2 and R3): ran 2026-10-16

Both are Flat parts on `cresco8-hbm14` over SSH and tmux, no new C++ (the existing latency and
read kernels, the second one in the synchronized-pair mechanism of the concurrent-tier test).

| Part | Records | Timed windows | What it measures |
| --- | ---: | ---: | --- |
| `flatfar` | 8 | 0.7 min (about 20 min with the chase initialisation) | One-core chase at 16, 32, 64, 96, 128 GiB on Flat DDR and 16, 32, 48 GiB on Flat HBM (label `flat_latency_far`): the control for the Cache-mode far latency |
| `loadedlat` | 32 | 9.3 min | One chasing core (1 GiB) beside 1, 4, 14, 28, 55 cores reading the same tier (8 GiB), HBM and DDR, with the idle chase and each stream alone in the same launch |

```bash
scripts/submit_cresco8.sh flat flatfar
scripts/submit_cresco8.sh flat loadedlat
```

**Outcome.** Campaigns `flat-flatfar-20261016T121759Z` and `flat-loadedlat-20261016T124007Z`, all
records valid, listed under `extended_campaigns`.

* R2: Flat DDR latency is 127 to 131 ns from 16 to 128 GiB (4 ns of rise), Flat HBM 150 to 152 ns
  from 16 to 48 GiB, while Cache mode rises from 161 to 227 ns. Address translation is therefore not
  what raises the far latency of Cache mode; the memory-side cache is (claims `latency_translation`,
  `cache_latency_far`). The previous statement that the far latency was an upper bound on the miss
  cost was replaced.
* R3: with 55 cores streaming, a dependent load takes 209 ns on HBM (139 idle, 549 GB/s) and 373 ns
  on DDR (116 idle, 262 GB/s); the chase takes nothing measurable from the streams (within 3%).
  The loaded latency and the concurrency Little's law implies agree with the counter-measured values
  of McCalpin (2023) within 7% (claims `loaded_latency`, `literature_loaded`).

## Original plan of 2026-10-12 (all ran)

Run definitions for the experiments that the [2026-10-12 review](REVIEW_2026-10-12.md)
ranks highest. When this plan was written nothing had been executed: the definitions were tested only as plans
(`tests/test_campaign_plan.py`) and the C++ change only for syntax and generated code.
Read [02 — Run and retrieve](../02_RUN_AND_RETRIEVE.md) first for the execution rules (Flat
only on `cresco8-hbm14` over SSH and tmux, Cache only under Slurm on other nodes).

List what a part will measure without touching any node:

```bash
.venv/bin/python scripts/run_campaign.py flat /tmp/unused --only gemmvalid --dry-run
```

## What each part answers

| Part | Mode | Records | Timed windows | Question and review item | Acceptance |
| --- | --- | ---: | ---: | --- | --- |
| `gemmvalid` | Flat | 108 | 9 min | **A5, A6, H1, H2.** Does M=1 bandwidth converge as the weight pool grows past what the chip holds (4×, 16×, 64× of 225 MiB on-chip)? How large is the fixed cost of one call (256² and 1024² shapes, pool of two copies against streaming)? Does prepacking the BF16 weights close the BF16/INT8 gap? All runs take two warm-up passes over the pool. | M=1 bandwidth within 3% between 16× and 64× |
| `cachefill` | Cache | 31 | 3 min | **A1, A3, C2.** Read, non-temporal and Triad at 24, 32, 40, 48, 56 GiB (joins the existing curve: ≥ 8 working sets), and idle latency at 16, 32, 64, 96, 128 GiB (label `hier_latency_far`, kept apart from the existing latency series). | Cache curve with ≥ 8 working sets; a measured miss latency |
| `remotehbm` | Flat | 60 | 25 min | **A9, M6.** Remote against local, 5 s windows, 1–56 threads, HBM read, DDR read and HBM non-temporal Triad, a local control beside every remote point. | Confirms or retracts "remote HBM at a tenth of local" with a CV well under the earlier 11–15% |
| `chains` | Flat | 6 | 0.5 min | **A13, M6.** `vdpbf16ps` with 6, 12 and 24 accumulator chains at 1 and 56 cores. | Rate independent of the chain count once ≥ 12 |
| `sweep12` | Flat | 26 | 2 min | **A10.** FP64 intensity sweep with 12 chains for K = 1…1024 (AI up to 128 FLOP/B), plus the old 8-chain kernel at K = 512 and 1024 as a control. | The plateau and the ridge region are reached, or the gap is explained |
| `repeat` | both | 10 / 8 | 1 min | **M2, roadmap 6.** The headline numbers once (HBM and DDR read and Triad at 8 GiB, six compute paths, socket 0). Run it **three separate times** to get a between-run spread that does not rest on the cross-check alone. | Three campaigns per mode |
| `copy` ✅ | both | 10 / 5 | 1 min | **A4, counted-traffic follow-up.** Copy (ordinary and non-temporal stores, one load and one store per element), Triad, non-temporal Triad and the FP64 sweep at K = 1, 8 GiB, socket 0. Copy is the matched ceiling of the one-load-one-store sweep that Triad does not cover. | The sweep's counted bandwidth at K = 1 stays within its copy ceiling, or the excess is explained. After a run, list the campaign under `extended_campaigns`; `report.sweep_ceiling` then switches from Triad to copy by itself. |

Timed windows exclude initialisation, which dominates most records (pool building in
`gemmvalid`, first-touch of up to 56 GiB in `cachefill`, building and walking a random
cycle of 128 GiB for the latency, which can take ten minutes by itself).

## Order and commands

Check the connection first (`ssh -O check cresco8`), source the private environment
file, and always run a smoke part before the long ones: it now exercises the new code
paths (chain counts, prepacked BF16, the 12-chain sweep) on a few seconds of each.

```bash
source ~/.config/hw-bench/cresco8.env
scripts/submit_cresco8.sh flat smoke        # then read its run.log and records
scripts/submit_cresco8.sh cache smoke
```

Flat parts run one at a time on the single Flat node; wait for each tmux session to
finish (the runner refuses to start on a busy node). A sensible order, shortest first:

```bash
scripts/submit_cresco8.sh flat chains
scripts/submit_cresco8.sh flat sweep12
scripts/submit_cresco8.sh flat repeat       # three times, one after the other
scripts/submit_cresco8.sh flat gemmvalid
scripts/submit_cresco8.sh flat remotehbm
```

Cache parts go through Slurm. `cachefill` needs more than the default hour:

```bash
HW_BENCH_TIME=03:00:00 scripts/submit_cresco8.sh cache cachefill
scripts/submit_cresco8.sh cache repeat      # three times, same node
```

Estimated wall time: Flat about 2.5 hours in total (`gemmvalid` 60–90 minutes,
`remotehbm` 40, the rest under 20), Cache about 1.5 hours plus the repeats.

## Before the first run

* **Prepacked BF16 is untested.** `torch_gemm.py --layout prepacked` calls
  `torch.ops.mkldnn._reorder_linear_weight` and `_linear_pointwise` (the entry points
  torch's inductor uses), falling back to `weight.to_mkldnn()`. Whether the container's
  torch exposes them is unknown; if neither runs, the record reports
  `no prepacked BF16 path` and exits with code 3. Check the smoke record's oneDNN verbose
  line: the weights should read `blocked:BA16a64b4a`-like, not `blocked:ba`. If the path
  is unavailable, `benchdnn` (if the image has it) is the alternative named in the review.
* **`--chains`** is new C++ in `benchmarks/hardware.cpp`. It compiles (checked for syntax
  and inspected at `-O3` for x86-64 with Apple clang) and keeps every accumulator in a
  register, but it has not run on the node. The smoke part will show it.
* The Flat node guard, the Slurm exclusion and the idle checks apply unchanged; the new
  parts add no route to Slurm for Flat.

## Bringing the results into the analysis

After fetching (`fetch_results.sh`, which scrubs the raw data), list the campaign ids
under `extended_campaigns` in `configs/analysis.json`. Labels were chosen so that some
results join existing series and others stay separate until analysed on purpose:

| Label (notes) | Joins | Analysis still to write |
| --- | --- | --- |
| `bw2_read_capacity`, `bw2_triad_nt_capacity`, `bw2_triad_capacity` | the Cache capacity curve (`bandwidth_summary` already accepts `bw2_triad_*`) | none; the `cache_mode` claims pick the new sizes up |
| `hier_latency_far` | nothing yet | latency beyond the cache in notebook 02; rewrite the claim `cache_latency_resident_only`, which says miss latency was not measured |
| `gemm_pool`, `gemm_overhead`, `gemm_prepacked` | nothing yet | M=1 bandwidth against pool size; per-call overhead against shape; BF16 plain against prepacked; revise claims `gemm_asymmetry` and `gemv_fixed_cost`; revise the audit ceilings (A4/A5) |
| `remote_repeat`, `remote_repeat_local` | nothing yet | remote over local per thread count; revise claim `remote_hbm` |
| `chains_bf16_c*` | nothing yet | the chain sweep; settle the AVX-512 BF16 bound |
| `sweep_c12`, `sweep_c8` | nothing yet | extend `fp64_sweep_points` and the claim `sweep_plateau_not_reached` |
| `repeat` | nothing yet | add the three launches to Table 1 as the between-run spread |

## The AVX-512 BF16 bound (applied)

The bound (review A13) is now sourced and `configs/theory.toml` is corrected:
[uops.info lists `VDPBF16PS` (ZMM, ZMM, ZMM)](https://uops.info/html-instr/VDPBF16PS_ZMM_ZMM_ZMM.html)
at **2.0 cycles per instruction** (four µops, latency 8) on Alder Lake-P, which has the same
Golden Cove core as Sapphire Rapids, and on Emerald Rapids. At 64 operations per instruction
that is **32 operations per cycle**, not the 128 that was assumed, and the measured 30 is
94% of it rather than 23%. Sapphire Rapids itself is not on that page, so the bound has
status `table` (a published value for related parts), and the `chains` sweep is the
confirmation on this hardware; Intel's instruction throughput and latency document for the
4th generation Xeon Scalable has not been read here.
