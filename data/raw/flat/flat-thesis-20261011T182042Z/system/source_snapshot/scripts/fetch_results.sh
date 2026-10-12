#!/usr/bin/env bash
# Retrieve exactly the campaigns selected for analysis; preserve every previous raw directory.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_RESULTS_ROOT:?}"
export ROOT
python3 - <<'PY'
import json,os,subprocess
from pathlib import Path
root=Path(os.environ['ROOT']);policy=json.loads((root/'configs/analysis.json').read_text())
for mode,campaign in policy['primary_campaigns'].items():
    destination=root/'data/raw'/mode/campaign;destination.mkdir(parents=True,exist_ok=True)
    subprocess.run(['rsync','-a',os.environ['HW_BENCH_LOGIN_ALIAS']+':'+os.environ['HW_BENCH_RESULTS_ROOT']+'/'+campaign+'/',str(destination)+'/'],check=True)
    print('Retrieved',campaign)
PY
