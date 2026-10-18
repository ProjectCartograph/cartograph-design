# Milestones

The design is tracked in this repository's [milestones](https://github.com/ProjectCartograph/cartograph-design/milestones), in this order. Each closes when its issues close.

```mermaid
flowchart LR
  M1["M1 Research"] --> M2["M2 Requirements approved"]
  M2 --> M3["M3 Domain model approved"]
  M2 --> M4["M4 Architecture approved"]
  M3 --> M5["M5 Validated with people"]
  M4 --> M5
  M5 --> M6["M6 Ready to build"]
```

| Milestone | Closes when | Holds |
|---|---|---|
| M1 Research | The evidence is complete enough to decide on | The three rounds of research; the sources still to read at source |
| M2 Requirements approved | Every requirement is Approved, Changed or Dropped | One issue per area of [the catalogue](requirements/README.md) |
| M3 Domain model approved | The contexts, aggregates, rules and words are agreed | The decisions on the model ([DD-0004](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md) to [DD-0008](../explanation/decisions/DD-0008-profiles-hold-what-differs-between-domains.md), [DD-0012](../explanation/decisions/DD-0012-strategy-is-shared-context.md), [DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md), [DD-0015](../explanation/decisions/DD-0015-bounded-contexts.md)) |
| M4 Architecture approved | The system-level decisions are accepted | [DD-0009](../explanation/decisions/DD-0009-a-small-core-with-extensions.md) to [DD-0011](../explanation/decisions/DD-0011-documents-with-an-append-only-journal.md), [DD-0014](../explanation/decisions/DD-0014-proposals-with-a-straight-in-policy.md), [DD-0016](../explanation/decisions/DD-0016-exchange-through-mappings.md) to [DD-0018](../explanation/decisions/DD-0018-live-co-editing-is-not-core.md), and the reuse verdicts |
| M5 Validated with people | The change-first entry and the first walk are tested with people, with the trace on | The prototype test; [DD-0005](../explanation/decisions/DD-0005-the-entry-is-the-change.md) accepted or changed |
| M6 Ready to build | The build is planned in cartograph-engine and cartograph-ui | Implementation issues filed there; their old milestones triaged |
