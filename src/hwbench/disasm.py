"""Per-loop disassembly evidence: does an innermost loop contain the instruction a kernel claims?

A whole-binary search proves only that the instruction exists somewhere in the executable
(review A14): the reference check, a warm-up or an unrelated function would satisfy it.
Here the ``objdump -d`` listing is split into functions, loops are recovered from backward
branches, and a feature is accepted only when an *innermost* loop of one function holds at
least as many of its instructions as the kernel has independent chains (or destination
tiles).  The count matters as much as the presence: a loop with one FMA is latency-bound.

Standard library only, so the build script can run it before any analysis dependency exists.
"""

from __future__ import annotations

import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path

#: feature -> (instruction pattern, minimum occurrences inside one innermost loop).
#: FMA sweeps and peaks use 8, 12 or 16 chains; VNNI and BF16 dot products 6 to 24;
#: AMX kernels keep four destination tiles busy; the non-temporal Triad stores one vector per iteration.
FEATURES: dict[str, tuple[str, int]] = {
    "avx512_fma": (r"vfmadd\w*\s.*%zmm", 8),
    "amx_bf16": (r"tdpbf16ps\b", 4),
    "amx_int8": (r"tdpbssd\b", 4),
    "avx512_vnni": (r"vpdpbusd\s.*%zmm", 8),
    "avx512_bf16": (r"vdpbf16ps\s.*%zmm", 6),
    "nt_store": (r"vmovntpd\s.*%zmm", 1),
}

_FUNCTION = re.compile(r"^([0-9a-f]+) <(.+)>:$")
_INSTRUCTION = re.compile(r"^\s*([0-9a-f]+):\t(?:[0-9a-f]{2} )+\s*\t?([a-z0-9_.]+)\s*(.*)$")
_TARGET = re.compile(r"^([0-9a-f]+) <")


@dataclass(frozen=True)
class Loop:
    function: str
    start: int
    end: int
    count: int


def parse(listing: str) -> dict[str, list[tuple[int, str]]]:
    """Function name -> [(address, 'mnemonic operands')] from an ``objdump -d`` listing."""

    functions: dict[str, list[tuple[int, str]]] = {}
    current: list[tuple[int, str]] | None = None
    for line in listing.splitlines():
        head = _FUNCTION.match(line)
        if head:
            current = functions.setdefault(head.group(2), [])
            continue
        match = _INSTRUCTION.match(line)
        if match and current is not None:
            current.append((int(match.group(1), 16), f"{match.group(2)} {match.group(3)}".strip()))
    return functions


def innermost_loops(instructions: list[tuple[int, str]]) -> list[tuple[int, int]]:
    """(start, end) address ranges of loops with no other loop inside, from backward branches."""

    if not instructions:
        return []
    first = instructions[0][0]
    ranges = set()
    for address, text in instructions:
        if not text.startswith("j"):
            continue
        target = _TARGET.match(text.split(None, 1)[1]) if " " in text else None
        if target and first <= int(target.group(1), 16) <= address:
            ranges.add((int(target.group(1), 16), address))
    return sorted(r for r in ranges if not any(o != r and r[0] <= o[0] and o[1] <= r[1] for o in ranges))


def evidence(listing: str) -> dict[str, list[Loop]]:
    """For each feature, the innermost loops holding at least its minimum count (best first)."""

    functions = parse(listing)
    found: dict[str, list[Loop]] = {name: [] for name in FEATURES}
    for function, instructions in functions.items():
        for start, end in innermost_loops(instructions):
            body = [text for address, text in instructions if start <= address <= end]
            for name, (pattern, minimum) in FEATURES.items():
                count = sum(1 for text in body if re.match(pattern, text))
                if count >= minimum:
                    found[name].append(Loop(function, start, end, count))
    for loops in found.values():
        loops.sort(key=lambda loop: -loop.count)
    return found


def verification(listing: str) -> dict[str, bool]:
    return {name: bool(loops) for name, loops in evidence(listing).items()}


def main(argv: list[str]) -> int:
    """``python -m hwbench.disasm hardware.asm``: print the evidence, fail if a feature has none."""

    found = evidence(Path(argv[1]).read_text())
    for name, loops in found.items():
        best = loops[0] if loops else None
        where = f"{best.count} in a loop of {best.function} at {best.start:#x}" if best else "none"
        print(f"{name}: {where}", file=sys.stderr)
    print(json.dumps({name: bool(loops) for name, loops in found.items()}, sort_keys=True))
    missing = [name for name, loops in found.items() if not loops]
    if missing:
        print(f"no innermost loop holds {', '.join(missing)}", file=sys.stderr)
    return 1 if missing else 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
