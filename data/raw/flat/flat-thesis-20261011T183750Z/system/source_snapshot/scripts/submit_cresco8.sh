#!/usr/bin/env bash
# Site values are supplied by a private environment file outside the repository.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:?usage: submit_cresco8.sh cache|flat}"
[[ "${MODE}" == cache || "${MODE}" == flat ]] || exit 2
: "${HW_BENCH_LOGIN_ALIAS:?}" "${HW_BENCH_REMOTE_ROOT:?}" "${HW_BENCH_RESULTS_ROOT:?}" "${HW_BENCH_SLURM_ACCOUNT:?}" "${AMX_CONTAINER:?}"
if [[ "${MODE}" == cache ]]; then
  NODE="${HW_BENCH_CACHE_NODE:?}"; PARTITION="${HW_BENCH_CACHE_PARTITION:?}"
else
  NODE="${HW_BENCH_FLAT_NODE:?}"; PARTITION="${HW_BENCH_FLAT_PARTITION:?}"
fi
# Use a unique staged source tree and result directory; never delete previous campaigns.
RUN_ID="${MODE}-thesis-$(date -u +%Y%m%dT%H%M%SZ)"
STAGE="${HW_BENCH_REMOTE_ROOT}/${RUN_ID}"
OUTPUT="${HW_BENCH_RESULTS_ROOT}/${RUN_ID}"
export RUN_ID STAGE OUTPUT NODE PARTITION ROOT
python3 - <<'PY'
import os,shlex,subprocess
v=os.environ;alias=v['HW_BENCH_LOGIN_ALIAS']
def remote(argv):return subprocess.check_output(['ssh',alias,shlex.join(argv)],text=True)
remote(['mkdir','-p',v['STAGE'],v['OUTPUT']])
subprocess.run(['rsync','-a','--exclude=.git','--exclude=.venv','--exclude=data','--exclude=figures','--exclude=build','--exclude=__pycache__',v['ROOT']+'/',alias+':'+v['STAGE']+'/'],check=True)
body=shlex.join(['env','AMX_CONTAINER='+v['AMX_CONTAINER'],'HW_BENCH_CAMPAIGN_PART='+v.get('HW_BENCH_CAMPAIGN_PART','all'),'bash',v['STAGE']+'/scripts/run_all.sh',v['MODE'] if 'MODE' in v else v['RUN_ID'].split('-')[0],v['OUTPUT']])
print(remote(['sbatch','--parsable','--job-name=hw-thesis-'+v['RUN_ID'].split('-')[0],
 '--partition='+v['PARTITION'],'--account='+v['HW_BENCH_SLURM_ACCOUNT'],'--nodelist='+v['NODE'],
 '--nodes=1','--ntasks=1','--cpus-per-task=112','--exclusive','--mem=0','--time=01:00:00',
 '--output='+v['OUTPUT']+'/slurm-%j.out','--error='+v['OUTPUT']+'/slurm-%j.err','--wrap='+body]),end='')
print('remote_result='+v['OUTPUT'])
PY
