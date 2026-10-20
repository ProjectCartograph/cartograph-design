# Domain catalogue

The records, rules and events of each bounded context, as proposed. For why the contexts fall where they do, see [the domain model](../explanation/domain-model.md). Terms are defined in [the glossary](glossary.md).

An **aggregate** is a cluster of records changed together, with one root that guards its rules. A **rule** (invariant) must hold whenever the aggregate is saved. A **domain event** is something that happened that other contexts may react to.

## Work definition (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Piece of work | Piece of work: label, name, life state (planned, running, retired or stopped, with the reason), the depth agreed and why, its stage or its cycle; the case under the five questions, each with how complete it is: need, change wanted, if nothing is done, options, intended results, theory of change steps, assumptions, scope, cost estimate, delivery approach; links to other work | The label is one of the profile's labels, and can change without loss. A result is an output, an outcome or an impact. Each result names one accountable role; each assumption has an owner. A "part of" chain has no loop. An end date is optional. Retiring or stopping records why. Saving never fails because a part is missing. |

Events: work started; case revised; label changed; work linked; work retired.

## Governance (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Decision | Decision: decider role, date, outcome, reasons, the version of the case; conditions with owner, due point and what each holds back; for a portfolio, the member decided on and the scores behind it where criteria are used | It names an existing version of the case. The outcome is approve, approve with conditions, change the scope, try another option, pilot, defer or stop. The decider is the role the decision point names; in a workspace of one, the record says its author decided alone. Asking for it lists every part it needs that is missing. It is never edited after it is recorded; a later decision supersedes it. |
| Stage position | The work's current stage in the workspace's taxonomy and the reference stage it maps to, entered by a decision; or, for work steered by cycles, its current cycle | Every stage maps to a reference stage and begins with a decision point. A project has at least two stages. Work moves stage only by a decision. Work steered by cycles has no stages, and its reviews fall due on its cycle. |
| Review | Review: what it looked at, reviewer role, independence (self-review, peer review or independent review), date, findings, whether the objectives remain relevant and what other work overlaps; recommendations with owner and status | Its independence meets the least the profile sets for the decision point it advises. A self-review is labelled as one wherever it appears. The reviewer may be outside the workspace, named in a role. A review is never an approval. |
| Approved plan | A named version of scope, cost, dates and benefits | Changed only by a decision; correcting a mistake is not a change to it. |
| Handover | Receiver role, acceptance, date and terms, readiness evidence, open risks, issues and actions moved | Accepted by a named role. |
| Tranche | A phase of a programme ([DD-0019](../explanation/decisions/DD-0019-tranches-are-records-of-a-programme.md)): its step change and how it serves the programme's objective, the work linked to it, the benefits it starts, its dependencies, risks and assumptions, its conditions to go on, its share of the envelope, the decision that opened it, its look back | Opened only by a decision, after the programme's decision to commit and a review of whether the programme is still justified. A piece of work may join more than one tranche, and tranches may overlap. Only the current tranche is declared in full. A change to the programme's objective or ceiling is a decision on the programme. |
| Closing record | Delivered against approved, what was not and how it will be handled, who answers for what remains, what the benefits need to last, lessons, how well the work was governed, the review planned after | Each part filled in or stated unknown before the work closes. |

Events: decision recorded; stage entered; tranche opened; tranche closed; condition met; condition overdue; review recorded; plan approved; handover accepted; work stopped; work closed.

## Measurement (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Indicator | Indicator: what is measured, the level it measures (activity, output, outcome or impact), its scale (an amount or count, a percentage or rate, ordered levels each described, or categories), unit, direction, baseline (or a stated unknown and when it will be known), targets by period, what falling short and exceeding mean, source, collector, frequency, checker, list and code if recognised, aggregation rule (summed, weighted by its denominator, or not aggregable) | One accountable role. A target is a value, a threshold or a level on its scale, by a date or an event. The summaries offered follow its scale: ordered levels take a median, never a mean. A rate rolls up by its numerator and denominator. Read more often than its data arrive, it is flagged. |
| Reading series | Readings per period: value on the indicator's scale, provisional or final, note, breakdown by group | One final reading per period; a correction is a new version, kept. A target never overwrites an actual. Narrative is a note on a reading, never a reading. |

Events: indicator defined; reading recorded; reading corrected.

An outcome or impact whose indicators all measure activity or output is flagged, with a request for an indicator of the change; the flag never blocks.

## Benefits and learning (core)

| Aggregate | Root and parts | Rules |
|---|---|---|
| Benefit | An intended result marked as a benefit or a disbenefit: the outcome it follows from, owner, measure, baseline, target, expected by (a date or an event), recipients or who bears it, priority and its reason, whether it is pursued, planned or found later | Owned by a role. Tracked after the work closes until a benefit review ends it. |
| Benefit review | Date, verdict (realised, on track, off track, stopped), evidence | Refers to readings or findings. |
| Evaluation plan | Proportion and its reason, the evaluability check, decisions the evidence must inform, questions, design, data, method of analysis, who uses the findings, the date it was fixed | Fixed with its date before outcome data are collected or analysed; each revision keeps its reason, and the plan as fixed can be compared with the evaluation as carried out. Not needed to save a first definition. |
| Finding and lesson | What was found, who may see it, the decision it informed, where a lesson applies | A lesson is findable by topic and by the goals it touches. |

Events: benefit accepted; benefit reviewed; plan fixed; question added; finding recorded; lesson recorded.

## Strategy (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Purpose | Why the organisation exists | One per workspace or organisation |
| Goal | A result at a level of the profile's hierarchy, with its measures | Its level is one of the profile's, mapped to a reference level |
| Gap | A problem, who feels it, the result it threatens | Points to a goal |
| Group | A group of people or things affected | No counts; counts belong to indicators |

## Risk (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Risk or issue | Description, category, owner, likelihood and impact on the workspace's scale, response, status, escalation (the role it went to, when, and what was decided); what it threatens (a piece of work, a result or a benefit) | One owner; status runs to closed; a rating beyond the category's appetite shows |
| Dependency | Between two pieces of work: owner, effect of slipping | Declared on the dependent side |
| Appetite and tolerance | Appetite per risk category, from the profile's categories, stated by the workspace; tolerances per piece of work | Optional; a breach of tolerance is flagged and can be escalated; a workspace with none is never blocked |

## Parties and money (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Party | An organisation or body, with an identifier | One identity wherever it appears |
| Role | A role a party plays in work (funder, implementer, owner, affected, decider) | Holders are kept outside the record ([DD-0013](../explanation/decisions/DD-0013-roles-in-the-record-people-outside.md)); a change of accountable role is accepted by the new holder |
| Funding line | Source, amount, currency, period, status (approved, requested, unfunded) | Currency always given |

## Configuration (supporting)

| Aggregate | Parts | Rules |
|---|---|---|
| Profile | Taxonomy (each term mapped to one standard term), labels and their rules, results hierarchy (a recognised one, each level mapped to a reference level), life cycle (a recognised one, each stage mapped to a reference stage), a programme's decision points and the level at which delivery is committed, cycles ([DD-0020](../explanation/decisions/DD-0020-cycles-are-profile-patterns.md): each a recognised pattern with its events mapped to the reference cycle, its length mode, calendar, deciding role and any parent cycle), decision points with the deciding role, the parts each needs, the least review independence and the reviews planned before it, risk categories and scale, required lenses, calendar, views, extensions | Validated as a whole. A tailoring that would leave a part unmapped to its reference is refused, naming the reference. A change to a profile in use says what it affects. Every cycle has set and decide events, and a period's records each name their period. |

## Publishing, Assistance, Collaboration and History

| Context | Records | Rules |
|---|---|---|
| Publishing | View (a template over the record), mapping (to an open standard and version, with the parts of the record it drops), package (publisher, date, licence, version) | A view stores no content of its own and uses the standard terms. An export validates against its standard and is refused, naming what is missing, when a required field is absent. Publishing leaves out personal data unless the workspace chooses otherwise. |
| Assistance | Agent access, answers from the language model (with "not judged" as an answer) | An agent only proposes |
| Collaboration | Replica (the schema version it writes), draft (private or shared, its contributors), proposal (a set of changes, its author, policy and state), comment, access by keys | A draft is private until its author shares it. An agent's proposal always waits for a person. A conflict of meaning is shown to a person, never resolved silently. Accepting a proposal writes the journal. |
| History | Journal entry: version hash, record, who, when, why, the proposal, every contributor, the agent that proposed and the person who accepted | Append only; restoring appends an earlier version as a new one |
