# DD-0015 Bounded contexts and their map

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept), [K1](../../reference/requirements/platform.md#k1-the-contract-as-data), [K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database)

## Context

Domain-driven design divides a model into bounded contexts, each with its own language and rules, so that a word means one thing inside each. A model without them lets words drift and concepts repeat ([R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept)).

## Decision (proposed)

The model is divided into the contexts in [the domain model](../domain-model.md): Work definition, Governance, Measurement, Benefits and learning, Strategy, Risk, Parties and money, Configuration, Publishing, Assistance, Collaboration and History. The first four are the **core domain**, where Cartograph must excel; the rest support it or are generic. Each context is a module of the engine with its own package and ports, and an architecture test holds its dependencies inward.

## Consequences

- Words are settled per context ([the glossary](../../reference/glossary.md)).
- The engine's layout follows the contexts.
