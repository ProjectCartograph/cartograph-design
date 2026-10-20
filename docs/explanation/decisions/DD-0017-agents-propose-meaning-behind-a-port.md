# DD-0017 Agents propose; questions of meaning go behind a port

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [K1](../../reference/requirements/platform.md#k1-the-contract-as-data)

## Context

Agents read records and suggest changes; accountability for the record stays with people ([GOVS002](../../reference/bibliography.md), [CC-REPORT](../../reference/bibliography.md)). Some checks are questions of meaning that rules cannot settle: whether a sentence states one objective or two, whether two goals say the same thing. A language model can answer them, but the core must work without one, and must say plainly when a question was not judged.

## Decision (proposed)

Agents use the same proposals as people ([DD-0014](DD-0014-proposals-saved-straight-in-when-alone.md)) and meet the same checks. Questions of meaning go to a **language model** behind a port, off by default, whose answer may be "not judged". It is called by its standard name, as in the guidance on generative AI that treats large language models as one class of model ([NIST-GAI](../../reference/bibliography.md)), and its answers are never called decisions, so that "decision" keeps its governance sense.
