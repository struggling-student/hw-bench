"""The follow-up campaign parts, planned with --dry-run (no node, no Slurm, no output)."""

import re
import subprocess
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[1]


def plan(mode: str, part: str) -> tuple[str, list[str]]:
    out = subprocess.run(
        [sys.executable, str(ROOT / "scripts/run_campaign.py"), mode, str(ROOT / "build/never-created"), "--only", part, "--dry-run"],
        capture_output=True, text=True, check=True,
    ).stdout.splitlines()
    return out[0], [line.split(None, 1)[1] for line in out[1:]]


def test_dry_run_writes_nothing():
    plan("flat", "chains")
    assert not (ROOT / "build/never-created").exists()


@pytest.mark.parametrize(
    "mode,part,count",
    [
        ("flat", "gemmvalid", 108),
        ("flat", "remotehbm", 60),
        ("flat", "chains", 6),
        ("flat", "sweep12", 26),
        ("flat", "repeat", 10),
        ("cache", "cachefill", 31),
        ("cache", "repeat", 8),
        ("flat", "counted", 24),
        ("cache", "counted", 18),
    ],
)
def test_part_sizes_and_unique_record_names(mode, part, count):
    head, names = plan(mode, part)
    assert len(names) == count == int(re.search(r"(\d+) records", head)[1])
    assert len(set(names)) == len(names)


@pytest.mark.parametrize("part", ["gemmvalid", "remotehbm", "chains", "sweep12"])
def test_flat_only_parts_refuse_cache_mode(part):
    result = subprocess.run(
        [sys.executable, str(ROOT / "scripts/run_campaign.py"), "cache", str(ROOT / "build/never-created"), "--only", part, "--dry-run"],
        capture_output=True, text=True,
    )
    assert result.returncode != 0 and "Flat-mode part" in (result.stderr + result.stdout)


def test_cachefill_refuses_flat_mode():
    result = subprocess.run(
        [sys.executable, str(ROOT / "scripts/run_campaign.py"), "flat", str(ROOT / "build/never-created"), "--only", "cachefill", "--dry-run"],
        capture_output=True, text=True,
    )
    assert result.returncode != 0


def test_gemmvalid_covers_the_planned_questions():
    _, names = plan("flat", "gemmvalid")
    text = "\n".join(names)
    # pool convergence at 4x, 16x and 64x the on-chip capacity (225 MiB)
    on_chip = int(112.5 * 2**20) + 56 * 2 * 2**20
    for mult in (4, 16, 64):
        assert f"pool{mult * on_chip}" in text
    assert text.count("gemm_overhead") == 24 and "N256" in text and "N1024" in text
    assert text.count("gemm_prepacked") == 12 and text.count("prepacked") >= 12


def test_cachefill_adds_working_sets_and_far_latency():
    _, names = plan("cache", "cachefill")
    text = "\n".join(names)
    for gib in (24, 32, 40, 48, 56):
        assert f"g{gib}-" in text
    assert text.count("hier_latency_far") == 5 and "g128-" in text


def test_remote_repeat_pairs_every_remote_point_with_a_local_control():
    _, names = plan("flat", "remotehbm")
    remote = [n for n in names if n.startswith("remote_repeat-")]
    local = [n for n in names if n.startswith("remote_repeat_local-")]
    assert len(remote) == len(local) == 30


def test_chain_counts_and_sweep_range():
    _, names = plan("flat", "chains")
    assert {re.search(r"c(\d+)$", n)[1] for n in names} == {"6", "12", "24"}
    _, sweep = plan("flat", "sweep12")
    assert any("k1024" in n and n.endswith("c12") for n in sweep) and any("k1024" in n and n.endswith("c8") for n in sweep)
