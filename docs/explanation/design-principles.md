# Design principles

Eight principles carry the evidence into the design. Each says what it means, why it holds, what it rules out, and where the design applies it. When a later choice is hard, these are what it is judged against.

## 1. Start from the change

A person first says what is wrong and what should be different; the kind of work, its stages and its method come later, and are suggested rather than asked. Every framework asks in this order, and people in the field could answer these questions when they could answer no others.

*Rules out:* a first screen that asks which kind of record to create. *Applied in:* [DD-0005](decisions/DD-0005-the-entry-is-the-change.md), [P1](../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first).

## 2. One record at any scale

A hobbyist's idea and a national programme are the same kind of record. What differs is its label, its depth, and the profile it is read through. The open standards work this way, and it spares people the choice that stopped them.

*Rules out:* separate schemas for project, programme and portfolio. *Applied in:* [DD-0004](decisions/DD-0004-one-record-for-work-at-any-scale.md), [R1](../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale).

## 3. In proportion

Ask only what the next decision needs. The depth of the case, the rigour of evaluation and the weight of review follow what the person and whoever approves agree the work needs, never the tool's full capacity.

*Rules out:* a walk that asks every question of every piece of work. *Applied in:* [DD-0006](decisions/DD-0006-the-case-grows-inside-the-record.md), [P10](../reference/requirements/people-and-first-use.md#p10-depth-in-proportion), [E5](../reference/requirements/change-and-evaluation.md#e5-evaluation-in-proportion-and-possible).

## 4. Decisions are first-class

The acts that every life cycle turns on (a decision, a review, a handover, a look back at benefits) are records with their own authors, dates and reasons, resting on a fixed version of the case.

*Rules out:* a status field standing in for a decision. *Applied in:* [DD-0007](decisions/DD-0007-decisions-stages-and-reviews-are-records.md), [D5](../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record).

## 5. The work continues after delivery

Benefits are owned, accepted and tracked after the work closes, until a review says whether they arrived. Closing is a record, not the end of the record.

*Rules out:* archiving a piece of work at delivery. *Applied in:* [B4](../reference/requirements/benefits-handover-closure.md#b4-benefits-tracked-after-closure), [B6](../reference/requirements/benefits-handover-closure.md#b6-a-closing-record-and-a-look-back).

## 6. Domains configure; they do not fork

What differs between domains (words, hierarchy, stages, approval routes, required parts, calendars) is data in a profile. The core stays small and common; a method is an extension.

*Rules out:* building one domain's method into the core. *Applied in:* [DD-0008](decisions/DD-0008-profiles-hold-what-differs-between-domains.md), [DD-0009](decisions/DD-0009-a-small-core-with-extensions.md).

## 7. One truth, many views

Each audience reads the same record in the form it accepts: a charter, a business case, a logical framework, an open data file. Nothing is written twice.

*Rules out:* documents edited apart from the record. *Applied in:* [DD-0010](decisions/DD-0010-views-are-renderings.md), [R5](../reference/requirements/shape-of-the-record.md#r5-views-not-copies).

## 8. Open, durable and accountable

The record is plain files that leave the tool whole, its history cannot be lost, every change says who made it and why, agents propose and people decide, and personal data can be kept out of anything published.

*Rules out:* a record only the tool can read, or one an agent can change by itself. *Applied in:* [DD-0011](decisions/DD-0011-documents-with-an-append-only-journal.md), [DD-0014](decisions/DD-0014-proposals-saved-straight-in-when-alone.md), [DD-0016](decisions/DD-0016-exchange-through-mappings.md), [DD-0017](decisions/DD-0017-agents-propose-meaning-behind-a-port.md).
