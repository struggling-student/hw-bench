# Bandwidth configuration study

Notebook [07](../notebooks/07_bandwidth_configuration.ipynb) answers the deployment
question separately for useful concurrent bandwidth, model-shard completion and capacity.
Its historical figures execute now. Its new split ranking is pending measurements;
historical Triad results never substitute for a read-only split sweep.

The existing counted read campaign sustains about 534 GB/s for the one-socket HBM
control and 1104 GB/s for two simultaneous socket-local HBM workers. The older spanning
process reaches about 1100 GB/s with first touch, versus 265 GB/s with interleaving.
These results support socket-local HBM as the baseline; they do not identify the
best mixed core split. The notebook preserves the campaign IDs and observed ranges.

## New experiment

The search has 114 configurations, three independent launches each, six synchronized
two-second windows per launch (first discarded). It includes:

- Both sockets separately and together; eleven complementary HBM/DDR core splits.
- Blocked and striped CPU assignments; pure-tier active-core sweeps.
- Asymmetric two-socket splits, including one socket dedicated to each memory tier.
- Swapped-remote controls and spanning first-touch/interleaved processes.
- HBM pools of 32/56 GiB per socket and mixed node pools of 160/256 GiB.
- Fresh legacy read controls to quantify the optional chunked kernel's cost.

The new chunked read path retains a per-thread cursor across windows and checks the
deadline every 4 MiB. The legacy path remains the default for older campaigns.
Checksums cover the actual visited bytes, including a partial last chunk. At least
two complete shard traversals must fit in the retained windows. NUMA residency is
sampled after initialization. The base perf events give controller traffic, power,
clocks and UPI traffic; these rates never replace useful read bytes in the ranking.

The byte/time denominator is the actual enclosing window, with at least 95% shared
overlap. Invalid checksums, unmatched windows, wrong resident nodes or fewer than three
accepted launches disqualify a configuration. Full observed ranges are reported;
overlapping candidate ranges limit the ranking claim. Three launches per case share a single allocation.
The discrete grid gives observed configurations with within-allocation ranges.

The complete-shard bound is computed for every simultaneous worker group, including
socket asymmetry: `min(B_i / f_i)`. It is an inference from stream measurements, not a
timed finite-shard or inference-engine benchmark. Serial stages instead have the bound
`1 / sum(f_i / B_i)`. A combined 128 GiB of installed HBM does not imply 128 GiB of model
weights: runtime, activations and KV cache need reservations. The largest HBM test pool
is 112 GiB. DDR-to-HBM staging and collectives are outside this study.

## Execution and current status

The new study uses an **exclusive, whole-node Slurm allocation**, as required for
this work, independently of the legacy direct-SSH Flat campaign workflow. Existing
Cache submissions still exclude the Flat node. The target node is an explicit private
environment setting; topology is rediscovered and must verify Flat mode and SMT off.
No inference-engine jobs are canceled or modified.

Completed campaign `flat-bandwidth-search-20261101T112108Z`, job **5621185**. All 342 archived launches across 114 configurations passed the recorded checks. The smallest shared overlap across accepted windows was 99.40%. Source records, build metadata and the [acceptance table](../data/processed/bandwidth_search/acceptance.csv) are retained. The archived runner hash differs from the current runner, while the archived results reproduce the derived tables.

Local HBM reaches 572 and 587 GB/s on the individual sockets with the legacy read loop, and 1,159 GB/s concurrently. The single-process first-touch and interleaved controls reach 1,159 and 254 GB/s. The top aggregate mixed allocation observed 1,187 GB/s [1,180–1,194] and the next 1,169 GB/s [1,162–1,182]. Their ranges overlap and rankings differ under the fixed-shard metric. The highest-power cases show about 362–363 W package medians with frequent PCU clipping. This run lacks a PL1 readback.

Separate kernel check job 5621186 passed ten launches on another node and was used for correctness. Its records are in [the probe archive](../data/probes/read-chunk-check-20261101/). The earlier draft 5621183 was canceled before execution.

Source the private environment file and set `HW_BENCH_SEARCH_NODE` to the intended
Flat node, then use `bash scripts/submit_bandwidth_search.sh` for a fresh study.
The script checks that the existing SSH master is running, stages a fresh source
snapshot and submits the pinned job. It never overwrites an existing campaign.
No connection/account values are stored in this study's source files.

Run `bash scripts/fetch_bandwidth_search.sh` after sourcing the private environment
to retrieve the selected campaign once its `COMPLETED` marker exists, preserving
`campaign.json`, `topology.json`, `records/` and the build metadata. Store it under
`data/raw/bandwidth_search/<campaign>/`, then run the existing raw-data scrubber.
The manifest `configs/bandwidth_search.json` explicitly selects the campaign; the
loader rejects incomplete campaigns and verifies the declared record set. The new
schema is isolated from the October thesis selection and validation hashes.

A one-shot local follow-up can perform the wait, retrieval and regeneration with
`.venv/bin/python scripts/finish_bandwidth_search.py` after the private environment
is sourced. It waits for at most eight hours and stops if the SSH master is unavailable;
it never requests or supplies a password. Its current state is written to
`data/processed/bandwidth_search/followup.json`. It requires the local process to remain
running. It does not submit, cancel or alter cluster jobs.

Regenerate only this notebook with:

```bash
.venv/bin/python scripts/build_notebooks.py 07_bandwidth_configuration
.venv/bin/python scripts/execute_notebooks.py notebooks/07_bandwidth_configuration.ipynb
```

The notebook exports its acceptance audit, planned matrix, launch medians, ranking
and historical evidence to `data/processed/bandwidth_search/`. Its figures are
interactive and also exported to `figures/07_bandwidth_configuration/` as SVG/PNG.
Pending campaigns produce no fabricated rows or winners. After completion, inspect
the leading candidates' overlap, legacy/chunked ratios and controller/useful ratios,
state where rankings overlap and where the metric changes the ordering.
