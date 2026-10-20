# DD-0012 Strategy is shared context, not inside the work

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R7](../../reference/requirements/shape-of-the-record.md#r7-outputs-outcomes-and-benefits-kept-apart), [M6](../../reference/requirements/results-and-measures.md#m6-recognised-indicator-lists), [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [M5](../../reference/requirements/results-and-measures.md#m5-aggregation-and-disaggregation), [X2](../../reference/requirements/domains-and-configuration.md#x2-results-hierarchies-mapped-to-reference-levels)

## Context

Many pieces of work serve the same goal and report the same indicator. Results frameworks nest work under shared objectives, and benefits maps trace many pieces of work to one objective ([TBS-RESULTS](../../reference/bibliography.md), [IATI](../../reference/bibliography.md), [IPA-BENEFITS](../../reference/bibliography.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Each piece of work holds its own goals and indicators | Self-contained | Duplicated across work; totals impossible |
| B. Shared records that work points to | One indicator, many contributors; the chain upward is a link | A person must find or add the shared record |

## Decision (proposed)

Option B. **Purpose, goals, problems, indicators, groups and parties** are shared records in the workspace. A piece of work's intended results point to the goals they serve; its measures may be its own or a shared indicator, and a programme or fund can declare common measures and see which members report them ([M6](../../reference/requirements/results-and-measures.md#m6-recognised-indicator-lists)). The hierarchy is the profile's recognised one, its levels mapped to the reference levels ([X2](../../reference/requirements/domains-and-configuration.md#x2-results-hierarchies-mapped-to-reference-levels)).

## Consequences

- The walk offers existing goals and indicators before creating new ones.
- A benefit is an intended result with an owner and a measure, referring to the outcome it follows from ([R7](../../reference/requirements/shape-of-the-record.md#r7-outputs-outcomes-and-benefits-kept-apart)) and pointing at a shared goal; there is no separate kind of record for it.
- A shared indicator totals its contributors only by its own aggregation rule, and shows the total with its breakdown ([M5](../../reference/requirements/results-and-measures.md#m5-aggregation-and-disaggregation)).
