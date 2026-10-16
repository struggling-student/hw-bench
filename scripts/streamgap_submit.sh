#!/usr/bin/env bash
# Stage the source and start the Triad-gap investigation (scripts/streamgap.sh) in tmux on the
# dedicated Flat node, outside Slurm. Site values come from the private environment file.
# Usage: streamgap_submit.sh [streamgap.sh|streamgap_e4.sh]
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_REMOTE_ROOT:?}" "${HW_BENCH_RESULTS_ROOT:?}"
FLAT_NODE="${HW_BENCH_FLAT_NODE:-cresco8-hbm14}"
SCRIPT="${1:-streamgap.sh}"
RUN_ID="flat-${SCRIPT%.sh}-$(date -u +%Y%m%dT%H%M%SZ)"
STAGE="${HW_BENCH_REMOTE_ROOT}/${RUN_ID}"
OUTPUT="${HW_BENCH_RESULTS_ROOT}/${RUN_ID}"
remote() { ssh "${HW_BENCH_LOGIN_ALIAS}" "$(printf '%q ' "$@")"; }
remote mkdir -p "${STAGE}" "${OUTPUT}"
rsync -a --exclude=.git --exclude=.venv --exclude=data --exclude=figures --exclude=build \
  --exclude=__pycache__ --exclude=.ruff_cache --exclude=.pytest_cache "${ROOT}/" \
  "${HW_BENCH_LOGIN_ALIAS}:${STAGE}/"
INNER="$(printf '%q ' bash "${STAGE}/scripts/${SCRIPT}" "${STAGE}" "${OUTPUT}")"
remote ssh -o BatchMode=yes "${FLAT_NODE}" tmux new-session -d -s "${RUN_ID}" "${INNER}"
echo "tmux=${RUN_ID} node=${FLAT_NODE}"
echo "remote_stage=${STAGE}"
echo "remote_result=${OUTPUT}"
