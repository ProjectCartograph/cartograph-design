# DD-0010 Views are renderings of the one record

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R5](../../reference/requirements/shape-of-the-record.md#r5-views-not-copies), [D9](../../reference/requirements/case-and-decisions.md#d9-the-chain-upward), [B3](../../reference/requirements/benefits-handover-closure.md#b3-from-benefit-to-work-and-back), [O4](../../reference/requirements/openness-and-exchange.md#o4-mappings-to-open-standards)

## Context

Each audience accepts its own document: a sponsor a charter, a treasury a five case business case, a development funder a logframe, a charity board a theory of change, a grant maker its form, an open-data registry an IATI file. Copies drift from each other and from the work.

## Options

| Option | For | Against |
|---|---|---|
| A. Documents as records, each edited | Each looks exactly as its audience wants | They drift; a person writes the same thing many times |
| B. Views rendered from the record, chosen by profile | One truth; any number of views | A view can only show what the record holds; layouts are work |
| C. Export only, edited elsewhere | Little to build | The record stops being the truth once a document is edited |

## Decision (proposed)

Option B. A **view** is a rendering of the record for an audience: a template that selects and orders parts of the case, its decisions and its results. Views are declared in the profile; printing and export use the same renderer. A view never stores content of its own; where an audience needs words the record lacks, the record gains a part.

## Consequences

- The charter stops being special: it is one view among several.
- Mappings to open standards ([O4](../../reference/requirements/openness-and-exchange.md#o4-mappings-to-open-standards)) are views with a declared loss.
