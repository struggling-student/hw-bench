#!/usr/bin/env bash
# Flat-mode campaign body, started by submit_cresco8.sh inside tmux on the dedicated
# Flat node. It never touches Slurm; hwbench.execution checks that the node is idle
# before measuring and watches for foreign jobs around every record.
set -euo pipefail
STAGE="${1:?staged source tree}"
OUTPUT="${2:?campaign output}"
: "${AMX_CONTAINER:?container image}"
mkdir -p "${OUTPUT}"
export HWBENCH_GUARD=1
bash "${STAGE}/scripts/run_all.sh" flat "${OUTPUT}" 2>&1 | tee -a "${OUTPUT}/run.log"
exit "${PIPESTATUS[0]}"
