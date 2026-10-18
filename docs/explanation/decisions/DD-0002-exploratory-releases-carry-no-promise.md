# DD-0002 The exploratory releases carry no compatibility promise

**Status:** Accepted
**Date:** 2026-10-17
**Decided by:** the owner
**Requirements:** [K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases)

## Context

The engine is at 2.11 on its `/v2` module path, and its VERSIONING.md promises that a vault written by one version opens in every later one. That promise would force the new model to be served beside the old, with a migration and an overlap. No one uses Cartograph in production today.

## Options

| Option | For | Against |
|---|---|---|
| Keep the promise: serve v2 beside the new contract and migrate | Protects any unknown user | Costs a migration, an overlap and two contracts, for no known user |
| Treat everything so far as exploratory: no migration, no overlap | The new model is designed free of the old | Anyone with a vault today must start again |

## Decision

Everything released so far is an exploratory phase. The new model owes it no compatibility and no migration. The promise in [K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases) begins at the first stable release of the new model and is kept from then on.

## Consequences

- The engine's VERSIONING.md, its `just compat` gate and the rule "nothing you do may break a deployed version" in the AGENTS.md files are to be restated for the new model when the build begins; they are not changed now.
- The issue for migrating v2 vaults is closed as not planned.
- The example workspace is rewritten in the new model.
