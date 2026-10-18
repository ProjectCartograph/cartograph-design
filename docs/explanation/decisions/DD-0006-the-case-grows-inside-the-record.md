# DD-0006 The case grows inside the record

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [D1](../../reference/requirements/case-and-decisions.md#d1-a-case-that-grows), [D2](../../reference/requirements/case-and-decisions.md#d2-five-questions-at-any-scale), [D3](../../reference/requirements/case-and-decisions.md#d3-if-nothing-new-is-done), [D4](../../reference/requirements/case-and-decisions.md#d4-options-considered), [P9](../../reference/requirements/people-and-first-use.md#p9-save-anything-completeness-only-when-deciding), [P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)

## Context

Staged business cases, design stages and funding cycles describe one behaviour: the same parts of the justification become more complete, and each step ends in a decision ([HMT-CASES](../../reference/bibliography.md) 4.13 to 4.25, [NZT-BBC](../../reference/bibliography.md), [WB-CYCLE](../../reference/bibliography.md), [RIBA](../../reference/bibliography.md), [GDS-MANUAL](../../reference/bibliography.md)). Asking for everything at once overloads people and asks for later things too early ([FIELD](../../reference/bibliography.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. A document per stage | Familiar | Copies drift; a person rewrites what they wrote |
| B. One record whose parts have a level of completeness | Nothing written twice; any stage is a view | Needs a way to say how complete each part must be, and when |
| C. Everything at once | Simple to build | Overload ([P2](../../reference/requirements/people-and-first-use.md#p2-one-decision-per-screen)) |

## Decision (proposed)

Option B. The **case** is part of the piece of work: the need, the change wanted, what happens if nothing new is done ([D3](../../reference/requirements/case-and-decisions.md#d3-if-nothing-new-is-done)), the options ([D4](../../reference/requirements/case-and-decisions.md#d4-options-considered)), the intended results and their measures, cost and funding, risks, and how it will be delivered. The profile says which parts each decision needs, and how far ([DD-0008](DD-0008-profiles-hold-what-differs-between-domains.md)). Until a decision needs them, missing parts are advice, never a block ([P9](../../reference/requirements/people-and-first-use.md#p9-save-anything-completeness-only-when-deciding)). The five questions of [D2](../../reference/requirements/case-and-decisions.md#d2-five-questions-at-any-scale) organise the parts, so a five case business case and a one-page brief are two views of one case.

## Consequences

- A decision rests on a version of the case ([DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md), [DD-0011](DD-0011-documents-with-an-append-only-journal.md)).
- Completeness is computed per decision, not as one flag for the whole record.
- Proportion ([P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)) is agreed once and applied by the walk.
