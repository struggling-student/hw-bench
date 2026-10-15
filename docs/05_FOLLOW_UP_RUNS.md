# Follow-up runs (roadmap step 6)

**Status (2026-10-15): all parts ran on 2026-10-12 and their results are in the analysis.** The raw
campaigns are committed (`data/raw`, listed under `extended_campaigns` in
`configs/analysis.json`); notebooks 01–05 carry the results and
[the status report](STATUS_2026-10-12.md) lists the outcomes. The text below is the original
plan and is kept for the run recipe.

Run definitions for the experiments that the [2026-10-12 review](REVIEW_2026-10-12.md)
ranks highest. Nothing here has been executed: the definitions are tested only as plans
(`tests/test_campaign_plan.py`) and the C++ change only for syntax and generated code.
Read [02 — Run and retrieve](02_RUN_AND_RETRIEVE.md) first for the execution rules (Flat
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
