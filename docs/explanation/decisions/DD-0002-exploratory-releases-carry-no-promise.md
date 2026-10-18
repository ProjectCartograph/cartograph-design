# DD-0002 The exploratory releases carry no compatibility promise

**Status:** Accepted
**Date:** 2026-10-17
**Requirements:** [K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases)

## Context

The exploratory implementation promised that a record written by one release opens in every later one. Keeping that promise would make the new model serve the old beside it, with a migration and an overlap. No one uses the exploratory implementation for production work.

## Options

| Option | For | Against |
|---|---|---|
| Keep the promise, migrate and overlap | Protects any unknown user | A migration, an overlap and two models, for no known user |
| Treat all releases so far as exploratory | The new model is designed free of the old | Anyone holding an exploratory record starts again |

## Decision

Every release so far is exploratory. The new model owes it no compatibility and no migration. The promise of [K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases) begins at the first stable release of the new model.

## Consequences

- The exploratory implementation's versioning rules are restated for the new model before building starts ([milestone M6](../../reference/design-process.md)).
- The example workspace is rewritten in the new model.
