# DD-0011 Documents, with an append-only journal for history

**Status:** Accepted
**Date:** 2026-10-17
**Requirements:** [K4](../../reference/requirements/platform.md#k4-durable-history), [D5](../../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record), [D8](../../reference/requirements/case-and-decisions.md#d8-an-approved-plan-and-changes-to-it), [E6](../../reference/requirements/change-and-evaluation.md#e6-the-evaluation-plan-fixed-before-analysis), [E9](../../reference/requirements/change-and-evaluation.md#e9-the-theory-keeps-its-history), [O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database), [K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K9](../../reference/requirements/platform.md#k9-live-and-private-drafts)

## Context

A decision rests on a version of the case; the approved plan is kept apart from the current one; an evaluation plan is fixed with a date before outcome data are collected or analysed; a theory of change keeps its history ([HMT-MAGENTA](../../reference/bibliography.md), [NAO-PROGRAMMES](../../reference/bibliography.md), [GOVS002](../../reference/bibliography.md)). The record must also stay plain files a person can read and take away ([O1](../../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)).

## Options

| Option | For | Against |
|---|---|---|
| A. Current documents only, history in an index | Simple, readable | History lost when the index is rebuilt; fails [K4](../../reference/requirements/platform.md#k4-durable-history) |
| B. Event sourcing: the log of changes is the truth, documents are projections | Exact history; audits are queries | Files stop being the truth; every store must replay; harder to read or repair by hand |
| C. Documents are the truth, with an append-only journal of versions and decisions | Readable files with durable history; a decision names a version by its hash | Two structures to keep consistent; the journal grows |
| D. Version control such as git | Familiar to developers | Not every store is files; most people are not developers; it holds no decisions |

## Decision

Option C. Each record is a plain document holding its current state. Every accepted change appends to the workspace's **journal** the content hash of the new version, who made it, when, why, and the proposal it came from. Decisions, approved plans and dated plans point to version hashes. Every store keeps the journal and passes its conformance suite, and any index can be rebuilt from the documents and the journal.

## Consequences

- What the case said when a decision was taken is always answerable.
- Restoring an earlier version appends it as a new version; nothing is erased ([K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks)).
- The approved plan is a named version, so comparing the current plan with it is a difference between two versions.
- A version accepted from a shared draft names every contributor ([K9](../../reference/requirements/platform.md#k9-live-and-private-drafts)).
- The journal records roles and principals, never personal content ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)).

## Large journals

The journal grows with every accepted change and is never pruned, so its size must not slow the work or fill a device. Five measures keep it from doing so.

- **Reading never replays it.** The documents hold the current state, so opening a record reads the document, not its history. They play the part of the snapshot an event-sourced system adds so that it need not replay a long stream from the start ([EVENT-SOURCING](../../reference/bibliography.md)).
- **Entries hold hashes, not content.** An entry names a version by its content hash. The version itself is stored once, by that hash, and may be stored as the difference from an earlier version where that is smaller, as git stores an object as a delta of a base object ([GIT-PACK](../../reference/bibliography.md)).
- **The journal is a Merkle tree.** Each entry is a leaf of an append-only Merkle tree, as in a transparency log: a few hashes prove that a version a decision names is in the journal, and that a later journal extends an earlier one without rewriting it ([RFC-9162](../../reference/bibliography.md) 2.1.3, 2.1.4). A replica checks history without reading all of it.
- **Full segments never change.** The journal is kept in segments of a fixed number of entries. A full segment is immutable, so it is stored, cached and backed up once, and only the last, partial segment changes, as a tiled log serves its tree ([TLOG-TILES](../../reference/bibliography.md)).
- **Old content is fetched when asked for.** Every replica holds the current documents and every journal entry, which is enough to work offline and to check any version a decision names ([K8](../../reference/requirements/platform.md#k8-local-first)). The content of older versions may be held only by the workspace's store and fetched, encrypted, when someone opens it, then checked against its hash, as a partial clone fetches the objects it lacks from a remote that promised to keep them ([GIT-PARTIAL](../../reference/bibliography.md)). Reading an old version that is not on the device then needs a connection, and the workspace's policy may require some replicas to keep everything.

Every store's conformance suite appends to, verifies and rebuilds an index from a long journal, and records how long each takes.

## Settled questions

- **May a workspace prune old versions?** No: the journal keeps every accepted version. Only a draft's fine-grained history is compacted once the draft is accepted or discarded, and personal data is erased by destroying its key, not by rewriting the journal ([DD-0018](DD-0018-live-co-editing-in-drafts.md)).
