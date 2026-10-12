"""Raw campaign data is committed, so it must not carry account-identifying strings."""

import importlib.util
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("scrub_raw", ROOT / "scripts/scrub_raw.py")
scrub_raw = importlib.util.module_from_spec(spec)
spec.loader.exec_module(scrub_raw)


def test_scrub_replaces_account_and_drops_expiry_lines():
    text = (
        b"path /lpor1/store_0/usr/crainic/run\n"
        b"Last password change: Fri Sep 04 16:38:01 CEST 2026\n"
        b"Password expiration date: Sat Sep 04 16:38:01 CEST 2027\n"
        b"No Modulefiles Currently Loaded.\n"
    )
    assert scrub_raw.scrub(text) == (
        b"path /lpor1/store_0/usr/user/run\nNo Modulefiles Currently Loaded.\n"
    )


def test_scrub_is_idempotent():
    once = scrub_raw.scrub(b"/afs/enea.it/por/user/crainic/dev\n")
    assert scrub_raw.scrub(once) == once


def test_committed_raw_data_is_clean():
    raw = ROOT / "data/raw"
    offenders = [
        str(p.relative_to(ROOT))
        for p in raw.rglob("*")
        if p.is_file()
        and scrub_raw.is_text(p.read_bytes())
        and scrub_raw.scrub(p.read_bytes()) != p.read_bytes()
    ]
    if not any(raw.rglob("*.json")):
        pytest.skip("no raw data in this checkout")
    assert not offenders, offenders[:5]
