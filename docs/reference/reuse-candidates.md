# Reuse candidates

Each part of today's cartograph-engine and cartograph-ui, judged against the requirements. Under [DD-0001](../explanation/decisions/DD-0001-a-new-model-reusing-only-what-earns-its-place.md), a part is kept only when it meets the requirements on its own merits. The facts are from [round 3, g5](../../research/round-3/g5-current-state.md), read from both repositories on 2026-10-17.

| Verdict | Meaning |
|---|---|
| Reuse | Kept as it is |
| Adapt | Kept, with a stated change |
| Replace | The need stays; this part does not meet it |
| Drop | Neither the part nor its need is in the requirements |
| Extension | Kept, outside the core ([DD-0009](../explanation/decisions/DD-0009-a-small-core-with-extensions.md)) |

## Engine

| Part | Today | Verdict | Why |
|---|---|---|---|
| Contract machinery: OpenAPI generation, schema loading, the kinds registry, validation, reference walking | Serves 22 kinds' schemas, flows, guidance and checks | Adapt | Meets K1; must serve profiles and the new contexts |
| Kind schemas, flows and guidance | About 250 KB of JSON for 22 kinds | Replace | The model they describe is replaced (DD-0004) |
| Kind checks in `internal/engine` | About 50 project checks and others per kind | Replace | Checks become per context and per profile label |
| Store ports and adapters: files, SQLite, Postgres, with conformance suites | Passing on CI | Adapt | Meet K2; must keep the journal (DD-0011) |
| Codec, fan-out | Passing | Reuse | Generic, meet K2 |
| Change sets | 1,657 lines, merge policies, review | Adapt | Become proposals with a straight-in policy (DD-0014) |
| Vault of plain files, index as cache | One file per record | Adapt | Meets O1; the index's restarting versions fail K4 |
| Identity, OIDC, the authorisation server, access | Working, with a distribution | Reuse | Meet R8 and DD-0013 |
| MCP server and agent tools | Five propose tools among others | Adapt | Principles meet K5; tools rewritten for the new model, one per act |
| Decision model port (meaning) | Behind a port, off by default | Adapt | Meets K5; renamed the meaning model (DD-0017) |
| Units, timing forms, sentences | Small libraries | Reuse | Generic; timing forms serve S3 and B1 |
| Graph layout | Behind a port, one screen | Reuse | Serves views of links between work |
| Renderer and charter layouts (`internal/render`) | Charters for three kinds | Replace | Views become templates over one record (DD-0010) |
| Lean Six Sigma: DMAIC route, FMEA, specification limits, control charts (`internal/spc`) | In the core | Extension | X5 |
| Metric expressions and semantic model, dbt export | 18 properties on an indicator | Extension | X5 |
| Live co-editing: Automerge in WebAssembly, sync socket, presence | In the core | Extension | DD-0018 |
| Legacy rewriting (`internal/legacy`) | 1,156 lines of renames on read | Drop | No compatibility owed (DD-0002) |
| People's and agents' traces | Working, little used on people | Reuse | Meet K7 |
| Nix flake, container, release, CI, Helm, HA compose | Working | Reuse | Generic |
| Versioning promise and `just compat` | Binding since 1.0.0 | Adapt | Restated from the first stable release (DD-0002) |

## Interface

| Part | Today | Verdict | Why |
|---|---|---|---|
| Components (`src/components`) | 89 files | Reuse | Generic building blocks |
| Client and generated API types (`src/client`) | Working | Adapt | Regenerated from the new contract |
| Onboarding walk | 647 lines; the one part people finished | Adapt | The pattern for every walk (P2) |
| Kind screens (`src/projects`, `src/programmes`, `src/portfolios`, `src/operations`, `src/kpis`, `src/gaps`) | About 25,000 lines | Replace | Built for the replaced kinds |
| `copy.ts` per kind | About 1,400 lines a kind | Replace | Words come from the profile (X1) |
| Change sets, comments, access, trace screens | Working | Adapt | Follow DD-0014's words |
| Screen audit (`just audit`) | Working | Reuse | Measures P2 |

## The guide

The user guide in cartograph-engine (`docs/guide`, open as pull requests) describes today's screens. Its research-based explanations carry over as sources; its tutorials and how-to guides are to be rewritten for the new model.
