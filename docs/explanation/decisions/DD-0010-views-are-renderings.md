# DD-0010 Views are renderings of the one record

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R5](../../reference/requirements/shape-of-the-record.md#r5-views-not-copies), [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole)

## Context

Each audience accepts its own document: a sponsor a charter, a treasury a five case business case, a development funder a logical framework, a charity's board a theory of change, a grant maker its form, an open data registry a file in its standard ([HMT-GREEN](../../reference/bibliography.md), [EC-PCM](../../reference/bibliography.md), [KELLOGG](../../reference/bibliography.md), [360GIVING](../../reference/bibliography.md), [IATI](../../reference/bibliography.md)). Documents copied from a record drift from it.

## Options

| Option | For | Against |
|---|---|---|
| A. Documents as records, each edited | Each looks exactly as its audience wants | They drift; the same thing is written many times |
| B. Views rendered from the record, chosen by the profile | One truth, any number of views | A view shows only what the record holds; layouts are work |
| C. Export, then edit elsewhere | Little to build | The record stops being the truth |

## Decision (proposed)

Option B. A **view** is a template that selects and orders parts of the case, its decisions and its results for an audience. Views are declared in the profile, and printing and export use the same renderer. A view stores no content; where an audience needs something the record lacks, the record gains a part.

## Consequences

- A charter is one view among several.
- A mapping to an open standard is a view of a record that holds the whole standard; it lists only the parts of the record it leaves out ([O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole)).
