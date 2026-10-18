# DD-0009 A small core, with methods as extensions

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [X5](../../reference/requirements/domains-and-configuration.md#x5-methods-are-extensions), [X6](../../reference/requirements/domains-and-configuration.md#x6-hold-results-link-to-tools), [E8](../../reference/requirements/change-and-evaluation.md#e8-evaluation-lenses-as-views), [P10](../../reference/requirements/people-and-first-use.md#p10-depth-in-proportion)

## Context

Today Lean Six Sigma's five phases, FMEA detection ratings, specification limits and control charts, an 18-property metric-expression language with a semantic model and a dbt export, and live co-editing all sit in the core kinds and the first-use interface. None of the cross-domain sources asks a core to hold them ([round 3, g5 section 3.3](../../../research/round-3/g5-current-state.md)). The open standards keep a small required core with named extensions (360Giving's ten required fields; OCDS extensions).

## Options

| Option | For | Against |
|---|---|---|
| A. Everything in the core | One thing to build | Weight for everyone; one domain's method imposed on all |
| B. A small core and extensions, off unless turned on | The first walk stays light; each method serves its own users | An extension interface to design and keep stable |
| C. Drop the methods | Smallest | Loses work that serves real users (process improvement teams, data teams) |

## Decision (proposed)

Option B. The **core** is what every domain holds ([the domain model](../domain-model.md)). An **extension** adds fields, checks, views or analysis to the core through a declared interface, is turned on per workspace by the profile, and never appears in the first walk. Where a domain has its own analysis tool (an economic appraisal, a building model, a backlog), Cartograph holds the result and links to the tool ([X6](../../reference/requirements/domains-and-configuration.md#x6-hold-results-link-to-tools)).

First candidates for extensions: process improvement (DMAIC, control charts), metric expressions and data models, economic appraisal results, evaluation lenses (the OECD six, the Magenta Book's types).

## Consequences

- The extension interface is part of the contract and versioned with it.
- An extension's data stays in the same open files ([O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)), so turning one off hides it, never deletes it.
