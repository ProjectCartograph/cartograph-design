# DD-0006 The case grows inside the record

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [D1](../../reference/requirements/case-and-decisions.md#d1-a-case-that-grows), [D2](../../reference/requirements/case-and-decisions.md#d2-five-questions-at-any-scale), [D3](../../reference/requirements/case-and-decisions.md#d3-if-nothing-is-done), [D4](../../reference/requirements/case-and-decisions.md#d4-options-considered), [P9](../../reference/requirements/people-and-first-use.md#p9-save-anything-completeness-only-when-authorising), [P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)

## Context

The Green Book's strategic outline, outline and full business cases, New Zealand's indicative and detailed cases, the World Bank's concept and appraisal, GOV.UK's discovery, alpha and beta, and RIBA's stages are one idea: the same parts become more complete, and each step ends in a decision ([round 3, g1](../../../research/round-3/g1-business-case.md), [g3](../../../research/round-3/g3-life-cycle.md)). Today Cartograph asks for everything in one pass, and planning detail early.

## Options

| Option | For | Against |
|---|---|---|
| A. Separate documents per stage (a brief, then a plan, then a full case) | Familiar in PRINCE2 and the Green Book | Copies drift; a person rewrites what they wrote |
| B. One record whose parts have a level of completeness | Nothing is written twice; any stage is a view | Needs a way to say how complete each part must be, and when |
| C. Everything at once, as today | Simple to build | Overload ([P2](../../reference/requirements/people-and-first-use.md#p2-one-thing-per-screen)); asks later things too early |

## Decision (proposed)

Option B. The **case** is part of the piece of work: the need, the change wanted, if nothing is done ([D3](../../reference/requirements/case-and-decisions.md#d3-if-nothing-is-done)), options ([D4](../../reference/requirements/case-and-decisions.md#d4-options-considered)), the intended results and measures, cost and funding, risks, and how it will be delivered. The profile says, for each decision point, which parts must be filled and how far ([DD-0008](DD-0008-profiles-hold-what-differs-between-domains.md)). Until a decision needs them, missing parts are advice, never a block ([P9](../../reference/requirements/people-and-first-use.md#p9-save-anything-completeness-only-when-authorising)).

The five questions of [D2](../../reference/requirements/case-and-decisions.md#d2-five-questions-at-any-scale) (need, value, viability, affordability, achievability) organise the parts, so a five case business case is one view of the case, and a one-page brief another.

## Consequences

- A decision rests on a version of the case ([DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md), [DD-0011](DD-0011-documents-with-an-append-only-journal.md)).
- Completeness becomes a property computed per decision, replacing today's single "complete" check.
- Proportion ([P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)) is set once, by the person and their approver, through the profile and the work's own settings.
