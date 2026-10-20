# Existing components

The parts of the exploratory implementation ([cartograph-engine](https://github.com/ProjectCartograph/cartograph-engine) and [cartograph-ui](https://github.com/ProjectCartograph/cartograph-ui)), each with a verdict on what the new build carries over. The verdicts are proposed and under review in M4. The new build starts from the requirements, not from this code ([DD-0001](../explanation/decisions/DD-0001-a-new-model-reusing-only-what-earns-its-place.md)): each part is a candidate, carried over only when it meets the requirements on its own merits, and a part that is rebuilt still passes on what it taught.

| Verdict | Meaning |
|---|---|
| Carry over | The new build takes the part as it is |
| Carry over, changed | The new build takes the part, with the change stated |
| Rebuild | The need stays; the new build meets it afresh, since this part does not |
| Extension | The new build takes the part outside the core ([DD-0009](../explanation/decisions/DD-0009-a-small-core-with-extensions.md)) |
| Drop | Neither the part nor its need is required |

## Engine

| Part | Verdict | Reason |
|---|---|---|
| Contract machinery: schema loading, validation, reference walking, API generation | Carry over, changed | Meets K1; must serve profiles and the new contexts |
| Schemas, walks and guidance for the 22 kinds | Rebuild | Describe the model being replaced ([DD-0004](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md)) |
| Checks written per kind | Rebuild | Checks become per context and per label in the profile |
| Store ports and adapters (files, SQLite, Postgres) with conformance suites | Carry over, changed | Meet K2; must keep the journal ([DD-0011](../explanation/decisions/DD-0011-documents-with-an-append-only-journal.md)) and hold only encrypted data when remote (K10) |
| Encoding and event fan-out | Carry over | Generic; meet K2 |
| Change sets and their merge policies | Carry over, changed | Become proposals with a straight-in policy ([DD-0014](../explanation/decisions/DD-0014-proposals-saved-straight-in-when-alone.md)) |
| Plain-file vault with an index as a cache | Carry over, changed | Meets O1; the index's version numbering fails K4 |
| Identity, OpenID Connect, authorisation server and access | Carry over, changed | Sign-in meets R8 and [DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md); access must be enforced by keys held on devices, not by the server, under K10 ([DD-0018](../explanation/decisions/DD-0018-live-co-editing-in-drafts.md)) |
| Agent server (MCP) and its tools | Carry over, changed | Its principles meet K5; the tools are rewritten for the new model, one per act |
| Language model port for questions of meaning | Carry over, changed | Meets K5; carried over as the language model port ([DD-0017](../explanation/decisions/DD-0017-agents-propose-meaning-behind-a-port.md)) |
| Units, timing forms, sentence handling | Carry over | Generic |
| Graph layout | Carry over | Serves views of links between work |
| Charter rendering | Rebuild | Views become templates over one record ([DD-0010](../explanation/decisions/DD-0010-views-are-renderings.md)) |
| Process improvement phases, failure-mode ratings, control charts | Extension | X5 |
| Metric formulas, semantic model and analytics export | Extension | X5 |
| Live co-editing: CRDT library, synchronisation socket, presence | Carry over, changed | Becomes the platform's synchronisation of encrypted replicas, with live editing confined to drafts ([DD-0018](../explanation/decisions/DD-0018-live-co-editing-in-drafts.md)) |
| Rewriting of retired names on read | Drop | No compatibility owed ([DD-0002](../explanation/decisions/DD-0002-exploratory-releases-carry-no-promise.md)) |
| Traces of people's and agents' use | Carry over, changed | Must be off by default in every workspace, record a person's use only with their consent, which they can withdraw, and never record what they wrote (K7) |
| Nix toolchain, test container, release, CI, Helm chart, high-availability stack | Carry over | Generic |
| Versioning promise and its compatibility gate | Carry over, changed | Restated to start at the first stable release ([DD-0002](../explanation/decisions/DD-0002-exploratory-releases-carry-no-promise.md)) |

## Interface

| Part | Verdict | Reason |
|---|---|---|
| Component library | Carry over | Generic building blocks |
| API client and generated types | Carry over, changed | Regenerated from the new contract |
| Onboarding walk | Carry over, changed | The one screen people finished; the pattern for every walk (P2) |
| Screens per kind (projects, programmes, portfolios, services, indicators, problems) | Rebuild | Built for the replaced kinds |
| Vocabulary written per kind | Rebuild | The vocabulary comes from the profile's taxonomy (X1) |
| Change review, comments, access and trace screens | Carry over, changed | Follow the terminology of [DD-0014](../explanation/decisions/DD-0014-proposals-saved-straight-in-when-alone.md) |
| Screen audit | Carry over | Measures P2 |
| User guide | Rebuild | Describes the exploratory screens |
