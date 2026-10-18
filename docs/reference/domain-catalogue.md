# Domain catalogue

The records, rules and events of each bounded context, as proposed. For why the contexts fall where they do, see [the domain model](../explanation/domain-model.md). Terms are defined in [the glossary](glossary.md).

An **aggregate** is a cluster of records changed together, with one root that guards its rules. A **rule** (invariant) must hold whenever the aggregate is saved. A **domain event** is something that happened that other contexts may react to.

## Work definition (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Piece of work | Piece of work: label, name, life state; the case: need, change wanted, if nothing is done, options, intended results, theory of change steps, assumptions, scope, cost estimate, delivery approach; links to other work | The label is one of the profile's labels. A result is an output, an outcome or an impact. Each result, assumption and link names one accountable role. A "part of" chain has no loop. The label can change without loss. |

Events: work started; case revised; label changed; work linked.

## Governance (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Decision | Decision: decider role, date, outcome, reasons, the version of the case; conditions with owner, due point and what each holds back | It names an existing version of the case. The outcome is go, go with conditions, revise, defer or stop. It is never edited after it is recorded; a later decision supersedes it. |
| Stage position | The work's current stage, entered by a decision | A stage is one of the profile's stage model. Work moves only by a decision. |
| Review | Review: what it looked at, reviewer role, date, findings; recommendations with owner and status | The reviewer is not the author of what is reviewed. A review is never an approval. |
| Baseline | A named version of scope, cost, dates and benefits | Changed only by a decision. |
| Handover | Receiver role, acceptance, readiness evidence, open risks and actions moved | Accepted by a named role. |

Events: decision recorded; stage entered; condition met; review recorded; baseline set; handover accepted; work stopped; work closed.

## Measurement (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Indicator | Indicator: what is measured, unit, direction, baseline (or a stated unknown and when it will be known), targets by period, kind of target, source, collector, frequency, checker, list and code if recognised, whether it adds up | One accountable role. A target never overwrites an actual. |
| Reading series | Readings per period: value, provisional or final, note, breakdown by group | One final reading per period; a correction is a new version, kept. |

Events: indicator defined; reading recorded; reading corrected.

## Benefits and learning (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Benefit | An intended result marked as a benefit or a disbenefit: owner, measure, expected by, who bears it | Owned by a role. Tracked after the work closes until a benefit review ends it. |
| Benefit review | Date, verdict (realised, on track, off track, stopped), evidence | Refers to readings or findings. |
| Evaluation plan | Proportion and its reason, decisions the evidence must inform, questions, who uses the findings, the date it was fixed | Dated before outcome data is analysed; changes keep the reason. |
| Finding and lesson | What was found, the decision it informed, where a lesson applies | A lesson is findable by topic and by the goals it touches. |

Events: benefit accepted; benefit reviewed; question added; finding recorded; lesson recorded.

## Strategy (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Purpose | Why the organisation exists | One per workspace or organisation |
| Goal | A result at a level of the profile's hierarchy, with its measures | Its level is one of the profile's |
| Gap | A problem, who feels it, the result it threatens | Points to a goal |
| Group | A group of people or things affected | No counts; counts belong to indicators |

## Risk (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Risk or issue | Description, owner, likelihood and impact on the workspace's scale, response, status, escalation | One owner; status runs to closed |
| Dependency | Between two pieces of work: owner, effect of slipping | Declared on the dependent side |
| Appetite | Per kind of risk, set by the governing body; tolerances per piece of work | Optional |

## Parties and money (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Party | An organisation or body, with an identifier | One identity wherever it appears |
| Role | A role a party plays in work (funder, implementer, owner, affected, decider) | Holders are kept outside the record ([DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md)) |
| Funding line | Source, amount, currency, period, status (approved, requested, unfunded) | Currency always given |

## Configuration (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Profile | Words, labels and their rules, results hierarchy, stage model, decision points and the parts each needs, approval route, calendar, views, extensions | Validated as a whole; a change to a profile in use says what it affects |

## Publishing, Assistance, Collaboration and History

| Context | Records | Rules |
|---|---|---|
| Publishing | View (a template over the record), mapping (to an open standard, with its stated loss), package (publisher, date, licence, version) | A view stores no content of its own; publishing strips personal data |
| Assistance | Agent access, meaning judgements (with "not judged" as an answer) | An agent only proposes |
| Collaboration | Proposal (a set of changes, its author, policy and state), comment, access | Accepting a proposal writes the journal |
| History | Journal entry: version hash, record, who, when, why, the proposal | Append only |
