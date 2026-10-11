"""Every route into Slurm must keep the Flat node out of reach."""

import re
from pathlib import Path

from hwbench.execution import FLAT_NODE

ROOT = Path(__file__).resolve().parents[1]
SLURM_COMMANDS = re.compile(r"(?<![\w./-])(sbatch|srun|salloc)(?![\w-])")


def logical_lines(path: Path):
    """Shell lines with comments dropped and backslash continuations joined."""

    joined, pending = [], ""
    for raw in path.read_text().splitlines():
        line = raw.rstrip()
        if line.lstrip().startswith("#"):
            continue
        if line.endswith("\\"):
            pending += line[:-1] + " "
            continue
        joined.append(pending + line)
        pending = ""
    return joined


def shell_scripts():
    return sorted(
        p
        for base in ("scripts", "slurm")
        for p in (ROOT / base).iterdir()
        if p.suffix in {".sh", ".sbatch"}
    )


def test_every_sbatch_template_pins_partition_exclusion_and_whole_node():
    templates = sorted((ROOT / "slurm").glob("*.sbatch"))
    assert templates, "no sbatch templates found"
    for template in templates:
        directives = {
            line.split(None, 1)[1].strip()
            for line in template.read_text().splitlines()
            if line.startswith("#SBATCH ")
        }
        assert f"--exclude={FLAT_NODE}" in directives, template
        assert "--partition=cresco8_hbm" in directives, template
        assert "--exclusive" in directives and "--mem=0" in directives, template


def test_every_slurm_invocation_in_scripts_excludes_the_flat_node():
    found = 0
    for script in shell_scripts():
        for line in logical_lines(script):
            if SLURM_COMMANDS.search(line):
                found += 1
                assert f"--exclude={FLAT_NODE}" in line.replace('"', ""), (
                    f"{script.name}: Slurm call without --exclude={FLAT_NODE}: {line}"
                )
    assert found, "expected the cache submission to call sbatch"


def test_flat_path_never_uses_slurm():
    for name in ("flat_campaign.sh", "run_all.sh"):
        for line in logical_lines(ROOT / "scripts" / name):
            assert not SLURM_COMMANDS.search(line), f"{name}: {line}"
    # The shell submit script must send cache work only to the versioned template.
    submit = (ROOT / "scripts/submit_cresco8.sh").read_text()
    assert "slurm/cache_campaign.sbatch" in submit


def test_python_launchers_do_not_submit_jobs():
    for path in list((ROOT / "scripts").glob("*.py")) + list(
        (ROOT / "src/hwbench").glob("*.py")
    ):
        for line in path.read_text().splitlines():
            if line.lstrip().startswith("#"):
                continue
            assert not re.search(r"""["'](sbatch|srun|salloc)["']""", line), (
                f"{path.name}: {line}"
            )


def test_template_and_python_constant_name_the_same_node():
    assert FLAT_NODE == "cresco8-hbm14"
    submit = (ROOT / "scripts/submit_cresco8.sh").read_text()
    assert f'{FLAT_NODE}"' in submit  # literal on the sbatch line and flat default
