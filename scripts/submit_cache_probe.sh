#!/usr/bin/env bash
# Stage the source and submit the Cache-node counter probe (slurm/cache_probe.sbatch).
# Site values come from the same private environment file as submit_cresco8.sh.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_REMOTE_ROOT:?}" "${HW_BENCH_RESULTS_ROOT:?}" "${HW_BENCH_SLURM_ACCOUNT:?}"
RUN_ID="cache-probe-$(date -u +%Y%m%dT%H%M%SZ)"
STAGE="${HW_BENCH_REMOTE_ROOT}/${RUN_ID}"
OUTPUT="${HW_BENCH_RESULTS_ROOT}/${RUN_ID}"
remote() { ssh "${HW_BENCH_LOGIN_ALIAS}" "$(printf '%q ' "$@")"; }
remote mkdir -p "${STAGE}" "${OUTPUT}"
rsync -a --exclude=.git --exclude=.venv --exclude=data/raw --exclude=data/processed --exclude=figures --exclude=notebooks --exclude=build \
  --exclude=__pycache__ --exclude=.ruff_cache --exclude=.pytest_cache "${ROOT}/" "${HW_BENCH_LOGIN_ALIAS}:${STAGE}/"
PLACEMENT=()
[[ -z "${HW_BENCH_CACHE_NODE:-}" ]] || PLACEMENT=(--nodelist="${HW_BENCH_CACHE_NODE}")
JOB="$(remote sbatch --parsable --exclude="cresco8-hbm14" --account="${HW_BENCH_SLURM_ACCOUNT}" \
  ${PLACEMENT[@]+"${PLACEMENT[@]}"} --output="${OUTPUT}/slurm-%j.out" --error="${OUTPUT}/slurm-%j.err" \
  --export="ALL,HW_BENCH_STAGE=${STAGE},HW_BENCH_OUTPUT=${OUTPUT}" "${STAGE}/slurm/cache_probe.sbatch")"
echo "job=${JOB}"
echo "remote_stage=${STAGE}"
echo "remote_result=${OUTPUT}"
