# 02 — Run and retrieve

## Local analysis environment

Python 3.9 or newer is required for normalization, validation, Plotly, and Jupyter.
The native benchmarks require Linux x86-64, a C++17 compiler with OpenMP and the
appropriate AVX-512/AMX support, `numactl`, `objdump`, and the target instruction
set. BF16 oneDNN measurements additionally require a site-provided PyTorch/oneDNN
container. Intel MLC is optional and proprietary; it is not vendored.

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
pytest -q
```

## Run a configuration on a compute node

Do not run these memory- and CPU-saturating campaigns on a gateway or login node.
From an allocated, authorized compute node, after placing the required container
path in the private environment:

```bash
./scripts/run_all.sh cache /absolute/output/cache-run
# On a node already configured in Flat Mode:
./scripts/run_all.sh flat /absolute/output/flat-run
```

`run_all.sh` records the system snapshot, builds and verifies the native binaries,
then runs bandwidth, compute, and intensity sweeps. Cache and Flat are separate
campaigns; it does not alter firmware settings. The Flat concurrent DDR+HBM diagnostic
can be run with `scripts/run_concurrent_tiers.sh` after the Flat build. Each raw JSON
keeps command, affinity, environment, timing, checksum, frequency sample, and
stdout/stderr. Failed attempts remain available for audit.

## Site wrapper and retrieval

For the measured site, copy `configs/cresco8.env.example` **outside this repository**
and fill it only with site-approved paths, node/partition choices, and a private
container location. Never commit that file or credentials. The wrapper submits the
Cache campaign through Slurm and uses a separately configured compute-node route
for the Flat node when that node is unavailable for a normal Slurm allocation.
Check and follow the site's access policy before using that route. The wrapper
does not contain any personal connection settings.

```bash
source /private/path/to/hw-bench.env
./scripts/submit_cresco8.sh cache
./scripts/submit_cresco8.sh flat
./scripts/fetch_results.sh
```

The retrieval script selects the newest run of each mode, copies complete raw
directories into `data/raw/cache/` and `data/raw/flat/`, and writes local topology
JSON plus normalized CSV. If a different run is needed, copy that run explicitly
and run the processor below; do not overwrite or delete prior raw records.

## Rebuild analysis entirely offline

With both local raw campaigns present:

```bash
./scripts/make_analysis.sh
```

This regenerates `measurements.csv`, `summary.csv`, `validation.json`, the 14
self-contained interactive HTML figures, `final_summary.json`, and executes the
notebook. PNG export is optional and needs Kaleido plus a compatible browser:

```bash
HW_BENCH_EXPORT_PNG=1 ./scripts/make_analysis.sh
```

The notebook uses only local files; no SSH connection is needed for analysis.
