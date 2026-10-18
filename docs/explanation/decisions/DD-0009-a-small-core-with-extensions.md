# DD-0009 A small core, with methods as extensions

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [X5](../../reference/requirements/domains-and-configuration.md#x5-methods-are-extensions), [X6](../../reference/requirements/domains-and-configuration.md#x6-hold-results-link-to-tools), [E8](../../reference/requirements/change-and-evaluation.md#e8-evaluation-lenses-as-views), [P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)

## Context

Some methods serve one domain well and others not at all: process improvement's phases and control charts, formula languages for metrics, economic appraisal, a particular set of evaluation criteria. The open standards keep a small required core and add named extensions ([IATI](../../reference/bibliography.md), [OCDS](../../reference/bibliography.md), [360GIVING](../../reference/bibliography.md)). The exploratory implementation put several such methods in its core, where every person met them.

## Options

| Option | For | Against |
|---|---|---|
| A. Every method in the core | One thing to build | Weight for everyone; one domain's method on all |
| B. A small core and extensions, off unless turned on | The first walk stays light; each method serves its own users | An extension interface to design and keep stable |
| C. No methods | Smallest | Fails people who rely on them |

## Decision (proposed)

Option B. The **core** holds what every domain holds ([the domain model](../domain-model.md)). An **extension** adds fields, checks, views or analysis through a declared interface, is turned on by the profile, and never appears in the first walk. Where a domain has its own analysis tool, Cartograph holds the result and links to the tool ([X6](../../reference/requirements/domains-and-configuration.md#x6-hold-results-link-to-tools)).

The first extensions: process improvement, metric formulas and data models, appraisal results, and evaluation lenses.

## Consequences

- The extension interface is part of the contract and versioned with it.
- An extension's data stays in the same open files ([O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)); turning it off hides it and never deletes it.
