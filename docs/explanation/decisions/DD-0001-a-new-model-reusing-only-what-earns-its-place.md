# DD-0001 A new model, reusing only what earns its place

**Status:** Accepted
**Date:** 2026-10-17
**Decided by:** the owner
**Requirements:** [P1](../../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first), [R1](../../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale), [R2](../../reference/requirements/shape-of-the-record.md#r2-kind-is-a-label-given-after), [R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept), [K1](../../reference/requirements/platform.md#k1-contract-as-data), [K2](../../reference/requirements/platform.md#k2-ports-from-files-to-databases)

## Context

Three rounds of research judged the current Cartograph against the frameworks of fourteen domains ([why a new model](../why-a-new-model.md)). Its platform passes the platform requirements; its model fails at the centre. People must classify work before anything else ([P1](../../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first), [R2](../../reference/requirements/shape-of-the-record.md#r2-kind-is-a-label-given-after)), each of 22 kinds has its own shape ([R1](../../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale)), the same concept is asked in several places ([R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept)), and there is no decision, stage or review as a record.

## Options

| Option | What it is | For | Against |
|---|---|---|---|
| 1. Evolve | Add the missing records beside today's 22 kinds and merge duplicates one at a time | Least disruption per step | The centre requirements cannot pass by addition; much work is built twice |
| 2. New model on the kept platform | A new contract around one record of work; keep the engine's platform | Every requirement reachable; proven parts kept | The model, its screens and the guide are rewritten |
| 3. Complete rebuild | A new codebase from nothing | Free choice of every technology | Rebuilds parts that already pass, for no requirement that needs it |

## Decision

Option 2, held in a greenfield spirit. The model, the vocabulary, the screens and the documentation are designed from the requirements, with no obligation to today's shapes. Each platform part is a **candidate for reuse**, kept only when it meets the requirements on its own merits ([reuse of today's parts](../../reference/reuse-candidates.md)). Nothing is kept because it exists.

## Consequences

- The design is finished and approved in this repository before code changes ([DD-0003](DD-0003-design-approved-before-the-code-changes.md)).
- A platform part that fails a requirement is replaced, even if it works today.
- Today's guide, kind schemas and kind-shaped screens are expected to be replaced.
