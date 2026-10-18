# DD-0001 A new model, reusing only what earns its place

**Status:** Accepted
**Date:** 2026-10-17
**Requirements:** [P1](../../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first), [R1](../../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale), [R2](../../reference/requirements/shape-of-the-record.md#r2-the-kind-is-a-label-given-after), [R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept), [K1](../../reference/requirements/platform.md#k1-the-contract-as-data), [K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database)

## Context

An exploratory implementation modelled work as 22 kinds of record, each with its own schema and screens. Set against the evidence, its platform holds and its model fails at the centre: a person must classify work before anything else ([P1](../../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first), [R2](../../reference/requirements/shape-of-the-record.md#r2-the-kind-is-a-label-given-after)), each kind has its own shape ([R1](../../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale)), and the same concept is asked in several places ([R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept)). The reasoning is in [why a new model](../why-a-new-model.md).

## Options

| Option | For | Against |
|---|---|---|
| Evolve the existing model | Least disruption per step | The centre requirements cannot pass by addition |
| A new model, reusing platform parts on their merits | Every requirement reachable; proven parts kept | The model, its screens and its help are rewritten |
| Rebuild everything | Free choice of every technology | Rebuilds parts that already pass, for nothing a requirement needs |

## Decision

A new model, designed from the requirements with no obligation to the exploratory shapes. Each existing part is a candidate for reuse, kept only when it meets the requirements on its own merits ([existing components](../../reference/existing-components.md)).

## Consequences

- A part that fails a requirement is replaced, even if it works.
- The exploratory schemas, screens and user guide are expected to be replaced.
