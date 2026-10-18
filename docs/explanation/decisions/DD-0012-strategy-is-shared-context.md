# DD-0012 Strategy is shared context, not inside the work

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [M5](../../reference/requirements/results-and-measures.md#m5-adding-up-and-breaking-down), [X2](../../reference/requirements/domains-and-configuration.md#x2-the-shape-of-the-results-hierarchy)

## Context

Today's strategy tree (purpose, goals at several levels, gaps, indicators, readings, beneficiary groups) is the part of the model the research judged strongest; it matches the Green Book's case for change, GovS 002's benefits and IATI's results ([round 3, g5 section 2](../../../research/round-3/g5-current-state.md)). Many pieces of work serve the same goal and report the same indicator.

## Options

| Option | For | Against |
|---|---|---|
| A. Each piece of work holds its own goals and indicators | Self-contained | Duplicated across work; roll-ups impossible |
| B. Shared records many pieces of work point to | One indicator, many contributors; the chain upward is a link | A person must find or add the shared record |

## Decision (proposed)

Option B. **Purpose, goals, gaps, indicators, groups and parties** are shared records in the workspace. A piece of work's intended results point to the goals they serve; its measures may be its own or a shared indicator. The results hierarchy's depth and names come from the profile ([X2](../../reference/requirements/domains-and-configuration.md#x2-the-shape-of-the-results-hierarchy)).

## Consequences

- The walk offers existing goals and indicators before creating new ones.
- A benefit is a result of the work, with an owner and a measure, pointing at a shared goal; there is no separate benefit kind.
