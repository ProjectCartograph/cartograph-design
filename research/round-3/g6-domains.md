# G6: can one design serve many domains?

Brief: `brief-g6.md`, with `COMMON-GREENFIELD.md` and `../COMMON.md`.
Date of research: 2026-10-17.

The question: the owner wants a design that serves a hobbyist, a
cooperative, an NGO, a ministry and a nation, and many kinds of work,
not only UK government projects. This file reads the frameworks each
domain uses to define, approve, steer and measure work, finds what they
share, finds what differs, and sets criteria a domain-neutral design
must meet. It ends with where Cartograph today is tied to one way of
working.

Read it in this order if you are short of time: section 3 (the common
core), section 5 (the criteria), section 7 (where Cartograph is tied),
section 8 (the verdict). Section 1 is evidence. Section 2 is the table.

---

## 0. How far the sources were read

"Read at source" means I fetched the publisher's own page or document
and read the text in this session. "Secondary" means a third party's
account. "Not read" means I could not get the text, and I say what that
costs. Where a source blocked me I did not fill the gap from memory.

| Source | Status |
|---|---|
| Canada, Treasury Board Policy on Results (2016, page modified 2026) and Directive on Results, Appendix A | Read at source (S1, S2) |
| US OMB Circular A-11, August 2025 edition, Part 6: sections 230, 240, 250, 260, 270 | Read at source (S3). Sections 200, 210 and 220 were fetched, not read closely. |
| New Zealand Treasury, Better Business Cases: Project Business Cases guidance, March 2026 | Read at source, the contents and the clauses cited below (S4). The Treasury web pages returned 403; the guidance PDF was reachable. |
| Australia, Department of Finance, RMG 131 (performance measures) and the Commonwealth Performance Framework page | Read at source through a Wayback Machine copy of finance.gov.au dated November 2025 and January 2026, because the site refused direct requests (S5). I did not read the PGPA Rule text. |
| European Commission, PM² Methodology Guide 3.1 | Read at source, from a university-hosted copy (S6). Sections 2, 3, 4, 5.2 to 5.4, 6.7, 6.8 read. |
| European Commission, Project Cycle Management training handbook (logframe) | Read at source, from a CARICOM-hosted copy (S9). It is an older handbook; the Commission has issued later guidance I did not read. |
| ISO 21500, 21502, 21503, 21504, 21505, ISO/IEC 20000-1, ISO 19650-1 | **Catalogue abstracts only** (S7, S15). The standards are paid. For ISO 21502 I also read a university white paper that compares it to PM² (S8, secondary). |
| ISO 19650-2 | Read at source through the UK BIM Alliance's guidance to it (S11), which is a faithful guide, not the standard. |
| IPMA Individual Competence Baseline | **Not read.** The only copy I found returned 403. I have a search summary only (three areas, 29 elements), so I do not rely on it. |
| PMI standards (PMBOK 7, Standard for Portfolio, Program Management) | **Not read.** pmi.org returns 403 and no legitimate open copy exists. The project's own `TAXONOMY.md` quotes PMI; I treat that as secondary. |
| USAID ADS 201 and the project logic model how-to note | **Not read** (403, 502, no response). Only search summaries. |
| OECD DAC evaluation criteria (2019) | The OECD document returned 403. I read ALNAP's catalogue entry, which says what the document contains (S26). The six criteria are from search summaries of the document, not from its text. |
| World Bank policy and appraisal document template | **Not read.** Policy pages returned nothing useful. I read a 2010 university brief that analyses 44 appraisal documents (S28, secondary), which describes the results framework section. |
| IATI results guidance and indicator element (version 2.03) | Read at source (S10). Transaction and budget elements not read. |
| RIBA Plan of Work | The RIBA landing page only (S25). It says eight stages. Stage names are from search summaries, not the 2020 overview, which I could not fetch. |
| IPA Project Routemap Handbook | Read at source, contents and introduction (S12). |
| Scrum Guide (2020) | Read at source (S13) |
| SAFe Lean Portfolio Management, Strategic Themes, Epic | Public parts only (S14). The pages are cut off behind a login. |
| ITIL 4 | **Not read at source.** The AXELOS page was empty. Only secondary summaries of the value chain. |
| WHO | Read the WHO SMART Reference Architecture indicator table (S16). The Indicator Metadata Registry is a script-driven list and gave no fields. |
| NHS England business case guidance | **Not read.** Search summaries say the NHS uses the Better Business Cases method and the HM Treasury five-case model. |
| Horizon Europe | Read the Commission's expert briefing slides (S18). The Programme Guide was not found as a PDF. |
| UKRI | **Not read at source** (404). Search summaries say Pathways to Impact stopped being a separate requirement in 2020. I use this only as a hint. |
| NPC (ten steps; four pillars), Kellogg Foundation chapter 2 | Read at source (S19, S20) |
| Charity Commission | No guidance found. I did not use it. |
| 360Giving | Standard documentation landing page only (S27). I did not read the field reference. |
| Google re:Work guide to OKRs | Read at source (S21). This is a company's published practice, not a standards body. I say so where it matters. |
| Balanced scorecard (Kaplan and Norton, 1992) | Harvard Business Review's abstract page only (S22). The article text was blocked. |
| Hoshin Kanri | Lean Enterprise Institute resource page only (S23). It is a summary, so I draw little from it. |
| Impact Management Project five dimensions | Read at source on the Impact Frontiers site (S24), which hosts the norms now. |
| IRIS+ (GIIN) | **Not read** (403). Search summaries only. |
| SDG indicator metadata | Read one harmonised metadata sheet at source (indicator 4.1.1) (S17) |
| ASQ on DMAIC | **Not read** (403, including through the Wayback Machine). I rely on the project's own `TAXONOMY.md` D58 for how Cartograph treats DMAIC, which I could not check against ASQ. |
| GAO guidance, Infrastructure Australia, NSW Treasury | **Not read** (blocked or the PDF was not reached). |

What this costs: the **project-management standards bodies** (ISO text,
PMI, IPMA) and **two development agencies** (USAID, World Bank) are the
weakest part of this file. PM², the Commission's own handbook, the
Scrum Guide and the government policies are the strongest. Criteria that
rest on unread sources are marked "unverified" where it matters.

---

## 1. Domain by domain

Each entry says what the domain calls the work and its parts, its stages
and decisions, what it measures, who is accountable, and what record it
keeps. Source numbers refer to the list at the end.

### 1.1 Project, programme and portfolio standards

**ISO 21500 family (S7, S8).** The family has a context-and-concepts
standard (21500, second edition 2021) and separate guidance on project
management (21502, 2020), programme management (21503), portfolio
management (21504, second edition 2022) and governance (21505, 2017).
Each abstract says it applies to any organisation, public, private or
charitable, of any size, and 21504 says its guidance is meant to be
adapted to each portfolio. The 21502 abstract says it applies to any
delivery approach, including agile. ISO 21505 is addressed to governing
bodies and to those who direct work: sponsors, steering committees,
portfolio owners and the project management office. The Granada white
paper (secondary) reports that 21502 defines a deliverable, an output,
an outcome and a benefit as four separate things, that it wants a life
cycle with phases and decision points between them, and that it
describes eight integrated practices that include pre-project and
post-project activity (S8). I could not check that against the standard.

**PM² (S6).** The European Commission's open methodology. Work is a
**project**; related projects plus related activity form a
**programme** (2.2.4); a **portfolio** groups projects and programmes
for control of resources (2.2.5). Four phases: Initiating, Planning,
Executing, Closing, with Monitor and Control across them (3.2). The
Initiating phase produces a Project Initiation Request, a Business Case
and a Project Charter (5.2 to 5.4). Decisions: the Steering Committee
authorises moves between phases unless a higher Appropriate Governance
Body does (4.4). Outputs, outcomes and benefits are kept apart:
benefits are the measurable improvements that follow an outcome, and
often arrive after the project has closed (2.1.3). Roles: Project
Owner, Solution Provider, Business Manager, Project Manager, Steering
Committee, and a responsibility matrix in which exactly one person is
accountable for each artefact (4.12). Records: initiation request,
business case, charter, handbook, plans, logs of risks, issues,
decisions and changes, a transition plan (6.7), a business
implementation plan (6.8), and an end report with lessons learned. PM²
says outright that it is meant to be tailored: scale an element down
rather than delete it, and write the tailoring in the handbook (3.6).

**IPMA ICB4.** Not read (see section 0). I do not use it.

### 1.2 Public sector beyond the UK

**New Zealand, Better Business Cases (S4).** Same five-case model as the
UK (strategic, economic, commercial, financial, management). Stages are
explicit: a Programme Business Case sets direction for several projects;
a project goes through either a two-stage path (an Indicative Business
Case, then a Detailed Business Case) or a single-stage business case;
then a separate **Approval to Deliver** decision before contracts are
signed (3.1 to 3.3). The indicative stage confirms the problem and a
preferred way forward and does not commit delivery funds (3.1.1). A
project business case **inherits** its programme's problem statements,
objectives, constraints and sequencing, may only narrow them, and must
go back to the programme's decision makers when it would reframe a
problem or change a benefit or affordability position (4.1 to 4.3). The
strategic case runs from problem, cause and effect, to investment
objectives, requirements, benefits and beneficiaries (6.4 to 6.10). The
management case includes benefits management: who is accountable for
benefits, which measures show they are realised, and what corrective
action follows if they are not (10.7). Measures should link directly to
the benefit claimed and allow tracking over time, with benefit profiles
for timing and scale (10.7.2). What this adds to the UK picture: the
**programme-to-project inheritance rule** and an **explicit decision to
commit** after the business case.

**Australia, Department of Finance (S5).** The Commonwealth Performance
Framework asks each entity to say how it will measure and assess
performance in achieving its **purposes**, in a corporate plan and an
annual statement, with a "clear line of sight" from key activities to
results. RMG 131 lists what a measure must do: relate to purposes or key
activities; be reliable and verifiable; be unbiased; include both
qualitative and quantitative measures; cover outputs, efficiency and
effectiveness; give a basis for assessment over time; and have targets
where reasonably practicable. It states that it does not prescribe a
standard set of measures. I did not read the state investment
frameworks (Infrastructure Australia, NSW Treasury); both were
unreachable.

**Canada, Policy on Results (S1, S2).** The record is a **Departmental
Results Framework**: Core Responsibilities (an enduring function),
Departmental Results (changes the department seeks to influence, often
outside its immediate control), and Departmental Result Indicators
(4.3.1; Appendix A definitions). Beneath it sits a **Program
Inventory** with a designated official for each program (4.3.5, 4.3.6)
and a **Performance Information Profile** for each program (Directive,
Appendix A.2.5): description with a logic model, outputs, outcomes,
indicators with methodology, data type, frequency, source, owner,
targets and thresholds, evaluation needs, related major projects and
services, and gender-based analysis where relevant. The indicator rule
(A.2.2.3) allows qualitative indicators with a description. Governance:
a senior committee oversees measurement and evaluation (4.3.3); a head
of evaluation has direct access to the deputy head (4.3.12);
evaluation is neutral (definitions) and planned on a rolling schedule
(4.3.15). Resources are meant to be allocated on performance (3.2.3).
Note that a **project is not a unit** here: the unit is the program, an
ongoing grouping of services and activities. Projects appear only as
"related major projects" on a profile.

**United States, OMB Circular A-11 Part 6 (S3).** A five-level chain: an
**Agency Strategic Plan** with long-term, outcome-oriented strategic
goals and strategic objectives (230.1, 240.6); an annual **Agency
Performance Plan** with **performance goals** that are quantifiable,
with a "balanced set" of indicators that may include customer service,
efficiency, output and outcome measures (240.1, 240.6); a small number
of **Agency Priority Goals**, reviewed quarterly (250.2); **data-driven
reviews**, quarterly for priority goals and annual for strategic
objectives (260.1); and a separate regime for program and project
management under the Program Management Improvement Accountability Act,
with annual portfolio reviews of programs (270.1). Agencies may revise,
drop or add performance goals and indicators each year (240.4), and
targets are meant to reflect what the agency can achieve at the
proposed funding level (240.3). Roles: goal leaders, a chief operating
officer, a performance improvement officer, a program management
improvement officer.

**World Bank.** Not read at source. A 2010 university analysis of 44
appraisal documents reports that, from 2001, each has a results
framework with a project development objective, indicators for it, and
intermediate outcomes with indicators (S28, secondary). That matches
the logframe family.

### 1.3 International development and humanitarian

**EU Project Cycle Management and the logframe (S9).** The cycle has
six phases: Programming, Identification, Formulation, Financing,
Implementation, Evaluation (chapter 2). The **logframe** is a matrix
with four columns, intervention logic, verifiable indicators, sources of
verification and assumptions, and (in its basic form) four rows: overall
objective, project purpose, results, activities (3.3.1). Its stated
logic: if results are delivered and the assumptions hold, then the
purpose will be achieved. Evaluation (chapter 7) reads indicators at
each row: efficiency at the results row, effectiveness and
sustainability at the purpose row, contribution at the overall
objective. The handbook also warns that filling the boxes mechanically
produces poorly prepared projects.

**USAID.** Not read. Search summaries say a project logic model and its
theory of change sit in the appraisal document that approves a
project, and that results frameworks are used at strategy level.
Unverified.

**OECD DAC criteria (S26).** Six criteria for judging an intervention:
relevance, coherence, effectiveness, efficiency, impact, sustainability,
revised in 2019 (coherence was added). ALNAP's entry says the document
adapts the definitions and says they should be used thoughtfully and
adjusted to context. These are **evaluation** criteria, not planning
fields, but they set what evidence a record must be able to hold.

**IATI (S10).** An open data standard for publishing aid activities. An
activity can hold several **results**, each of a type: output,
outcome or impact. Each result has **indicators**; each indicator has a
measure (unit, percentage, or qualitative), an "ascending" flag for
whether higher is better, a **baseline** (year and value), and
**periods** with start and end dates, a **target** and an **actual**.
Qualitative indicators carry descriptive baselines, targets and
actuals in comments. An indicator may be flagged as suitable for
aggregation, and the guidance tells publishers to say in the
description whether values add up or are cumulative. Indicators can be
linked to the SDG indicators. For a programme, overarching results may
sit on the parent activity and detail on child activities.

### 1.4 Construction and infrastructure

**RIBA Plan of Work (S25).** Eight stages that organise briefing,
designing, constructing and operating a building, each with stage
outcomes, core tasks and information exchanges; plus "core project
strategies" (cost, procurement, sustainability, health and safety, and
others) and "overlays" for particular concerns. The stages run from
strategic definition to the building in use, so operation is inside the
model (stage names from search summaries; unverified).

**ISO 19650-2 through UK BIM Alliance guidance (S11).** The unit is the
**appointment** and the **information model**, not the project. Eight
activities: assessment and need, invitation to tender, tender response,
appointment, mobilisation, collaborative production of information,
information model delivery, project close-out (Table 2). Parties:
appointing party (the client), lead appointed party, delivery team,
task teams. Requirements flow down: **organisational** information
requirements to **asset** and **project** information requirements, to
**exchange** information requirements, tied to named **trigger
events**. This is an information-management layer. It does not say
what to build or why.

**IPA Project Routemap (S12).** A tool for novel or complex major
projects. It is **an assurance and set-up review**, not a delivery
method: a ten-step process that assesses the project against modules
(requirements, governance, systems integration, organisational design
and development, procurement, risk management, asset management,
delivery planning) and produces gaps, findings and improvement plans.
It treats "project" as covering projects and programmes.

### 1.5 Technology and agile

**Scrum Guide (S13).** The unit is a **product** with a **Product
Goal**, a long-term objective that is fulfilled or abandoned before the
next is taken on. A team has one Product Owner (one person, not a
committee), a Scrum Master and Developers, and no sub-teams. The work
is cut into **Sprints** with four events: planning, daily scrum, review,
retrospective. Each artefact carries a commitment: Product Goal for the
Product Backlog, Sprint Goal for the Sprint Backlog, Definition of Done
for the Increment. Nothing in the guide has a project end date, a
business case or a handover. Measures are about value and empirical
progress; the guide prescribes none.

**SAFe Lean Portfolio Management (S14).** Public parts only. LPM aligns
strategy and execution through strategy and investment funding, agile
portfolio operations and governance. **Strategic themes** are
portfolio-level business objectives, best written as objectives and key
results. **Epics** are significant initiatives that are explicitly not
the same as projects and are moved through a portfolio Kanban with
expected outcomes and business benefits defined. The detail is behind a
login.

**ITIL and ISO/IEC 20000-1 (S15).** ISO/IEC 20000-1 specifies a
**service management system**: requirements to plan, design, transition,
deliver and improve services. The unit is a **service**, which runs
without end. ITIL 4 (not read at source) is reported to describe a
service value chain with activities for plan, improve, engage, design
and transition, obtain and build, and deliver and support. For a
tool that defines work, the relevant point is where a project **hands
over**: a service owner accepts the result into an ongoing service.

### 1.6 Health

**WHO (S16).** The SMART Reference Architecture's indicator table lists
what a health indicator is defined by: a code, a name, a description, a
numerator definition and how to compute it, a denominator definition
and how to compute it, the disaggregations wanted, and references to
guidelines. The numerator and denominator are tied to individual-level
data elements. I could not read the WHO Indicator Metadata Registry.
**NHS:** not read; search summaries say it follows the HM Treasury
five-case model through Better Business Cases.

### 1.7 Research funding

**Horizon Europe (S18).** The unit is a **proposal** to a **call topic**,
not a delivery project. Proposals are judged on three criteria:
excellence, impact, and quality and efficiency of implementation. The
Commission's vocabulary separates **results** (what the project
generates), **outcomes** (medium-term effects of a topic, which results
should contribute to), and **impacts** (wider long-term effects, often
after the project ends). A **pathway to impact** is the logical steps
from results through dissemination, exploitation and communication to
the topic's outcomes and the programme's impacts. Evaluators ask
whether the pathways are credible and whether barriers are identified.
**UKRI:** not read at source (see section 0).

### 1.8 Philanthropy and nonprofits

**NPC theory of change in ten steps (S19).** Situation analysis; target
groups; impact; outcomes; activities; change mechanisms; sequencing; the
diagram; stakeholders and enabling factors; assumptions. NPC applies it
to services, campaigns and whole organisations, and says plainly it does
not cover research, animal and environment work or heritage in this
guide. NPC's four pillars (S19) add: map the theory of change, prioritise
what to measure, choose a level of evidence, select sources and tools. The
level of evidence is a proportionality choice.

**Kellogg logic model (S20).** Resources, activities, outputs, short and
long-term outcomes, impact. It advises doing the outcomes first, and
says outcomes and impacts should be SMART.

**360Giving (S27).** An open standard for publishing **grants**: the
funder's record. Documentation covers identifiers, codelists, JSON and
spreadsheet formats and governance with versioning and deprecation
rules. I did not read the field list.

### 1.9 Corporate strategy and performance

**Objectives and Key Results (S21).** Google's published guide: an
**objective** is ambitious and qualitative; **key results** are
measurable, gradable with a number, and describe outcomes not
activities. OKRs are public. The guide says a fully attained set means
the OKRs were not ambitious enough, and that OKRs are not a shared
to-do list and not an employee evaluation. Cycles are set by the
company (annual and quarterly at Google). Teams' OKRs should connect to
at least one organisational OKR. This is company practice, not a
standard.

**Balanced scorecard (S22).** Kaplan and Norton's 1992 article argues
that financial measures alone mislead and adds operational measures. I
read only the abstract page. The four perspectives (financial,
customer, internal process, learning and innovation) are from search
summaries. The structure is **perspectives**, not a hierarchy.

**Hoshin Kanri (S23).** Described as policy deployment: structured
plan-do-check-act thinking that aligns activities with strategic
objectives from top to front line. The source is a summary page, so I
do not rely on it.

### 1.10 Impact measurement

**Impact Management Project (S24).** Impact is a change in an outcome
caused by an organisation, positive or negative, intended or not.
Five dimensions: **what** outcome and how important; **who**
experiences it, with characteristics and differences between groups;
**how much** (how many, how deep, how long); **contribution** (better
than what would otherwise have happened); **risk** (the chance impact
differs from expected). For investors, their own contribution is a
sixth.

**IRIS+.** Not read.

**SDG indicator metadata (S17).** The harmonised template for one
indicator holds: goal, target, indicator, series, related indicators,
custodian agency; contact; definition and concepts; unit of measure;
classifications; data sources, collection method, calendars, providers,
compilers, institutional mandate; rationale, limitations, method of
computation, validation, adjustments, treatment of missing values,
regional aggregation, quality management. It is the fullest indicator
specification I read.

### 1.11 Process improvement

**DMAIC (ASQ not read).** Define, Measure, Analyze, Improve, Control.
Through other sources the charter is a Define-phase output with problem,
business case, goal, scope, team and timing; I only have a local ASQ
section's blog post via search, which I do not rely on. Cartograph's
own `TAXONOMY.md` D58 sets out the phases and what each asks. The point
for this file: DMAIC is a **method over a project** with its own
deliverables per phase, and a Control phase that is a handover to a
process owner.

---

## 2. Cross-domain table

"Unit" is what the framework treats as the thing being managed.

| Domain, source | Unit | Parts and chain | Stages or decisions | Measures | Roles | Record kept |
|---|---|---|---|---|---|---|
| ISO 21500 family (abstracts) | Project, programme, portfolio | Deliverable, output, outcome, benefit (secondary) | Phases with decision points | Not prescribed | Governing body, sponsor, steering committee | Not seen (text paid) |
| PM² | Project, programme, portfolio | Output, outcome, benefit | Initiating, planning, executing, closing; steering committee authorises moves | Success criteria, benefits | Owner, solution provider, business manager, project manager, steering committee | Initiation request, business case, charter, handbook, logs, transition plan, end report |
| NZ Better Business Cases | Programme, project | Problem, cause, effect, objective, benefit, beneficiary | Programme case, indicative, detailed, approval to deliver | Benefit measures, KPIs, benefit profiles | Accountable owner for benefits | Five-case business case per stage |
| Australia RMG 131 | Entity (purposes, key activities) | Purpose, key activity, measure | Annual plan and statement | Output, efficiency, effectiveness, qualitative and quantitative, targets where practicable | Accountable authority | Corporate plan, annual performance statement |
| Canada Policy on Results | Department (core responsibility), program | Core responsibility, result, program outcome, output | Results framework approval, program inventory changes, evaluation plan | Indicators with type, frequency, source, owner, target, threshold | Deputy head, head of performance measurement, head of evaluation, program official | Departmental Results Framework, Program Inventory, Performance Information Profile, evaluations |
| US A-11 Part 6 | Agency, program | Mission, strategic goal, strategic objective, performance goal | Strategic plan, annual plan, quarterly and annual reviews | Quantified performance goals, balanced indicators | Goal leader, COO, performance improvement officer | Strategic plan, performance plan and report, review summaries |
| EU PCM and logframe | Project or programme | Overall objective, purpose, results, activities | Programming, identification, formulation, financing, implementation, evaluation | Verifiable indicators with sources of verification | Funding agency, partner | Logframe, financing proposal, evaluation |
| IATI | Activity | Output, outcome, impact results | Activity status (not read) | Indicator, baseline, period target and actual | Organisation roles (not read) | Published XML activity file |
| OECD DAC | Intervention (for evaluation) | Six criteria | Evaluation | Judgement against criteria | Evaluators | Evaluation report |
| RIBA | Building project | Briefing, design, construction, use | Eight stages | Stage outcomes | Client, design team (not read in detail) | Stage outputs, strategies |
| ISO 19650-2 | Appointment, information model | Requirements cascade OIR, AIR, PIR, EIR | Eight activities | Information delivery against requirements | Appointing party, lead appointed party, delivery team, task team | Information plans, models |
| IPA Routemap | Project (sponsor and client) | Eight modules | Ten-step review | Capability and complexity assessments | Sponsor, client, facilitator | Routemap report, action plan |
| Scrum | Product | Product Goal, Sprint Goal, Increment | Sprint events | Definition of Done | Product Owner, Scrum Master, Developers | Product Backlog, Sprint Backlog, Increment |
| SAFe LPM (public) | Portfolio, epic | Strategic theme, epic | Portfolio Kanban | Outcomes and benefits stated on epics | Portfolio leaders | Not seen |
| ISO/IEC 20000-1 | Service | Plan, design, transition, deliver, improve | Service lifecycle | Not seen | Not seen | Service management system |
| WHO SMART | Indicator | Numerator, denominator | None | Disaggregation, references | Not seen | Indicator table |
| Horizon Europe | Proposal | Results, outcomes, impacts, pathway | Call, evaluation, grant | Impact pathway credibility | Coordinator, evaluators | Proposal form, plan for dissemination and exploitation |
| NPC, Kellogg | Service, campaign, organisation | Situation, outcomes, impact, activities, mechanisms | None prescribed | SMART outcomes, level of evidence | Not prescribed | Theory of change, logic model |
| OKR | Team, company | Objective, key result | Quarterly and annual cycles | Key results graded by a number | Objective owners | OKR list with grades |
| Balanced scorecard | Company | Perspectives, objectives, measures | Not read | Measures per perspective | Not read | Scorecard |
| IMP | Enterprise, investment | Five dimensions | None | What, who, how much, contribution, risk | Enterprise, investor | Impact data by dimension |
| SDG metadata | Indicator | Goal, target, indicator, series | None | Full indicator specification | Custodian agency, compilers | Metadata sheet per indicator |
| DMAIC | Improvement project | Define to Control | Tollgate per phase | Critical-to-quality measures | Sponsor, black belt, process owner | Charter, control plan |

---

## 3. The common core

Every domain has these. They carry different names, and a few domains
leave one out on purpose. The right-hand column of the table below says
which domains do not hold the concept.

| # | Core concept | What it is | Domains that do not hold it |
|---|---|---|---|
| C1 | **Purpose** | Why the organisation or the work exists and what it serves | Scrum has only a Product Goal; PM² and NZ put it in the case for change |
| C2 | **Intended results** | The changes sought, ordered from near to far | None |
| C3 | **A chain from work to change** | How what is done is expected to produce those changes, and what must hold | Scrum, OKR and the balanced scorecard leave it implicit; Canada keeps it in a logic model on a profile |
| C4 | **A decision to commit resources** | A named body, on stated grounds, authorises money and people | Scrum and OKR commit by team cycle, not by a funded decision; Horizon Europe commits at grant |
| C5 | **Stages** | An order in which the work matures, with a check at each | Scrum and OKR have cycles, not stages; ISO 20000 has a lifecycle without gates |
| C6 | **Roles and accountability** | One person answerable for each result, decision or record | None. Frameworks disagree on how many people may hold the accountable role (section 6) |
| C7 | **Risks and assumptions** | What could go wrong, and what is taken as true | OKR and Scrum do not name them |
| C8 | **Measures with baselines and targets** | An indicator, its unit, which way is better, a start, an aim, a source, a frequency | Scrum has none in the guide |
| C9 | **Reviews** | Planned looks back, with a record of what was decided | None |
| C10 | **Handover to ongoing operation** | The result is accepted into a service that runs on | OKR, Scrum and the balanced scorecard have no end to hand over from |
| C11 | **Who is affected** | The people or things whose condition changes | PM², ISO 21500 mention stakeholders; IMP, NZ, Canada, NPC and the DAC criteria split them out and compare groups |
| C12 | **Money** | Where it comes from, what it pays for, what was approved | OKR, Scrum, RIBA (cost strategy only) |
| C13 | **Evaluation and learning** | A judgement of merit after or during, and what changed because of it | Absent in ISO 19650, Scrum review is the nearest; present in Canada, A-11, DAC, PCM, PM² lessons learned, DMAIC Control |
| C14 | **Evidence and provenance** | Where a figure came from, who keeps it, how it was computed | RIBA and Scrum |

C11 to C14 go beyond the list in the brief. I add them because three or
more independent frameworks insist on each.

### 3.1 Vocabulary map: each domain's words for the core

Where a cell is empty the domain has no distinct word (I did not fill
it from memory).

**C1 Purpose.** Mission and strategic goal (A-11); core responsibility
(Canada); purposes and key activities (Australia); case for change,
strategic case (NZ); justification, business case (PM²); project
purpose (logframe); Product Goal (Scrum); strategic theme (SAFe);
situation analysis (NPC); objective (OKR); strategic definition (RIBA,
stage name from summaries).

**C2 Intended results.** Departmental result, program outcome (Canada);
strategic objective, performance goal (A-11); investment objective,
benefit (NZ); outcome, benefit (PM², ISO 21502); overall objective and
results (logframe); output, outcome, impact (IATI, Kellogg); impact
(NPC, Horizon); key result (OKR); Increment and Definition of Done
(Scrum); expected outcome (SAFe epics); "what" outcome (IMP).

**C3 Chain from work to change.** Logic model, program theory (Canada
A.2.5.1); intervention logic (logframe); theory of change, change
mechanism (NPC); pathway to impact (Horizon); strategic case cause
and effect (NZ); results chain (Kellogg). Not named: A-11 (it nests
goals instead), OKR, Scrum.

**C4 Decision to commit.** Approval to Deliver (NZ); Financing phase
(PCM); authorising the move to planning (PM² steering committee);
Treasury Board submission (Canada 4.3.10); budget and appropriation
(A-11 240.3); funding decision, portfolio Kanban (SAFe); appointment
(ISO 19650-2); Sprint Planning commits a Sprint, not funds (Scrum).

**C5 Stages.** Phase (PM², PCM); case stage (NZ); activity (ISO
19650-2); stage (RIBA); step (Routemap); phase with tollgate (DMAIC);
Sprint (Scrum); quarter or cycle (OKR, A-11).

**C6 Roles.** Project Owner, Solution Provider, Business Manager
(PM²); Product Owner (Scrum); sponsor, steering committee, portfolio
owner (ISO 21505); deputy head, program official (Canada); goal leader
(A-11); appointing party, lead appointed party (ISO 19650); service
owner (ITIL, as Cartograph cites it).

**C7 Risks and assumptions.** Risk, issue, decision and change logs
(PM²); assumptions column (logframe); assumptions (NPC step 10);
strategic risks (NZ 6.11); risk dimension (IMP); barriers (Horizon).

**C8 Measures.** Performance indicator (Canada, A-11); verifiable
indicator and source of verification (logframe); indicator with
baseline, target, actual (IATI); key result (OKR); benefit measure
(NZ); performance measure (Australia); SMART outcomes (Kellogg,
Cartograph's `TAXONOMY.md`); numerator and denominator (WHO); series
(SDG).

**C9 Reviews.** Data-driven review, strategic review (A-11); Sprint
Review and Retrospective (Scrum); evaluation plan (Canada); portfolio
review (A-11 270, ISO 21504); phase gate (PM²); OKR grading (re:Work).

**C10 Handover.** Transition plan, business implementation plan (PM²);
close-out and information model delivery (ISO 19650-2); in use (RIBA);
Control phase (DMAIC); service transition (ISO/IEC 20000-1); sustained
benefits (PCM sustainability).

---

## 4. What differs, and so must be configurable

These are the places where the frameworks do not agree. A design that
builds in one answer serves one domain.

1. **Terminology.** The same level is a "core responsibility" in Canada,
   a "strategic goal" in the US, a "purpose" in the logframe, an
   "objective" in OKR. Each framework treats its own words as part of
   the method (Australia says it prescribes no measures; Canada and the
   US mandate theirs). Words must be per workspace.
2. **The shape of the results hierarchy.** A tree of fixed depth
   (A-11, Canada); a matrix with four rows and four columns (logframe);
   two levels (OKR); five parts (Kellogg); perspectives that are not a
   hierarchy (balanced scorecard); a causal graph (NPC). Depth, labels
   and whether it is a tree must be a choice.
3. **Stage names and count.** PM² has four phases, PCM six, RIBA eight
   stages, ISO 19650-2 eight activities, NZ a pathway of up to four
   decisions, DMAIC five phases, Scrum none. Stages must be data.
4. **Who approves, and how.** A steering committee or a higher
   governance body (PM²); the deputy head and the Secretary of the
   Treasury Board (Canada 4.2 to 4.3); a minister's submission to the
   Treasury Board; Cabinet minute (NZ); a team's own cadence (Scrum).
   The route must be settable, and "no formal route" must be valid.
5. **Mandatory documents.** PM² names artefacts per phase; NZ says what
   each case must cover by stage; Canada fixes the contents of a
   Performance Information Profile; RIBA names core strategies;
   Scrum names none. The required set must be configurable, per kind
   of work.
6. **Measurement conventions.** Which result types exist (IATI three;
   A-11 adds customer service and efficiency; Australia adds
   efficiency and qualitative); numeric or qualitative; target as a
   value by a date, a threshold (Canada), a graded stretch (OKR), or a
   level "achievable at the proposed funding" (A-11 240.3); aggregation
   rule (IATI); disaggregation (WHO, SDG, IMP); whether the indicator is
   an attribute of the result or a registry entry with its own codes
   (SDG, IRIS+).
7. **Reporting cycles.** Fiscal year (A-11, Canada, Australia);
   quarter (A-11 APGs, OKR); Sprint (Scrum); agricultural season or
   school term (IATI example); custom periods. Cycles must follow the
   organisation's calendar.
8. **Unit of management.** Project (PM²); program (Canada); product
   (Scrum); service (ISO 20000); activity (IATI); proposal (Horizon);
   appointment (ISO 19650); entity (Australia). The design needs a
   first-class **ongoing** unit as well as a time-bound one.
9. **Language and form of address.** Canada's definitions are given in
   English and French; the Commission publishes PM² in several
   languages (not checked beyond the guide's own note).

---

## 5. Design criteria for domain robustness

Each criterion can be checked. "Essential" means a domain in section 1
fails without it. "Desirable" means several serve better with it. Source
numbers are in the list at the end; `TAXONOMY.md` is the project's own.

### 5.1 Words and shape

**DR-1 (essential).** A workspace can rename every noun a person reads
(the levels of the results hierarchy, project, programme, portfolio,
operation, sponsor, charter and so on), and each rename keeps a link to
the standard meaning so a record exports under the standard name.
*Sources:* S1 (core responsibility, result, program), S3 240.6, S9 3.3.1,
S21, S6 3.6 (tailoring); the project's own D23 says one vocabulary
everywhere, which this reverses.

**DR-2 (essential).** A workspace chooses how many levels its results
hierarchy has and what each is called; each level states what kind of
measure it takes. A workspace with two levels (objective and key
result) and one with four (logframe) both validate. *Sources:* S21 (two),
S9 (four rows), S3 (goals, objectives, performance goals), S1 (three),
S20 (five parts).

**DR-3 (essential).** A result can sit on more than one chain, and the
causal link between two results can carry a reason and an assumption,
separate from where a result files in the hierarchy. *Sources:* S9
(vertical logic and assumptions), S19 step 6 and 10, S18 (pathway),
S4 6.4 to 6.5 (cause and effect), S1 A.2.5.1; the project's D12 already
holds this for programmes.

**DR-4 (desirable).** The same record can be shown as a logframe, a
results framework, a theory of change, an OKR list, a balanced
scorecard or an investment logic map, as **views** over one set of
records, without re-entering anything. Each view says what it cannot
show. *Sources:* S9, S19, S20, S21, S22, S4.

### 5.2 Stages and decisions

**DR-5 (essential).** Stage models are data. A workspace can define its
own ordered stages for a kind of work, say what each stage settles,
what must exist to leave it, and who may decide to leave it; it can
also define none. Templates for PM², PCM, the five-case pathway, RIBA,
ISO 19650-2 and DMAIC ship as examples, not as code. *Sources:* S6 3.2,
S9 ch 2, S4 3.1 to 3.3, S11 Table 2, S25, S7 (21502 phases with
decision points, secondary), S12.

**DR-6 (essential).** The decision to commit resources is a record in
its own right: who decided, in what body, on what basis, with what
conditions, what it authorises and what it leaves open, and when it
lapses or must be reconfirmed. It does not depend on the stage
names. *Sources:* S4 3.1.1 and 3.3 and 12.2, S6 5.3, S1 4.3.10, S3
240.3, S9 financing phase.

**DR-7 (essential).** A decision is also made at the programme level,
and a child record inherits what the programme agreed. A change that
would alter what the programme agreed is held until the programme's
decision makers decide. *Sources:* S4 4.1 to 4.3. (Unusually explicit
in NZ; the other sources imply it.)

**DR-8 (essential).** An approval route is data: any number of
approvers, in order or together, by a rule the workspace sets; the
route may be empty. *Sources:* S1 4.2 to 4.5, S6 4.4, S4 12.2, S13.

**DR-9 (essential).** The documents or sections required before a
decision are set per kind of work and per stage, and each is tied to
fields in the record, not typed again. A missing one is shown as a
check that advises or blocks as the workspace chooses. *Sources:* S6
Chapter 5 (artefacts), S4 5.2 and 6.2 ("what this case must cover by
stage"), S2 A.2.5, S25.

**DR-10 (essential).** The same record serves a small piece of work and
a large one. A workspace sets which fields and checks apply by scale
or risk; the default is the smallest that is useful. *Sources:* S4 2.6,
S6 3.6, S19 (level of evidence), S12.

### 5.3 Measures

**DR-11 (essential).** An indicator holds: a definition, a unit, which
direction is better, a baseline (a value and a date, or an admitted
unknown with a reason), a target, a source, a method, a frequency, an
owner, and the disaggregations it can be split by. The reading for a
period is separate from the definition. *Sources:* S10, S2 A.2.2.3.1
and A.2.5.5, S16, S17, S5, S19 four pillars, S4 10.7.2.

**DR-12 (essential).** An indicator can be quantitative or qualitative.
A qualitative indicator carries a described baseline, target and
reading. *Sources:* S10 (descriptive measure), S2 A.2.2.3.2, S5.

**DR-13 (essential).** A target can be a value by a date, a threshold or
range, a value set when an event happens, or a stretch with a stated
grading rule; each target says whether it is a commitment or an
aspiration. *Sources:* S2 A.2.2.3.1 (targets and thresholds), S21
(graded 0 to 1, sweet spot), S3 240.3 (target tied to funding), S5
(targets where reasonably practicable).

**DR-14 (essential).** The result type is an open list with the three
common types (output, outcome, impact) always available, plus the types
a workspace adds (input, activity, efficiency, customer service,
process, compliance). *Sources:* S10, S3 240.6, S5 (outputs,
efficiency, effectiveness), S20.

**DR-15 (essential).** An indicator can say how readings combine: they
add up, they are cumulative, or they cannot be combined. *Sources:* S10
(aggregation status and description guidance).

**DR-16 (desirable).** An indicator can carry external identifiers: an
SDG indicator code, an IATI reference, an IRIS+ or WHO registry code,
and a link to the definition there. Where it adopts a registry
indicator it inherits the registry's definition and flags any local
change. *Sources:* S10 (linking to SDG indicators), S17 (0.c), S16
(references); IRIS+ unverified.

**DR-17 (essential).** Reporting periods follow the organisation's
calendar: fiscal year start, named periods, quarters, seasons, terms,
Sprints, irregular dates. *Sources:* S3, S1, S10 (periods with start and
end), S13 (Sprint length is the team's), S21.

### 5.4 People and governance

**DR-18 (essential).** Roles are data. A workspace defines its roles,
says what each is accountable for (a result, a decision, a record, a
dataset), and says how many people may hold it. At least one
accountable person per result, decision or record can be required, but
the number is not fixed by the design. *Sources:* S6 4.12 (one
accountable), S13 (Product Owner is one person), S1 4.3.5 to 4.3.6
(designated official), S11 (appointing party and others), S7 (21505).

**DR-19 (essential).** A governance body (a board, a committee, a
cabinet, an investment committee, a general meeting) is recorded once,
with what it decides and who sits on it, and decisions refer to it.
*Sources:* S7 (21505), S6 4.4, S1 4.3.3. The project already does this
(D43).

**DR-20 (desirable).** An independent reviewer can be named for
assurance or evaluation, separate from the people who deliver. *Sources:*
S1 4.3.11 and 4.3.12, S6 (quality assurance role), S12, S7 (21505
assurance).

### 5.5 Learning and review

**DR-21 (essential).** A review is a record: when, who attended, what
was looked at, what was decided, and what follows. Reviews recur on a
cycle the workspace sets at every level. *Sources:* S3 260.1 (quarterly
and annual), S13 (Sprint Review, Retrospective), S21 (graded cycles),
S1 4.3.15, S6 (phase review).

**DR-22 (essential).** An evaluation is a record: the questions, the
criteria used, the evidence, the findings, the management response, and
what it was an evaluation of. The criteria list is a vocabulary, so a
workspace can use the DAC six or its own. *Sources:* S26, S9 chapter
7, S1 4.3.15 to 4.3.18 and definitions, S3 260.
**Cartograph has no such record (section 7).**

**DR-23 (essential).** Lessons learned are captured at closure and at
each review, and can be found from the next piece of similar work.
*Sources:* S6 (closing phase, end report), S13 (retrospective), S3 (data
driven reviews feed learning), S20 (the point of the logic model is to
learn).

**DR-24 (desirable).** The record can say how much of a change is
attributable to the work and how much to other causes, and who
experiences it differently. *Sources:* S24 (contribution, who), S1
definitions (results often outside control), S26 (differential
results), S4 6.10.

### 5.6 Handover and operation

**DR-25 (essential).** Ongoing work (a service, a product, a core
responsibility, a programme in the Canadian sense) is as much a
first-class unit as a time-bound one. It can exist without a project
that created it, has an owner, and has measures. A project hands over
to it, with acceptance conditions and a named owner who accepts.
*Sources:* S13 (product with no end), S1 definitions (enduring
function), S6 6.7, S15, S25 (in use), S11 (close-out, asset information
model). Cartograph's Operation kind meets this.

**DR-26 (essential).** The benefits that follow an output are tracked
after the work closes, with an owner, measures and an action if they
fall short. *Sources:* S6 2.1.3, S4 10.7, S18 (impacts after the
project), S9 sustainability.

### 5.7 Risk, money, who

**DR-27 (essential).** Risks, issues, dependencies, constraints and
assumptions are distinct, each is tied to what it threatens, and an
assumption sits on the link it conditions. *Sources:* S6 (logs), S9
(assumptions column), S19 step 10, S24 (risk), S4 6.11. Cartograph
meets this.

**DR-28 (essential).** Money is kept as separate things: where it comes
from, what was approved, and what lines of cost it pays. Currencies are
explicit; a code from the organisation's own ledger can sit on the
source. A funder's grants and an implementer's activities can both be
held. *Sources:* S4 chapter 9, S1 A.2.3.5 (expenditure attributed to
programs), S3 240.3, S10, S27. Cartograph meets most of this.

**DR-29 (essential).** The people or things whose condition changes are
recorded as groups, and measures can be split by them. *Sources:* S24,
S4 6.10, S1 A.2.5.10, S16, S10. Cartograph meets most of this.

### 5.8 Interchange

**DR-30 (essential).** For each domain standard the workspace uses, a
mapping from Cartograph records to that standard is **data** a person
can edit, and an export is produced from it: IATI activity file,
360Giving grants, logframe table, OKR list, SDG-style indicator
metadata, a charter on a named template. Each export lists what it
could not fill. *Sources:* S10, S27, S9, S17, S21, S3 240.5 (publish in
machine-readable form), S6.

**DR-31 (desirable).** The same mappings read, so a published activity
file or a grants file can start a workspace. *Sources:* S10, S27.

**DR-32 (essential).** A record carries identifiers that outsiders can
use: a stable identifier of its own, and any number of external ones
(register reference, IATI identifier, grant identifier, project
code). *Sources:* S10, S27 (identifiers), S2 A.2.3.4 (metadata tagging).
Cartograph's labels (D70) meet most of this.

**DR-33 (essential).** All text a person reads, and the guidance behind
each field, can be provided in more than one language, and numbers,
dates and currencies follow the workspace's locale. *Sources:* S1
(bilingual definitions), S6 (multi-language publication, not checked).
Unverified beyond Canada.

### 5.9 Lenses, not rules

**DR-34 (desirable).** A named method (DMAIC, logframe, five cases,
OKR, Scrum cadence) is a **lens**: a read-only or guided view over the
core records that says what is held and what is lacking, and asks
nothing of work not run that way. Adding a lens adds no mandatory
fields. *Sources:* S4, S9, S21, S13; the project's D58 does this for
DMAIC.

**DR-35 (essential).** Work with no end, no business case and no
funded decision (a product team, a hobby, a small cooperative) can use
Cartograph without being shown stages, approvals or documents it does
not need. *Sources:* S13, S21, S19 (level of evidence), S6 3.6.

---

## 6. Where the frameworks disagree, and the options

**6.1 How many people hold the accountable role.** PM² says exactly one
is accountable for each artefact (4.12), and Scrum says the Product
Owner is one person, not a committee (S13). Canada designates one
official per program (4.3.6). ISO 21505 speaks of governing bodies and
committees (S7). Options: (a) the design fixes one (as Cartograph does
for sponsor and manager); simple, wrong for co-operatives and
partnerships that share a role by design; (b) the workspace sets the
rule per role; more settings, but each domain is served. I recommend
(b), with one as the default.

**6.2 Tree, matrix, graph.** A-11 and Canada give nested levels; the
logframe gives a matrix that mixes levels with measures; the balanced
scorecard gives perspectives, not levels; NPC gives a causal diagram.
Options: (a) a configurable tree plus a separate causal edge set
(Cartograph's route, D12); two structures to keep in step; (b) one
graph with typed nodes and typed edges (contains, causes, measures,
depends on); one structure, harder for a newcomer to read. (a) matches
the walk-first work (one question at a time) better; (b) is more
general. The views in DR-4 hide the difference from people.

**6.3 Stage gates or continuous flow.** PM², PCM, RIBA, NZ and
ISO 19650-2 use gates. Scrum, OKR and SAFe fund and review on a
cadence. Options: (a) gates as data, with "no gates" allowed (DR-5);
(b) two modes in the product. (a) is smaller. A point to test: whether a
cadence (a quarterly review that re-decides funding) can be written as a
stage model with one repeating stage.

**6.4 Commitment or aspiration in a target.** A-11 says targets should
reflect what the agency can achieve at the proposed funding (240.3) and
Canada keeps thresholds beside targets; the OKR guide wants stretch and
treats consistent full attainment as a warning. Options: a target
carries a "commitment class" (commitment, expectation, aspiration) and
reports read it; or two separate numbers. The first is simpler to ask a
non-expert.

**6.5 Attribution or contribution.** Canada says departmental results are
often outside a department's control but influenced by program outcomes
(definitions). IMP asks whether the result is better than what would
have happened otherwise (S24). Options: leave attribution to
evaluation records (DR-22); or let each result carry a contribution
claim with a stated confidence and its evidence. The second is richer
and asks more of the person; the first keeps the planning walk light.

**6.6 One objective or several.** The logframe and PCM want one project
purpose and split the rest into components (S9, and the project's D54).
OKR and Horizon Europe's glossary allow several objectives per unit.
The project's rule is enforced at every save "whatever reason is given"
(`TAXONOMY.md` D54). Options: keep one as the default and make it a
setting, with a warning when more than one is held; or drop it. I
recommend the setting, because the rule is a property of one
method, not of the domain.

**6.7 One indicator definition, many registries.** SDG metadata, WHO
SMART, IATI and IRIS+ each define indicators differently and each has
codes. Options: a canonical Cartograph indicator with a list of
external mappings (DR-16); or one record per registry. The first avoids
duplicates; the second is truer to each registry's own record. I
recommend the first and a clear "differs from the registry here" flag.

**6.8 Stage names do not reconcile.** There is no common set of stage
names. Options: leave them unmatched; or give every stage a purpose tag
from a short neutral list (define the need, decide to commit, plan and
design, deliver, hand over, operate, learn) so a portfolio can report
across workspaces that use different stage models. The second costs a
tag per stage and buys cross-domain reporting. I recommend it as
desirable, not essential, and I have not tested the list against all
sources.

---

## 7. Where Cartograph today is tied to one way of working

Findings are from the contract schemas, `TAXONOMY.md`, the flows and
`cartograph-ui/src/copy.ts`. File paths are relative to
`cartograph-engine/` or `cartograph-ui/`.

**Already neutral, and worth keeping.**
- Readings are separate from the indicator definition (D8); units are
  declared things (D10); targets and dates have four forms (D47,
  `contract/schemas/common.schema.json` Timing and Target); reporting
  cycles can be made of named periods (D40); an indicator can be best at
  a value (D66) and carries specification limits (D58).
- Labels are free keys and values (D70), a workspace sets its own
  vocabularies for classification, refresh and data source category
  (D71, `settings.schema.json`), and a workspace can rename goal levels
  and the word for a project.
- A programme can hold a causal pathway with assumptions, apart from the
  goal tree (D12, `programme.schema.json`); an assumption is its own
  kind.
- Portfolio decisions exist (`portfoliodecisions.schema.json`: invest,
  hold, stop, with a reason and date), and operation is a first-class
  kind with a service owner (`operation.schema.json`).
- Change control by change set is a workspace setting
  (`settings.schema.json`, `changeControl`).
- A DMAIC lens exists as a read-only view with a completeness report
  (D58, `/manifests/Project/{id}/dmaic`). It is the pattern DR-34 asks
  for.
- Cartograph already cites many sources beyond the UK: MSP, PMI, APM,
  ITIL, EU logframe, USAID, GPRA, UNSDG, ISO 27002, DCAT-AP, DAMA
  (`docs/TAXONOMY.md`).

**Tied to one domain's way of working.**

1. **Three fixed result levels.** `goal.schema.json` limits `level` to
   goal, objective, outcome, and `settings.schema.json` `goalLevels` only
   renames them. OKR has two, Kellogg five, the logframe four rows and
   Canada's hierarchy is core responsibility, result, program outcome.
   D25 grounds the three in the logframe, USAID and GPRA, each of which
   has three rungs in the sources cited there, but the rule is applied to
   everyone. (DR-2.)
2. **One objective per project.** D54 and `project.schema.json`
   `objectives` are enforced by the engine at every save. It is the
   logframe and PCM's rule (purpose is one). Horizon Europe and OKR do
   not hold it. (6.6.)
3. **The project is the centre, and its life is four states.** The
   state history is draft, defined, handed off, cancelled
   (`docs/ARCHITECTURE.md`). Sign-off stages are definition, closing,
   handover (`project.schema.json` `signOffs.stage` enum). There are no
   stages as data: phases were folded into milestones (D48). A mandate
   has six fixed kinds (`common.schema.json` Mandate). So PM²'s four
   phases, PCM's six, RIBA's eight, NZ's pathway (programme, indicative,
   detailed, approval to deliver) and ISO 19650-2's eight activities
   cannot be written. (DR-5, DR-6.)
4. **Roles are a fixed list.** `copy.ts` holds ten role kinds (sponsor,
   project manager, team member, user representative, technical lead,
   data owner, data steward, data custodian, project support, service
   owner). D23 and D61 take them from GovS 002 and PRINCE2, and allow one
   sponsor and one project manager. There is no Product Owner, no
   appointing party, no steering committee as a role set, no
   evaluator. (DR-18.)
5. **Indicators are numeric.** `kpi.schema.json` requires definition,
   unit and direction. I found no qualitative or descriptive form
   (a search of the contract for those words found nothing), no
   threshold or graded stretch (apart from specification limits, a
   Six Sigma idea), no commitment class on targets, no aggregation rule,
   and no field for an external code. `resultLevel` is output, outcome or
   impact, with no other types. (DR-11 to DR-16.)
6. **There is no evaluation record and no lessons-learned record.** I
   searched the schemas and `TAXONOMY.md`: evaluation appears only in
   passing. Canada, the DAC, A-11 section 260, PCM chapter 7, PM² closing
   and Scrum's retrospective all require one. There is no general review
   record either (only a portfolio's `reviewCycle` and its decisions).
   (DR-21 to DR-23.)
7. **No contribution or counterfactual.** Beneficiary groups and
   disaggregations exist; the IMP's contribution and the DAC's
   differential results do not. (DR-24.)
8. **No interchange with a domain standard.** The engine produces
   charter HTML and PDF, CSV reports and a dbt export. It has no
   export to IATI, 360Giving, a logframe table, an OKR list or SDG
   metadata (search of `openapi.yaml` and `docs/`). The charter itself
   is the project-management world's artefact; D55 sets it as one to
   three pages (which the design may keep, but as one of several
   outputs). (DR-30.)
9. **The onboarding assumes a corporate or public strategy shape.**
   `copy.ts` `onboarding` asks for a name, a vision, a mission, goals,
   objectives and outcomes in that order. That fits A-11 and the
   balanced scorecard. A Scrum team starts from a product goal, an
   NPC charity from a situation and a target group, a research proposal
   from a call topic. (DR-35, DR-4.)
10. **One language.** Guidance is stored under `contract/guidance/en`,
    and `copy.ts` is a single file of English. The directory name
    suggests locales are expected; I did not find a second one. (DR-33.)
11. **Government vocabulary in the defaults.** Examples such as
    "Official" and "Restricted" classifications, "ministry" in the
    running example, GovS 002 and Green Book terms, a Treasury-shaped
    business case (the mandate kind `businessCase`). They are defaults,
    not requirements, but a cooperative reads them as someone else's
    tool.
12. **Programme and portfolio carry a UK and PMI meaning of the
    words.** D32 follows MSP and PMI. Canada's "program" is an ongoing
    grouping, and the US "portfolio review" is of programs; both would
    map to Cartograph's `Operation` or `Programme` in a way D32 does not
    explain. (DR-1, DR-25.)

---

## 8. Could one domain-neutral design serve them all?

**Yes for the core, with four boundaries.** Every domain in section 1
has the concepts in section 3. What changes is names, depth, stages,
approvals and measure conventions, and all of those can be data. The
test of a neutral design is whether each domain can express its own
record without the product forcing another domain's shape.

| Domain | Fits a neutral core? | What it needs that Cartograph lacks today |
|---|---|---|
| PM², PRINCE2, ISO 21500 | Yes, closest to today | Stages as data (DR-5), approval route (DR-8) |
| NZ and UK five cases | Yes | Programme inheritance (DR-7), commit decision (DR-6), economic appraisal held elsewhere |
| Canada, Australia, US | Partly | Ongoing programs as the unit (DR-25), strategy depth by setting (DR-2), qualitative indicators (DR-12), evaluation record (DR-22), review record (DR-21) |
| EU PCM, logframe, IATI | Partly | Four-row view (DR-4), qualitative and aggregated indicators (DR-12, DR-15), export (DR-30) |
| RIBA, ISO 19650 | Partly | Stages (DR-5). Information requirements (OIR, AIR, PIR, EIR) are a different layer that I recommend **not** absorbing: link to it |
| Scrum, SAFe | Partly | No-gate use (DR-35), roles as data (DR-18), cadence reviews (DR-21). The backlog stays with the delivery tool |
| ITIL, ISO 20000 | Yes | Operation as first-class is there; service levels exist in the flow |
| Health | Yes | Numerator and denominator on indicators (the metric structure exists, D63, D64), registry codes (DR-16) |
| Research funding | Partly | A proposal as a record of its own and an impact pathway (DR-3) |
| Philanthropy | Yes | Theory of change view (DR-4), level of evidence (DR-10), a grants view for funders (DR-28, DR-30) |
| OKR, balanced scorecard, Hoshin | Partly | Two-level hierarchy (DR-2), graded targets (DR-13), perspectives as a view (DR-4) |
| Impact measurement | Partly | Contribution (DR-24), external codes (DR-16) |
| DMAIC | Yes, done | Nothing |

The four boundaries I would hold:
1. **Do not absorb a domain's own analysis.** Economic appraisal (NPV,
   cost-benefit), statistical process control beyond what exists,
   building information models, the Scrum backlog. Hold the result and
   link to the tool.
2. **Do not make the project the only unit.** Services, products and
   programs-as-ongoing-work are equally common in Canada, ITIL and
   Scrum (DR-25).
3. **Keep the interface light for the person who does not need a
   method.** Everything in section 5 that is a method is a lens, a
   template or a setting, off by default (DR-34, DR-35). This keeps the
   walk-first decision (#136) intact.
4. **Treat interchange as a product feature, not a report.** Several
   domains publish by law or funder rule (A-11 240.5, IATI, 360Giving).

A note for the walk-first work: the onboarding could ask one early
question, "How does your organisation describe its work?", and offer
a handful of **profiles** (public strategy, project delivery, product
team, charity, research, improvement) that set words, levels and stages
as defaults. That is an idea, not a finding; I have not tested it, and
it should be tested with people.

---

## 9. Diátaxis lens on this question

- **Tutorial** (someone learning): a person from a new domain needs a
  walk in their own words. Vocabulary and profile choices decide whether
  the tutorial feels like theirs.
- **How-to** (someone doing a task): "export this for our funder's
  standard" and "set up our own stages" are how-to tasks. Both need
  DR-5 and DR-30.
- **Reference** (someone looking up): the vocabulary map in section 3.1
  is reference material. A product should ship it, for each profile.
- **Explanation** (someone trying to understand): why the product asks
  for a chain from work to change, and why a Scrum team may skip stages.

---

## Sources

Numbers refer to inline citations. All were fetched on 2026-10-17 unless
the status in section 0 says otherwise.

- S1. Treasury Board of Canada, Policy on Results.
  https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=31300
- S2. Treasury Board of Canada, Directive on Results, Appendix A.
  https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=31306
- S3. US OMB, Circular A-11 (August 2025). Table of contents:
  https://www.whitehouse.gov/wp-content/uploads/2025/08/a11_web_toc.pdf ;
  sections https://www.whitehouse.gov/wp-content/uploads/2025/08/s230.pdf
  (and s240, s250, s260, s270 in the same folder).
- S4. New Zealand Treasury, Better Business Cases: Project Business
  Cases, guidance, March 2026.
  https://www.treasury.govt.nz/sites/default/files/2026-06/guidance-project-business-cases-mar26-v2.pdf
- S5. Australian Department of Finance, Developing performance measures
  (RMG 131), and Commonwealth Performance Framework, read through the
  Wayback Machine.
  https://www.finance.gov.au/government/managing-commonwealth-resources/developing-performance-measures-rmg-131
  and
  https://www.finance.gov.au/government/managing-commonwealth-resources/planning-and-reporting/commonwealth-performance-framework
- S6. European Commission, PM² Project Management Methodology Guide 3.1
  (copy at University College Dublin).
  https://www.ucd.ie/itservices/t4media/PM%C3%82%C2%B2%20Project%20Management%20Methodology%20Guide%203.1.pdf
- S7. ISO catalogue pages: ISO 21502 https://www.iso.org/standard/74947.html ;
  ISO 21500 https://www.iso.org/standard/75704.html ; ISO 21503
  https://www.iso.org/standard/66680.html ; ISO 21504
  https://www.iso.org/standard/82867.html ; ISO 21505
  https://www.iso.org/standard/63578.html
- S8. University of Granada, Jean Monnet Chair, white paper "Analysis of the
  new ISO 21502:2020. Comparison with PM2" (secondary).
  https://catedras.ugr.es/openpm2/sites/webugr/copenpm2/public/ficheros/PM2%20vs%20ISO%2021502_EN.pdf
- S9. European Commission, Project Cycle Management Training Handbook.
  https://caricom.org/wp-content/uploads/EC_PCM_Training_Handbook.pdf
- S10. IATI Standard: results guidance
  https://iatistandard.org/en/guidance/standard-guidance/results/ ;
  indicator element (2.03)
  https://iatistandard.org/en/iati-standard/203/activity-standard/iati-activities/iati-activity/result/indicator/
- S11. UK BIM Alliance, ISO 19650 Guidance Part 2, Processes for Project
  Delivery, third edition.
  https://ukbimframework.org/wp-content/uploads/2020/02/ISO_19650_Guidance_Part_2_Processes_for_Project_Delivery_ThirdEdition.pdf
- S12. Infrastructure and Projects Authority, Project Routemap Handbook
  (2022).
  https://assets.publishing.service.gov.uk/media/6297200fe90e0703a2fed794/Handbook__-_FINAL.pdf
- S13. Schwaber and Sutherland, The Scrum Guide (2020).
  https://scrumguides.org/scrum-guide.html
- S14. Scaled Agile, SAFe: Lean Portfolio Management, Strategic Themes,
  Epic (public parts).
  https://framework.scaledagile.com/lean-portfolio-management ,
  https://framework.scaledagile.com/strategic-themes ,
  https://framework.scaledagile.com/epic
- S15. ISO/IEC 20000-1:2018 catalogue page.
  https://www.iso.org/standard/70636.html
- S16. WHO SMART Reference Architecture, Indicator and Performance Metrics.
  https://smart.who.int/ra/indicators.html
- S17. UN Statistics Division, SDG indicator metadata, indicator 4.1.1.
  https://unstats.un.org/sdgs/metadata/files/Metadata-04-01-01.pdf
- S18. European Commission, Horizon Europe standard briefing slides for
  experts.
  https://ec.europa.eu/info/funding-tenders/opportunities/docs/2021-2027/experts/standard-briefing-slides-for-experts_he_en.pdf
- S19. NPC, Theory of change in ten steps (2019)
  https://www.thinknpc.org/wp-content/uploads/2019/10/Theory-of-Change-10-Steps.pdf ;
  NPC's four pillar approach (2014)
  https://www.thinknpc.org/wp-content/uploads/2014/06/NPCs-four-pillars-summary.pdf
- S20. W.K. Kellogg Foundation, Logic Model Development Guide, chapter 2.
  https://azprc.arizona.edu/sites/default/files/CHWtoolkit/PDFs/LOGICMOD/CHAPTER2.PDF
- S21. Google re:Work, Set goals with OKRs (a company's practice).
  https://rework.withgoogle.com/intl/en/guides/set-goals-with-okrs
- S22. Kaplan and Norton, The Balanced Scorecard: Measures that Drive
  Performance, Harvard Business Review, 1992 (abstract page).
  https://hbr.org/1992/01/the-balanced-scorecard-measures-that-drive-performance-2
- S23. Lean Enterprise Institute, Hoshin Kanri (summary page).
  https://www.lean.org/lexicon-terms/hoshin-kanri/
- S24. Impact Frontiers, Five Dimensions of Impact (Impact Management
  Norms).
  https://impactfrontiers.org/norms/five-dimensions-of-impact/
- S25. RIBA Plan of Work (landing page).
  https://www.architecture.com/knowledge-and-resources/resources-landing-page/riba-plan-of-work
- S26. OECD DAC, Better criteria for better evaluation (2019), ALNAP
  catalogue entry.
  https://alnap.org/help-library/resources/better-criteria-for-better-evaluation-revised-evaluation-criteria-definitions-and-principles-for-use/
- S27. 360Giving Data Standard documentation.
  https://standard.threesixtygiving.org/en/latest/
- S28. Evans School Policy Analysis and Research, Analysis of World Bank PAD
  indicators for water, sanitation and hygiene projects (2010,
  secondary).
  https://epar.evans.uw.edu/wp-content/uploads/2024/08/Evans_UW_113_WB_PADS_22.10.10.pdf
- Project files read: `cartograph-engine/docs/TAXONOMY.md`,
  `docs/ARCHITECTURE.md`, `contract/openapi.yaml`, `contract/schemas/*`,
  `contract/flows/*`, `cartograph-ui/src/copy.ts`. Rounds one and two:
  `../charter-standards.md`, `../planning-and-data.md`, `../tools-and-ux.md`,
  `../inventory.md`, and `g4-first-principles.md` in this folder.

---

## Open questions

1. **Unread standards.** ISO 21502 and the rest of the ISO family, PMI,
   IPMA ICB4, USAID ADS 201, the World Bank policy, ASQ on DMAIC and
   ITIL 4 are not read at source. Does an owner copy exist (a library
   or a paid licence) to close this? Until then, criteria that rest on
   them are weaker.
2. **Public finance beyond the four read.** I did not read Infrastructure
   Australia, NSW Treasury, GAO or the NHS guidance. Do they add a
   decision or record the five-case model lacks?
3. **How many levels?** DR-2 says "a workspace chooses". Should a
   workspace be able to choose one level (a flat list of results), as a
   hobbyist might? I did not test that.
4. **Ongoing versus time-bound.** Canada's "program" and the US "program"
   are ongoing groupings that contain services and projects. Does
   Cartograph's `Programme` or its `Operation` carry that meaning, or
   is a new unit needed? D32 does not decide this.
5. **Neutral stage tags.** The list in 6.8 is a guess. It should be
   tested against RIBA's actual stage outcomes, PM² gates and the
   five-case pathway before it is relied on.
6. **Profiles.** Section 8 suggests domain profiles at onboarding. That
   cuts across walk-first (#136) and has not been tested with people.
7. **Language.** Are locales in the contract already expected (the
   `en` directory), or only English? Which official languages matter
   most for the first nations or ministries that adopt it?
8. **Evaluation record.** DR-22 and DR-23 add a kind or two. The
   project's rule is to be lean at the core (the owner's lean-core rule:
   ports for extras). Should evaluation sit behind a port with "off"?
9. **IATI and 360Giving field lists.** I read the result and indicator
   shape of IATI and only the landing page of 360Giving. A mapping
   (DR-30) needs the full field lists, including budgets, transactions,
   grant fields and codelists.
