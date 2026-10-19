# Existing components

The parts of the exploratory implementation ([cartograph-engine](https://github.com/ProjectCartograph/cartograph-engine) and [cartograph-ui](https://github.com/ProjectCartograph/cartograph-ui)), each with a verdict against the requirements. Under [DD-0001](../explanation/decisions/DD-0001-a-new-model-reusing-only-what-earns-its-place.md) a part is kept only when it meets the requirements on its own merits.

| Verdict | Meaning |
|---|---|
| Reuse | Kept as it is |
| Adapt | Kept, with the change stated |
| Replace | The need stays; this part does not meet it |
| Extension | Kept, outside the core ([DD-0009](../explanation/decisions/DD-0009-a-small-core-with-extensions.md)) |
| Drop | Neither the part nor its need is required |

## Engine

| Part | Verdict | Reason |
|---|---|---|
| Contract machinery: schema loading, validation, reference walking, API generation | Adapt | Meets K1; must serve profiles and the new contexts |
| Schemas, walks and guidance for the 22 kinds | Replace | Describe the model being replaced ([DD-0004](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md)) |
| Checks written per kind | Replace | Checks become per context and per label in the profile |
| Store ports and adapters (files, SQLite, Postgres) with conformance suites | Adapt | Meet K2; must keep the journal ([DD-0011](../explanation/decisions/DD-0011-documents-with-an-append-only-journal.md)) |
| Encoding and event fan-out | Reuse | Generic; meet K2 |
| Change sets and their merge policies | Adapt | Become proposals with a straight-in policy ([DD-0014](../explanation/decisions/DD-0014-proposals-saved-straight-in-when-alone.md)) |
| Plain-file vault with an index as a cache | Adapt | Meets O1; the index's version numbering fails K4 |
| Identity, OpenID Connect, authorisation server and access | Reuse | Meet R8 and [DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md) |
| Agent server (MCP) and its tools | Adapt | Its principles meet K5; the tools are rewritten for the new model, one per act |
| Language model port for questions of meaning | Adapt | Meets K5; renamed the meaning model ([DD-0017](../explanation/decisions/DD-0017-agents-propose-meaning-behind-a-port.md)) |
| Units, timing forms, sentence handling | Reuse | Generic |
| Graph layout | Reuse | Serves views of links between work |
| Charter rendering | Replace | Views become templates over one record ([DD-0010](../explanation/decisions/DD-0010-views-are-renderings.md)) |
| Process improvement phases, failure-mode ratings, control charts | Extension | X5 |
| Metric formulas, semantic model and analytics export | Extension | X5 |
| Live co-editing: CRDT library, synchronisation socket, presence | Adapt | Becomes the platform's synchronisation of encrypted replicas, with live editing confined to drafts ([DD-0018](../explanation/decisions/DD-0018-live-co-editing-in-drafts.md)) |
| Rewriting of retired names on read | Drop | No compatibility owed ([DD-0002](../explanation/decisions/DD-0002-exploratory-releases-carry-no-promise.md)) |
| Traces of people's and agents' use | Reuse | Meet K7 |
| Nix toolchain, test container, release, CI, Helm chart, high-availability stack | Reuse | Generic |
| Versioning promise and its compatibility gate | Adapt | Restated to start at the first stable release ([DD-0002](../explanation/decisions/DD-0002-exploratory-releases-carry-no-promise.md)) |

## Interface

| Part | Verdict | Reason |
|---|---|---|
| Component library | Reuse | Generic building blocks |
| API client and generated types | Adapt | Regenerated from the new contract |
| Onboarding walk | Adapt | The one screen people finished; the pattern for every walk (P2) |
| Screens per kind (projects, programmes, portfolios, services, indicators, problems) | Replace | Built for the replaced kinds |
| Vocabulary written per kind | Replace | The vocabulary comes from the profile's taxonomy (X1) |
| Change review, comments, access and trace screens | Adapt | Follow the terminology of [DD-0014](../explanation/decisions/DD-0014-proposals-saved-straight-in-when-alone.md) |
| Screen audit | Reuse | Measures P2 |
| User guide | Replace | Describes the exploratory screens |
