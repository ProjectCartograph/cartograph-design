# G3: delivery, risk, assurance and the life cycle

Date of research: 2026-10-17. Brief: `brief-g3.md`, with `COMMON-GREENFIELD.md` and `../COMMON.md`.

The question for this file: how do the delivery, risk, assurance and benefits frameworks chain together over a piece of work's whole life, and what must a tool for defining and steering work keep at each point? The owner's later instruction is also applied: the answer must hold across domains and countries, not only UK government. Each design criterion below says which domains' sources support it and whether it is domain-neutral.

## 0. How far each source was read

Say plainly what was and was not read. A claim below rests only on what this table says was read.

| Source | What I read | Status |
|---|---|---|
| GovS 002 Project delivery (2025 edition), [projectdelivery.gov.uk](https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/) | Page text up to clause 8.12 (first 100,000 of 125,644 characters) | Read through a fetch tool that digests the page, not a raw download. `curl` got a 403. Clause numbers come from that digest and should be checked against the page before anyone cites them in a decision. Clause 8.13 onward and Annexes C and D not read. |
| Teal Book (project delivery guidance) | Nothing directly | Not read. The site returned 403. I cite it only where the Green Book guidance points to its chapters (planning, risk, benefits, change). |
| Orange Book, Management of Risk, Principles and Concepts (May 2023), [PDF](https://assets.publishing.service.gov.uk/media/6453acadc33b460012f5e6b8/HMT_Orange_Book_May_2023.pdf) | Full text extracted. Read the introduction, principles A to D with paragraph numbers, the escalation figure, and the first-line text of Annex 2 | Read. Sections E to G and Annexes 3 to 6 only searched, not read closely. |
| Aqua Book (2025 version), [gov.uk](https://www.gov.uk/guidance/the-aqua-book) | Chapters 1 to 3 (principles, definitions, documentation) and chapter 5 (roles and life cycle) | Read. Chapters 6 to 10 skimmed by heading only. |
| Gate Review workbooks 0 to 5 (the IPA, now the National Infrastructure and Service Transformation Authority, NISTA), [Gate 0](https://www.gov.uk/government/publications/gate-review-0-strategic-assessment), 1, 2, 3, 4, [5](https://www.gov.uk/government/publications/gate-review-5-operations-review-and-benefit-realisation) | The introduction and "purpose of the review" lists for all six gates, and the repeat rules for Gate 0 | Read. The evidence-point tables under each question were skimmed, not read in full. |
| HM Treasury, Guidance on Developing Business Cases (2026), [PDF](https://assets.publishing.service.gov.uk/media/6a4390675b6406df58c14006/Guidance_on_Developing_Business_Cases.pdf) | Chapter 4 (stages and approval), 5.7 to 5.13 (programme cases), 8.52, 11.11 to 11.28, 12.19 | Read these paragraphs. The rest was not read for this brief (an earlier round read it). |
| IPA benefits management guidance | Not found at a fetchable address | Not read. I used the Green Book guidance on benefit registers (11.20 to 11.22) and GovS 002 clause 7.3 as the nearest primary text. |
| Project Routemap (IPA) | The page listing its handbook and modules | Listing read only. The handbook and modules were downloaded but not read. |
| GOV.UK Service Manual: discovery, alpha, beta, live | The four pages | Read. [Discovery](https://www.gov.uk/service-manual/agile-delivery/how-the-discovery-phase-works), [Alpha](https://www.gov.uk/service-manual/agile-delivery/how-the-alpha-phase-works), [Beta](https://www.gov.uk/service-manual/agile-delivery/how-the-beta-phase-works), [Live](https://www.gov.uk/service-manual/agile-delivery/how-the-live-phase-works). Service Standard: only the list of fourteen point titles. |
| Rose Book (knowledge assets, 2024), [PDF](https://assets.publishing.service.gov.uk/media/66151359c4c84de468346adc/GOTT_Rose_Book_2024.pdf) | Text extracted, contents and the chapters on identifying and recording assets searched | Marginal for this topic. Weak evidence, used once. |
| Magenta Book | The gov.uk index page only | Body not read. Used only through the Gate workbooks' references to it. |
| Canada, Treasury Board Policy on Results (2016), [text](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=31300) | Full policy and definitions | Read in full. |
| US OMB Circular A-11, Part 6, Section 200 (2025), [PDF](https://www.whitehouse.gov/wp-content/uploads/2025/08/s200.pdf) | Section 200 (overview, performance cycle, definitions) | Read. Other sections of Part 6 and Part 7 (capital planning) not read. |
| US GAO | Search only | Not read. gao.gov returned 403. |
| New Zealand Treasury, Better Business Cases, [archived page of Dec 2024](https://web.archive.org/web/20241216225039/https://www.treasury.govt.nz/information-and-services/state-sector-leadership/investment-management/better-business-cases) | The overview page through the Internet Archive | Read. The live site returned 403. Gateway and Investor Confidence Rating pages not read. |
| World Bank, Bank Directive: Investment Project Financing (2023), [PDF](https://thedocs.worldbank.org/en/doc/a63d7e40de1c13802a096eddf6d105bb-0290012023/original/Bank-Directive-Investment-project-financing.pdf) | Full text extracted (16 pages). Read paragraphs 3 to 9, 27 to 28, 44, 49 to 56 | Read. The independent validation of completion reports comes from a search summary only (not read at source). |
| OECD DAC evaluation criteria (2019) | A search-result summary that cites a Belgian government page | **Not read at source.** oecd.org returned 403 to every route tried. Secondary. The six criteria are well known, but the wording below is mine from that summary. |
| IATI Standard 2.03: [activity status](https://iatistandard.org/en/iati-standard/203/codelists/activitystatus/), [activity standard](https://iatistandard.org/en/iati-standard/203/activity-standard/), [result element](https://iatistandard.org/en/iati-standard/203/activity-standard/iati-activities/iati-activity/result/) | The three pages | Read. |
| EU Horizon Europe Annotated Grant Agreement v2.0 (2025), [PDF](https://ec.europa.eu/info/funding-tenders/opportunities/docs/2021-2027/common/guidance/aga_en.pdf) | Table of contents, Article 21 (reporting) and the amendments list | Read Article 21. Article 39 (amendments) seen by title and in the notes only. |
| ISO 21502:2020 | The ISO catalogue page (abstract and status) | Body **not read**. The abstract says it applies to any organisation and any life cycle or delivery approach. I cannot cite clauses. |
| PM2 (European Commission), PMI standards, GAO, IRIS+ (GIIN), NHS, WHO, UKRI, Charity Commission SORP, NPC | Tried, blocked or not reached | **Not read.** I make no claim from them. Where a domain below is "unread", that is why. |
| RIBA Plan of Work 2020, [page](https://www.riba.org/work/insights-and-resources/riba-plan-of-work/) | The landing page: eight stages, core strategies, overlays | Page read. It does not list the stage names or gates; the full overview PDF was not reachable. I say nothing about the stage names. |
| Scrum Guide (2020), [scrumguides.org](https://scrumguides.org/scrum-guide.html) | Full text | Read. |
| SAFe Lean Portfolio Management, [page](https://framework.scaledagile.com/lean-portfolio-management) | The public introduction | Read. The article body is behind a login. Only the definition is used. |
| Impact Management Project, [five dimensions](https://impactfrontiers.org/norms/five-dimensions-of-impact/) | The page | Read. |
| Google re:Work, [setting goals with OKRs](https://rework.withgoogle.com/en/guides/set-goals-with-okrs) | The page | Read. A company's own practice guide, so it shows a practice, not a standard. |
| Balanced Scorecard Institute, [BSC basics](https://balancedscorecard.org/bsc-basics-overview/) | The page | Read. A training body, not a standards body; labelled as such where used. |

The Cartograph side was read in the repositories: `cartograph-engine/docs/TAXONOMY.md` (definitions, D4, D30, D32, D33, D44, D52, D55, D60), `contract/schemas/` (project, operation, programme, portfolio, portfoliodecisions, kpi, kpireadings, gap, common), `docs/DESIGN_RULES.md` (rules 3 and 4), `cartograph-ui/src/copy.ts` (change set and stage words), the route list, and the round-two guide under `../guide/`.

## 1. What the sources say

### 1.1 GovS 002: stages, gates, who authorises (UK government)

- **Gates (clause 6.3).** The life cycle is divided into stages, and a gate or decision point comes before each stage to authorise its start and commit money and people. A project needs at least two stages; simpler work has fewer and riskier work has more. Each gate defines its criteria, who decides, who must be consulted, and which assurance review comes first. Criteria cover: alignment with policy and continued need, an acceptable business case, acceptable risks, an acceptable solution, funding and resources, and a plan for the next stage. The outcomes are: approve, ask for revision, defer, or terminate.
- **Authority (4.1.3, 4.3, 4.4.7, 6.4.4).** Limits of authority live in the organisation's governance framework. Decisions above the senior responsible owner's delegated authority go to the sponsoring body. For the largest work, the accounting officer approves before the Treasury does.
- **Named people (4.4.8, 6.2).** Every programme or project has a named senior responsible owner (SRO) and a named manager. The SRO owns the business case and is accountable for benefits.
- **The business case is living (4.3, 6.4.6, 7.7).** It is built over several phases and reviewed before every gate, and kept up to date in a controlled way.
- **Records the standard names:** a brief (6.4.2); a strategic outline case, delivery strategy, success criteria and governance framework at initiation (6.4.5, 7.2); the reviewed business case, plan for the next stage and assurance outcomes at each gate; the baselined plan, risk and issue records, change requests and performance reports while managing (7.2.5, 7.5 to 7.7); traceability records (7.8); closure records (6.4.8).

### 1.2 GovS 002: risk, assurance, benefits, closure

- **Risk (7.1, 7.6).** Every risk and issue has an owner, assessed for impact, likelihood and proximity, with a response (exploit, mitigate, accept) and monitoring until closed. Residual and secondary risks are identified. Overall risk must not exceed the organisation's appetite and tolerance without authorisation. Managers set tolerances and escalate only when they are exceeded. A risk an owner cannot resolve is escalated or reassigned. Owners may sit outside the project hierarchy but must answer to someone inside it.
- **Assurance (4.2).** At least three levels: operational management, senior management independent of operations, and independent audit (4.2.2). An integrated assurance and approvals plan is written with the initiation documents and kept until closure (4.2.3). Reviews come before significant decisions and gates; recommendations are documented, agreed and acted on (4.2.3).
- **Benefits (7.3, 4.4.4, 5.3.6).** Benefits are identified, defined, planned, tracked and reassessed. Forecasts account for disbenefits. Each discrete benefit has an owner who forecasts and monitors it. Trigger points for benefits sit in the schedule. There is two-way traceability between benefits, outcomes, solutions, requirements and objectives (7.3, 7.8).
- **Closure and after (6.4.8, 6.4.9, 8.10).** Closure confirms the outputs and outcomes delivered to date, records unmet requirements and how they will be handled, and hands responsibility for ongoing risks, issues, actions and benefit tracking to a business authority that must accept it. Documents are archived. A closure review compares performance with plan. The SRO agrees post-closure review plans. The sponsoring body then ensures a review of benefits and operational performance against the business case (6.4.9). Lessons are captured, evaluated and shared through the life, and applied at the start of new work (8.10, 6.4.5).

### 1.3 The Gate reviews 0 to 5

All six workbooks say the process is anchored to the five case model, gives independent advice to the SRO, and is a snapshot that does not replace audit or an organisation's own controls (Gate 0 workbook, section 1). Organisations are encouraged to plan assurance in an integrated assurance and approvals plan (section 1.3). Each gate asks these things, paraphrased from "purpose of the review":

| Gate | Question it answers | What it checks | Record that feeds it |
|---|---|---|---|
| 0 Strategic assessment | Does the programme still fit the strategy and have the right support? | Outcomes and objectives fit together and the strategy; stakeholder support; interdependencies; arrangements for leading and monitoring; main risks; resources to the next stage; an evaluation plan exists. | Programme brief or initial programme business case, mandate. |
| 1 Business justification | Is the case for change sound and the way forward realistic? | Strategic outline case robust; options shortlisted; authority and support; risk, issue and change plans; benefits identified at high level with measures; evaluation plan; assumptions. | Strategic outline case. |
| 2 Delivery strategy | Is the chosen option fully defined and the way to deliver it sound? | Outline business case confirmed; scope fixed; plan to completion; controls and organisation; funding confirmed for the whole project; evaluation plans and decision points; quality procedures. | Outline business case. |
| 3 Investment decision | Is it right to commit now? | Full business case and benefits plan confirmed with delivery partners and benefit owners; funds and authority; lawful procurement; management controls; readiness for change; lessons from others; proportionate evaluation plan. | Full business case, benefits plan. |
| 4 Readiness for service | Is it safe to go live? | Business case still valid; benefits still likely; testing done; contingency and reversion; dependencies and risks managed; handover from the SRO to the operational business owner; lessons recorded; defects recorded with a plan. | Test results, handover plan, updated business case. |
| 5 Operations review and benefit realisation | Did it work, and who carries on? | Delivery metrics were right; objectives met or on the path; the need persists; benefits delivered or on track; governance and accountability for benefits continue and handover of benefits delivery is agreed; closure plan; post-closure governance; lessons logged; evaluation under way; earlier recommendations closed. | Benefits register, contract and service performance, lessons. |

Gate 0 is the odd one: it is repeated through a programme's life. It is run at start-up, at key decision points (milestones, a major change to outcomes, a change of SRO, sponsor concern, or lessons to share), and at the end to judge overall success and whether lessons were analysed and shared (Gate 0 workbook, section 2.2). The Green Book guidance says the programme business case is reviewed before each tranche starts (para 5.13) and that gate reviews should not be the only means of assurance (para 5.12).

### 1.4 The Green Book business case guidance

- A project business case goes through four stages: strategic assessment (4.8, 4.9), strategic outline case (4.10 to 4.15), outline business case (4.16 to 4.20) and full business case (4.21). The approving authority can approve, change the scope, ask for other options, ask for a pilot or more feasibility work, or postpone or abandon the project (4.14).
- Gate review 1 assures the strategic outline case and Gate review 2 the outline business case (4.13, 4.18). The five cases (strategic, economic, commercial, financial, management) are developed in outline first and in full later. A programme or low-risk work may combine stages (NZ page and 4.x).
- Benefits management is part of the management case. A benefits register records each benefit, its baseline, how it is monitored and an owner responsible for its realisation. It includes benefits that cannot be priced, and it is kept up into operational delivery (8.52, 11.20 to 11.22).
- Risk: each risk has an owner; the register is maintained into operational delivery; public bodies "should take 'good risks'" (11.23 to 11.28, 12.19).
- Responsibility for the business case stays with the programme or project board (11.15).

### 1.5 The Orange Book

- Main principles A to E (introduction and section headings): risk management is part of governance and leadership; it is integral to all activity and decision-making; it is collaborative and uses the best information; its processes cover identification and assessment, treatment, monitoring and reporting; and it improves through learning.
- **Appetite and ownership.** The board decides the nature and extent of the principal risks it will take, its risk appetite (A3). Roles for risk are clear and allow escalation, aggregation and delegation (A4). The board agrees agreed triggers for bringing significant issues to its attention faster (A5).
- **Escalation up the chain.** Section C and its figure describe risks identified at department level and from arm's length bodies and suppliers, consolidated, aggregated, and reviewed into the principal risks that the executive, the audit and risk committee and the board approve (C1, C2).
- **Treatment.** Evaluating a risk means comparing it with appetite. The options are: avoid, take to pursue an opportunity, retain by informed decision, change the likelihood, change the consequences, or share (D6). A chosen treatment specifies rationale, actions, who is accountable, resources, measures and early warning indicators, constraints, timing and reporting (D8).
- **Monitoring and reporting.** Principal risks get periodic deep dives (D16). Reports show trends and whether results are within appetite (D15).
- **Three lines.** First line management owns and manages risk; the second line supports and monitors; the third line, internal audit, is independent assurance (Annex 2; section D12). The Orange Book also says "one size fits all" would be misguided (introduction), and uses comply or explain.

### 1.6 The Aqua Book (quality assurance of analysis)

It matters here because Cartograph's records are analysis the organisation will rely on. It sets four roles with a hard rule: commissioner, analyst, assurer and approver; the assurer must be independent of the analyst, and the two roles are never held by one person (5.1). It asks for proportionate assurance matched to the risk of use (1.3.1, ch 3) and for assurance through the whole life, not at the end (1.3.2, 5.2). It also defines the records that make assurance possible: a specification, a design, an **assumptions log** (what, how reliable, when, why, who made it and who signed it off), a **decisions log** (what, when, why, who decided, who signed off), a data log, user documentation and an assurance statement (ch 2, "Documentation"). Analysis is maintained and reviewed as inputs change (5.3).

### 1.7 GOV.UK Service Manual and Service Standard

Discovery, alpha, beta, live and retirement are phases for a service. Spend controls approval may be needed before discovery (discovery page). Discovery ends with a decision whether to move to alpha; it is acceptable to decide that alpha is not worth running (alpha page). A goal, a reframed problem, hard and soft constraints and how success will be measured are set in discovery. Alpha ends when a prototype is enough to decide on beta, using the success measures set at the end of discovery; the team can stop altogether or repeat discovery or alpha. Beta and live have assessments before moving on. Beta assessment asks how the service works across organisational boundaries and constraints. In live, a service is retired when users no longer need it or too few do (live page). Point 10 of the Standard is "Define what success looks like and publish performance data". This is a different shape from the five case life cycle: spend a little, learn, decide, repeat.

### 1.8 Non-UK public-sector frameworks

- **Canada, Policy on Results (2016).** Sets a results framework (core responsibilities, results, indicators) and a program inventory with a performance information profile per program, each with a designated responsible official (4.3.1, 4.3.5, 4.3.6). Evaluation is a neutral function with its own head who has direct access to the deputy head (4.3.11, 4.3.12). A rolling five-year evaluation plan covers planned coverage and gives the reason for programs left out (4.3.15). Reports and management responses are published (4.3.18). The aim is that departments are clear on what they are trying to achieve and how they assess success, use evidence to improve, allocate resources by performance, and tell the public (3.2). It uses relevance, effectiveness and efficiency (Appendix A).
- **United States, OMB Circular A-11 Part 6, Section 200.** The Federal Performance Cycle: planning (strategic plan, then annual performance plan with goals), evidence, evaluation, analysis and review, and reporting (quarterly progress on priority goals, an annual performance report) (200.3). It defines data-driven reviews and enterprise risk management as management routines (200.4). This is a time-led cycle for an agency, not a project stage model.
- **New Zealand, Better Business Cases.** Projects start with a mandate and a brief, not a business case, with a named SRO, a risk profile assessment and a strategic assessment (page, "before starting"). The same five case model is built in rising completeness through strategic assessment, indicative, detailed and implementation business cases. Which stages are required depends on the risk rating and whether the project sits in a programme; low-risk work can use a single-stage case (page). The page says the G20 adopted the five case model in 2018 as an international standard for infrastructure projects. This shows the UK model travelling, with the same shape.
- **World Bank, Investment Project Financing directive.** Stages follow the project cycle: identification, concept decision, preparation and appraisal, negotiation and approval, implementation, completion (paras 3 to 9, 27, 28, 44, 56). At identification the Bank and borrower agree the objectives, results expected and financing (para 5 to 6). Management decides at a concept point whether to proceed and sets the risk classification (para 9). Appraisal fixes definition, scope, the results framework and monitoring arrangements, and the risk assessments (para 28). Implementation support reviews monitoring of results, risks and implementation status and records follow-up actions (para 44). Changes are processed as restructurings with a rationale, benefits and risks (para 49), including a change of closing date (para 51). After completion the Bank prepares a completion and results report covering how far objectives were achieved, with the borrower's own evaluation included (para 56).
- **IATI (aid transparency).** An activity has a lifecycle status: pipeline or identification, implementation, finalisation (activity complete but open pending financial sign-off or evaluation), closed, cancelled, suspended (activity status codelist). It reports results with indicators, expected and actual, and links to documents (result element).
- **OECD DAC criteria (secondary only).** Six lenses for judging an intervention: relevance, coherence, effectiveness, efficiency, impact, sustainability, applied with judgement and adjusted to context. Not read at source.
- **EU Horizon Europe grant agreement.** Reporting is continuous (progress on milestones, deliverables, critical risks and indicators) and periodic (technical and financial reports that trigger payments), and the two are kept distinct (Article 21.1, 21.2). Budget moves and other changes need an amendment past stated limits (Articles 6 and 39, from the notes).

### 1.9 Other domains

- **Agile (Scrum Guide 2020).** A team works to a Product Goal and an ordered backlog; progress and the artifacts must be transparent so they can be inspected; the Product Owner is accountable for the goal and may cancel a sprint when its goal is obsolete; quality is held by a Definition of Done. Sprints are short enough to inspect progress toward the goal regularly. There are no stage gates in the guide. Time-based inspection replaces them.
- **SAFe Lean Portfolio Management.** Defines portfolio management as aligning strategy and execution through funding, operations and governance. Only the definition is public. Not otherwise read.
- **Corporate.** OKRs: objectives with measurable key results graded on a number, public inside the company, with partial attainment treated as healthy and low grades used as learning data (re:Work). Balanced scorecard: objectives, measures, targets and initiatives across four perspectives, with initiatives being projects that serve the objectives (Balanced Scorecard Institute, a training body).
- **Impact.** The Impact Management Project says impact is a change in an outcome caused by an organisation, positive or negative, intended or not. It asks what outcome, who experiences it, how much, whether the effort contributed beyond what would have happened anyway, and the risk that impact differs from what was expected.
- **Construction (RIBA).** Eight stages from briefing to use, with project strategies (cost, health and safety, sustainability, and so on) and overlays. Page only; stage content unread.

## 2. The life cycle, idea to benefits realised

The frameworks disagree on names and on how many gates, but they chain in the same order. Here is the common chain, with each framework's name for the point. The records are what the tool must hold. They are described in plain terms, not as UK documents.

| # | Point in the life | Names in the sources | Question | Who decides | What assurance looks at | Record left (what the tool must keep) |
|---|---|---|---|---|---|---|
| 1 | **Idea and mandate** | Mandate and brief (NZ page; GovS 6.4.2); strategic assessment, Gate 0; identification (World Bank 5); pipeline (IATI); before discovery (GDS) | Is this worth a closer look, and does someone with authority say so? | The sponsoring body, at its own level of authority (GovS 4.4.7) | Fit with strategy and priorities, support (Gate 0) | The reason (need, problem), who asked, by what authority, the named accountable person, a first view of risk and size. |
| 2 | **Understand the problem; shortlist options** | Strategic outline case, Gate 1; discovery then alpha (GDS); concept decision (WB 9) | Is the case for change sound, and is there a realistic way forward? | The approving authority (Green Book 4.14: approve, change scope, other options, pilot, postpone or abandon) | The case is robust, options were really compared, benefits and measures set at high level, evaluation planned | Problem and cost of the problem, objectives, constraints (hard and soft), assumptions with a test, options including doing nothing, why the shortlist, benefits in outline with measures, an evaluation intention. |
| 3 | **Choose and plan** | Outline business case, Gate 2; end of alpha (GDS); appraisal (WB 27, 28) | Is the chosen option defined, planned and affordable? | Approving authority | Assumptions are tested; scope fixed; funding confirmed for the whole; controls defined | Preferred option and the reason, fixed scope, plan with milestones and dependencies, cost plan and funding, governance, risk plan, benefits plan with baseline and owners, results framework. |
| 4 | **Commit** | Full business case, Gate 3; beta business proposal (GDS); negotiation and board approval (WB) | Commit money and people now? | Approving authority, and the finance authority for public money | Delivery partners and benefit owners confirm; procurement lawful; readiness for change | The approval itself: who, when, outcome, conditions with owners and dates; the approved baseline of scope, cost, dates and benefits; the list of who confirmed. |
| 5 | **Deliver and control** | Managing the project; implementation (WB 44); beta (GDS); sprints (Scrum); continuous and periodic reporting (Horizon 21) | Is it on track, and what changed? | Managers within tolerance; the sponsor or board above tolerance; changes by change control (GovS 7.7; WB 49) | Reviews before significant decisions; recommendations tracked; business case revalidated | Progress and events against the baseline; risks and issues with owners and escalation; change records with reason and authoriser; decisions and assumptions log; re-approvals; lessons as they arise. |
| 6 | **Be ready and hand over** | Gate 4; live assessment (GDS); transition | Is it safe to go live and does someone accept it? | The SRO with the operational owner who accepts (Gate 4: handover from the SRO to the operational business owner) | Testing, contingency, ongoing risks, resources for business as usual | Acceptance by a named owner, readiness evidence, defects and their plan, open risks and issues and who now holds them, handover of benefit tracking. |
| 7 | **Operate and realise benefits** | Gate 5; live (GDS); finalisation then closed (IATI); post-project review (GovS 6.4.9) | Did it work, are the benefits arriving, and does the need persist? | The business authority that accepted the benefits; the sponsoring body for the review | Delivery metrics, benefits delivered or on track, accountability continues | Readings against each benefit's measure over time; benefit review outcome (realised, on track, off track, stopped); service performance; changes to the service; risk register kept into operation. |
| 8 | **Close, evaluate, learn** | Closure review (GovS 6.4.8); final Gate 0; evaluation (Canada 4.3.15, 4.3.17; DAC); completion report (WB 56) | What was delivered, what was learned, what remains? | SRO agrees closure; the evaluation function reports; the sponsoring body acts | Neutral evaluation; closure matches the business case | Closure review; unmet requirements and what happens to them; archived records; lessons; evaluation findings and the management response; who now answers for what remains. |
| 9 | **Retire or stop** | Retirement (GDS live page); retired (Cartograph); cancelled or suspended (IATI); terminate (GovS 6.3) | Should this end, pause or change shape? | The owner of the service or the approving authority | Whether the need persists | The decision to stop or pause with reason and date; what is kept readable afterwards. |

Two notes on the chain.

1. **Points 1 to 4 are one idea repeated.** The case grows in detail: strategic, economic, commercial, financial and management questions are answered in rising completeness (NZ page shows the percentages; Green Book 4.12 and 4.17). GDS reaches the same shape by building and testing (alpha, beta). What is common is not a document set; it is a growing record, a decision at each step, and the possibility of stopping.
2. **Points 6 to 8 are where the sources differ most from common practice.** Most work-tracking tools end at delivery. GovS 002, Gate 5, the World Bank completion report, IATI's finalisation status and Canada's evaluation plan all treat the period after delivery as part of the work: benefits are tracked, someone accepts them, and an independent look back is planned from the start.

### 2.1 Risk across the life

Risk is not a stage. It runs through, and its ownership changes shape with scale:

- At the start, a first risk view sizes the assurance and the business case form (NZ risk profile assessment; Green Book 11.27 on a risk potential assessment).
- During the work: each risk has an owner and a response (GovS 7.6; Orange D8; Green Book 11.28). Managers escalate on tolerance breach (GovS 7.1) or on triggers the board has agreed (Orange A5). The escalation goes to a named person with authority to decide (Orange A4).
- Across the organisation: project and programme risks consolidate into principal risks reviewed by the board and the audit and risk committee, with a common set of criteria so risks can be compared (Orange C1, D3, D4). Appetite is stated at the top and tested against it (Orange A3, D6).
- At handover: ongoing risks, issues and actions pass to the business owner who accepts them (GovS 6.4.8; Gate 4).
- After: the risk register is kept into operational delivery (Green Book 11.22, 12.19).

### 2.2 Assurance across the life

Assurance has two forms in the sources, and they should not be confused.

- **Point-in-time independent review before a decision:** the six gate reviews, GDS assessments, a World Bank appraisal. It gives the decision-maker an independent view, not an approval.
- **Continuing assurance:** the three lines (Orange Annex 2), an integrated assurance and approvals plan kept from initiation to closure (GovS 4.2.3), proportionate to risk (Aqua 1.3.1), and with a hard rule of independence between producer and assurer (Aqua 5.1; Canada 4.3.11 on neutral evaluation).

A gate review "does not replace the need for a full audit opinion" (Gate 0 workbook, section 1.2), so the record should not call a gate review an audit.

### 2.3 Benefits across the life

- Planned at the start in outline (Gate 1), with baseline and owner by the full case (Gate 3, Green Book 11.21).
- Tracked during delivery at trigger points in the plan (GovS 7.3).
- Transferred at handover to a named owner who accepts (GovS 6.4.8; Gate 5).
- Checked after delivery in a post-project review (GovS 6.4.9; Gate 5; World Bank completion report) and evaluated independently (Canada 4.3.15; DAC lenses).
- Impact thinking adds who experiences a change, how much, and whether the effort contributed beyond what would have happened anyway (IMP).

## 3. Design criteria

Each criterion is checkable. **Level**: E essential, D desirable. **Domains** use these tags: UKG (UK government), NZ, CA (Canada), US, WB (World Bank and development finance), AID (OECD DAC and IATI), EU (EU grants), AGI (agile: Scrum, GDS, SAFe), CORP (OKR, balanced scorecard), IMP (impact), CON (construction; page only). "Unread" domains (health, charity, research funders other than Horizon, PM2, ISO 21502, PMI) are not claimed. **Scope**: N for domain-neutral, S for specific to a domain, and which.

### 3.1 Stages and decisions

| ID | A tool for defining and steering work meets this if... | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| L1 | A person can see which point in its life each piece of work is at (idea, being defined, approved and underway, handed over, closed, stopped), and the list of points is one the organisation can rename and extend. | GovS 6.3; WB paras 3 to 9; IATI status; GDS phases; Green Book 4.x | UKG, WB, AID, AGI, NZ | N for the idea of stages; S for the names (UK gates, GDS phases, WB cycle, IATI codes) | E |
| L2 | Moving from one point to the next is a recorded decision: who decided, their role, the date, the outcome, and the reasons. | GovS 6.3; Green Book 4.14; WB 9; GDS alpha, discovery pages | UKG, NZ, WB, AGI | N | E |
| L3 | A decision's outcome can be: go ahead, go ahead with conditions, ask for revision, defer, or stop. | GovS 6.3 (approve, revise, defer, terminate); Green Book 4.14 | UKG, NZ, AGI (stop or repeat) | N | E |
| L4 | Conditions on an approval each have an owner, a due point and the step they hold back, and the record shows when each is met. | Green Book 4.14 and Gate 3; GovS 6.3 | UKG, NZ | N | E |
| L5 | A person can stop, pause or cancel work and say why, and the work stays readable afterwards. Stopping is an ordinary outcome, not an error state. | GovS 6.3 (terminate); IATI cancelled and suspended; GDS alpha ("okay to decide" not to go on); Scrum (cancel a sprint); Green Book 4.14 | UKG, AID, AGI | N | E |
| L6 | The decision-maker for each point is a role, held in the record, and may differ between points and by size. Changing who is accountable for the work is itself recorded. | GovS 4.1.3, 4.4.7, 4.4.8; Gate 0 (change of SRO triggers a review); Canada 4.2 to 4.3; Orange A4 | UKG, CA, NZ | N | E |
| L7 | The number and depth of stages follow the work's risk and size, and whoever approves can say at the start which form applies. A very small piece of work need pass only one decision. | GovS 6.3 (at least two stages, fewer for simpler work); NZ page (risk rating picks the form); Orange introduction (no one-size approach); Aqua ch 3 | UKG, NZ, AGI | N | E |
| L8 | Stage gates are optional. Work that has no end (a service, a product with a goal and a backlog) can be steered by regular inspection and still keep decisions, risks and benefits. | Scrum (transparency, inspection, adaptation, no gates); GDS live; OMB 200.3 (cycle); OKR | AGI, US, CORP | N | E |
| L9 | A group of work can have its own decision points that repeat through its life and at the end, and a portfolio can record a decision to fund, hold or stop each component with the reason. | Gate 0 (repeated); Green Book 5.8 to 5.13; SAFe LPM (definition); Cartograph D32 | UKG, AGI | N | D |

### 3.2 The case that justifies the work

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| J1 | The justification (need, options, benefits, cost, risk, how it will be delivered) is one record that is revised before each decision, not written once. | GovS 4.3, 6.4.6; Green Book ch 4; NZ page | UKG, NZ, WB (appraisal) | N | E |
| J2 | The justification can be held at several levels of completeness, so that an early decision can be taken on an outline and later ones on more. | Green Book 4.11, 4.17; NZ percentages | UKG, NZ | N | E |
| J3 | The same five questions can be asked at any scale: is there a need, does it give value, is it viable, is it affordable, can it be achieved. | Green Book; NZ (G20 note); APM via an earlier round | UKG, NZ | N in shape; S in the UK names | D |
| J4 | Options considered, including doing nothing, and the reason one was chosen, are recorded before commitment. Where public money or a funder's money is asked for, this is essential. | Green Book 4.10, 4.14; Gate 1; GDS alpha | UKG, NZ, AGI | N | D (E for funded work) |
| J5 | Assumptions and constraints are each recorded with what they affect, how reliable they are, who made them and who signed them off, and hard and soft constraints are told apart. | Aqua ch 2; GovS 7.6; GDS discovery; Gate 3 | UKG, AGI | N | E |
| J6 | The approved baseline (scope, cost, dates, benefits) is kept, and the current plan is compared with it. | GovS 7.2.5 (baselined plan); WB 28 | UKG, WB | N | E |
| J7 | A change to the approved baseline is a separate recorded change with its reason, effect and who authorised it. It is not the same act as correcting a typing error. | GovS 7.7; WB 49 to 51 (restructuring); Horizon Art 39 | UKG, WB, EU | N | E |

### 3.3 Risk

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| R1 | Every risk and issue has a named owner, a response, a status that runs to closed, and, for a risk, impact and likelihood on a common scale. | GovS 7.6; Orange D2 to D8; Green Book 11.28; Horizon 21.1 (critical risks) | UKG, EU, NZ (risk profile) | N | E |
| R2 | A risk the owner cannot settle is escalated to a named person who can decide, with a reason, and the record shows when and what was decided. | GovS 7.1, 7.6; Orange A4, A5, C2 | UKG | N | E |
| R3 | The body that governs can state how much of each kind of risk it will take (appetite), and tolerance for a piece of work, and the record shows when a risk is beyond them. | Orange A3, D6, D14; GovS 7.1, 7.6 | UKG | N (all organisations take risk); S in the vocabulary | D |
| R4 | Risks roll up: a person can see the risks of the parts of a programme, the programmes in a portfolio, and the principal risks of the whole, assessed on one scale. | Orange C1, D3, figure in section C | UKG | N | D |
| R5 | Residual risk, secondary risk and proximity can be recorded. | GovS 7.6 | UKG | S (PRINCE2 and UK practice) | D |
| R6 | Dependencies between pieces of work are recorded, with an owner and the effect of the other side slipping. | Gate 0; Green Book 11.12; GovS 7.2.4 | UKG | N | E |
| R7 | At handover, each open risk, issue and action moves to a named owner who accepts it. | GovS 6.4.8; Gate 4 | UKG | N | E |

### 3.4 Assurance

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| A1 | A review can be recorded against a piece of work: when, what it looked at, who did it, what it found, and each recommendation with an owner, a due point and whether it was closed. | GovS 4.2.3; Gate 0 workbook (follow up earlier recommendations) | UKG | N | E where assurance is claimed |
| A2 | The reviewer is not the person who did the work. The record says who each was, and the tool refuses to treat the author as the reviewer. | Aqua 5.1; Canada 4.3.11; Orange Annex 2 | UKG, CA | N | E |
| A3 | The effort of assurance is proportionate: a person can say, for a piece of work, what level of review it needs and why. | Aqua 1.3.1, ch 3; GovS 4.2.3 | UKG | N | D |
| A4 | A plan of the assurance expected before each decision is held and can be read next to the decision it supports. | GovS 4.2.3, 4.2.4; Gate 0 section 1.3 | UKG | S for the formal plan; N as an idea | D |
| A5 | The record does not call a review an approval. Who assured and who approved are kept apart. | Aqua 5.1 (approver role); Gate workbooks (gate is a snapshot, not audit) | UKG | N | E |
| A6 | A decision and an assumption each have a log entry that says what, when, why, who made it and who signed it off. | Aqua ch 2 | UKG | N | E |

### 3.5 Benefits and results

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| B1 | Each benefit has a named owner, a measure, a baseline, a target and a date or event it is expected by. | GovS 7.3; Green Book 11.21; Canada 4.3.6 (program responsible official); IATI result | UKG, CA, AID, WB (results framework) | N | E |
| B2 | Benefits that cannot be priced are held as fully as those that can. | Green Book 8.52 | UKG, IMP | N | E |
| B3 | Disbenefits (harm or cost to someone) are recorded beside benefits, with who bears them. | GovS 7.3; IMP (impact can be negative) | UKG, IMP | N | E |
| B4 | A person can read the chain from a benefit to the objective it serves and to the work that should bring it, and back. | GovS 7.3, 7.8 (two-way traceability); WB results framework; Canada results framework | UKG, WB, CA | N | E |
| B5 | Benefit readings continue after the work closes, until a review records the benefit as realised, off track or stopped. | GovS 6.4.9; Gate 5; WB 56; Canada 3.2 | UKG, WB, CA | N | E |
| B6 | At handover, a named person accepts responsibility for the benefit tracking, and the record shows the acceptance. | GovS 6.4.8; Gate 4, 5 | UKG | N | E |
| B7 | Who is affected, how many, how much, and whether the work contributed beyond what would have happened anyway, can be recorded for a result. | IMP five dimensions | IMP, AID | S (impact practice) | D |
| B8 | Results are reported on a cycle against targets, and routine reports are kept apart from milestone and deliverable evidence. | Horizon Art 21.1, 21.2; OMB 200.3; IATI result | EU, US, AID | N | D |
| B9 | Results can be published, in a standard form where one exists. | GDS point 10; Canada 3.2.4; OKR transparency; IATI | UKG, CA, AGI, CORP, AID | N for the capacity; S for IATI | D |

### 3.6 Delivery, handover, closure and learning

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| H1 | Handover records who receives the result, that they accept it, what readiness evidence exists, and what is still open (defects, risks, actions) with a plan. | GovS 6.4.8; Gate 4 | UKG | N | E |
| H2 | A service or product that runs has its own life (planned, running, retired) with a reason for retiring, and a reminder to ask whether it is still needed. | GDS live page; IATI status; Cartograph D30 | AGI, AID, UKG | N | E |
| C1 | Closing a piece of work records what was delivered against what was approved, what was not met and how that will be handled, and who now answers for what remains. | GovS 6.4.8; Gate 5; WB 56 | UKG, WB | N | E |
| C2 | Closure can be early: work stopped before the end closes through the same steps. | GovS 6.4.8 (completion or early termination) | UKG | N | E |
| C3 | Records of closed work stay readable and are archived, not deleted. | GovS 6.4.8, 7.9; IATI closed status | UKG, AID | N | E |
| C4 | A post-closure review is planned at closure, with who will run it and what it will test. | GovS 6.4.8, 6.4.9; Gate 5 | UKG | N | E |
| E1 | An evaluation intention is stated early (what will be learned, who will do it, how independent it is) and reviewed at later decisions. | Gate 0, 1, 3, 4; Canada 4.3.15 | UKG, CA | N | D (E for funded or public work) |
| E2 | Evaluation findings are kept with the management response and the follow-up actions. | Canada 4.3.17, 4.3.18; WB 56 | CA, WB | N | D |
| E3 | The tool offers a standard set of lenses for judging results (relevance, coherence, effectiveness, efficiency, impact, sustainability), which an organisation may adjust. | OECD DAC (secondary); Canada Appendix A | AID, CA | N, widely used | D |
| K1 | A lesson is a record with where it arose, what it concerns, what to do differently and who it is for, and it is found again when similar work starts. | GovS 8.10, 6.4.5; Gate 3, 4, 5 | UKG | N | E |
| K2 | Lessons are captured throughout, not only at the end. | GovS 8.10; Scrum (inspect and adapt) | UKG, AGI | N | D |

### 3.7 Record and proportion

| ID | Criterion | Source | Domains | Scope | Level |
|---|---|---|---|---|---|
| P1 | What happened is an append-only record: each event names the item, what happened, when, who entered it and the evidence. | Aqua 5.2 (records of decisions, checks); GovS 7.9 | UKG | N | E |
| P2 | A person starting alone can use only the first points and add the rest when they are needed. Extra records appear in context and are never required of a small piece of work. | Orange introduction; Aqua 1.3.1; GovS 6.3; COMMON (walk-first) | UKG, NZ | N | E |
| P3 | The tool can show, for any piece of work, its stage, its latest decision, its open conditions, its open recommendations and its benefits at risk, on one page. | GovS 6.3; Gate workbooks | UKG | N | D |
| P4 | A time-led review (monthly, quarterly, yearly) and an event-led review (a change of owner, a major change in the plan) can both be set. | Gate 0 (event-led); OMB 200.3 (cycle); Scrum (regular inspection); GovS 4.2.3 | UKG, US, AGI | N | D |

## 4. Where the frameworks disagree, and the options

1. **How many stages, and what to call them.** The UK uses gates 0 to 5 around a business case. GDS uses discovery, alpha, beta, live, retired. The World Bank has identification, concept, appraisal, approval, implementation, completion. IATI has six statuses. NZ has strategic assessment through implementation business case. Scrum has none.
   - *Option A: a fixed list.* Simple and checkable. It fits one domain and wrongly forces the rest (a cooperative and a ministry are not both in GDS phases).
   - *Option B: a small neutral spine plus named gates the organisation adds.* The spine is: idea, defined, approved, delivering, handed over, closed, stopped. A ministry adds Gates 0 to 5; a software team adds discovery to live. More work to build; no domain is wrong.
   - *Option C: no stages, only decisions.* Every stage is just a decision record with a named outcome. Most flexible; hardest to read at a glance.
   - Recommendation from the evidence: B, with C as the underlying mechanism (L1 to L3, L8).
2. **Business case versus brief and proposal.** The UK and NZ build a five-part case that grows; GDS builds a short proposal after alpha; the World Bank builds an appraisal document; Scrum has a goal and a backlog. They agree the justification is a record to revisit, not its shape (J1, J2).
   - *Option:* one growing record with the five questions as sections, each marked how complete it is. The trade-off is that some people will see it as too heavy (it is the Green Book's shape) unless the first form is one page (P2).
3. **Is a benefit its own thing or a measure with an owner?** GovS 002 and the Green Book keep a benefits register with owners. Canada keeps results and indicators with a responsible official. IATI keeps results and indicators. Cartograph's D4 says no Benefit kind.
   - *Option A: a benefit kind.* Matches the UK vocabulary; duplicates measures.
   - *Option B: a measure plus an owner, a baseline, a due point and a review.* No new noun, and the benefits register is a view. This works if disbenefits (B3) and the review outcome (B5) have somewhere to live. The sources do not require a noun; they require the properties.
4. **Independence of assurance.** UK sources require an independent assurer (Aqua 5.1; GovS 4.2.2) and Canada a neutral evaluation function. A hobbyist or a cooperative has no independent function.
   - *Option:* independence is a property of the person, not an office. A peer or an outside reader can assure. The tool enforces only that the author is not the assurer (A2). Trade-off: weaker than an audit; honest about it (A5).
5. **Escalation trigger.** GovS 7.1 escalates when a tolerance is exceeded; the Orange Book A5 uses triggers the board agrees. These fit together: tolerance belongs to the work; triggers belong to the governing body. One field set can hold both (R2, R3).
6. **Time-led or event-led review.** Gate 0 is repeated at events. The US cycle is annual. Scrum inspects regularly. The tool should allow both (P4). The trade-off is that event-led review needs people to notice the event; time-led review is automatic but can be empty.
7. **Self-evaluation or independent evaluation.** The World Bank's completion report includes the borrower's own evaluation, and the search summary says an independent group validates it (not read at source). Canada requires a neutral function. Scrum relies on the team. A tool can record who evaluated and how independent they were (E1) without insisting on one answer.
8. **Where the work's life ends.** GovS 002 closes the project at a handover and moves benefits to a business authority. IATI keeps an activity open in finalisation until financial sign-off or evaluation is done. The tool should let a piece of work be closed while its benefits remain open under another owner (B5, B6).

## 5. Cartograph today against these sources

### 5.1 What matches, and is worth keeping

- **Portfolio decisions** hold, for each project, programme or portfolio, a priority and invest, hold or stop with the reason and date (`portfoliodecisions.schema.json`). This is the portfolio-level form of a gate outcome (L3, L9).
- **Sign-offs and conditions.** A project lists sign-offs by stage (definition, closing, handover) and the role that signs. An event records a decision of approve, approve with conditions, or reject. Conditions have an owner, a due point and what they gate (`project.schema.json`, D52). That is close to L2, L4 and L6.
- **Events** are an append-only log with the item, what happened, when, evidence, and who entered it (D52). That matches P1 and the Aqua records.
- **Risks** have an owner, a response, mitigation, impact, likelihood, detection, a dependency type, an escalation flag with a reason and a named person to decide (`risks[].escalate`, D44, D60). This is close to R1, R2 and R6.
- **Operations** are `planned`, `running` or `retired` (D30). This mirrors GDS live and IATI status (H2).
- **KPIs** have an owner, baseline, target and readings in their own file, and success criteria fall due at closure, at handover or after handover (D8, D23). That supports B1 and B5 in part.
- **The charter is a brief** (D55): short, authorising, with detail kept elsewhere. This matches the sources' split between a brief and the fuller plan. The mandate field has a `businessCase` kind, so a business case can be pointed to.
- **Change sets** hold edits apart until reviewed and merged, and agents work in their own change set. This is the nearest thing to assurance in the product; see 5.3.

### 5.2 What the sources show is missing

1. **The work has no stage of its own.** A project's state is `draft`, `defined`, `handed off` or `cancelled`, and `handed off` means passed to the delivery tool. That is the life of the record, not of the work. Nothing says the work is being appraised, approved, underway, delivered, closed or having its benefits tracked. The three phases in `DESIGN_RULES.md` rule 3 (Initiation, Closing, Landing) are the walk's pages, not stages the work passes through. This is the biggest gap against L1.
2. **Approval is one event, not a repeated gate.** The walk has an Approval step; the sources approve at every stage, with a defined set of outcomes. Cartograph's sign-off outcomes lack revise and defer (L3), and nothing records the criteria used, who was consulted, or which review came before (L2).
3. **No assurance record.** There is no kind or field for a review and its recommendations (A1). The Aqua independence rule (A2) is not enforced anywhere I could find. The change set review is a review of an edit, not of the work.
4. **No lessons.** I found no lessons record in the contract, the flows or the guidance (K1). Three of the six gate workbooks ask for one.
5. **No closure review or post-closure review plan.** Sign-off stage `closing` exists, but there is no record of delivered versus approved, unmet requirements, or the post-closure review (C1, C4).
6. **No disbenefits, and no benefit review.** D4 deliberately has no Benefit kind. The sources need the properties more than the noun, and two are missing: disbenefits (B3) and a review outcome (realised, on track, off track, stopped) (B5). Benefit ownership is covered by the KPI owner (D44), which is fine.
7. **No options record.** The taxonomy lists the business case as "Partial and deliberate". There is no place for options considered, including doing nothing (J4). This is where the earlier rounds' "decision model" may help; I did not check it against the options criterion.
8. **No risk appetite or tolerance, no residual risk, no risk closure.** `TAXONOMY.md` says proximity is "Not yet" (near line 636). I found no appetite or tolerance field (R3, R5). Programmes carry risks, but I found no roll-up (R4).
9. **Edit and re-baseline are the same act.** Versions and change sets record every change, but I found nothing that separates "we corrected this" from "we changed what was approved" (J6, J7).
10. **Handover acceptance.** The service owner role "accepts the handover" in copy, and there is a handover sign-off, but there is no record of the open risks and actions passing to the owner (R7, H1, B6).

### 5.3 What looks misplaced or irrelevant

- **Tranche as scheduling.** The taxonomy table says a tranche is "Scheduling, which belongs to the delivery tool". GovS 002 and the Green Book treat the start of a programme tranche as a decision point that revalidates the business case (GovS 6.3; Green Book 5.13). That is a decision record, which belongs here. Keep the dates in the delivery tool; keep the decision in Cartograph.
- **The delivery boundary.** Cartograph says it captures and does not manage tasks. That is sound, but it does not mean the product should stop knowing about the work after the hand-off. The sources keep decisions, risks, benefits and lessons through delivery and after it. The line to draw is: tasks and progress belong to the delivery tool; stage, decisions, risks, benefits and lessons stay in Cartograph.
- **Change sets as the only review.** It is a good tool for editing together, and its "second reviewer" rule is a useful relative of the independence rule. It should not be sold as assurance of the work itself.
- **DMAIC (D58).** The sources I read for this brief do not use it. It is an improvement method, and is relevant to the product's own evaluation, not to the life cycle. I make no judgement on it here.
- **The Rose Book.** Weak support: it asks organisations to identify and record knowledge assets as they are created, which only loosely supports a lessons record.

### 5.4 Fit with walk-first

The findings above suggest more records, but the user tests show people give up when there is too much. The sources help here: they say scale the form to the risk (L7, P2). The records in 5.2 should appear as small prompts at the point they are needed, each as a single question: at closing, "What did you learn?"; at a decision, "Who decided, and what did they decide?". None of them should be on the first screens. This is a design judgement, not a finding from the sources.

## 6. What this means for a rebuild

- The centre today is a project and its charter. The life-cycle sources point to a different centre: **a piece of work with a growing justification, a series of recorded decisions, and a tail of benefits after delivery**. A charter is one rendering of the record at the first decision. That does not make the current structure wrong; it makes the project one stage of the record, not the whole of it.
- Cartograph already holds more of the pieces than a first look suggests (events, sign-offs, conditions, escalation, planned/running/retired, readings). What is missing is the **stage**, the **repeated decision**, the **review**, the **lesson** and the **benefit review**. Those five are small records; none needs a new walk.
- The nouns the sources need are few and neutral: stage, decision, review, lesson, benefit review. Domain names (Gate 3, beta, concept decision) can sit on top as an organisation's own vocabulary (Option B in section 4).

## Open questions

1. GovS 002 was read through a digesting fetch tool. Someone should check clauses 4.2, 6.3, 6.4.8, 6.4.9, 7.1, 7.3 and 7.6 against the page before they are quoted as rules.
2. The Teal Book and the IPA benefits management guidance were not reached. They may add rules on benefit review dates and lessons that I could only infer.
3. ISO 21502, PM2, PMI, GAO, IRIS+, the OECD DAC page itself, NHS and WHO guidance, UKRI, the Charity Commission and NPC were not read. The health, charity and research-funder domains are therefore under-represented; only the Horizon grant agreement stands for funders.
4. RIBA stage names and gates were not read, so construction is represented by one page.
5. The World Bank's independent validation of completion reports rests on a search summary.
6. Which of the 5.2 gaps are already covered by the earlier rounds' "decision model" and charter work was not checked line by line.
7. Whether small organisations will accept any recorded independence (A2) is a question for user tests, not for the sources.
8. NISTA replaced the IPA's name on the gate pages; some older IPA wording (Project Routemap) may still use the old name. I did not read the Routemap handbook.
