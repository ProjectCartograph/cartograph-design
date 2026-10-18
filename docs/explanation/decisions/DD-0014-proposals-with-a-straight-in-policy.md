# DD-0014 Proposals for change, saved straight in when alone

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone), [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [P2](../../reference/requirements/people-and-first-use.md#p2-one-thing-per-screen), [A5](../../reference/requirements/risk-and-assurance.md#a5-reviews-are-records-apart-from-approvals)

## Context

Today every change goes through a change set; drafts, proposals and change sets are three routes for one act, with five agent tools for proposing. A public body needs review and an audit trail; a person alone pays for a concept they do not need. "Review" also names an assurance act in the governance sense ([A5](../../reference/requirements/risk-and-assurance.md#a5-reviews-are-records-apart-from-approvals)).

## Options

| Option | For | Against |
|---|---|---|
| A. Every change through review | One path; audit everywhere | Cost for a person alone |
| B. Direct edits only | Simplest | No review for bodies that need it; agents could write the record |
| C. One route, a proposal, with a policy per workspace: straight in, or reviewed | Fits both; agents always propose | A policy to explain |

## Decision (proposed)

Option C. Every change is a **proposal**. The workspace's policy says whether a person's proposal is accepted at once (the default for a workspace of one) or waits for someone to accept it; an agent's proposal always waits ([K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)). Accepting writes the journal ([DD-0011](DD-0011-documents-with-an-append-only-journal.md)). The words "proposal", "accept" and "decline" are used for changes, so that "review" and "decision" mean only the governance records of [DD-0007](DD-0007-decisions-stages-and-reviews-are-records.md).
