# Design process

How the design is reviewed and approved, the milestones it moves through, and what each status means.

## Milestones

The design is tracked in this repository's [milestones](https://github.com/ProjectCartograph/cartograph-design/milestones). Due dates are targets, moved when the work needs it.

```mermaid
flowchart LR
  M1["M1 Research"] --> M2["M2 Requirements approved"]
  M2 --> M3["M3 Domain model approved"]
  M2 --> M4["M4 Architecture approved"]
  M3 --> M5["M5 Validated with people"]
  M4 --> M5
  M5 --> M6["M6 Ready to build"]
```

| Milestone | Due | Closed | Closes when |
|---|---|---|---|
| M1 Research | 2026-10-19 | 2026-10-18 | The evidence is complete enough to decide on |
| M2 Requirements approved | 2026-10-30 | 2026-10-19 | Every requirement is Approved, Changed or Dropped |
| M3 Domain model approved | 2026-11-02 | 2026-10-20 | The decisions on the model and the glossary are accepted |
| M4 Architecture approved | 2026-11-09 | | The system-level decisions and the component verdicts are accepted |
| M5 Validated with people | 2026-11-23 | | The first walk is tested with people, with their use traced |
| M6 Ready to build | 2026-11-30 | | The new build is planned, informed by the exploratory engine and interface |

M2 closed eleven days early, and the later targets moved forward by the same eleven days.

```mermaid
gantt
  title Milestone targets
  dateFormat YYYY-MM-DD
  axisFormat %d %b
  section Done
  M1 Research :done, m1, 2026-10-12, 2026-10-18
  M2 Requirements approved :done, m2, 2026-10-18, 2026-10-19
  M3 Domain model approved :done, m3, 2026-10-19, 2026-10-20
  section Approve
  M4 Architecture approved :m4, 2026-10-20, 2026-11-09
  section Test and plan
  M5 Validated with people :m5, after m4, 2026-11-23
  M6 Ready to build :m6, after m5, 2026-11-30
```

## What each milestone settles

| Milestone | Records under review | Also closed in it |
|---|---|---|
| M2 Requirements approved | All 87 requirements, one issue per [area](requirements/README.md): 72 Must, 15 Should, all Approved | The sources that need a person with access to read |
| M3 Domain model approved | [DD-0004](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md), [DD-0006](../explanation/decisions/DD-0006-the-case-grows-inside-the-record.md), [DD-0007](../explanation/decisions/DD-0007-decisions-stages-and-reviews-are-records.md), [DD-0008](../explanation/decisions/DD-0008-profiles-hold-what-differs-between-domains.md), [DD-0012](../explanation/decisions/DD-0012-strategy-is-shared-context.md), [DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md), [DD-0015](../explanation/decisions/DD-0015-bounded-contexts.md), [DD-0019](../explanation/decisions/DD-0019-tranches-are-records-of-a-programme.md), [DD-0020](../explanation/decisions/DD-0020-cycles-are-profile-patterns.md) | The [glossary](glossary.md), approved 2026-10-20; the [domain model](../explanation/domain-model.md) and [catalogue](domain-catalogue.md), brought to the accepted decisions; the requirements on programmes and cycles added in review, [S5 to S10](requirements/stages-and-cycles.md) and [P11](requirements/people-and-first-use.md#p11-a-programme-set-out-in-order) |
| M4 Architecture approved | [DD-0009](../explanation/decisions/DD-0009-a-small-core-with-extensions.md), [DD-0010](../explanation/decisions/DD-0010-views-are-renderings.md), [DD-0011](../explanation/decisions/DD-0011-documents-with-an-append-only-journal.md), [DD-0014](../explanation/decisions/DD-0014-proposals-saved-straight-in-when-alone.md), [DD-0016](../explanation/decisions/DD-0016-exchange-through-mappings.md), [DD-0017](../explanation/decisions/DD-0017-agents-propose-meaning-behind-a-port.md), [DD-0018](../explanation/decisions/DD-0018-live-co-editing-in-drafts.md) | The verdicts in [existing components](existing-components.md) |
| M5 Validated with people | [DD-0005](../explanation/decisions/DD-0005-the-entry-is-the-change.md), conditional on the test | A change-first entry tested with people, their use traced |
| M6 Ready to build | None | The versioning promise restated for the new model; the new build planned; the exploratory repositories' open issues triaged against the design |

[DD-0001](../explanation/decisions/DD-0001-a-new-model-reusing-only-what-earns-its-place.md), [DD-0002](../explanation/decisions/DD-0002-exploratory-releases-carry-no-promise.md) and [DD-0003](../explanation/decisions/DD-0003-design-approved-before-the-code-changes.md) are Accepted and frame the rest.

## Statuses

| Record | Status | Meaning |
|---|---|---|
| Requirement | Proposed | Written, not yet reviewed |
| | Approved | Accepted as written |
| | Changed | Accepted with new wording, dated and explained in the record |
| | Dropped | Not required, with the reason |
| Decision | Proposed | Written, with its options, awaiting a verdict |
| | Accepted | Decided |
| | Rejected | Not adopted, with the reason |
| | Superseded by DD-NNNN | Replaced by a later decision |

## Who decides

Each requirement area and each proposed decision has an issue. Anyone may comment with evidence or a view; the project's owner gives the verdict, and the record's status changes in the pull request that closes the issue. A requirement priority follows MoSCoW: **Must** for the first stable release, **Should** wanted and may follow, **Could** welcome.
