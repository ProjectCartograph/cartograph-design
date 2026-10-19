# DD-0018 Live co-editing happens in drafts

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [K8](../../reference/requirements/platform.md#k8-local-first), [K9](../../reference/requirements/platform.md#k9-live-and-private-drafts), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default)

## Context

Teams need both live and asynchronous collaboration, and people want to work on any device, with or without a connection ([UPWELLING](../../reference/bibliography.md), [LOCAL-FIRST](../../reference/bibliography.md)). Replicated data types merge concurrent changes without coordination and provably converge ([CRDT](../../reference/bibliography.md)), but they settle only the mechanics: two changes that each pass the checks may still conflict in meaning, and live editing that anyone can watch discourages first drafts. Every change must still reach the record through a proposal ([K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)).

## Options

| Option | For | Against |
|---|---|---|
| A. Live co-editing of the record itself | Teams write together at once | Changes bypass proposals and checks; first drafts are watched |
| B. Proposals only, live co-editing an optional adapter | The core stays small | Fails K8 and K9; teams lose live work and offline work |
| C. Local-first replicas, with live co-editing inside drafts that enter the record as proposals | Live, private and offline work, all reviewed the same way | Drafts are a concept to explain; replicated history must be managed |

## Decision (proposed)

Option C. Every workspace is a set of replicas on people's devices, synchronised encrypted ([K10](../../reference/requirements/platform.md#k10-encrypted-by-default)). Work happens in **drafts**: private by default, shared for live editing with presence when the author chooses. A draft enters the record only as a proposal ([DD-0014](DD-0014-proposals-saved-straight-in-when-alone.md)); accepting it appends a version to the journal ([DD-0011](DD-0011-documents-with-an-append-only-journal.md)) that attributes every contributor. Conflicts the merge cannot settle in meaning are shown to a person when the draft is proposed.

## Consequences

- Collaboration is one route whatever its pace: live, asynchronous or offline work all end as proposals.
- An agent works in a draft like a person and always waits for a person to accept ([K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)).
- The synchronisation port carries replicas and drafts, not only live sessions.

## Open questions

- How personal data is erased from a replicated history ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)).
- How a draft's change history is kept from growing without limit while the journal keeps every accepted version ([K4](../../reference/requirements/platform.md#k4-durable-history)).
- How replicas on different releases merge ([K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases)).
- How access is enforced without a central server ([DD-0013](DD-0013-roles-in-the-record-people-outside.md)).
- How encryption the server cannot read fits with search, checks and sharing ([K10](../../reference/requirements/platform.md#k10-encrypted-by-default)).
