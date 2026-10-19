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
campaigns={(mode,c) for mode,c in policy['primary_campaigns'].items()}
for mode,overrides in policy.get('benchmark_campaigns',{}).items():
    campaigns.update((mode,c) for c in overrides.values())
campaigns.update((mode,c) for mode,c in policy.get('supersede',{}).items())
for key in ('extended_campaigns','earlier_kernel_campaigns','uncore_campaigns'):
    for mode,ids in policy.get(key,{}).items():
        campaigns.update((mode,c) for c in ids)
for mode,campaign in sorted(campaigns):
    destination=root/'data/raw'/mode/campaign;destination.mkdir(parents=True,exist_ok=True)
    subprocess.run(['rsync','-a',os.environ['HW_BENCH_LOGIN_ALIAS']+':'+os.environ['HW_BENCH_RESULTS_ROOT']+'/'+campaign+'/',str(destination)+'/'],check=True)
    # Campaigns recorded before the platform record existed do not have one.
    platform=destination/'system/platform.json'
    if platform.exists():
        target=root/'data/processed'/f'platform_{campaign}.json';target.parent.mkdir(parents=True,exist_ok=True);target.write_text(platform.read_text())
    print('Retrieved',campaign)
PY
# Raw data is committed, so strip account-identifying strings straight after retrieval.
python3 "${ROOT}/scripts/scrub_raw.py"
