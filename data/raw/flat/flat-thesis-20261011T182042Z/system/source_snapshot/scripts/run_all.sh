#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${AMX_CONTAINER:?set the private container path}"
exec python3 "${ROOT}/scripts/run_campaign.py" "${1:?mode}" "${2:?output}" --container "${AMX_CONTAINER}" --only "${HW_BENCH_CAMPAIGN_PART:-all}"
