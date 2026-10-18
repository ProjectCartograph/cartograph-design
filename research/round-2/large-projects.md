# Large projects with sub-projects

Research for Cartograph, round two (scale). Brief: `brief-l.md`, with
`COMMON-SCALE.md` and `../COMMON.md`. Written 2026-10-17. Read-only on
both repositories.

## 0. What I could and could not read at source

Read at source (fetched, and the text checked):

| Source | URL | What I took from it |
|---|---|---|
| GovS 002 v2.1, HTML edition (first 100,000 of about 125,000 characters, plus a glossary read) | https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/ | definitions, stages, gates, work packages, dependencies, benefits, governance |
| APM information sheet, "Projects, programmes and portfolios" (2023) | https://apm.org.uk/media/d4piyeyg/information-sheet-programmes-project-portfoliofinal.pdf | outputs versus outcomes; a gradual scale |
| APM, "What is programme management" | https://www.apm.org.uk/resources/what-is-project-management/what-is-programme-management/ | programme definition and signs |
| APM news page, "Projects, programmes and portfolios, so what is the difference" | https://www.apm.org.uk/news/projects-programmes-and-portfolios-so-what-is-the-difference/ | comparison |
| IPA, Project Routemap handbook (PDF, 2022) | https://assets.publishing.service.gov.uk/media/6297200fe90e0703a2fed794/Handbook__-_FINAL.pdf | uses "project" to cover programmes; 12 complexity factors; interfaces and dependencies |
| Flyvbjerg 2014, "What You Should Know About Megaprojects, and Why" (arXiv copy of the Project Management Journal paper) | https://arxiv.org/pdf/1409.0003 | iron law, break-fix model, delay and cost, remedies |
| Flyvbjerg, Budzier and Lunn, "Regression to the Tail" (abstract only) | https://arxiv.org/abs/2009.14682 | power-law cost overrun, tight coupling |
| HM Treasury, The Green Book 2026 (PDF, paragraphs 6.78 to 6.84) | https://assets.publishing.service.gov.uk/media/698dbcd17da91680ad7f4308/The_Green_Book_2026.pdf | optimism bias adjustment and contingency |
| Cartograph: `docs/TAXONOMY.md` (D1, D5, D15, D16, D32, D46 to D48, the structure questions), `contract/schemas/project.schema.json`, `common.schema.json`, `contract/guidance/en/project.guidance.json`, `internal/engine/components.go`, `componentchecks.go`, `internal/render/brief.go` | local | section 5 |

Could not read at source. Anything below that rests on these is marked
"secondary" in the text.

- **PMI** (PMBOK Guide, The Standard for Project Management, The Standard
  for Program Management, Practice Standard for Work Breakdown
  Structures). pmi.org returned 403 on every page I tried, and the
  standards are paid. What I say about PMI comes from a search-result
  summary of PMI's own library page
  (https://www.pmi.org/learning/library/new-pmi-standard-pm-8179) and from
  the PMI wording that Cartograph's own TAXONOMY.md quotes. I did not see
  PMI's definition of "subproject" or the WBS Practice Standard text. For
  the WBS I have only secondary descriptions (the Virginia IT glossary
  and a CDC guide, both found by search, not opened).
- **ISO 21502:2020.** iso.org returned 403 and the NZ standards shop page
  came back empty. I only have search listings: the standard covers
  project management and, per several listings, gives no guidance on
  managing programmes or portfolios. I did not see how it words the
  link between projects and programmes.
- **PRINCE2 manual.** Paid, and axelos.com returned only a page title.
  The AXELOS PRINCE2 Agile pages came up in search (for example
  https://publications.axelos.com/PRINCE2Agile2016/content.aspx?page=pra_131&showNav=true&expandNav=true)
  but the host did not resolve when I fetched it. What I say about stages,
  work packages, tolerances and exception plans is from the search
  summary of those pages. Secondary.
- **APM Body of Knowledge.** Not read. I used APM's public pages above.
- **Flyvbjerg, "Five Things You Should Know About Cost Overrun" and
  "Quality Control and Due Diligence"** (the reference class forecasting
  papers): the repository page returned 403. I did not read their text.
  The Green Book is my source for reference class practice.
- **Flyvbjerg and Gardner, How Big Things Get Done (2023).** A book; not
  fetched. I do not use its modularity claims.
- **The IPA Routemap module texts** (Systems Integration, Governance and
  so on). I read the handbook, not the modules.
- **GovS 002 v2.1, last 25,000 characters.** The glossary entries were
  read; the rest of the annexes were not.

## 1. How a large project is decomposed and governed

### What the sources say

Plain reading: no source gives a size at which a project must be split.
They give tests (one sponsor, one budget; outputs or outcomes), and they
give ways to break work down (breakdown structures, stages, work
packages, tranches).

| Source | Parts below the whole | How the parts are governed | How dependencies are handled | Read at source? |
|---|---|---|---|---|
| **GovS 002 v2.1** | A project runs in **stages**, each opened by a gate that commits money. Work is a hierarchy of **work components**; a work package is a group of related activities with its own scope, deliverable, timescale and cost. A programme runs in **tranches**. Sub-project is not defined. ([glossary and 3.3, 6.3](https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/)) | Each programme and project has a named senior responsible owner and a named manager (6.2). A project inside a programme may have the programme manager as its sponsoring body (4.4.7). Assurance can be combined across the two levels (4.2.3). | Keep dependencies between work components to a minimum so each is self-contained (7.2.4). Record interdependencies between components with different owners (5.2). Plans define dependencies on other programmes and projects (7.2.4). | Yes |
| **PMI** (PMBOK, Standard for Project Management, Practice Standard for WBS) | A project may be divided into **subprojects**; the WBS breaks scope into work packages, with a rule that child elements add up to the whole of the parent's scope (100 per cent rule). | Not read. | Not read. | **No.** Secondary only. |
| **PMI** (Standard for Program Management) | A **program** has **components**: projects, subsidiary programs and other work, per the passage Cartograph quotes in TAXONOMY.md. A large project split into related projects with explicit benefit management becomes a program. | A program manager coordinates. | Components that do not advance common benefits fit a portfolio better. | **No.** Search summary of https://www.pmi.org/learning/library/new-pmi-standard-pm-8179 and TAXONOMY.md's quotation. |
| **ISO 21502:2020** | Project guidance. Lists scope management among its practices (section 7.4, from a contents listing). | Project governance framework. | Not read. | **No.** Listing only. |
| **PRINCE2** | **Management stages** (at least two: initiation, then delivery) and **work packages** handed to team managers with tolerances. | The project board authorises each stage at a stage boundary; the project manager reports; an exception report can lead to an exception plan the board approves. A project's products deliver the benefits sought, alone or as part of a larger programme. | Not read. | **No.** Search summary of AXELOS pages. |
| **APM** | Programme = group of related projects and change work. Projects "sit within" a programme. A project, programme and portfolio are points on a gradual scale, not separate species. ([information sheet](https://apm.org.uk/media/d4piyeyg/information-sheet-programmes-project-portfoliofinal.pdf)) | A programme board with finance, provider and user interests; project sponsors may sit within programme governance. ([programme page](https://www.apm.org.uk/resources/what-is-project-management/what-is-programme-management/)) | Programme manager coordinates the projects. | Yes (public pages only) |
| **IPA Routemap** | Treats "project" as covering programmes, and says most of its practice carries over to portfolios ([handbook](https://assets.publishing.service.gov.uk/media/6297200fe90e0703a2fed794/Handbook__-_FINAL.pdf)). Applied to a defined scope, which may be a part of a bigger system. | Sponsor, client, asset manager and market roles. | Two of its twelve complexity factors are *interfaces and relationships* and *dependencies*; another is *interconnectedness*. | Yes |
| **Flyvbjerg 2014** | Not a decomposition method. Argues megaprojects are not magnified small projects. | Front-end management; accountability by institutional design. | Cause of failure includes tight coupling (abstract of the Olympics paper). | Yes |

### What this tells a tool

1. The splitting devices are of three kinds: by **time** (stages, tranches),
   by **deliverable** (work packages, components) and by **ownership**
   (a part with its own sponsor or budget).
2. A stage is not a sub-project. A stage is the same project at a later
   point and needs a gate. A sub-project is a part that runs alongside.
   GovS 002 and PRINCE2 both treat stages as the main way to control a
   large project over time.
3. GovS 002 asks for dependencies between components to be kept few and
   recorded where owners differ. That is a design aim, not only a record.

## 2. What a sub-project needs of its own and what it inherits

None of the sources I could read has a table of "inherits" and "owns". The
table below is my reading, built from what each source does say, with the
evidence in the third column. Where the sources are silent I say so.

| Matter | Owns | Inherits from the parent | Evidence |
|---|---|---|---|
| **Objective** | Its own deliverables and a clear product or outcome. | The reason the parent exists; the sub-project has to add up to the parent's aim. | GovS 002: higher-level work components are the sum of the lower ones ([3.3](https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/)). PMI's 100 per cent rule (secondary). |
| **Benefits** | A named owner for any benefit it forecasts. | The parent's benefits case. | GovS 002 7.3: each benefit has a named owner; traceability from benefits down to outputs. |
| **Budget** | A budget it is accountable for, if it is a work package or project. | The funding authority and the gate that commits money. | GovS 002 6.3: gates commit funding; work packages carry their own cost. |
| **Schedule** | Its own timescale. | Dates the parent needs from it. | GovS 002 glossary (work package has timescale and cost). |
| **Risks** | Risks it runs. | Escalation to the parent when outside its tolerance. | PRINCE2 (secondary): tolerances at work package level, exceptions go up to the board. GovS 002 6.4.4: escalate decisions beyond your authority. |
| **Governance** | A named manager. | The parent's governance framework, aligned with the portfolio's. | GovS 002 6.2. |
| **Sponsor** | Own sponsor only if the sources' test (one sponsor, one budget) fails, and then the whole is a programme. | Otherwise the parent's. | TAXONOMY.md D15 and the PMI passage it quotes. Not verified at PMI. |

Two points are worth stating plainly:

- **The tolerance idea is the one most useful to a tool.** PRINCE2
  (secondary) gives a part limits within which it may act, and anything
  outside goes to the level above. That is how a parent tracks a part
  without watching every detail.
- **Independence is a goal.** GovS 002 7.2.4 says to keep dependencies
  between components few. A tool that makes a link easy to add should also
  show what a link costs.

## 3. Project versus programme: the tests the sources give

| Test | Project | Programme | Source |
|---|---|---|---|
| What the objective is expressed as | Outputs: specific one-off things delivered. | Outcomes and benefits: a change in how the organisation works. | APM information sheet; APM programme page |
| What the thing is | A temporary management environment, run in stages, delivering one or more products or outcomes. | A temporary, flexible organisation coordinating projects and related work for outcomes and benefits linked to strategy. | GovS 002 glossary |
| What it contains | Work packages and stages. | Projects, plus other related work and business as usual. | GovS 002 3.3; APM programme page |
| How the work is released | Stage gates. | Tranches that let outcomes and benefits arrive step by step. | GovS 002 glossary and 6.3 |
| Where the uncertainty sits | Made manageable by fixed outputs, budget and time. | Broader scope, delivered at outcome level, so more uncertainty. | APM information sheet |
| What changes along the way | Plan updated before gates. | Decisions about next steps are revisited as work progresses. | GovS 002 7.2.5; APM programme page |
| Who coordinates | A project manager under a sponsor. | A programme manager and a programme board. | APM; GovS 002 4.4.7 |
| Splitting a large project | If split into related projects with explicit benefit management, it becomes a programme. | | PMI, via a search summary (not read at source) |
| Ownership | One sponsor and one budget makes one project, however many parts. Parts that need their own are projects of their own. | A group of those, steered to a shared change, is a programme. | TAXONOMY.md D15 and the structure questions (the PMI and MSP basis was not read at source) |

### Signs that a project has become a programme

Gathered from the sources, with their weight:

1. **The objective is no longer a thing delivered but a change in how
   people work.** (APM, GovS 002.) This is the test every source I read
   agrees on.
2. **Benefits need their own management**, with owners and trigger points
   through the work, not only at the end. (GovS 002 7.3; PMI via summary.)
3. **There is more than one deliverable, each needing its own sponsor or
   budget.** (TAXONOMY.md's reading of PMI; not verified at PMI.)
4. **The work needs to be released in steps, with the plan revisited after
   each**, rather than planned once. (GovS 002 tranches; APM.)
5. **Business as usual is inside the boundary**, so the change has to
   become normal working. (APM programme page; GovS 002.)
6. **The parts depend on one another for the same change.** This is the
   test Cartograph asks in D32.

One caution from APM: the three are "points on a gradual scale", not
mutually exclusive. A tool that forces a yes or no will sometimes be
wrong. The IPA goes further and uses one word for both. Cartograph's
suggestion text should read as advice, which it does today
(`componentchecks.go` only warns).

No source gives a number of projects, a budget or a duration at which a
project becomes a programme. Cartograph must not add one.

## 4. The evidence on large projects' risks, and what a tool can do

### Findings

- **The pattern is documented, not rare.** Flyvbjerg reports that most
  megaprojects in the data overrun cost, and that benefit shortfalls are
  also common, with no sign of improvement over the seventy years of data
  he cites (https://arxiv.org/pdf/1409.0003). He calls this the iron law:
  "Over budget, over time, over and over again." His sample defines
  megaprojects by a very large cost; I do not carry that figure over, and
  the paper's result is about that class of project, not a rule for all.
- **Estimates are biased in a known direction.** Optimism bias and
  strategic misrepresentation explain outcomes better than the older
  theories (same paper).
- **Delay costs money.** The paper reports a link between a longer
  implementation phase and a higher percentage overrun, and says to keep
  implementation short and delays small. It warns that this is not a case
  for rushing the decision stage.
- **The break-fix pattern.** Projects "break" when reality meets
  optimistic estimates, are paused and reorganised, and carry on. The
  paper's cure is to get the front end right.
- **The tail is long.** For the Olympic Games, cost overrun follows a
  power law, so averages mislead and a new extreme is expected
  (abstract at https://arxiv.org/abs/2009.14682). The abstract names tight
  coupling and long planning horizons among six causes. This is one
  class of project; I read the abstract only.
- **Government practice already answers some of this.** The Green Book
  says practitioners must adjust appraisals for optimism bias: raise cost
  and time, lower benefits. The size should come from the organisation's
  own record of forecast errors for similar proposals, with generic values
  only as a fallback. The adjustment shrinks as specific risks are
  prevented, and what is left becomes contingency (paragraphs 6.78 to
  6.84 of the 2026 edition).
- **Staging is the standard control.** GovS 002 requires stages with gates
  that can approve, revise, defer or stop work, and plans updated before
  gates (6.3, 7.2.5). PRINCE2 (secondary) adds exception plans when
  tolerance is forecast to break.

### What a tool can do about it

Each item below is tied to a finding. None sets a threshold.

| What a tool can do | Because |
|---|---|
| Show **ranges, not points**, for cost, time and benefit, and keep the point estimate beside the range. | Green Book 6.79: adjust estimates, do not trust the unadjusted figure. Fat tails: an average hides the risk. |
| Let an organisation keep its **own reference class**: finished work of a similar kind, with planned versus actual. Offer the adjustment from that history; do not ship a table of percentages. | Green Book 6.80 (own evidence first). The sources give no percentage that fits every kind of work. |
| Make **stage gates** a first-class thing for a large project: each gate says what it decides and who decides it. | GovS 002 6.3. |
| Show **tight coupling**: which parts depend on which, how long the chain is, which part most others rely on. | GovS 002 7.2.4; the Olympics abstract; IPA's dependency factors. Cartograph already computes chains, loops and shared parts. |
| Flag **delay as cost**: when a part on the longest chain slips, show the effect on the whole. | Flyvbjerg 2014 on delay and overrun. |
| Record **benefit owners** and trigger points. | GovS 002 7.3. |
| Say plainly that a **plan is an estimate**, and ask what happened later, so the history that feeds a reference class gets written. | Green Book 6.80. |

A tool should not simulate or forecast for the person. Cartograph's
TAXONOMY.md (D47) already records the risks that could move a date and
does not simulate it. Keeping that line is sensible: the person decides.

## 5. Cartograph against it

Read from the schemas, guidance, engine code and TAXONOMY.md, 2026-10-17.

### What Cartograph does today

- **Components are dependencies, declared by the user of the part.** A
  project or programme lists `components`, each a project or programme with
  a `why` (`common.schema.json`, `Component`: kind, id, why up to 240
  characters). A component may serve many; there is no single parent. This
  is TAXONOMY.md D46, which replaced the one-parent, one-level rule of D15.
- **The engine resolves the whole graph** (`internal/engine/components.go`):
  every path, **loops** (refused, with a blocking check), the **critical
  path** (the longest chain on the calendar), and the **shared** parts that
  most work depends on. A project's span comes from its milestones, or its
  start and phases; a programme has none.
- **Milestones link across projects.** A milestone may wait on another
  project's milestone, and that is how a dependency reaches the schedule
  (D47, D48). A loop of waits leaves milestones unplaced.
- **The brief shows the budget with components.** `budgetWithComponents` in
  `internal/render/brief.go` adds a project's own budget to those of the
  work it depends on.
- **The word and its tests.** The glossary defines Component beside
  Project. "Is one person in charge of all of it, with one budget?" decides
  project versus not. "Does each project need the others to bring about the
  same change?" decides programme. "Grouped only to decide what to fund?"
  decides portfolio (D32, D56). A project's definition says one team, one
  sponsor, one budget.
- **Stages are not modelled as such.** A project has phases (deprecated)
  and milestones. A programme has no dates. TAXONOMY.md says a tranche is
  scheduling that belongs to the delivery tool, and a programme is not
  given one.

### Where it matches the sources

| Source says | Cartograph |
|---|---|
| One sponsor and one budget makes one project (PMI, as quoted in TAXONOMY.md) | Same test, in the guidance and in the "which kind" walk. |
| Keep component dependencies visible and few (GovS 002 7.2.4) | Graph, shared parts, loops refused. |
| Record interdependencies between parts with different owners (GovS 002 5.2) | A component names the work it needs and why. |
| Benefits have owners and trace down (GovS 002 7.3) | Goal, key result, KPI and beneficiary group carry it (D4). |
| Outputs versus outcomes separate project from programme (APM) | Project has deliverables; benefits come after, in an operation; programme carries goals and KPIs. |
| A gradual scale, not a yes or no (APM) | The kind checks advise and block nothing. |

### Gaps and tensions

1. **Old checks still say a project has one parent and one level.**
   `componentchecks.go` still runs `components-one-level`,
   `components-programmes` and `components-one-sponsor` for any project
   whose older `alignment.partOf` names a parent, and the guidance text for
   `/spec/alignment/partOf` still reads "Choose one only if both have the
   same sponsor and budget. A part cannot have parts of its own." D46 says
   that rule is superseded and the editor writes only `components`. A
   person who reads the guidance meets two stories. The advice is
   non-blocking, so nothing breaks, but this is a documentation and
   guidance fix.
2. **The sponsor and budget test is applied to old data only.** Under D46 a
   component listed in `components` is not checked for "same sponsor, same
   budget". So nothing now tells a person that a component with its own
   sponsor and budget is a sign that the whole is a programme. The sources'
   main test (section 3) has lost its place in the new model.
3. **No stage gates.** GovS 002 and PRINCE2 make stages and gates the main
   control on a large project. Cartograph has milestones and a deprecated
   phases list, and no place to say "this gate decides whether the next
   stage is funded, and these people decide". Change sets and promotion
   policies (a separate decision) control edits to records; they are not
   delivery gates.
4. **No tolerance.** A parent cannot say how far a part may drift before
   the part must escalate. Without this the parent has only the critical
   path to watch.
5. **The parent's view of its parts is structural, not performance.** The
   engine computes the graph, the longest chain and the budget total. I did
   not find a rollup of parts' progress, risks or cost against plan. I did
   not read the UI code that draws the Components table, so the screens may
   show more than the engine states.
6. **Critical path uses duration only.** It does not use effort, cost or
   the chance a part slips. It is a calendar chain, and is described that
   way. This is honest, but a reader may take it for the PMI idea of a
   critical path with float. I did not check how the UI labels it.
7. **No range or reference class.** Costs and dates are single values (or
   windows for dates, D47). Nothing keeps planned versus actual for a
   finished project so a later project can use it. TAXONOMY.md D9 area
   on readings records KPI readings, which is a different thing.
8. **Programme nesting is declared but thinly used.** D5 and D32 allow
   `Programme.spec.programmes[]`. A programme may now also list components
   that are programmes. Two ways to say "programme inside programme"
   deserve a check.
9. **Programme components carry a heavy load.** D46 lets a programme list
   the work it depends on, but the sources say a programme coordinates
   work and is judged on benefits. Listing is a dependency; belonging is a
   governance relationship (TAXONOMY.md's own first paragraphs say this).
   I did not check whether the UI keeps the two apart on a programme.

Not checked: how the UI words the "which kind" walk to a person, the MCP
tools, and whether any screen shows float or slack.

## 6. The Diátaxis needs of the two readers

The map used: a tutorial is for someone learning by doing, a how-to guide
for someone at work with a goal, reference for lookup, explanation for
understanding (https://diataxis.fr/start-here/). As a lens on use, not
only on documents.

### A person running a large project

| Kind | Need | What would serve it |
|---|---|---|
| **Tutorial** (acting, studying) | Learn by doing once: split a bigger piece of work into parts and see the chain. | A guided run on the produce-cooperative example: start one project, add two components, see the chain and the longest path. Walk-first, one question a screen. |
| **How-to** (acting, at work) | "Add a part to my project." "Find what my plan depends on most." "Move a part that is running late." "Turn a project that has outgrown itself into a programme." "Record who decides at a gate." | One page per goal, for a person who knows the work. Each starts from the goal, names the fork ("if the part has its own sponsor, it is a separate project"), and ends. |
| **Reference** (knowing, at work) | What a component, a loop and the longest chain mean; what a check says and when it blocks; the fields. | Entries in the order of the product, the same parts each time. No advice. |
| **Explanation** (knowing, studying) | Why one sponsor and one budget makes a project; when a project has become a programme; why dependencies should be few; why estimates are biased and what a range is. | Short essays with the sources, in plain words. This is where the tests of section 3 and the evidence of section 4 belong. |

### A sub-project lead

The lead sees one part and needs to know what is theirs and what is not.

| Kind | Need | What would serve it |
|---|---|---|
| **Tutorial** | Learn what a part looks like from inside: its objective, its deliverables, what it must hand over and by when. | A short guided run that starts from "you have been asked to lead a part", not from the whole. |
| **How-to** | "Say what my part needs from another part." "Report that I am running late." "Hand my deliverable over." "Ask the parent for a decision." | Goal-first, no tour of the wider model. |
| **Reference** | What the parent has already set for me (objective, funding, governance); my fields; what the checks ask of a part. | Same shape as the project reference, with a clear line between inherited and own, as in section 2. |
| **Explanation** | Why my part is on the longest chain, and what a slip here does to the rest. Why I am asked about dependencies. | One page, with the chain drawn for this part. |

Across both: the walk-first rule means each of these tasks starts as a
walk and the full workspace is one step away. The sub-project lead should
land on their part, not on the whole project.

## Open questions

1. What does PMI's text say, word for word, on subprojects, on the WBS
   100 per cent rule and on what makes a large project a program? I
   relied on a search summary and Cartograph's own quotation.
2. How does ISO 21502 word the relationship between projects and
   programmes? Not read.
3. What does the PRINCE2 manual say about when a project should be a
   programme, and about tolerances for a work package? Not read at source.
4. Is there a peer-reviewed or official source that gives
   **how large projects should be split** (modularity, small parts) as
   distinct from how they fail? I found Flyvbjerg's diagnosis and remedy
   (front-end management, reference classes) but did not read his
   modularity argument.
5. Should Cartograph restore a "different sponsor or budget" advisory for
   components listed under D46, so section 3's main test still shows?
6. Should a project carry stages with gates, and if so as a new thing or as
   a kind of milestone? The sources lean to gates; D48 chose milestones.
7. Does the UI show any parent view of parts' progress, cost or risk
   beyond what the engine computes? I did not read the screens.
8. The stale guidance on `alignment/partOf` (gap 1): is it intended to stay
   for older records?
9. Which reference class, if any, can Cartograph offer without a
   percentage table, given the brief's rule against stating sizes? An
   organisation's own history seems the only safe source.
