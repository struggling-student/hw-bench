#!/usr/bin/env python3
"""Remove execution-only randomness from the generated, executed notebook."""

import re

UUID = re.compile(r"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
STYLER = re.compile(r"T_[0-9a-f]{5,}")
STYLER_REPR = re.compile(r"<pandas\.io\.formats\.style\.Styler at 0x[0-9a-f]+>")


def normalize_string(value: str, tag: str) -> str:
    ids: dict[str, str] = {}
    tables: dict[str, str] = {}

    def replace_id(match: re.Match[str]) -> str:
        return ids.setdefault(match.group(), f"hwbench-plot-{tag}-{len(ids)}")

    def replace_table(match: re.Match[str]) -> str:
        return tables.setdefault(match.group(), f"T_hwbench_{tag}_{len(tables)}")

    return STYLER_REPR.sub(
        "<pandas Styler>", STYLER.sub(replace_table, UUID.sub(replace_id, value))
    )
