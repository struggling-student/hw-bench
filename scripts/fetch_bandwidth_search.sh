#!/usr/bin/env bash
# Retrieve completed explicitly selected study campaigns; preserve pending ones.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_RESULTS_ROOT:?}"
ssh -O check "${HW_BENCH_LOGIN_ALIAS}"
export ROOT
python3 - <<'PY'
import json
import os
import shlex
import subprocess
from pathlib import Path

root = Path(os.environ['ROOT'])
alias = os.environ['HW_BENCH_LOGIN_ALIAS']
remote_root = os.environ['HW_BENCH_RESULTS_ROOT']
for campaign in json.loads((root / 'configs/bandwidth_search.json').read_text())['campaigns']:
    if Path(campaign).name != campaign:
        raise ValueError('Campaign must be a directory name')
    remote = remote_root + '/' + campaign
    ready = subprocess.run(['ssh', '-o', 'BatchMode=yes', alias, 'test -f ' + shlex.quote(remote + '/COMPLETED')])
    if ready.returncode:
        print('Not retrieved (not completed):', campaign)
        continue
    destination = root / 'data/raw/bandwidth_search' / campaign
    destination.mkdir(parents=True, exist_ok=True)
    subprocess.run(['rsync', '-a', '--exclude=build/hardware', '--exclude=build/hardware.asm',
                    '--exclude=sync', alias + ':' + remote + '/', str(destination) + '/'], check=True)
    print('Retrieved', campaign)
PY
python3 "${ROOT}/scripts/scrub_raw.py" "${ROOT}/data/raw/bandwidth_search"
