# DD-0019 Tranches are records of a programme

**Status:** Accepted
**Date:** 2026-10-20
**Requirements:** [S4](../../reference/requirements/stages-and-cycles.md#s4-a-groups-own-decision-points), [S5](../../reference/requirements/stages-and-cycles.md#s5-a-programmes-decision-points), [S6](../../reference/requirements/stages-and-cycles.md#s6-a-tranche-declares-its-step-change), [S7](../../reference/requirements/stages-and-cycles.md#s7-a-programme-stays-justified), [R4](../../reference/requirements/shape-of-the-record.md#r4-typed-links-between-work), [R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept), [D5](../../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record)

## Context

A programme is phased in tranches, each built around a step change in capability, opened by its own decision and followed by a review of whether the programme is still justified ([GOVS002](../../reference/bibliography.md) 3.2; [TEAL](../../reference/bibliography.md) 3.2.3, 14.7, 14.8; [TBS-DMPP](../../reference/bibliography.md) appendix H; [WB-MPA](../../reference/bibliography.md); [ADB-MFF](../../reference/bibliography.md); [AFDB-MTF](../../reference/bibliography.md)). Tranches are unlike stages: they often overlap and need not run in sequence, projects can span them, and those after the current one often cannot be predicted ([TEAL](../../reference/bibliography.md) 14.8; [APM-LIFECYCLES](../../reference/bibliography.md)). A tranche can itself be run as a sub-programme ([TEAL](../../reference/bibliography.md) 14.7.3). Under [DD-0004](DD-0004-one-record-for-work-at-any-scale.md) a programme is a piece of work with a label, and rules that differ by label are checks, not schemas; under [DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md) acts with their own author, date and life are records.

## Options

| Option | For | Against |
|---|---|---|
| A. A tranche as a piece of work labelled tranche | One kind of record; the case and links come free | A tranche has no case of its own unless it is run as a sub-programme; its declaration would repeat the programme's case ([R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept)) |
| B. A tranche as a record of the programme, in Governance, that work links to | Holds the declaration, the decision that opens it and the look back; overlap and work in more than one tranche are links | A record that only programmes use, against DD-0004's preference for checks |
| C. A tranche as a stage ([DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md)) | No new record | Stages follow one another and split one piece of work; tranches overlap and group many |
| D. No record: tranches as tags on the work | Smallest | The declaration, its conditions and the decision that opens it have nowhere to live |

## Decision

Option B. A **tranche** is a Governance record belonging to a programme. It holds the declaration of [S6](../../reference/requirements/stages-and-cycles.md#s6-a-tranche-declares-its-step-change), is opened by a decision record ([D5](../../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record)) after the review of [S7](../../reference/requirements/stages-and-cycles.md#s7-a-programme-stays-justified), and closes with a look back. Pieces of work join a tranche by a typed link and may join more than one. Where a tranche must be run as a programme of its own, it is a piece of work labelled programme, part of the larger one, and the tranche record points to it. The programme's decision points and the level at which delivery is committed ([S5](../../reference/requirements/stages-and-cycles.md#s5-a-programmes-decision-points)) come from the profile, beside its life cycles ([DD-0008](DD-0008-profiles-hold-what-differs-between-domains.md)).

It is a record rather than a check because it carries what DD-0007's records carry: an author, a decision that opens it, conditions with owners, and a look back of its own.

## Consequences

- A tranche is not a stage, and the glossary says so; PM²'s stages of a programme and the World Bank's phases map to tranches through the taxonomy ([X1](../../reference/requirements/domains-and-configuration.md#x1-the-workspaces-taxonomy)).
- Only the current tranche needs its full declaration; later ones stay in outline.
- A change to the programme's objective or ceiling is a decision on the programme, not on a tranche ([D8](../../reference/requirements/case-and-decisions.md#d8-an-approved-plan-and-changes-to-it)).
- Whether tranching improves results is not yet shown; the World Bank's early evaluation of its multiphase approach found gains in learning and continuity but little yet in coherence or adaptation ([WB-IEG-MPA](../../reference/bibliography.md)).
