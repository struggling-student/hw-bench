#!/usr/bin/env bash
# Source the private environment file before invoking. No site/account values
# are embedded here. This new Flat study uses Slurm, independent of legacy runs.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_REMOTE_ROOT:?}" "${HW_BENCH_RESULTS_ROOT:?}"
: "${HW_BENCH_SLURM_ACCOUNT:?}" "${HW_BENCH_SEARCH_NODE:?explicit Flat node required}"
ssh -O check "${HW_BENCH_LOGIN_ALIAS}"
RUN_ID="flat-bandwidth-search-$(date -u +%Y%m%dT%H%M%SZ)"
STAGE="${HW_BENCH_REMOTE_ROOT}/${RUN_ID}"
OUTPUT="${HW_BENCH_RESULTS_ROOT}/${RUN_ID}"
remote() { ssh "${HW_BENCH_LOGIN_ALIAS}" "$(printf '%q ' "$@")"; }
remote mkdir -p "${STAGE}" "${OUTPUT}"
rsync -a --exclude=.git --exclude=.venv --exclude=data --exclude=figures --exclude=notebooks \
  --exclude=build --exclude=__pycache__ --exclude=.ruff_cache --exclude=.pytest_cache \
  "${ROOT}/" "${HW_BENCH_LOGIN_ALIAS}:${STAGE}/"
JOB="$(remote sbatch --parsable --partition=cresco8_hbm --exclusive --mem=0 \
  --nodelist="${HW_BENCH_SEARCH_NODE}" --account="${HW_BENCH_SLURM_ACCOUNT}" \
  --output="${OUTPUT}/slurm-%j.out" --error="${OUTPUT}/slurm-%j.err" \
  --export="ALL,HW_BENCH_STAGE=${STAGE},HW_BENCH_OUTPUT=${OUTPUT},HW_BENCH_SEARCH_NODE=${HW_BENCH_SEARCH_NODE}" \
  "${STAGE}/slurm/bandwidth_search.sbatch")"
echo "campaign=${RUN_ID} job=${JOB}"
