# DD-0014 Proposals for change, saved straight in when alone

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone), [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [P2](../../reference/requirements/people-and-first-use.md#p2-one-thing-per-screen), [A5](../../reference/requirements/risk-and-assurance.md#a5-reviews-are-records-apart-from-approvals)

## Context

Bodies that must account for their decisions need every change reviewable and traced ([CC-REPORT](../../reference/bibliography.md), [GOVS002](../../reference/bibliography.md)); a person working alone should not pay for a review nobody performs. Agents must never change the record by themselves. The word "review" is also needed for assurance.

## Options

| Option | For | Against |
|---|---|---|
| A. Every change reviewed | One path; a trail everywhere | A cost for a person alone |
| B. Direct edits | Simplest | No review where it is needed; agents could change the record |
| C. One route, a proposal, with a policy per workspace | Fits both; agents always propose | A policy to explain |

## Decision (proposed)

Option C. Every change is a **proposal**. The workspace's policy says whether a person's proposal is accepted at once (the default for a workspace of one) or waits for someone else to accept it. An agent's proposal always waits ([K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)). Accepting writes the journal ([DD-0011](DD-0011-documents-with-an-append-only-journal.md)). Changes are *proposed*, *accepted* and *declined*, so that *review* and *decision* mean only the records of [DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md).
