# DD-0011 Documents, with an append-only journal for history

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K4](../../reference/requirements/platform.md#k4-durable-history), [D5](../../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record), [D8](../../reference/requirements/case-and-decisions.md#d8-an-approved-plan-and-changes-to-it), [E6](../../reference/requirements/change-and-evaluation.md#e6-a-dated-plan-for-checking), [E9](../../reference/requirements/change-and-evaluation.md#e9-the-theory-keeps-its-history), [O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database)

## Context

A decision rests on a version of the case; the approved plan is kept apart from the current one; an evaluation plan is fixed with a date before data are analysed; a theory of change keeps its history ([HMT-MAGENTA](../../reference/bibliography.md), [NAO-PROGRAMMES](../../reference/bibliography.md), [GOVS002](../../reference/bibliography.md)). The record must also stay plain files a person can read and take away ([O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)).

## Options

| Option | For | Against |
|---|---|---|
| A. Current documents only, history in an index | Simple, readable | History lost when the index is rebuilt; fails [K4](../../reference/requirements/platform.md#k4-durable-history) |
| B. Event sourcing: the log of changes is the truth, documents are projections | Exact history; audits are queries | Files stop being the truth; every store must replay; harder to read or repair by hand |
| C. Documents are the truth, with an append-only journal of versions and decisions | Readable files with durable history; a decision names a version by its hash | Two structures to keep consistent; the journal grows |
| D. Version control such as git | Familiar to developers | Not every store is files; most people are not developers; it holds no decisions |

## Decision (proposed)

Option C. Each record is a plain document holding its current state. Every accepted change appends to the workspace's **journal** the content hash of the new version, who made it, when, why, and the proposal it came from. Decisions, approved plans and dated plans point to version hashes. Every store keeps the journal and passes its conformance suite, and any index can be rebuilt from the documents and the journal.

## Consequences

- What the case said when a decision was taken is always answerable.
- The approved plan is a named version, so comparing the current plan with it is a difference between two versions.
- The journal records roles and principals, never personal content ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)).

## Open questions

- May a workspace prune old versions, and what must it always keep?
