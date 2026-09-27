#!/usr/bin/env python3
"""Remove execution-only randomness from the generated, executed notebook."""

from pathlib import Path
import re

import nbformat


NOTEBOOK = Path(__file__).resolve().parents[1] / "notebooks" / "roofline_analysis.ipynb"
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

    return STYLER_REPR.sub("<pandas Styler>",
                           STYLER.sub(replace_table, UUID.sub(replace_id, value)))


def main() -> None:
    notebook = nbformat.read(NOTEBOOK, as_version=4)
    for cell_index, cell in enumerate(notebook.cells):
        cell.id = f"hwbench-cell-{cell_index:03d}"
        cell.metadata.pop("execution", None)
        if cell.cell_type != "code":
            continue
        for output_index, output in enumerate(cell.get("outputs", [])):
            if not hasattr(output, "data"):
                continue
            tag = f"{cell_index:03d}-{output_index:02d}"
            for mime, payload in output.data.items():
                if isinstance(payload, str):
                    output.data[mime] = normalize_string(payload, tag)
                elif isinstance(payload, list):
                    # nbformat joins these lines on write; normalize as one string
                    # so a plot ID split across lines still has one stable mapping.
                    output.data[mime] = normalize_string("".join(payload), tag)
    nbformat.validate(notebook)
    nbformat.write(notebook, NOTEBOOK)
    print(f"Normalized execution-only IDs in {NOTEBOOK}")


if __name__ == "__main__":
    main()
