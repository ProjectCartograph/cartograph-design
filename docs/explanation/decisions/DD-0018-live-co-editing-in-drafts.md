# DD-0018 Live co-editing happens in drafts

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [K8](../../reference/requirements/platform.md#k8-local-first), [K9](../../reference/requirements/platform.md#k9-live-and-private-drafts), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default), [K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)

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

## How the hard parts are settled

**Encryption the server cannot read.** Each workspace's records are encrypted on people's devices; reading needs a symmetric key, writing a signing key. A relay or storage server holds only ciphertext and public keys: it checks that each change is signed by a key allowed to write, then stores and forwards it, without being able to read it. Keys reach collaborators in the part of a link a browser never sends to the server, or by key exchange after sign-in ([CRYPTPAD](../../reference/bibliography.md) 5.1, 5.2). This is what is meant by a *zero-knowledge* service: the server learns nothing of the content. Zero-knowledge proofs, which convince a verifier that a statement is true without revealing anything else ([ZKP](../../reference/bibliography.md)), are not needed for it and are not adopted; they remain an option should a server ever need to confirm a property of a change it cannot read. The server still sees metadata (which replica syncs, when, and how much), and the design keeps that to what synchronisation needs.

**Checks, search and sharing.** Because only devices can read the records, the checks run on the device that proposes and again on the device that accepts, from the contract the engine serves as data ([K1](../../reference/requirements/platform.md#k1-the-contract-as-data)); search indexes are built on the device. The rule that an agent cannot accept ([K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)) is enforced by keys: an acceptance appended to the journal must be signed by a person's key, which the relay verifies without reading the change. Publishing ([O4](../../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole), [O6](../../reference/requirements/openness-and-exchange.md#o6-published-packages-say-who-and-how)) is a deliberate act by a person who can read the record.

**Access without a central server.** Roles are held as keys: viewing holds the read key, editing the read and signing keys, and administering the right to give and rotate them, as an end-to-end encrypted team model does ([CRYPTPAD](../../reference/bibliography.md) 8.2). Removing someone rotates the keys and shares the new ones with those who remain; what the removed person already held cannot be taken back, which the interface says. People still sign in through the identity provider, which decides who receives keys ([DD-0013](DD-0013-roles-in-the-record-people-outside.md)). General capability systems for replicated data ([KEYHIVE](../../reference/bibliography.md)) may replace this scheme when they mature.

**Erasing personal data.** Personal data is held apart from the replicated content ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)) and encrypted with a key per person. Erasing it destroys that key on every replica and in every backup, which makes the data unrecoverable wherever copies remain: a cryptographic erase ([NIST-800-88](../../reference/bibliography.md)). It puts copies that cannot be overwritten at once beyond use, as erasure from backups requires ([ICO-ERASURE](../../reference/bibliography.md)), without rewriting the journal.

**History growth.** A draft's fine-grained change history is compacted when the draft is accepted or discarded; the accepted version is already in the journal, which keeps every accepted version and is never pruned ([K4](../../reference/requirements/platform.md#k4-durable-history), [DD-0011](DD-0011-documents-with-an-append-only-journal.md)). This is the same trade an encrypted editor makes when an owner deletes a document's history to save space ([CRYPTPAD-DOCS](../../reference/bibliography.md)), confined here to drafts.

**Replicas on different releases.** Every replica records the schema version it writes. Each release that changes the schema ships a translation in both directions between it and the version before ([CAMBRIA](../../reference/bibliography.md)), and changes are translated before they merge. A schema change that cannot be translated back without loss, such as joining two fields into one, makes older replicas read-only for that record until they update ([K6](../../reference/requirements/platform.md#k6-records-open-in-later-releases)).
