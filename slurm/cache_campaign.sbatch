#!/usr/bin/env bash
# Cache-mode campaign. This template is the only place a campaign is submitted to
# Slurm: Flat mode runs on one dedicated node outside Slurm (scripts/flat_campaign.sh),
# so every Cache submission must keep that node out of reach.
#SBATCH --job-name=hw-cache
#SBATCH --partition=cresco8_hbm
#SBATCH --exclude=cresco8-hbm14
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=112
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=01:00:00
# Account, output paths and staged source are supplied on the sbatch command line
# by scripts/submit_cresco8.sh from the private environment file.
set -euo pipefail
: "${HW_BENCH_STAGE:?staged source tree}" "${HW_BENCH_OUTPUT:?campaign output}" "${AMX_CONTAINER:?container image}"
export HW_BENCH_EXCLUSIVE=1
exec bash "${HW_BENCH_STAGE}/scripts/run_all.sh" cache "${HW_BENCH_OUTPUT}"
