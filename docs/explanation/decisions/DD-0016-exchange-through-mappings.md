# DD-0016 Exchange through mappings and global identifiers

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [O2](../../reference/requirements/openness-and-exchange.md#o2-identifiers-beyond-the-workspace), [O3](../../reference/requirements/openness-and-exchange.md#o3-parties-money-and-dates-in-standard-form), [O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable), [O6](../../reference/requirements/openness-and-exchange.md#o6-published-packages-say-who-and-how), [X1](../../reference/requirements/domains-and-configuration.md#x1-the-workspaces-taxonomy), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default)

## Context

The open standards require identifiers unique beyond one organisation, parties with roles, money with currency, standard dates and publisher metadata. None holds the reasons, assumptions and decisions at the heart of a case ([IATI](../../reference/bibliography.md), [OCDS](../../reference/bibliography.md), [360GIVING](../../reference/bibliography.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Store records in an open standard's shape | Exchange is free | No standard holds the case or its decisions; one domain's shape imposed |
| B. Cartograph's own shape, mapped to each standard as a view that states its losses | The record keeps everything; each standard is one mapping | Mappings to maintain |

## Decision (proposed)

Option B. Identifiers carry a publisher prefix; parties have one identity and a role; money carries its currency, source and dates; dates are ISO 8601. Each mapping is a view ([DD-0010](DD-0010-views-are-renderings.md)) of a record that is a superset of the standard: every field and code a supported standard defines has a place in the core or in the standard's extension, so the mapping drops only what the standard has no place for, and lists it. Publishing leaves out personal data unless the workspace chooses otherwise, and stamps the publisher, date, licence and version.

## Consequences

- Each supported standard and version is a mapping, checked by the build against the standard's schema, with the parts of the record it drops listed ([O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole)).
- Exports use the standard terms, whatever the workspace's own taxonomy ([X1](../../reference/requirements/domains-and-configuration.md#x1-the-workspaces-taxonomy)).
- Publishing is a deliberate act by a person who can read the record, on their device ([K10](../../reference/requirements/platform.md#k10-encrypted-by-default); [DD-0018](DD-0018-live-co-editing-in-drafts.md)).
- A new standard costs a mapping and, where the core lacks its fields, an extension ([DD-0009](DD-0009-a-small-core-with-extensions.md)).
