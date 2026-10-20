# DD-0013 Roles in the record, people outside it

**Status:** Accepted
**Date:** 2026-10-17
**Requirements:** [R8](../../reference/requirements/shape-of-the-record.md#r8-accountability-named-and-handed-on), [O3](../../reference/requirements/openness-and-exchange.md#o3-parties-money-and-dates-in-standard-form), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)

## Context

Every domain names an accountable role, and accountability passes between roles over a piece of work's life ([GOVS002](../../reference/bibliography.md), [IPA-BENEFITS](../../reference/bibliography.md), [SCRUM](../../reference/bibliography.md)). Records that name people carry personal data into every export and go stale as people move; records that name only roles leave readers asking who.

## Options

| Option | For | Against |
|---|---|---|
| A. Names in the record | Easy to read | Personal data everywhere; stale when people move |
| B. Roles only | Private and durable | "Who is that?" has no answer |
| C. Roles in the record, each linked to a person in the identity store | Private exports; names shown to those allowed | One more link to manage |

## Decision

Option C. The record names roles and parties. Who holds a role is kept in the identity and access layer, outside the record, and shown to people allowed to see it. Exports carry roles and organisations, never persons, unless a workspace chooses otherwise. A change of holder, or of the accountable role, is recorded with its acceptance ([R8](../../reference/requirements/shape-of-the-record.md#r8-accountability-named-and-handed-on)). The identity provider decides who receives a workspace's keys; the keys, not a central server, enforce who may read and write ([DD-0018](DD-0018-live-co-editing-in-drafts.md)).
