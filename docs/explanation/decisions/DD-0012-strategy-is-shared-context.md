# DD-0012 Strategy is shared context, not inside the work

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [M5](../../reference/requirements/results-and-measures.md#m5-adding-up-and-breaking-down), [X2](../../reference/requirements/domains-and-configuration.md#x2-the-shape-of-the-results-hierarchy)

## Context

Many pieces of work serve the same goal and report the same indicator. Results frameworks nest work under shared objectives, and benefits maps trace many pieces of work to one objective ([TBS-RESULTS](../../reference/bibliography.md), [IATI](../../reference/bibliography.md), [IPA-BENEFITS](../../reference/bibliography.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Each piece of work holds its own goals and indicators | Self-contained | Duplicated across work; totals impossible |
| B. Shared records that work points to | One indicator, many contributors; the chain upward is a link | A person must find or add the shared record |

## Decision (proposed)

Option B. **Purpose, goals, problems, indicators, groups and parties** are shared records in the workspace. A piece of work's intended results point to the goals they serve; its measures may be its own or a shared indicator. The depth and names of the hierarchy come from the profile ([X2](../../reference/requirements/domains-and-configuration.md#x2-the-shape-of-the-results-hierarchy)).

## Consequences

- The walk offers existing goals and indicators before creating new ones.
- A benefit is an intended result with an owner and a measure, pointing at a shared goal; there is no separate kind of record for it.
