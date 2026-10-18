# G5: Cartograph today, judged without loyalty

Written 2026-10-17. Read-only on both repositories. I ran nothing: every
statement about a screen comes from code, copy and earlier research, not
from using the product. Line counts come from `wc` over the working
tree; field counts come from reading the JSON files with a short script.
The other greenfield notes (g1 to g4) did not exist when I wrote this, so
nothing here leans on them.

## 0. What I read, and what I could not

**Read in the repositories.** `cartograph-engine`: `AGENTS.md`,
`VERSIONING.md`, `contract/schemas/*` (all 29 files), `contract/flows/*`
(all 22), `contract/guidance/en/*` (sizes, and project and programme in
part), `docs/TAXONOMY.md` (the definitions, the mapping table and the
decision headings D1 to D72; D58 in full), `docs/ARCHITECTURE.md`
(sections 3 and 4), `docs/UI_CONTRACT.md` (start), `docs/DESIGN_RULES.md`
(headings), ADRs 0016, 0017, 0019, 0020, 0022, 0023, 0024, 0029, 0030,
0032, 0033, 0034, 0035, the kinds registry, `internal/engine/checks.go`
and the shape of the other check files, `internal/legacy`,
`internal/spc`, the MCP package listing, the command line listing.
`cartograph-ui`: the route tree, `src/copy.ts` (the `home` group and the
list of its groups), directory sizes.

**Read from rounds one and two** (`.eval/research/`): `COMMON.md`,
`inventory.md`, `tools-and-ux.md`, `charter-standards.md`,
`scale/cartograph-levels.md`, and the "Cartograph against it" sections
of `scale/programmes.md` and `scale/portfolios.md`. I rely on those files
for what the UK sources say. They say which parts they read in full and
which they could not reach; I repeat that where it matters.

**Read at source for this note, for the cross-domain addition.**

| Source | Result |
|---|---|
| IATI Standard 2.03, activity element list ([page](https://iatistandard.org/en/iati-standard/203/activity-standard/)) | Read. |
| Scrum Guide ([scrumguides.org](https://scrumguides.org/scrum-guide.html)) | Read. |
| Impact Frontiers, five dimensions of impact ([page](https://impactfrontiers.org/norms/five-dimensions-of-impact/)) | Read. This is the Impact Management Project norm, now hosted there. |
| Google re:Work, "Set goals with OKRs" ([page](https://rework.withgoogle.com/intl/en/guides/set-goals-with-okrs)) | Read. A corporate practitioner guide, not a standard. |
| GOV.UK, public benefit rules for charities ([page](https://www.gov.uk/guidance/public-benefit-rules-for-charities)) | Read. |
| APM, what is programme management ([page](https://www.apm.org.uk/resources/what-is-project-management/what-is-programme-management/)) | Read, but it defines programme and portfolio only briefly and does not define a project. |

**Could not read at source.** I say what I have instead.

- OECD DAC criteria (2019, DCD/DAC(2019)58/FINAL): the OECD pages and PDF
  returned 403. I have only a search summary that confirms six criteria
  (relevance, coherence, effectiveness, efficiency, impact,
  sustainability) adopted by the DAC in December 2019 and meant to be
  applied with thought, not mechanically.
- New Zealand Treasury, Better Business Cases: pages returned 403 to my
  fetch. A search summary gives the five cases (strategic, economic,
  commercial, financial, management) and says single-stage and two-stage
  cases are chosen after a scoping step. Secondary only.
- Canada, Policy on Results: the page returned "Request Rejected". A
  search summary says the framework is core responsibilities, results and
  indicators, with a companion program inventory, and that evaluation is
  required. I could not read a clause. Secondary only.
- World Bank project cycle and results framework: the page 404ed. I have
  only a snippet about the Independent Evaluation Group's review of
  completion reports. I cannot cite the policy.
- IRIS+ (GIIN): 403.
- Not attempted or not reachable: ISO 21500 and 21502, PM2 (the EU
  method), US OMB A-11 and GAO guides, RIBA Plan of Work, SAFe Lean
  Portfolio Management, NHS and WHO frameworks, UKRI and Horizon Europe
  funding rules, NPC, the balanced scorecard. No criterion below rests
  on any of these. Where I name a domain without a source I read, I say
  "not read".

So the cross-domain support below is real for IATI (aid), Scrum
(software delivery), OKRs (corporate), the Impact Management Project
(impact investing) and the Charity Commission (charity law), and thin for
the rest. The UK public-sector support (Green Book, GovS 002, Teal Book,
NAO) comes from rounds one and two, which read the Green Book guidance
PDF in full and the others in part.

---

## 1. The model as it is

### 1.1 The kinds

There are 22 kinds in the registry (`internal/kinds/registry.go`), each
with a schema, a flow and a guidance file. "Properties" counts every
property declared in the kind's own schema file, envelope included, and
leaves out the shared definitions in `common.schema.json` (30 definitions,
27 KB), so it understates a kind that leans on them. "Flow" is steps and
field entries in the kind's flow.

| Layer | Kind (the interface says) | For | Properties | Flow (steps / fields) |
|---|---|---|---|---|
| Strategy | Purpose | The organisation's vision and mission; one per workspace | 9 | 1 / 6 |
| | Goal (goal, objective, outcome by `level`) | An aim, with key results, owner, horizon, rationale, "also leads to" | 17 | 5 / 19 |
| Evidence | Gap | What is wrong: current and desired state, who it affects | 15 | 3 / 11 |
| | Assumption | A belief a plan rests on, with confidence and how to verify | 9 | 5 / 6 |
| | BeneficiaryGroup | A group who gains, qualitative only (no counts) | 7 | 1 / 3 |
| | Segment | A cut of a gap, for example rural | 7 | 1 / 3 |
| Measures | KPI (indicator) | Unit, direction, baseline, target, owner, source, cycle, how it is computed, control limits, response | 44 | 7 / 40 |
| | KPIReadings | The actual values, per period, in a file beside the indicator | 10 | 2 / 7 |
| | Unit | A declared unit; the standard ones ship | 8 | 1 / 4 |
| | ReportingCycle | When readings are due, possibly in named periods | 14 | 1 / 10 |
| | DataSource | Where numbers come from, access, quality, the metrics it gives | 32 | 3 / 12 |
| Work | Portfolio | A set of work ranked and funded against objectives | 10 | 4 / 7 |
| | PortfolioDecisions | Invest, hold or stop, per item, with a reason, at the latest review | 12 | 2 / 9 |
| | Programme | Coordinated work for one change, with a theory of change, problems, components, risks, governance | 52 | 7 / 55 |
| | Project | The charter record, see below | 174 | 15 / 184 |
| | Operation (service) | Continuing work, with service owner, levels, funding per period | 21 | 5 / 33 |
| People and money | Team | A unit of structure | 7 | 1 / 3 |
| | Resource (role, body) | A role or governance body, never a person | 7 | 1 / 3 |
| | StakeholderMap | Who has a stake, scoped to a programme or project | 13 | 3 / 13 |
| | FundingSource (budget) | A budget with a holder and a period | 9 | 3 / 5 |
| | Allocation | What a budget gave one project, with a status | 11 | 1 / 8 |
| Workspace | Settings | Level names, operator, vocabularies, change control, a Chromium path | 23 | 3 / 10 |

Also in the contract but not kinds: `vault` and `manifest` envelopes,
`presence` (32 properties, for who is where on screen), and three
"strict" profiles for agents (`strict.project`, `strict.resource`,
`strict.team`).

Totals: 451 field entries across the 22 flows. The project flow alone is
184 of them (41 percent) and its JSON is 39 KB of the 110 KB of flows.
A project holds 26 top-level sections: summary, team, resources, mandate,
escalation route, funding, alignment, objectives, deliverables, indicators,
success criteria, operation, data, timeline, risks, constraints,
compliance, notes, components, milestones, responsibilities, costs,
procurement, conditions, sign-offs and events, plus a classification. The
walk shows it as 15 steps in 8 stages.

### 1.2 How they link

The rule is that the work that depends on something names it, and the
other end is read back (D1, D32, D46). The record is a directed acyclic
graph written from the top down (D28).

- Purpose, then goals at three levels. A project aligns to outcomes, a
  programme and portfolio to higher levels (D24, D25).
- A gap is closed by an outcome and measured by an indicator; a programme's
  problems cite gaps (D9, D45).
- An indicator has readings (another file), a unit, a cycle, a source and
  an owner. A data source gives metrics; an indicator may be computed from
  them (D57, D63, D64).
- A project or programme lists **components**: other projects or
  programmes it depends on (D46). An operation names the programmes it
  serves. A project hands over to an operation.
- A project or programme names the portfolios it is in; the portfolio reads
  them back. Money: a project's cost lines draw on a funding source; the
  holder records an allocation (D69).
- Comments hang beside records and are not part of them (D72).

### 1.3 Flows, checks, the engine's other surfaces

- **Flows.** Each kind has a flow: ordered steps, a field list per step,
  a control type, a hint, and the check ids each field answers. They are
  data, served to any interface. The web interface also has hand-built
  walks that do not equal the flows: the programme walk has eight steps in
  the UI and seven in the flow, in a different order (round two,
  `cartograph-levels.md` 2.6).
- **Checks.** About a hundred distinct check ids (a count of id strings in
  the check files: project about 50, programme about 16, component 6,
  operation 6, indicator 6, plan 7, portfolio 3, capture 2, stakeholder 2;
  plus one `required:<path>` check per unfilled field). 93 are named by
  flows. A check is ok, warn or block. Only a project's hand-off refuses
  on a block. Programme, goal, operation, portfolio and gap checks advise
  (D6). An unfilled required field is a check, not a refusal, once the
  version is well formed (ADR 0035).
- **Change sets.** Every change, by person or agent, is made in a change
  set, a branch-like piece of work that is reviewed and rolled in under a
  policy (ADR 0022, 0024).
- **Agents.** An MCP server with roughly forty-odd tools by name in the
  code (a name search, not a count from a running server), including three
  or four propose variants kept for clients that know the older names
  (ADR 0022). Agents read and propose, and people decide (ADR 0016); they
  are held to a strict profile (0027, 0029), work in rounds the engine
  computes (0032) and declare what they decided for the person (0033).
- **Trace.** Agents' calls are traced (0028) and judged by DMAIC
  (`docs/EVALUATING.md`); people's acts are traced by shape (0034) and
  analysed for defects per million and the eight wastes.
- **Other.** A decision model (Laya) behind a port, optional; a live
  co-editing layer (Automerge, built from a Rust crate to WebAssembly); an
  OAuth and access-list layer; stores for files, SQLite and Postgres;
  reporting views; a command line with import, export, diff, validate,
  check, render, report, handoff, snapshot.

### 1.4 The screens

Round one's inventory (`inventory.md` 1.1) lists about thirty distinct
screens or surfaces: welcome walk, home, new, strategy, goals, projects
(list, start, prepare, fifteen step pages, charter, framework, closing,
landing, hand-off), programmes (nine pages), portfolios (five), operations
(five), gaps, indicators (definition, metric, readings), sheets (ten
shared lists), graph, glossary, change sets, drafts, proposals, agents,
mentions, access, snapshots, tour. The route tree has 95 route files.

COMMON.md reports the audit figure: a median screen shows 49 controls in
view and 2 to 3 primary actions; the onboarding walk shows 7 and 1. I
could not find the script that counted them. `.eval/audit` and
`.eval/audit2` hold only screenshots of project and indicator screens. Round
two said the same of its own counts. So I treat 49 and 7 as the owner's
measure and not as something I checked.

What the user tests said (COMMON.md, in person, nothing recorded): too
cascading, too much on every screen, home too vague, people gave up at
the first screen after onboarding, and the onboarding walk was the one
part they finished and liked.

### 1.5 Size

| Part | Size |
|---|---|
| Engine Go, not generated, not tests | 66,849 lines |
| Engine Go, generated API client and server | 17,878 lines |
| Engine Go tests | 26,404 lines |
| Biggest engine package | `internal/engine` 23,323 lines (156 files) |
| Stores (files, SQLite, Postgres, memory, conformance) | `internal/store` 11,033 lines |
| MCP, render, API, command line | 3,799, 3,975, 3,629, 3,843 lines |
| Contract: OpenAPI | 5,971 lines, 92 paths |
| Contract: schemas, flows, guidance (JSON, all together) | 466 KB |
| Engine docs | 13,128 lines in `docs/`; TAXONOMY.md 2,036; DESIGN_RULES.md 1,052; ARCHITECTURE.md 889; 35 ADRs; 72 numbered taxonomy decisions |
| Interface, not tests, not generated | 58,172 lines |
| Interface generated API types | 6,276 lines |
| Interface tests | 13,225 lines |
| `src/copy.ts` (every word a person reads) | 4,177 lines in about 60 groups |
| Largest interface area | `src/projects` 15,808 lines in 130 files (27 percent of the interface), plus 4,524 test lines |
| User guide | 46 pages in `docs/guide`: 2 tutorials, 28 how-to guides, 4 reference pages, 12 explanation pages (built after round one found none) |

The project is the single heaviest part of the engine's contract, the
check code, the interface and the guide.

---

## 2. What is good and should survive any rebuild

Each item says why, and which domains' sources agree.

1. **The contract-first design: schema, flow, guidance and checks as data
   served to any interface.** It is why a second interface, an agent and a
   test suite can all be built from the same five documents
   (`UI_CONTRACT.md` section 1), and why the words can move to another
   language. It is also how a standard grows: IATI is itself a published
   schema plus code lists that many tools implement, so the pattern is
   proven in aid reporting (IATI 2.03). Domain-neutral. *Keep whatever
   the model becomes.*

2. **The hexagon and the conformance suites.** Stores, codecs, fan-out,
   CRDT and identity are behind ports, each with a suite an adapter must
   pass (`AGENTS.md`). That gives files for a hobbyist, SQLite for a small
   team, Postgres for a ministry from one binary. This is the part that
   makes "from a hobbyist to a nation" believable. Neutral. *Keep.*

3. **A vault of plain files, one manifest per file, with the index a
   cache** (`ARCHITECTURE.md` 4.2, 4.3). A person can read, diff, back up
   and `git` it, and the tool cannot trap it. This is the right basis for
   any open exchange format. Neutral. *Keep.*

4. **Every change goes through a reviewable unit, and the record keeps who
   changed what.** Change sets (ADR 0022, 0024, 0035) give review, merge
   policy and an audit trail. Sources: the Green Book and GovS 002 make
   approval points part of how work is governed (round one); the Charity
   Commission requires trustees to account for how they pursued their
   purposes and whether they had due regard to its guidance (GOV.UK
   page); Scrum assigns accountability to one Product Owner and requires
   inspection and adaptation (Scrum Guide). Keep the idea. Candidly, the
   vocabulary has grown into three overlapping ideas (see 3.4), and the
   cost to someone who just wants to edit a record is real: ADR 0024 weighs
   it and accepts it.

5. **Checks advise; only an authorising step requires completeness.**
   ADR 0035 and D6. This is exactly how staged business cases work: an
   outline is approved before the full case exists (Green Book strategic
   outline, outline and full cases; GovS 002 clause 6.3 gates, both from
   round one). It also fits the walk, where a person should not be refused
   for what they have not reached yet. Neutral. *Keep.*

6. **The decision model behind a port, off by default, with an honest
   `notJudged` state.** The engineering is sound: meaning is never decided
   by a word list, the engine works without the model, and the gate tests
   the use of answers with a fake (ADR 0023, 0030). Keep the port. What I
   cannot say is that it helps the people who gave up at the first screen:
   its measurement is against labelled examples (`just decide-measure`),
   not against a person's task.

7. **Roles, never persons; ids generated, never derived from names.**
   Privacy by design and stable references. IATI likewise describes
   organisations and their roles in an activity, not individuals
   (`participating-org`). Neutral. *Keep.*

8. **Agents read and propose; people decide; one bar for both.** ADR 0016,
   0017, 0029. Sources: Scrum puts the decision with one accountable
   person; charity law puts it with trustees. This is product policy more
   than a published standard, and it is sound. *Keep.*

9. **A readings file beside the indicator, with a target, a baseline or an
   admitted unknown, a unit and a cycle.** IATI structures results the
   same way: a result has indicators, an indicator a baseline and periods,
   a period a target and an actual (IATI 2.03). The Impact Management
   Project asks how much, for whom and for how long (Impact Frontiers
   page). Cartograph's D8 separation is a legitimate variant of IATI's
   nesting. Neutral. *Keep.*

10. **A service (Operation) as the place work lands, with an owner and
    funding for running it.** Round one found that the UK sources keep
    benefits management alive after closure and out of the delivery
    document (PRINCE2, Green Book, GovS 002). Cartograph has the landing
    place; many tools do not. *Keep.*

11. **A gap register linking a problem to an outcome, and no Benefit kind
    (D4, D9).** A benefit is built from a goal, an indicator, a group and a
    reading. This is consistent with the Green Book's case for change and
    with GovS 002's definition of a benefit. *Keep.*

12. **The people's trace and the agents' trace, and the habit of judging a
    change from them** (ADR 0028, 0034, `EVALUATING_PEOPLE.md`). This is
    the right instrument. It is not yet fed: the in-person tests recorded
    no data. *Keep, and use it on people.*

13. **The versioning promise and the compat gate** (`VERSIONING.md`,
    `just compat`). A deployed vault must open in a later release. It
    constrains a rebuild (section 4) and protects users.

14. **The taxonomy discipline: every noun is argued against a named
    discipline in writing** (`TAXONOMY.md`). The method is worth keeping.
    The size of the file (2,036 lines, 72 decisions) is not.

---

## 3. What looks irrelevant, duplicated, misplaced or over-built

### 3.1 The centre is a project-shaped form

The product says the charter is a brief (D55, "a brief" is what a sponsor
approves). The record behind that brief has 174 declared properties in the
project schema, a 184-field flow, about 50 project checks, and a quarter
of the interface. Programme (52), operation (21) and portfolio (10) are
small beside it, and the programme and portfolio flows borrow project
shapes (the programme risk is the project risk shape, said by D6 and
round two 5.3).

Against the sources, the centre ought to be a decision and its reasons.
Every framework round one read treats the charter or brief as the thing a
named person approves, and treats the plan, the costs, the schedule and
the procurement as later (`charter-standards.md` section 2: seven things
every source asks first, a list of what belongs to later planning).
Cartograph asks for the later things early, in the same record. Round
one already said so for cost lines, schedule logic and data-capture depth.

The cross-domain sources agree on what the small centre is. IATI's
required core is small: an identifier, a reporting organisation, a title,
a description, a status, dates and the participating organisations; the
sector, budget, transactions and results are layered on and optional
(IATI 2.03 element list; "required" status I did not verify in the
standard's rules). Scrum's centre is one Product Goal and an ordered list.
OKRs are explicitly not comprehensive (re:Work). The Impact Management
Project's whole standard is five questions. Cartograph is the only
framework in this set whose single record has more than a hundred
properties.

Candid verdict: the project record is the wrong centre because it is the
wrong size, not because a project is the wrong noun.

### 3.2 Several places to say the same thing

I count these from the schemas.

**"How will we know" appears in at least seven places.**
`Goal.keyResults`; `Project.objectives[].keyResults`; `Project.kpis`;
`Project.successCriteria` (11 properties each, with metric, standard,
source, cycle, owner and confirmer); the `KPI` itself with its target and
baseline; `Gap.measure`; `Programme.kpis`; `Operation.kpis` (service
levels). D25, D26, D54 and design rule "a success criterion is, and is
not" try to keep them apart, and the walk steps "measures" and "success"
are separate steps. A project officer sees two screens asking how success
will be known. The logframe asks once, in one column, per level (EC
handbook, round one). IATI asks once: indicator, baseline, period, target,
actual.

**"Who" appears in at least eight places.** `Team`; `Resource` (a role or
a governance body, D43); `Project.resources`; `Project.responsibilities`
(responsible, accountable, consulted, informed, D50); `StakeholderMap`;
`BeneficiaryGroup`; `Segment`; and the sponsor, manager and business change
manager fields on a programme (D61 puts the same pair on a project).
IATI has one list of participating organisations with a role code, and
separately the groups a result reaches as a dimension on a baseline or an
actual (IATI 2.03).

**Three routes and four tool names for one act.** Drafts, Proposals and
Change sets are separate routes (round one 2.3, 2.1; the Proposals route
is described there as an older route that change sets replace). The MCP
server keeps `propose`, `propose_save`, `propose_set`, `propose_item` and
`propose_state`; ADR 0022 says the second and third "do the same, for
agents that know them". VERSIONING.md makes removing them a major change.

**Two names, sometimes three, for a thing.** KPI and indicator;
Operation and service; Resource and role; "roll in" and "merge"; the
interface's own words differ from the kind names (round one 2.3). A
`labels` mechanism exists (D70) and a vocabulary mechanism (D71); the
problem is that the defaults already disagree.

**The strategy tree is also a second graph.** A programme's `pathway` is a
separate set of edges between outcomes, kept apart from the goal tree on
purpose (D12, D13, design rule "a pathway is not the goal tree"). That is
a defensible theory-of-change structure. It is also a second model of
cause that a non-specialist must learn.

### 3.3 Over-built for the core, and tied to one domain

- **DMAIC and statistical process control.** D58 puts Lean Six Sigma's
  five phases into the project record: problem causes with evidence and a
  "verified" flag, a detection rating on each risk (FMEA), a specification
  limit and a response plan on each indicator, a control-chart analysis
  (`internal/spc`, with defects per million and a sigma level), a
  `dmaic` route, a `dmaic` tool and a `dmaic` group in the copy. None of
  the cross-domain sources I read asks for any of it. It serves process
  improvement in the Six Sigma tradition and nobody else. As an optional
  extension it is harmless; as part of the core kinds and the core
  interface it is weight. It is also the method the owner uses to judge
  the product itself (ADR 0028, 0034), which is a reason it was easy to
  build, not a reason a ministry needs it.
- **A metric-expression language inside an indicator.** `KPI.metric` has
  18 properties (numerator, denominator, window, filter, `expr`, `uses`)
  and `DataSource` has a `semanticModel` and a metrics list with
  aggregations, with an export for dbt. D57, D63 and D64 say a person
  builds the indicator from named parts and never writes dbt. That is a
  thoughtful answer to a real problem (an indicator with no source sits
  empty). It is still analyst tooling in the main model. A small
  organisation never meets it; a ministry's data team has its own.
- **Live multi-cursor co-editing of every record** (Automerge compiled
  from a Rust crate to WebAssembly, a sync socket, presence documents).
  Valuable for a team in one record; costly in build (a crate that
  `just generate` rebuilds on one platform) and in the contract (a
  `presence` schema of 32 properties). The user tests did not ask for it.
- **A workspace `Settings` that holds a Chromium path and an operator
  name** beside the organisation's vocabularies and change-control policy
  (`settings.schema.json`). Deployment configuration in the domain record
  is misplaced; purpose already moved out once (ADR 0020).
- **A force-directed and layered graph layout in the engine**
  (`internal/layout`). Fine behind a port (round one: the owner wants
  shared logic in the engine). Is it core? It serves one screen.
- **Evaluation machinery as large as a feature.** The MCP change that
  produced `.eval/findings*` ran numbered rounds with per-run vaults,
  three passes in a row as the bar, a "void" run, builds named by commit.
  That discipline is admirable and also the most polished part of the
  repository. The human path has had in-person tests with no data
  recorded. The effort has gone to the path with the fewer users.

### 3.4 Misplaced

- **Structure before the first question.** The new-work flow asks a person
  to say whether the thing is a project, a component, a programme, a
  portfolio or a service by answering questions (D56, "Which describes it
  best?"), or to choose among eight tiles, then a page of "prepare",
  before the first real question (round two 2.6 item 1). The nouns are the
  product's, not the person's. The user finding was that people gave up
  at the first screen after onboarding.
- **Portfolio membership is declared on the member.** A portfolio manager
  cannot add to a portfolio from the portfolio (round two portfolios
  6.3). Correct for data integrity, wrong for the task.
- **Component wording.** Programme components are asked as "depends on",
  a project idea carried into a programme (round two programmes 5.3).
- **The charter belongs to three kinds and not the fourth.** Programme,
  project and operation render a charter; a portfolio renders nothing,
  though a portfolio's output is a decision someone must be able to hold
  (round two 2.6 item 7).
- **Dead controls.** "Rebuild index" and "Open vault folder" appear on the
  snapshots screen with no handler found (round one 1.1).
- **Import and export have no screen**; they are command line only (round
  one 1.3). For an NGO officer with a spreadsheet, the exchange route is
  missing.

### 3.5 Missing, against the sources

Taken from the research so far and checked against the schemas by name.
I searched the schemas for options and evaluation fields by name and found
none in project or programme; I did not read every description.

1. **No stage or gate model for a decision to invest.** Every framework
   in the set stages the commitment: strategic outline, outline, full
   (Green Book, round one); gates before each stage (GovS 002 clause 6.3,
   round one); discovery, alpha, beta, live (GOV.UK Service Manual, round
   one); single-stage or two-stage cases chosen after scoping (New Zealand,
   secondary). Cartograph's project has a lifecycle of draft, defined,
   handed off, cancelled, and `TAXONOMY.md` marks "Tranche" as nothing.
   The mapping table also marks the business case "partial and
   deliberate". This is the largest structural gap against the sources.
2. **No options considered.** The Green Book and PRINCE2 require the
   do-nothing, do-minimum and preferred options in the business case. The
   schemas hold no such thing.
3. **No evaluation design.** No evaluation questions, no type of
   evaluation, no review of the programme itself. The DAC criteria
   (secondary summary only) and Canada's recurring evaluation requirement
   (secondary only) both expect it. Indicators and readings cover
   monitoring and little else.
4. **No programme review or reset record, no dis-benefits, no closure
   condition, no assumption review date** (round two programmes 5.2 items
   1, 3, 5, 6, 9).
5. **No portfolio criteria, balance view, envelope view or pipeline**
   (round two portfolios 6.2).
6. **No mapping to an open standard.** Nothing exports a project as an IATI
   activity or a result in another standard's terms. The vault is open;
   the meaning is private.
7. **No contribution or risk of impact** alongside "how much". The Impact
   Management Project asks whether the effect would have happened anyway
   and how likely the real impact is to differ (Impact Frontiers page).
   Cartograph has assumptions and risks, but not on an outcome.
8. **No funding roll-up** by portfolio or programme (round two).

### 3.6 Documentation has drifted

- `ARCHITECTURE.md` says 18 kinds and "no Portfolio kind" in three
  places (lines 169, 487 to 490, 775); the registry has 22 kinds including
  Portfolio, PortfolioDecisions, Purpose and Allocation. ADR 0012 says 18.
- `UI_CONTRACT.md` opens with "Built so far" and names one exemplar; all
  22 flows exist. It describes a terminal interface that is not built.
- The user guide exists now (46 pages) but is for the product as it is.

A document that is wrong about the number of kinds is a sign that the
model is changing faster than its description.

### 3.7 The churn

`internal/legacy` (1,156 lines, no tests) rewrites retired names and
shapes on read: goal levels renamed twice, enum values moved from prose to
identifiers on 2026-09-29 and 2026-09-30, `spec.name` folded into
`metadata.name`, a Settings purpose moved to a kind. These are all
sensible, and they show a model that has been reshaped several times
within weeks. A rebuild is the next reshaping, not the first.

---

## 4. The cost of change

### 4.1 What a rebuild of the record model would throw away

Counted by what depends on the kinds:

- The project, programme and operation schemas, flows and guidance
  (about 250 KB of JSON), and the engine code that reads their shapes:
  most of `internal/engine` (23,323 lines, 12,143 test lines), of which the
  check files for project (1,721), programme (465), component (288), plan
  (280) and the rest are the first to go.
- `internal/render` (3,975 lines) and the charter layouts.
- The kind-shaped half of the interface: `src/projects` (15,808 lines,
  4,524 test), `src/programmes`, `src/portfolios`, `src/operations`,
  `src/kpis`, `src/gaps`, `src/framework`, `src/definition`, and the 1,400
  lines of `copy.ts` per kind that speak those nouns. Together about 25,000
  lines.
- The guide (46 pages), whose tutorials and how-to guides are written to
  these screens.
- The evaluation scorers and the criteria files, which are written against
  the current agent protocol, if the protocol changes.
- 72 taxonomy decisions: some stay as argument, many describe the shape
  being replaced.

### 4.2 What could be carried over

- **The platform, nearly whole:** the hexagon and all adapters
  (`store`, `codec`, `crdt`, `fanout`, `auth`, `oauth`, `identity`,
  `config`, `syncserver`) and their conformance suites; the contract
  machinery (generation from OpenAPI, schema loading, the kinds registry,
  validation, reference walking); change sets (`changesets.go` 1,657 lines
  and their stores); comments; access; activity and trace; units, timing,
  sentence, layout, structure; the command line shell; the build, the
  Nix flake, the container and release scripts; CI. This is the large
  majority of the non-model code: more than half of the Go.
- **The tests that guard the platform.** Of 26,404 Go test lines, the
  store, codec, crdt, fanout, auth, oauth, arch and API tests carry over;
  the kind tests do not.
- **The interface's components and client:** `src/components` (7,865
  lines, 89 files), `src/client` (2,492), `src/collab`, `src/changesets`,
  `src/comments`, `src/access`, `src/trace`, `src/onboarding`, `src/tour`,
  the generated API types. The onboarding walk, the one part people liked,
  is small (647 lines) and travels easily.
- **The kinds that are not in dispute:** Purpose, Goal, Gap, Assumption,
  BeneficiaryGroup, Segment, KPI (minus the expression language), Unit,
  ReportingCycle, DataSource (minus the semantic model), Team, Resource,
  FundingSource, Allocation. They are small, they match the sources, and
  they could be re-flowed without a schema change.
- **The method.** The decision records, the test-first gate, the fakes,
  Nix, the traces, the taxonomy discipline.

### 4.3 What a migration of existing users' vaults would need

I do not know how many vaults exist outside the owner's own. The user
tests recorded no data, and there is no telemetry I could read. I assume
any vault in use is a directory of YAML files, or a SQLite or Postgres
store, written by some 2.x release.

The promises that bind (`VERSIONING.md`, `AGENTS.md`): a vault written by
one version must open in a later one; a removed or renamed property, a
narrowed type or a removed kind is a major change; a breaking change ships
as a new major with a new contract version (`cartograph/v2`, `/api/v2`)
served beside the old one for at least one minor release, with a new Go
module path. The engine is at 2.11.0 on the `/v2` module path today. So a
rebuild that drops or reshapes kinds is a 3.0.0 with a `/v3` module, and
until it is out the old contract must keep working.

What the migration must do:

1. **Read every existing kind and write the new shape.** Ids are generated
   and never derived from names, and references are `x-cartograph-ref`
   fields, so links survive if ids are kept. The easy kinds are the small
   ones listed in 4.2. The hard one is Project: 174 properties, keyed lists
   (milestones, costs, risks, deliverables), events and sign-offs that
   record what happened, and free text that a new structure may need split.
   Programme and Operation are medium. A rule-based transform will do
   structure; anything that needs meaning (an objective that is two aims, a
   text that names a person) is a question to a person or to the decision
   model, by the engine's own rule (ADR 0030).
2. **Keep history.** The vault's index is a cache whose version numbers
   restart if rebuilt (`ARCHITECTURE.md` 4.3); `cartograph snapshot` is the
   tool for versions that matter. A migration that keeps the audit trail
   must carry versions, actors and reasons, or state plainly that it does
   not.
3. **Deal with work in flight.** Open change sets and their Automerge
   documents, drafts, proposals, comments, mentions, the `vault.yaml` apply
   state, hand-off bundles under `.cartograph/handoff`, the access list and
   the activity trace. The simplest honest rule: merge or discard open
   change sets before migrating, and carry comments and the access list.
4. **Validate and diff.** `cartograph validate`, `check` and `diff` exist;
   a migration should report what could not be mapped, per file, as
   `legacy.Rewrite` already does ("one note per field rewritten").
5. **Run both for a while.** The old contract served beside the new, a
   read-only old vault, and an export that works in both. Distributions
   that pin an older engine (the repository has a distribution document for
   a Laravel interface) need the same overlap.
6. **Postgres and SQLite stores migrate on start** (`VERSIONING.md`); a new
   layout needs the same, with a rollback.

The cheapest course that meets the promise is not a rebuild of the platform
at all. Add the new centre and the new walk as additions, mark the old
fields deprecated (as `spec.name` was), make the old interface routes
redirect, and remove only at a major. That is how the project has already
moved purpose out of Settings. The expensive alternative is a new contract
beside the old one. I would choose between them only after the design
criteria below are settled, and I would say now that the evidence supports
"rebuild the centre and the first-use interface; keep the platform", not
"start again".

---

## 5. Design criteria that follow from this review

Each criterion is checkable. "Sources" names where I read support; "Domains"
says which kinds of organisation the support comes from. **Neutral** means
the criterion holds in every domain in the set; **specific** names the one
domain it is for. E is essential, D desirable. Where I have no source I
read, I mark it as a design judgement and say so.

| # | Criterion | Sources | Domains | Neutral or specific | E/D |
|---|---|---|---|---|---|
| C1 | A person can state why a piece of work exists, in their own words, in one place, and every later view shows the same words. | Green Book strategic case, PRINCE2 brief, EC logframe (round one); IATI title and description; Scrum Product Goal; Kellogg (round one) | UK government, EU development, aid reporting, software, philanthropy | Neutral | E |
| C2 | Each aim has one place to say how progress will be known: an indicator with a unit, a baseline or an admitted unknown, a target, a source and an owner. No second place asks the same. | EC logframe; IATI result and indicator; OKR key results; Green Book SMART; Impact Frontiers "how much" | Aid, UK government, corporate, impact investing | Neutral | E |
| C3 | An indicator's definition is kept apart from its readings, and each reading carries the period it covers. | IATI period with target and actual; OKR scoring per cycle; D8 | Aid, corporate, Cartograph | Neutral | E |
| C4 | A person can record an assumption and a risk as different things, each with an owner and a way to tell when it has stopped holding. | EC logframe assumptions column; Green Book; Impact Frontiers risk; Scrum empiricism (inspect and adapt) | EU development, UK government, impact investing, software | Neutral | E |
| C5 | Every piece of work names one accountable role, and the record names roles and bodies, not individuals, unless the organisation chooses to add people. | GovS 002 senior responsible owner (round one); Scrum single Product Owner; charity trustees' duties (GOV.UK page); IATI participating organisation with a role | UK government, software, charity law, aid | Neutral for accountability; the "no person" rule is a Cartograph design choice (privacy), not a source requirement | E |
| C6 | A person can leave any question unanswered and still save; only the step that authorises or hands off asks for completeness, and says what is missing. | Green Book staged cases; GovS 002 gates (round one); GOV.UK question pages; New Zealand staged cases (secondary); ADR 0035 | UK and NZ government, public services | Neutral | E |
| C7 | The depth asked of a piece of work follows its scale and risk: a one-person effort and a national programme use the same record, and detail appears only when asked for or when the work needs it. | Green Book proportionality and GovS 002 (round one); NZ scoping (secondary); OKRs "not comprehensive"; Scrum's small artefacts | Government, corporate, software | Neutral | E |
| C8 | The record can show the stage a decision to commit is at, what was decided at the last stage, by whom and on what grounds, and what is deferred. | Green Book SOC, OBC, FBC; GovS 002 gates; GOV.UK discovery to live (all round one); NZ (secondary); World Bank cycle (not read) | Government, development finance (not read) | Neutral in idea; the stage names are domain-specific, so names must be configurable | E |
| C9 | A person can record the options considered, including doing nothing, and why one was preferred, before committing money. | Green Book economic case; PRINCE2 business case (round one); NZ economic case (secondary) | Government | Specific to investment decisions. A hobbyist or a cooperative may never need it | D, E for public money |
| C10 | The record can say how and when the work will be evaluated, by which questions, and who will act on the findings. | DAC criteria (secondary summary); Canada Policy on Results evaluation (secondary); Kellogg and EC logframe (round one); Magenta Book (g2's task, not read here) | Aid, UK and Canadian government, philanthropy | Neutral in idea; the criteria list is domain-specific and must be replaceable | D |
| C11 | A long-lived piece of work (programme, portfolio, service) keeps a review log: when reviewed, by whom, what was decided, and what was reset. | Green Book and GovS 002 (round one); NAO (round two); Charity Commission annual account of how purposes were pursued; Canada recurring evaluation (secondary) | UK government, charity, Canada | Neutral | E |
| C12 | When work ends, the record says what carries the benefit on, who owns it and when it is read next; benefits are tracked after closure. | PRINCE2 benefits approach, GovS 002, Green Book (round one); Impact Frontiers duration; World Bank completion reports (snippet only) | Government, impact investing | Neutral | E |
| C13 | The record says who is affected and how effects differ across groups, without forcing counts. | Impact Frontiers "who"; IATI dimension on baseline and actual; Green Book distributional analysis (round one) | Impact, aid, government | Neutral | D |
| C14 | The record can say whether an effect is the work's own or would have happened anyway, and how likely the real effect is to differ from the plan. | Impact Frontiers contribution and risk; DAC impact (secondary); Magenta Book (not read) | Impact investing, aid | Specific to organisations that claim impact. Not for a hobbyist | D |
| C15 | Money is a set of lines tied to a funder and a period; the tool does not become an accounts system. | IATI budget, planned disbursement, transaction; Green Book financial case | Aid, government | Neutral | D |
| C16 | A person can export the whole record as plain open files and as at least one open exchange format where a standard exists for the domain, and import it again without loss. | IATI 2.03; vault design; no source read for 360Giving or Open Contracting (g4's task) | Aid (IATI); others unread | Principle neutral; mappings domain-specific | E for the files, D for each mapping |
| C17 | The organisation can use its own words for levels and kinds (goal or objective, programme or workstream, service or operation), and the standard terms are one setting away. | Comparison across Scrum (Product Goal), OKR (objective), logframe (purpose), DAC (outcome), charity law (purposes), IATI (result) | All | Neutral. This is the check that the model is not one country's | E |
| C18 | Every core task can be done as a guided path with one question a screen and a way back, and the same record is reachable in a full workspace. | GOV.UK question pages and task list (round one); NN/g (round one) | Web services, general UX | Neutral | E |
| C19 | A person who starts a task is never asked first to classify it in the product's nouns. The level emerges from what they say, or is offered as a suggestion they can change. | User tests (COMMON.md); GOV.UK "never ask twice"; design judgement | Neutral | E |
| C20 | A change is reviewable before it becomes the record, and the record keeps who changed what and why; a person who simply wants to edit one field is not made to learn the review model. | Green Book approval points; Charity Commission due-regard account; Scrum inspection | Government, charity, software | Neutral in idea; the term "change set" is a software idiom and may need a plainer name for non-technical users | E for audit-bearing bodies, D otherwise |
| C21 | An agent can read and propose and cannot make the record; its proposal is held to the same checks as a person's. | ADR 0016, 0017; Scrum single accountable owner | Neutral | E |
| C22 | Method-specific extensions (Lean Six Sigma, statistical process control, metric expressions, a particular evaluation framework) live outside the core kinds and the first-use interface, and can be turned off. | None of the sources I read requires any of them. Design judgement | Specific to the method's own domain | Specific | E that the core excludes them |
| C23 | An existing vault opens in every later release, and the tool says what it changed. | `VERSIONING.md`; `just compat` | Neutral | E |
| C24 | The tool records what people do, by shape, without storing what they decided, and uses it to judge a change. | ADR 0034; Diátaxis and NN/g (round one) | Neutral | E |

Five criteria carry a domain warning. C8's stage names, C9's options, C10's
evaluation criteria, C14's contribution and risk, and C16's mappings are
all things a hobbyist, a cooperative and a ministry will want in different
amounts. The record can hold them as optional parts that appear when the
organisation turns them on, which is C7.

---

## 6. Where the sources leave room: options and trade-offs

**Option A: one kind of work with a level, or separate kinds.**
Canada's framework nests core responsibility, result and program in one
structure (secondary). IATI nests activities by a `related-activity` link
and uses one record type at every level. PMI, APM and MSP separate
portfolio, programme and project by purpose (`TAXONOMY.md` definitions;
APM page). *One kind with a level* is easier to learn and to exchange with
IATI and removes the question "which is it?" (C19), but loses the rules that
make a programme different from a portfolio (D32). *Separate kinds* keep
the discipline's words and the checks; they cost the person a classification
decision at the start. A middle road: one record with a level that the tool
suggests, and rules that depend on the level, not the kind.

**Option B: where the centre is.** Round one found every source treats the
charter as a decision brief. IATI centres on an activity with results.
Scrum centres on the goal. OKRs on the objective. Impact Management on the
outcome and its five questions. A decision-and-case centre fits government
and philanthropy; an outcome-and-evidence centre fits aid and impact; a
goal-and-backlog centre fits software and small teams. This is g4's
question. For this note: the current centre (a project form) is the
weakest of these, and the strategy tree (purpose, goal, gap, indicator) is
the strongest part of today's model and could be the centre without
changing a kind.

**Option C: people or roles.** Cartograph's "no person in Cartograph" fits
privacy and IATI's organisational view. Scrum names one Product Owner and
charity law names trustees, who are people. A cooperative may want a name
beside a role. *Roles only* protects privacy and survives staff change.
*Optional people* is easier to read. The identity system already holds
principals; linking a role to a principal outside the record would give
both.

**Option D: how heavy is review.** Change sets for every change give audit
for a ministry and cost a hobbyist an extra concept. Make the review policy
a setting with a plain "save straight in" default for a workspace of one,
which ADR 0024's merge policies partly allow already (four roll-in
policies exist; I did not read their defaults).

**Option E: evolve or rebuild.** Section 4.3. Evolve if the new centre can
be added beside the old kinds; rebuild if the criteria demand removing
fields. Removal is a major, and users' vaults need a migration.

---

## 7. Open questions

- I could not read the OECD DAC 2019 text, the New Zealand and Canadian
  guidance, the World Bank policy or IRIS+. C8, C10 and C12 lean on UK
  sources I read in round one, and on search summaries for the rest.
- I did not read ISO 21500 or 21502, PM2, OMB A-11, GAO, RIBA, SAFe,
  NHS, WHO, UKRI, Horizon Europe, NPC or the balanced scorecard. The
  claim that no cross-domain source asks for DMAIC is true of the sources I
  read, not of all.
- I did not run the product or recount the audit's 49 and 7 controls; I
  could not find the counting rule.
- How many vaults exist outside the owner's, and on which release? This
  decides how much migration is worth building.
- Which of `Proposals`, `Drafts` and `Changesets` do people use? The
  people's trace could answer; the in-person tests recorded none.
- Does the walk-first work (cartograph-ui#136) change the screen count
  enough that part of 3.4 is already done? I read the route tree, not the
  open branch.
- Is IATI's "required" set small as I think? I read its element list, not
  its rules.
- Do the 93 flow-named checks and the roughly 100 engine check ids map
  one to one? I counted strings, not behaviours.
