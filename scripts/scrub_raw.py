#!/usr/bin/env python3
"""Remove account-identifying strings from raw campaign data before it is committed.

Replaces the cluster account name with a placeholder and drops the password-expiry
lines that a login-shell profile printed into ``system/site.txt``. Only text files are
touched, and the script is idempotent. ``--check`` changes nothing and fails if an
identifying string is still present.
"""

import argparse
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ACCOUNT = re.compile(rb"crainic")
PLACEHOLDER = b"user"
DROP_LINE = re.compile(
    rb"^(Password expiration date|Last password change|Password inactive|Account expires"
    rb"|Expiration date|Minimum number of days|Maximum number of days"
    rb"|Number of days of warning).*\n?",
    re.MULTILINE,
)


def scrub(data: bytes) -> bytes:
    return ACCOUNT.sub(PLACEHOLDER, DROP_LINE.sub(b"", data))


def is_text(data: bytes) -> bool:
    return b"\0" not in data[:4096]


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("paths", nargs="*", type=Path, default=[ROOT / "data/raw"])
    p.add_argument("--check", action="store_true")
    args = p.parse_args()
    changed = 0
    for base in args.paths:
        for path in sorted(p for p in base.rglob("*") if p.is_file()):
            data = path.read_bytes()
            if not is_text(data):
                continue
            clean = scrub(data)
            if clean == data:
                continue
            changed += 1
            if args.check:
                print(f"identifying string in {path.relative_to(ROOT)}")
            else:
                path.write_bytes(clean)
    verb = "need scrubbing" if args.check else "scrubbed"
    print(f"{changed} files {verb}")
    return 1 if args.check and changed else 0


if __name__ == "__main__":
    sys.exit(main())
