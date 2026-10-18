# DD-0013 Roles in the record, people outside it

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [R8](../../reference/requirements/shape-of-the-record.md#r8-one-accountable-role), [O3](../../reference/requirements/openness-and-exchange.md#o3-parties-money-and-dates-in-standard-form), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)

## Context

Every domain names one accountable person per result. Today Cartograph records roles, never persons, which protects privacy and survives staff change; a cooperative may want a name beside a role ([round 3, g5 section 6 option C](../../../research/round-3/g5-current-state.md)).

## Options

| Option | For | Against |
|---|---|---|
| A. Names in the record | Easy to read | Personal data in every export; stale when people move |
| B. Roles only | Private; durable | Readers ask "who is that?" |
| C. Roles in the record, each role linked to a principal in the identity store | Private exports; names shown to those allowed | One more link to manage |

## Decision (proposed)

Option C. The record names roles and parties. Who holds a role is kept in the identity and access layer, outside the record, and shown to people with access. Exports carry roles and organisations, never persons, unless a workspace chooses otherwise.
