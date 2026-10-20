# DD-0010 Views are renderings of the one record

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R5](../../reference/requirements/shape-of-the-record.md#r5-views-not-copies), [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole), [X1](../../reference/requirements/domains-and-configuration.md#x1-the-workspaces-taxonomy), [E8](../../reference/requirements/change-and-evaluation.md#e8-evaluation-lenses-as-views), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default)

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

- A charter is one view among several; an evaluation lens is a view a profile may require ([E8](../../reference/requirements/change-and-evaluation.md#e8-evaluation-lenses-as-views)).
- A standard view and every export use the standard terms, while the workspace's own views use its taxonomy ([X1](../../reference/requirements/domains-and-configuration.md#x1-the-workspaces-taxonomy)).
- A view is rendered where the record can be read, on a person's device, since a server holds only what it cannot read ([K10](../../reference/requirements/platform.md#k10-encrypted-by-default); [DD-0018](DD-0018-live-co-editing-in-drafts.md)).
- A mapping to an open standard is a view of a record that holds the whole standard; it lists only the parts of the record it leaves out ([O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole)).
