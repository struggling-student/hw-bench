"""The disassembly check looks at loops, not at the whole binary (review A14)."""

from pathlib import Path

import pytest

from hwbench import disasm

ROOT = Path(__file__).resolve().parents[1]


def listing(body: list[str], function: str = "kernel") -> str:
    lines = [f"0000000000001000 <{function}>:"]
    address = 0x1000
    for text in body:
        lines.append(f"    {address:x}:\t90 90 90 90    \t{text}")
        address += 8
    return "\n".join(lines)


FMA = "vfmadd231pd %zmm1,%zmm2,%zmm3"


def test_instruction_outside_any_loop_is_not_evidence():
    straight = listing([FMA] * 12 + ["ret"])
    assert not disasm.verification(straight)["avx512_fma"]


def test_loop_needs_as_many_copies_as_chains():
    one = listing([FMA, "add $0x1,%rax", "cmp %rdx,%rax", "jne 1000 <kernel>"])
    twelve = listing([FMA] * 12 + ["add $0x1,%rax", "cmp %rdx,%rax", "jne 1000 <kernel>"])
    assert not disasm.verification(one)["avx512_fma"]
    assert disasm.verification(twelve)["avx512_fma"]


def test_only_zmm_forms_count_for_fma():
    ymm = listing(["vfmadd231pd %ymm1,%ymm2,%ymm3"] * 12 + ["jne 1000 <kernel>"])
    assert not disasm.verification(ymm)["avx512_fma"]


def test_outer_loop_does_not_borrow_an_inner_loops_instructions():
    nested = listing(["nop", "vmovntpd %zmm0,(%rax)", "jne 1008 <kernel>", "jne 1000 <kernel>"])
    loops = disasm.innermost_loops(disasm.parse(nested)["kernel"])
    assert loops == [(0x1008, 0x1010)]


@pytest.mark.parametrize("campaign", ["flat-chains-20261012T205216Z", "flat-xcheck-20261012T074951Z"])
def test_retained_builds_pass_in_loops(campaign):
    path = ROOT / "data/raw/flat" / campaign / "system/hardware.asm"
    if not path.exists():
        pytest.skip("no retained disassembly in this checkout")
    assert all(disasm.verification(path.read_text()).values())
