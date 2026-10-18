# DD-0016 Exchange through mappings and global identifiers

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [O2](../../reference/requirements/openness-and-exchange.md#o2-identifiers-beyond-the-workspace), [O3](../../reference/requirements/openness-and-exchange.md#o3-parties-money-and-dates-in-standard-form), [O4](../../reference/requirements/openness-and-exchange.md#o4-mappings-to-open-standards), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable), [O6](../../reference/requirements/openness-and-exchange.md#o6-published-packages-say-who-and-how)

## Context

IATI, the Open Contracting standards and 360Giving require identifiers unique beyond a workspace, parties with roles, money with currency, standard dates and publisher metadata. None of them holds the reasons, assumptions and decisions that are Cartograph's centre ([round 3, g4 section 5](../../../research/round-3/g4-first-principles.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Store in an open standard's shape | Exchange is free | No standard holds the case or the decisions; one domain's shape imposed |
| B. Own shape, mappings to standards as views that state their loss | The record keeps everything; each standard is one mapping | Mappings to maintain |

## Decision (proposed)

Option B. Identifiers carry a publisher prefix; parties have one identity and a role; money carries currency, source and dates; dates are ISO 8601. Each mapping is a view ([DD-0010](DD-0010-views-are-renderings.md)) that lists what it drops. Publishing strips personal data and stamps the publisher, date, licence and version.
