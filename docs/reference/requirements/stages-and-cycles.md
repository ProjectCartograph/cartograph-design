# Stages and cycles

Where a piece of work is in its life, and how its life is shaped.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### S1 Life cycles mapped to a reference

Every life cycle maps to one reference life cycle: feasibility, appraisal, definition, delivery and operation, each stage preceded by a decision point. Recognised life cycles come as standard profiles, already mapped. An organisation tailors only by choosing a recognised life cycle, joining reference stages down to at least two (definition and delivery), splitting delivery into more stages, or naming stages in its own taxonomy; each of its stages still maps to a reference stage.

- **Priority:** Must
- **Status:** Approved
- **Why:** The UK standard requires a defined life cycle, tailored by mapping to its reference, with every stage preceded by a gate and at least two stages. Life cycles from construction, digital services and gated public investment fit the same reference. A common reference keeps stages comparable across work and organisations, and keeps decision points where the standards put them.
- **Accepted when:**
  - Every stage in a profile maps to a reference stage, and every stage begins with a decision point.
  - Standard profiles include recognised life cycles (the reference itself, the gate reviews, the RIBA Plan of Work, PRINCE2's management stages and GOV.UK's discovery, alpha, beta and live), each with its mapping.
  - A project has at least two stages.
  - A stage that maps to no reference stage cannot be saved.
- **Holds across:** UK public sector, construction, public services, project standards
- **Evidence:** [GOVS002](../bibliography.md) 6.3; [TEAL](../bibliography.md) chapter 14; [NISTA-GATES](../bibliography.md); [RIBA](../bibliography.md); [GDS-MANUAL](../bibliography.md); [PRINCE2](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### S2 The current stage, shown against the reference

Each piece of work shows its current stage in the workspace's taxonomy, together with the reference stage it maps to.

- **Priority:** Must
- **Status:** Approved
- **Why:** People recognise their own organisation's stage names, while comparing work across organisations and against the standards needs the reference stage; showing both serves each reader.
- **Accepted when:**
  - Every piece of work shows its current stage in the workspace's taxonomy, with its reference stage beside it.
  - Work steered by cycles shows its current cycle instead ([S3](#s3-cycles-without-gates)).
- **Holds across:** UK public sector, public services, construction, development finance
- **Evidence:** [GOVS002](../bibliography.md) 6.3; [TEAL](../bibliography.md) chapter 14; [RIBA](../bibliography.md); [WB-CYCLE](../bibliography.md)
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### S3 Cycles without gates

Work without an end that is steered by cycles (a sprint, a quarter, a season, a financial year) keeps decisions, risks and reviews on that cycle without passing gates; stages do not apply to it.

- **Priority:** Must
- **Status:** Approved
- **Why:** Products, services and objectives are steered by regular review, not by gates ([R3](shape-of-the-record.md#r3-work-without-an-end)).
- **Accepted when:**
  - A piece of work can be given a cycle, and its reviews fall due on it.
- **Holds across:** software, corporate strategy, public sector elsewhere
- **Evidence:** [SCRUM](../bibliography.md); [OKR](../bibliography.md); [OMB-A11](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### S4 A group's own decision points

A group of work (a programme, a portfolio) has its own decision points and reviews through its life, apart from its members'. A programme has no reference life cycle; it is phased in tranches.

- **Priority:** Must
- **Status:** Approved
- **Why:** A programme's case is reviewed before each tranche and each year; a portfolio reviews its members on its own cycle.
- **Accepted when:**
  - A programme or portfolio has decisions and reviews of its own.
- **Holds across:** UK public sector
- **Evidence:** [HMT-CASES](../bibliography.md) 5.13 to 5.14; [NAO-PROGRAMMES](../bibliography.md); [TEAL](../bibliography.md) chapters 12 and 14
- **Verified by:** inspection of the model's schemas and their examples

### S5 A programme's decision points

A programme takes its decisions at recognised points: a decision to commit, which authorises delivery spending at the level its profile sets (the programme case, its first tranche, or each project's case); a decision to open each tranche; and a decision to close, after which its benefits are reviewed. A profile may add an earlier decision to start the programme and fund its definition. Recognised programme frameworks come as standard profiles mapped to these points. Each decision point names its deciding role and the reviews planned before it. A programme's member projects keep their own life cycles ([S1](#s1-life-cycles-mapped-to-a-reference)).

- **Priority:** Must
- **Status:** Approved
- **Why:** No source requires one list of programme phases, and the UK framework says a reference programme life cycle cannot be defined because programmes vary too much, while letting organisations build repeatable frameworks for the kinds they often run. Several sources describe a skeleton of four phases (concept or identify, definition, delivery, closure). Across UK government, the development banks, Canada, New Zealand and the European Commission the same few decisions recur: commit to delivery, open each tranche, close. They differ on where delivery is committed: the banks approve the envelope with the first tranche, the Treasury approves each project's case before its delivery, New Zealand's programme case approves no project, and Canada authorises spending tranche by tranche after a funded definition. Holding the decisions fixed, and letting the profile say at what level each is taken, keeps programmes comparable without forcing one framework's phases on all. Work that never closes is a service or a portfolio ([R3](shape-of-the-record.md#r3-work-without-an-end)).
- **Accepted when:**
  - Every decision point in a programme profile maps to one of: start, commit, open a tranche, close.
  - Every programme profile has a decision to commit and a decision to close; where a recognised framework names no close, its profile marks the close as Cartograph's addition.
  - No tranche of a programme, and no project in one, can be opened by a decision before the decision to commit.
  - Closing a programme requires a closing record and an owner for each benefit still to be followed ([B4](benefits-handover-closure.md#b4-benefits-tracked-after-closure), [B6](benefits-handover-closure.md#b6-a-closing-record-and-a-look-back)).
  - Standard profiles include the UK framework with the Treasury's programme business case, APM's programme life cycle, PM²'s programme guide, the World Bank's multiphase programmatic approach, the ADB and AfDB multitranche facilities, Canada's directive on projects and programmes, and New Zealand's programme business case, each with its mapping.
- **Holds across:** UK public sector, development finance, public sector elsewhere, project standards
- **Evidence:** [TEAL](../bibliography.md) 14.8, 15.5; [HMT-CASES](../bibliography.md) 5.3, 5.13; [APM](../bibliography.md) introduction to programme management 2.1; [APM-LIFECYCLES](../bibliography.md); [EC-PGM](../bibliography.md) 3.1; [WB-MPA](../bibliography.md) paragraphs 10 to 13; [ADB-MFF](../bibliography.md); [AFDB-MTF](../bibliography.md) 2.1; [TBS-DMPP](../bibliography.md) appendices F to H; [NZT-PBC](../bibliography.md) 3.1, 3.2
- **Verified by:** inspection of the model's schemas and their examples

### S6 A tranche declares its step change

Each tranche of a programme declares the step change in capability it delivers and how that serves the programme's objective; the work in it; the benefits it starts, with their owners; what it depends on; its risks and assumptions; and the conditions to go on, each with an owner and a due point ([D6](case-and-decisions.md#d6-conditions-on-a-decision)). It may say why its boundary falls where it does. Only the current tranche is declared in full; later ones are outlined. A piece of work may belong to more than one tranche, and tranches may overlap. Where money is involved, a tranche states its share of the programme's envelope, which binds only when the tranche is opened.

- **Priority:** Must
- **Status:** Approved
- **Why:** The UK standard and framework define a tranche as a subdivision of a programme built around a step change in capability and the benefits it brings, and Canada defines it by the capability it delivers within a spending ceiling. Tranches beyond the current one often cannot be predicted, and they need not run in sequence: projects can start at different times and span tranches. The banks hold the envelope as indicative until a tranche is approved, and treat a change to the programme's objective or ceiling as a decision above any tranche ([D8](case-and-decisions.md#d8-an-approved-plan-and-changes-to-it)). The boundary falls for recognised reasons: a step change, a release of money on conditions met, a funding or replenishment cycle, a place or a borrower, a verified result, readiness, a change of instrument, or a time limit on the whole. No source asks every tranche to state its reason, so it is optional. Conditions to go on are recorded as owned conditions ([D6](case-and-decisions.md#d6-conditions-on-a-decision)), not as triggers fixed at design. The World Bank dropped such triggers from its phased lending: set before the work began, they proved too rigid and often stopped fitting as circumstances changed, and the phased loans that used them performed worse than standalone projects; the Inter-American Development Bank's phased loans met the same problem. It now judges each later phase on how the earlier ones performed and whether the borrower met its obligations. The ADB and AfDB still state named conditions, which an owned condition can hold.
- **Accepted when:**
  - A tranche cannot be opened by a decision without a declared step change and its conditions to go on; other missing parts are advice ([P9](people-and-first-use.md#p9-save-anything-completeness-only-when-deciding), [P10](people-and-first-use.md#p10-depth-in-proportion)).
  - A piece of work can be linked to more than one tranche.
  - The work in a tranche can change while its step change and ceiling hold; changing the programme's objective or ceiling needs a decision on the programme.
  - An envelope shows as indicative until the tranche drawing on it is opened, and a programme can carry a date by which its last tranche must be decided.
- **Holds across:** UK public sector, development finance, public sector elsewhere, project standards
- **Evidence:** [GOVS002](../bibliography.md) 3.2; [TEAL](../bibliography.md) 3.2.3, 14.7.3, 14.8; [HMT-CASES](../bibliography.md) 5.4; [APM-LIFECYCLES](../bibliography.md); [TBS-DMPP](../bibliography.md) F.6, H.3; [WB-MPA](../bibliography.md) paragraphs 9, 13, 15 to 30, 49; [ADB-MFF](../bibliography.md) 2008 paragraphs 10, 15 to 17, D14 paragraph 14; [AFDB-MTF](../bibliography.md) 2.1
- **Verified by:** inspection of the model's schemas and their examples

### S7 A programme stays justified

Before each tranche, and at intervals its profile sets, a review asks whether the programme is still the right thing to do ([D11](case-and-decisions.md#d11-still-relevant-and-not-duplicated)): whether its objective still holds, whether its benefits are on track, what earlier tranches delivered and what was learned. The review is planned before the decision it informs ([A6](risk-and-assurance.md#a6-planned-assurance)) and is as independent as the profile requires ([A5](risk-and-assurance.md#a5-reviews-are-records-apart-from-approvals)).

- **Priority:** Must
- **Status:** Approved
- **Why:** Every source that tranches a programme reviews its continuing justification before the next tranche: the Treasury before each tranche and at least yearly, the gate review for programmes at key decision points, the banks on the earlier tranches' performance and lessons, Canada on the capabilities delivered and course corrections. Only the UK sets an interval, of about a year; the FCDO reviews each programme 16 months after approval and yearly after. The interval is therefore a setting of the profile.
- **Accepted when:**
  - Opening a tranche records the review of continuing justification that preceded it.
  - A programme profile sets the interval between reviews, and a review past due shows on the programme.
- **Holds across:** UK public sector, development finance, public sector elsewhere
- **Evidence:** [HMT-CASES](../bibliography.md) 5.13 to 5.15; [NISTA-GATES](../bibliography.md) Gate 0; [NAO-PROGRAMMES](../bibliography.md) question 16; [TEAL](../bibliography.md) 13.4.5, 14.7.4; [FCDO-PROF](../bibliography.md); [WB-CYCLE](../bibliography.md) directive paragraph 7; [ADB-MFF](../bibliography.md) 2008 paragraph 15; [AFDB-MTF](../bibliography.md) 2.1.3; [TBS-DMPP](../bibliography.md) H.2.14
- **Verified by:** inspection of the model's schemas and their examples

### S8 A reference cycle

Every cycle maps to one reference cycle. A cycle is a repeating pattern with a deciding role and a length that is fixed, variable or continuous; each turn of it is a period with planned start and end dates ([X7](domains-and-configuration.md#x7-reporting-periods-as-date-intervals)), which a recorded decision may change. Its events are: set (the goals and plan for the period, ending in a decision where the profile separates who plans from who commits); check (progress during the period); review (results against the goals, with the causes of any shortfall); look back (how the work was done); evaluate (whether the work is relevant, effective and efficient, on its own longer schedule, as independent as the profile requires, with a response from the work's owner); and decide ([S10](#s10-every-period-ends-in-a-decision)). Set and decide are always present; a profile names the other events it uses, and may join events while keeping their records apart. Recognised cycles come as standard profiles, already mapped, with their lengths as their sources give them.

- **Priority:** Must
- **Status:** Approved
- **Why:** Products, services, objectives and public bodies are steered by cycles, and the recognised cycles share their events while differing in length and in which events they name. Agile methods set a goal, check daily, review the increment and hold a retrospective; objectives and key results are set, checked in, graded and rolled over; management systems plan, monitor, review and improve at planned intervals; governments plan before a period, report after it with causes, and evaluate on a longer, risk-based schedule apart from the budget; charities plan, report on achievements and lessons, and review their board. No source fixes one length for all work, so lengths stay with the profile. A cycle is not a reporting period: a cycle has a deciding role and a decision at its close, while a reporting period only dates readings ([X7](domains-and-configuration.md#x7-reporting-periods-as-date-intervals)), so a funder's reporting period on work with an end is not a cycle. Where a method names no decide event (Scrum leaves it inside the review and the product owner's authority; the Kanban Guide requires no regular meeting), its profile marks the decide event as Cartograph's addition. Kanban University describes its service delivery, operations, risk and strategy reviews only in material it sells, so no profile is shipped for them.
- **Accepted when:**
  - Every event in a cycle profile maps to one reference event, and every profile has set and decide.
  - A cycle has a length mode and a deciding role, and each of its periods has planned dates.
  - Standard profiles include the Scrum sprint; the Shape Up cycle; Kanban's team cadences (the daily Kanban meeting, the retrospective and replenishment); SAFe's iteration and planning interval; GOV.UK's live service; quarterly and annual objectives and key results; the strategy review and operational review; a management system review; a charity's reporting year and its board review; the World Bank's country engagement cycle; the performance cycles of the United States, Canada (departmental plans and results reports, and the evaluation plan), the United Kingdom (supply and estimates, the spending review, the statutory review of regulation), Australia and New Zealand; and a performance budget cycle.
  - Every standard profile's mapping is checked against its source, read at source, before the profile ships; a recognised cycle whose events cannot be read at source is not shipped.
  - An event a profile's source does not name is marked as Cartograph's addition in that profile.
- **Holds across:** software, corporate strategy, public sector elsewhere, UK public sector, charity, development finance
- **Evidence:** [SCRUM](../bibliography.md); [SHAPE-UP](../bibliography.md); [KANBAN-GUIDE](../bibliography.md); [KANBAN-UNI](../bibliography.md); [SAFE](../bibliography.md); [GDS-AGILE](../bibliography.md); [OKR](../bibliography.md); [OKR-PLAYBOOK](../bibliography.md); [KN-2008](../bibliography.md); [ISO-HS](../bibliography.md) 6.2, 9.1 to 9.3, 10.2; [GPRAMA](../bibliography.md) 31 USC 1115, 1116, 1121; [OMB-A11](../bibliography.md) 240 to 260; [TBS-RESULTS](../bibliography.md) 4.3.15; [HMT-MPM](../bibliography.md) 5.1 to 5.5; [SBEEA](../bibliography.md) 28, 30; [AUS-PGPA](../bibliography.md) 16E, 16F; [NZ-PFA](../bibliography.md) 38 to 45; [OECD-PB](../bibliography.md) good practices 6 and 7; [HMT-MAGENTA](../bibliography.md) 1.8.1; [CGC](../bibliography.md); [SORP](../bibliography.md) 1.28 to 1.49; [CC-TAR](../bibliography.md); [TBS-CYCLE](../bibliography.md); [WB-CPF](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### S9 Goals hold within a period; cycles nest

A goal set for a period changes during it only by a recorded decision with its reason ([D8](case-and-decisions.md#d8-an-approved-plan-and-changes-to-it)); a check records progress and may propose a change, but never makes one. A cycle may sit inside a longer one: its plan is consistent with its parent's, and the parent's review takes its results. A piece of work shows its shortest current cycle, with the longer ones one step away.

- **Priority:** Should
- **Status:** Approved
- **Why:** Moving a target during the period until it is met empties the review. The Scrum Guide holds the sprint goal fixed; Google's guidance has a team that cannot deliver a committed objective escalate rather than re-target; US priority goals change only by approval; Kaplan and Norton keep the testing of strategy out of the meetings that review it. Some sources let a check-in drop or adjust a goal, which this keeps possible as a recorded decision. Cycles nest in every family: sprints in planning intervals, quarters in years, annual plans in strategic plans that a later plan may not outrun.
- **Accepted when:**
  - Changing a period's goal during the period requires a decision with its reason; a check cannot change it.
  - A cycle can name a parent cycle, and the parent's review shows the results of its child periods.
  - A piece of work shows its shortest current period and reaches its longer cycles in one step.
- **Holds across:** software, corporate strategy, public sector elsewhere
- **Evidence:** [SCRUM](../bibliography.md) sprint goal; [OKR-PLAYBOOK](../bibliography.md); [OKR](../bibliography.md); [OMB-A11](../bibliography.md) 250.9; [KN-2008](../bibliography.md); [GPRAMA](../bibliography.md) 5 USC 306(c); [NZ-PFA](../bibliography.md) 39; [SAFE](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### S10 Every period ends in a decision

The decide event of each period is a decision record ([D5](case-and-decisions.md#d5-a-decision-is-a-record)), with the outcomes its profile names from D5's list, its reasons and the version of the case it rests on. It may stop the work or withhold the next period's resources; it never undoes work already delivered. Whether the work is still worth doing and its objectives still relevant ([D11](case-and-decisions.md#d11-still-relevant-and-not-duplicated)) may be asked at any decision, and is asked wherever the profile's source requires it. A decision not taken by the end of a period shows as overdue and the work goes on, unless the profile's source makes authority lapse. Stopping retires the work with its reason ([R3](shape-of-the-record.md#r3-work-without-an-end)).

- **Priority:** Must
- **Status:** Approved
- **Why:** Work without an end is still decided on: a cycle's close is where it is continued, changed or stopped. The sources agree that a decision at the close does not undo what was delivered (the Scrum review is not a gate on releasing value), and that it can refuse the next period: unspent public money lapses without approval, a US goal unmet for consecutive years leads to stated steps up to proposed termination, an FCDO programme decides to continue, restructure or close after poor reviews, and Shape Up gives an unfinished project no extension by default. The relevance question is asked at every management review under ISO's structure, at every annual US strategic review, in Canada's evaluations, in the charity code and, by statute, in reviews of regulation. Using D5's outcomes keeps one vocabulary for decisions.
- **Accepted when:**
  - Each period ends in a decision record, or shows its decision as overdue.
  - A decision at the close can withhold the next period's resources and cannot alter what was delivered.
  - A profile names which of D5's outcomes apply, whether the relevance question is required at its close, and what happens when no decision is taken.
- **Holds across:** software, corporate strategy, public sector elsewhere, UK public sector, charity
- **Evidence:** [SCRUM](../bibliography.md) sprint review; [SHAPE-UP](../bibliography.md) the circuit breaker; [HMT-MPM](../bibliography.md) 5.3.7; [GPRAMA](../bibliography.md) 31 USC 1116, 1121; [FCDO-PROF](../bibliography.md); [ISO-HS](../bibliography.md) 9.3; [TBS-RESULTS](../bibliography.md); [CGC](../bibliography.md) principle 2; [SBEEA](../bibliography.md) 30
- **Verified by:** an automated test in the build
