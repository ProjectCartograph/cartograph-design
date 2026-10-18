# DD-0018 Live co-editing is not core

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone), [X5](../../reference/requirements/domains-and-configuration.md#x5-methods-are-extensions), [P2](../../reference/requirements/people-and-first-use.md#p2-one-thing-per-screen)

## Context

Today every record can be co-edited live with presence and cursors, through Automerge compiled from Rust to WebAssembly, a sync socket and a 32-property presence document. No requirement asks for it; the in-person tests did not; its build and contract cost is real ([round 3, g5 section 3.3](../../../research/round-3/g5-current-state.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Keep live co-editing in the core | Teams can write together | Cost in the build, the contract and every screen |
| B. Proposals and comments in the core; live co-editing as an optional adapter | The core stays small; teams that need it can turn it on | Two ways to collaborate to keep coherent |
| C. Drop it | Smallest | Loses a working capability |

## Decision (proposed)

Option B. The core collaborates through proposals and comments. Live co-editing is an adapter behind the sync port, off by default, and must not shape the record or the first walk.
