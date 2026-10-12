#!/usr/bin/env bash
# Flat-mode campaign body, started by submit_cresco8.sh inside tmux on the dedicated
# Flat node. It never touches Slurm; hwbench.execution checks that the node is idle
# before measuring and watches for foreign jobs around every record.
set -euo pipefail
STAGE="${1:?staged source tree}"
OUTPUT="${2:?campaign output}"
: "${AMX_CONTAINER:?container image}"
mkdir -p "${OUTPUT}"
# A campaign that just ended leaves the 1-minute load average high for a few
# minutes. Give the node time to settle; the guard in run_campaign.py still
# refuses to start if it is not idle.
for _ in $(seq 1 120); do
  awk '{exit !($1 < 0.5)}' /proc/loadavg && break
  sleep 5
done
export HWBENCH_GUARD=1
bash "${STAGE}/scripts/run_all.sh" flat "${OUTPUT}" 2>&1 | tee -a "${OUTPUT}/run.log"
exit "${PIPESTATUS[0]}"
