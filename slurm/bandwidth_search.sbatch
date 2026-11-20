#!/usr/bin/env bash
# Explicit Flat-mode study, pinned by submit_bandwidth_search.sh. The separate
# Cache-mode templates retain their Flat-node exclusions.
#SBATCH --job-name=hw-bandwidth-search
#SBATCH --partition=cresco8_hbm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=112
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=02:00:00
set -euo pipefail
: "${HW_BENCH_STAGE:?}" "${HW_BENCH_OUTPUT:?}" "${HW_BENCH_SEARCH_NODE:?}"
[[ "$(hostname -s)" == "${HW_BENCH_SEARCH_NODE}" ]] || exit 2
export HW_BENCH_EXCLUSIVE=1
export HW_BENCH_BUILD_DIR="${HW_BENCH_OUTPUT}/build"
bash "${HW_BENCH_STAGE}/scripts/build_benchmarks.sh"
exec python3 "${HW_BENCH_STAGE}/scripts/run_bandwidth_search.py" \
  --output "${HW_BENCH_OUTPUT}" --binary "${HW_BENCH_BUILD_DIR}/hardware" --counters
