#!/usr/bin/env bash
# Privileged-counter probe on a Cache node: builds the benchmark binary, then runs the
# node check and the event-identification probe (data/probes/uncore-cache-20261020/).
# Not a campaign (it produces no thesis records) but it follows the same rules: whole
# node, Cache partition, never the Flat node.
#SBATCH --job-name=hw-cache-probe
#SBATCH --partition=cresco8_hbm
#SBATCH --exclude=cresco8-hbm14
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=112
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=00:40:00
# Account, output paths and staged source are supplied on the sbatch command line
# by scripts/submit_cache_probe.sh from the private environment file.
set -euo pipefail
: "${HW_BENCH_STAGE:?staged source tree}" "${HW_BENCH_OUTPUT:?probe output}"
PROBE="${HW_BENCH_STAGE}/data/probes/uncore-cache-20261020"
mkdir -p "${HW_BENCH_OUTPUT}/build"
cp "${PROBE}/probe.sh" "${PROBE}/probe.py" "${HW_BENCH_OUTPUT}/"
HW_BENCH_BUILD_DIR="${HW_BENCH_OUTPUT}/build" bash "${HW_BENCH_STAGE}/scripts/build_benchmarks.sh"
bash "${HW_BENCH_OUTPUT}/probe.sh" "${HW_BENCH_OUTPUT}" "${HW_BENCH_OUTPUT}/build/hardware"
echo "PROBE COMPLETED"
