# DD-0017 Agents propose; meaning is judged behind a port

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [K1](../../reference/requirements/platform.md#k1-contract-as-data)

## Context

Today agents work through an MCP server, read and propose, and never write the record (engine ADRs 0016, 0017, 0029). Questions of meaning (is this sentence an objective or two, do these two goals say the same) go to a language model behind a port, off by default, with an honest "not judged" answer (ADRs 0023, 0030). The research found both sound.

## Decision (proposed)

Keep both principles. Agents use the same proposals as people ([DD-0014](DD-0014-proposals-with-a-straight-in-policy.md)) and meet the same checks. The meaning model stays behind a port and is never needed for the core to work. To avoid a collision with governance decisions, the port is named the **meaning model**, not the decision model.
