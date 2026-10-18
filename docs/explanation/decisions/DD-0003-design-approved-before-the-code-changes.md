# DD-0003 The design is approved here before the code changes

**Status:** Accepted
**Date:** 2026-10-17
**Decided by:** the owner

## Context

Earlier work built screens and fields first and judged them after, which is how the model grew to 22 kinds and 174 fields on a project. The owner wants the reasoning, requirements and decisions reviewed as a whole first.

## Decision

This repository holds the requirements, research, domain model, architecture and decisions. Each is reviewed and approved here, through issues and milestones, before cartograph-engine or cartograph-ui change for the new model. A requirement is approved by its issue being closed with the status changed in its record; a decision is accepted the same way ([how to review a requirement](../../how-to/review-a-requirement.md), [how to propose a decision](../../how-to/propose-a-decision.md)).

## Consequences

- Bugs that harm people today may still be fixed in the other repositories.
- Implementation issues are filed in those repositories only after the decisions they depend on are accepted.
- Every later change names the requirements it meets.
