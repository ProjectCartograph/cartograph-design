# DD-0015 Bounded contexts and their map

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R6](../../reference/requirements/shape-of-the-record.md#r6-one-place-for-each-concept), [K1](../../reference/requirements/platform.md#k1-contract-as-data), [K2](../../reference/requirements/platform.md#k2-ports-from-files-to-databases)

## Context

Domain-driven design divides a model into bounded contexts, each with its own language and rules, so that one word means one thing inside a context. Today's engine has one model of 22 kinds and words that collide (decision, review, KPI and indicator).

## Decision (proposed)

The model is divided into the contexts in [the domain model](../domain-model.md): Work definition, Governance, Measurement, Strategy, Benefits and learning, Risk, Parties and money, Configuration, Collaboration, History, Publishing and Assistance. Work definition, Governance, Measurement and Benefits and learning are the **core domain**, where Cartograph must be better than anything else; the rest support it or are generic. Each context is a module in the engine with its own package, its own ports, and an architecture test that it depends only inward.

## Consequences

- Words are disambiguated by context ([the glossary](../../reference/glossary.md)).
- The engine's package layout follows the contexts.
