# DD-0003 The design is approved before the code changes

**Status:** Accepted
**Date:** 2026-10-17

## Context

Building screens and fields first and judging them afterwards is how the exploratory model grew to 22 kinds and a 174-field project. The reasoning, requirements and decisions need to be reviewed as a whole before any code follows them.

## Decision

This repository holds the requirements, evidence, domain model, architecture and decisions. Each is reviewed and approved here, in its issue and milestone ([the design process](../../reference/design-process.md)), before the engine or the interface change for the new model.

## Consequences

- Faults that harm people using the exploratory implementation may still be fixed there.
- Work to build the new model is planned only once the decisions it depends on are accepted.
- Every later change names the requirements it meets.
