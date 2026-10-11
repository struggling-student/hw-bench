#!/usr/bin/env bash
# Stage the source and start one campaign part. Site values come from a private
# environment file outside the repository.
#   cache: sbatch slurm/cache_campaign.sbatch (never the Flat node)
#   flat:  tmux on the dedicated Flat node, outside Slurm
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:?usage: submit_cresco8.sh cache|flat [part]}"
PART="${2:-${HW_BENCH_CAMPAIGN_PART:-all}}"
[[ "${MODE}" == cache || "${MODE}" == flat ]] || exit 2
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_REMOTE_ROOT:?}" "${HW_BENCH_RESULTS_ROOT:?}" "${AMX_CONTAINER:?}"
# The Flat node is excluded from every Cache submission; keep this in step with
# hwbench.execution.FLAT_NODE and slurm/cache_campaign.sbatch.
FLAT_NODE="${HW_BENCH_FLAT_NODE:-cresco8-hbm14}"
RUN_ID="${MODE}-${PART}-$(date -u +%Y%m%dT%H%M%SZ)"
STAGE="${HW_BENCH_REMOTE_ROOT}/${RUN_ID}"
OUTPUT="${HW_BENCH_RESULTS_ROOT}/${RUN_ID}"
remote() { ssh "${HW_BENCH_LOGIN_ALIAS}" "$(printf '%q ' "$@")"; }
remote mkdir -p "${STAGE}" "${OUTPUT}"
rsync -a --exclude=.git --exclude=.venv --exclude=data --exclude=figures --exclude=build \
  --exclude=__pycache__ --exclude=.ruff_cache --exclude=.pytest_cache "${ROOT}/" \
  "${HW_BENCH_LOGIN_ALIAS}:${STAGE}/"
if [[ "${MODE}" == cache ]]; then
  : "${HW_BENCH_SLURM_ACCOUNT:?}"
  PLACEMENT=()
  [[ -z "${HW_BENCH_CACHE_NODE:-}" ]] || PLACEMENT=(--nodelist="${HW_BENCH_CACHE_NODE}")
  JOB="$(remote sbatch --parsable --exclude="cresco8-hbm14" --account="${HW_BENCH_SLURM_ACCOUNT}" \
    ${PLACEMENT[@]+"${PLACEMENT[@]}"} --time="${HW_BENCH_TIME:-01:00:00}" \
    --job-name="hw-cache-${PART}" --output="${OUTPUT}/slurm-%j.out" --error="${OUTPUT}/slurm-%j.err" \
    --export="ALL,HW_BENCH_STAGE=${STAGE},HW_BENCH_OUTPUT=${OUTPUT},HW_BENCH_CAMPAIGN_PART=${PART},AMX_CONTAINER=${AMX_CONTAINER}" \
    "${STAGE}/slurm/cache_campaign.sbatch")"
  echo "job=${JOB}"
else
  INNER="$(printf '%q ' env "AMX_CONTAINER=${AMX_CONTAINER}" "HW_BENCH_CAMPAIGN_PART=${PART}" \
    "HW_BENCH_FLAT_NODE=${FLAT_NODE}" bash "${STAGE}/scripts/flat_campaign.sh" "${STAGE}" "${OUTPUT}")"
  remote ssh -o BatchMode=yes "${FLAT_NODE}" tmux new-session -d -s "${RUN_ID}" "${INNER}"
  echo "tmux=${RUN_ID} node=${FLAT_NODE}"
fi
echo "remote_stage=${STAGE}"
echo "remote_result=${OUTPUT}"
