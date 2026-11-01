#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${AMX_CONTAINER:?set the private container path}"
MODE="${1:?mode}"
OUTPUT="${2:?output}"
# Wall power from the BMC (hwbench.ipmi): one campaign-level logger beside every record, since
# a listing takes about 6 s. Started here, the one place both the Flat tmux run and the Cache
# Slurm job pass through; the log is compressed when the logger is stopped.
if [[ "${HW_BENCH_IPMI:-}" == 1 ]]; then
  mkdir -p "${OUTPUT}"
  PYTHONPATH="${ROOT}/src" python3 -m hwbench.ipmi log "${OUTPUT}/ipmi.log" &
  IPMI_PID=$!
  stop_ipmi() { kill -TERM "${IPMI_PID}" 2>/dev/null && wait "${IPMI_PID}" 2>/dev/null || true; }
  trap stop_ipmi EXIT
fi
set +e
python3 "${ROOT}/scripts/run_campaign.py" "${MODE}" "${OUTPUT}" --container "${AMX_CONTAINER}" --only "${HW_BENCH_CAMPAIGN_PART:-all}"
STATUS=$?
set -e
exit "${STATUS}"
