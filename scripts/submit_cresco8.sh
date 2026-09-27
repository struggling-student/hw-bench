#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:?usage: submit_cresco8.sh cache|flat}"
: "${HW_BENCH_LOGIN_ALIAS:?source a private cluster config}"
: "${HW_BENCH_REMOTE_ROOT:?source a private cluster config}"
: "${HW_BENCH_RESULTS_ROOT:?source a private cluster config}"
: "${AMX_CONTAINER:?source a private cluster config}"
rsync -a --delete --exclude=.git --exclude=.venv --exclude=data/raw --exclude=data/processed \
  "${ROOT}/" "${HW_BENCH_LOGIN_ALIAS}:${HW_BENCH_REMOTE_ROOT}/"
run_id="${MODE}-$(date -u +%Y%m%dT%H%M%SZ)"
output="${HW_BENCH_RESULTS_ROOT}/${run_id}"
ssh "${HW_BENCH_LOGIN_ALIAS}" "mkdir -p '${output}'"
if [[ "${MODE}" == cache ]]; then
  : "${HW_BENCH_CACHE_PARTITION:?}" "${HW_BENCH_CACHE_NODE:?}" "${HW_BENCH_SLURM_ACCOUNT:?}"
  ssh "${HW_BENCH_LOGIN_ALIAS}" sbatch --parsable \
    --job-name=hw-roofline-cache --partition="${HW_BENCH_CACHE_PARTITION}" \
    --account="${HW_BENCH_SLURM_ACCOUNT}" --nodelist="${HW_BENCH_CACHE_NODE}" \
    --nodes=1 --ntasks=1 --cpus-per-task=112 --exclusive --time=01:00:00 \
    --output="${output}/slurm-%j.out" --error="${output}/slurm-%j.err" \
    --wrap="export AMX_CONTAINER='${AMX_CONTAINER}'; bash '${HW_BENCH_REMOTE_ROOT}/scripts/run_all.sh' cache '${output}'"
elif [[ "${MODE}" == flat ]]; then
  : "${HW_BENCH_FLAT_NODE:?}" "${HW_BENCH_FLAT_STAGE_ROOT:?}"
  ssh "${HW_BENCH_LOGIN_ALIAS}" \
    "mkdir -p '${HW_BENCH_FLAT_STAGE_ROOT}'; rsync -a --delete --exclude=.git '${HW_BENCH_REMOTE_ROOT}/' '${HW_BENCH_FLAT_STAGE_ROOT}/'; ssh '${HW_BENCH_FLAT_NODE}' \"tmux kill-session -t hw-roofline-${run_id} 2>/dev/null || true; tmux new-session -d -s hw-roofline-${run_id} 'export AMX_CONTAINER=${AMX_CONTAINER}; bash ${HW_BENCH_FLAT_STAGE_ROOT}/scripts/run_all.sh flat ${output} >>${output}/direct.out 2>>${output}/direct.err'\""
else
  echo 'mode must be cache or flat' >&2; exit 2
fi
printf 'remote_result=%s\n' "${output}"
