# DD-0018 Live co-editing is not core

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone), [X5](../../reference/requirements/domains-and-configuration.md#x5-methods-are-extensions), [P2](../../reference/requirements/people-and-first-use.md#p2-one-thing-per-screen)

## Context

Several people writing in one record at once, with presence and cursors, helps some teams. No requirement asks for it, people in the field did not, and it is costly to build and to carry in the contract and every screen.

## Options

| Option | For | Against |
|---|---|---|
| A. Live co-editing in the core | Teams write together | Its cost lands on everyone |
| B. Proposals and comments in the core; live co-editing an optional adapter | The core stays small; teams that want it turn it on | Two ways to collaborate to keep coherent |
| C. None | Smallest | Loses something some teams value |

## Decision (proposed)

Option B. The core collaborates through proposals and comments. Live co-editing is an adapter behind the synchronisation port, off by default, and must not shape the record or the first walk.
