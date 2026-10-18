# DD-0011 Documents, with an append-only journal for history

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K4](../../reference/requirements/platform.md#k4-durable-history), [D5](../../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record), [D8](../../reference/requirements/case-and-decisions.md#d8-a-baseline-and-changes-to-it), [E6](../../reference/requirements/change-and-evaluation.md#e6-a-dated-plan-for-checking), [E9](../../reference/requirements/change-and-evaluation.md#e9-the-theory-keeps-its-history), [O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [K2](../../reference/requirements/platform.md#k2-ports-from-files-to-databases)

## Context

A decision rests on a version of the case, an approved baseline must be kept apart from the current plan, an evaluation plan must be dated before data is analysed, and a theory of change must keep its history. Today a vault holds one plain file per record and an index whose version numbers restart when it is rebuilt, so history is not durable.

## Options

| Option | For | Against |
|---|---|---|
| A. Current documents only, history in the index | Simple; files are readable | History lost on rebuild; fails [K4](../../reference/requirements/platform.md#k4-durable-history) |
| B. Event sourcing: the log of changes is the truth, documents are projections | Exact history; baselines and audits are queries | Files stop being the truth; every adapter must replay; harder for a person to read or repair by hand ([O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)) |
| C. Documents are the truth, plus an append-only journal of content-addressed versions and decisions | Files stay readable; history is durable; a decision names a version by its hash | Two things to keep consistent; the journal grows |
| D. Rely on git | Familiar to developers | Not every store is files; people are not developers; no decisions in it |

## Decision (proposed)

Option C. Each record is a plain document, the current truth. Every accepted change appends an entry to the workspace's **journal**: the content hash of the new version, who, when, why, and the proposal it came from. Decisions, baselines and dated plans point to version hashes. Every store adapter keeps the journal and passes its conformance suite; an index can be rebuilt from documents and journal.

## Consequences

- "What did the case say when the board decided" is always answerable.
- A baseline is a named version, so comparing the plan with it is a diff.
- The journal holds who and why, never personal content beyond the role and principal ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)).

## Open questions

- Retention: may a workspace prune old versions, and what must it keep (decisions' versions at least)?
