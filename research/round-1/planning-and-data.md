# Planning ahead without planning everything, and data capture specifications

Brief 3. Read-only research. Date: 2026-10-17.

## How to read this, and what I could not fetch

I used the Diátaxis lens from COMMON.md. I fetched https://diataxis.fr/ and https://diataxis.fr/start-here/. Both confirm the two axes (action or cognition, study or work) and the four kinds (tutorial, how-to guide, reference, explanation). I did not fetch the other Diátaxis pages (tutorials, how-to, reference, explanation, tone). The tone notes below come from the start-here page only.

Source status, so you can weigh the claims:

| Source | Status |
|---|---|
| Diátaxis home and start-here | Fetched. |
| Klein, HBR premortem (https://hbr.org/2007/09/performing-a-project-premortem) | Fetched, but only the summary page. I did not read the full article. |
| UN SDG metadata template (UNICEF indicator, https://unstats.un.org/sdgs/files/2025-comprehensive-review/Target_2.2_addition_proposal_from_Switzerland_FSO-metadata.pdf) | Fetched and read as text. |
| Open SDG metadata format (https://open-sdg.readthedocs.io/en/latest/metadata-format/) | Fetched. A tool page, not a standards body. |
| Scrum Guide (https://scrumguides.org/scrum-guide.html) | Fetched. |
| UK Green Book supplementary guidance on optimism bias (https://www.gov.uk/government/publications/green-book-supplementary-guidance-optimism-bias) | Fetched (summary level). |
| Cone of uncertainty (https://en.wikipedia.org/wiki/Cone_of_uncertainty) | Fetched. **Wikipedia is not a trusted source under the rules.** I use it only for history and the caveat. I could not reach Boehm or McConnell directly. |
| ISO/IEC 25012 via https://quality.arc42.org/standards/iso-iec-25012 and https://iso25000.com/index.php/en/iso-25000-standards/iso-25012 | Fetched. Both are **secondary and partly commercial**. The ISO text is paywalled. I could name only nine of the 15 characteristics from them. |
| Open Data Contract Standard (https://bitol-io.github.io/open-data-contract-standard/latest/) | Fetched, section names only. Vendor-neutral community standard, not a standards body. |
| OECD DAC Glossary, second edition, 2023 (https://www.oecd.org/content/dam/oecd/en/publications/reports/2023/06/glossary-of-key-terms-in-evaluation-and-results-based-management-for-sustainable-development-second-edition_2767e14e/632da462-en-fr-es.pdf) | **Verified in the verification pass**: PDF downloaded and read as text. |
| UK Guide for Effective Benefits Management in Major Projects, Oct 2017 (IPA and Cabinet Office; read from the APM-hosted copy, https://www.apm.org.uk/media/5csnk4oe/guideforeffectivebenefitsmanagementinmajorprojects.pdf), and Government Project Delivery benefits workbook (https://projectdelivery.gov.uk/library-products/benefits-practitioner-workbook/part-a-an-overview-of-benefits-management-in-government/) | **Verified in the verification pass.** |
| APM "What is benefits management" (https://www.apm.org.uk/resources/what-is-project-management/what-is-benefits-management-and-project-success/) | Fetched in the verification pass. |
| Still **not read in primary text**: PMI Lexicon (the definitions appear in a search excerpt of https://www.pmi.org/-/media/pmi/documents/registered/pdf/pmbok-standards/pmi-lexicon-pm-terms.pdf, but my fetch got 403); PRINCE2 (no AXELOS or PeopleCert page reachable; study guides only); USAID PIRS and ADS 201 (all usaid.gov, 2017-2020.usaid.gov and usaidlearninglab.org fetches refused, 403 or 502; web.archive.org is blocked in this environment); CREAM (secondary course material citing Schiavo-Campo 1999); World Bank indicators paper (page loaded as navigation only); ISO/IEC 25012 (iso.org returned 403; secondary portals only); MSP (no AXELOS page reachable). | Marked "(search summary)" or "(unverified)" below. See the Verification log. Check them before they go into user-facing copy or a pull request. |

Everything about Cartograph comes from reading the files: `contract/schemas/{kpi,datasource,reportingcycle,unit,assumption,project,common}.schema.json`, `contract/guidance/en/*`, `contract/flows/{kpi,project}.flow.json`, and `cartograph-ui/src/copy.ts`.

## Part A: thinking ahead, not planning everything

### A1. What the sources say

**Progressive elaboration and rolling wave planning (PMI).** PMI's Lexicon of Project Management Terms (v5.0, January 2026) defines progressive elaboration as increasing the detail of the plan as better information and estimates arrive, and rolling wave planning as planning near-term work in detail and later work at a higher level (https://www.pmi.org/-/media/pmi/documents/registered/pdf/pmbok-standards/pmi-lexicon-pm-terms.pdf). (search summary: the definitions are visible in a search excerpt of this PDF, but my own fetch returned 403, so I have not read it directly.) PMI's Practice Standard for Scheduling is said, in the same search summary, to use "the next 90 days" as an example of the detailed window (https://www.pmi.org/-/media/pmi/documents/public/pdf/certifications/practice-standard-scheduling.pdf, not fetched). Do not print "90 days" as a rule. For a charter tool, the consequence is direct. A charter is the first wave. It should say enough to decide and to start, and it should say what is still open.

**Stage boundaries and planning horizons (PRINCE2).** PRINCE2 plans the whole project coarsely, then plans each management stage in detail near its start, at a stage boundary. The board approves the next stage plan before work continues, and a forecast breach of tolerance goes up as an exception. (search summary, study guides; no AXELOS or PeopleCert page reached.) The useful idea for Cartograph: a charter fixes the outline and the tolerances, and a later review point fixes the detail.

**Cone of uncertainty.** Early estimates are wide. The range narrows only when work removes sources of variability, not by itself, and later scope changes can widen it again (https://en.wikipedia.org/wiki/Cone_of_uncertainty, low-trust source). Figures often quoted are about 0.25x to 4x at the start of a software project. I could not confirm them in a primary text, so I do not recommend printing them. The principle is safe: **at charter stage, ask for a range, not a point.**

**Optimism bias (HM Treasury).** Appraisers tend to be too optimistic, so estimates of costs, benefits and timescales should be adjusted using evidence from comparable projects (https://www.gov.uk/government/publications/green-book-supplementary-guidance-optimism-bias). A tool should therefore make it easy to say "this is a first guess", and let a later review replace it with evidence.

**Pre-mortem (Gary Klein, HBR).** The team imagines the project has already failed and writes down why. Klein argues this works because it gives doubters a sanctioned task instead of an act of opposition (https://hbr.org/2007/09/performing-a-project-premortem). It takes about one question and one list. It needs no scheduling.

**Assumptions and RAID.** RAID logs (risks, assumptions, issues, dependencies) are a common practice. I did not fetch a trusted primary source for the acronym, so I rely on the Cartograph design only. Cartograph already separates assumption from risk on principle (`assumption.schema.json`: a risk is mitigated, an assumption is tested, and a false assumption changes the theory).

**Dependency mapping.** Not researched from a primary source. Cartograph already has a machine for it (waits-on events, milestone links, critical path, `common.schema.json` Timing and Event). That is more than a charter needs.

**Benefits management (UK government, APM, MSP).** Verified from the UK Guide for Effective Benefits Management in Major Projects (October 2017, https://www.apm.org.uk/media/5csnk4oe/guideforeffectivebenefitsmanagementinmajorprojects.pdf). It says a Benefits Register lists planned benefits, who is responsible for measuring them, when they are expected, how they will be measured, and baseline and current measurements (para 7.20). It says each benefit measure should be baselined, and the baseline taken during initiation so that delivery does not distort it (paras 7.35 to 7.37). It describes the register as holding the description, the objective served, the owner, the beneficiaries, the baseline, the target and the measurement method, with a profile per benefit that adds the frequency of measurement and associated risks (paras 9.4 and 9.5). The Government Project Delivery workbook adds that each benefit gets one named owner, that forecasts should be expressed as ranges to counter optimism bias, and that new metrics should be proportionate to the benefit's importance (https://projectdelivery.gov.uk/library-products/benefits-practitioner-workbook/part-a-an-overview-of-benefits-management-in-government/). APM's own page says benefits management covers identifying, defining, planning, tracking and realising benefits, and that the sponsor is accountable (https://www.apm.org.uk/resources/what-is-project-management/what-is-benefits-management-and-project-success/). I could not reach MSP (AXELOS) text, so nothing here is claimed for MSP. The earlier Australian ATAP citation is dropped. This lines up with the Cartograph indicator, which carries the same fields.

**Definition of ready.** The Scrum Guide does not define "definition of ready". It says items the team can finish in one Sprint count as ready to select, and that refinement adds detail, order and size over time (https://scrumguides.org/scrum-guide.html). So "ready" is a team convention, not a standard. For a charter, a lighter idea fits: **"ready to decide" and "ready to start" are two different bars.**

### A2. What a charter-stage "plan ahead" should ask, and what it should leave

Test for every question: does the sponsor need the answer to approve, or does the team need it to start in the first weeks? If neither, leave it for later.

**Ask (enough to decide and to start):**

1. **A few milestones, not a schedule.** Three to six, each with a name, a rough time (a month, or a window) and what shows it was reached. Cartograph's `Timing` already allows a window, which fits an early guess.
2. **Money as a range, with its basis.** Total and big lines, with one sentence on how they were worked out. See the gap below: amounts are single numbers today.
3. **Which of scope, schedule and cost holds.** Cartograph already asks this (`/spec/constraints`). It is the best planning question in the flow because it gives the team a rule for later trade-offs.
4. **What is assumed.** "What has to be true for this to work?" with what happens if it is not true.
5. **A pre-mortem.** "Imagine it is a year on and this failed. What went wrong?" Answers become risks or assumptions.
6. **Who and what it waits on.** Only the dependencies that could stop the first stage.
7. **What data it needs and makes**, and whether any of it is personal. Cartograph has this under `/spec/data`.
8. **The next review point.** One date or event when the plan will be firmed up (the PRINCE2 stage boundary idea).

**Leave to the team later:** activity lists and task breakdown; resource levelling; day-level dates; the full dependency network and critical path; detailed cost lines per month; estimates in hours; sprint or iteration plans; change control detail. Cartograph can hold these (milestone waits-on links, costs by funding source), but the walk should not demand them.

### A3. How a tool can prompt thinking without turning into a scheduling tool

- **Ask for a range or an honest unknown, never a false point.** The baseline field already allows "unknown, why, and when it will be known" (`KeyResultBaseline`). Offer the same pattern for cost and dates.
- **One question per screen, one list per question.** The pre-mortem is one prompt with an add-another list. That fits the walk-first decision.
- **Show the gap, not the template.** "No milestone names what shows it was reached" beats an empty Gantt chart.
- **Fix the review point, not the plan.** A single "firm this up by" event does the work of a stage boundary.
- **Keep the heavy tools one step away.** The milestone chart, waits-on links and critical path stay in the full workspace for power users, as walk-first intends.
- **Diátaxis lens.** The walk is a **tutorial-like** path for someone learning (it guides, it is encouraging, it carries the person to a result). The planning screens in the workspace are **how-to** (a competent user with a goal). Field guidance is **reference**. The reason to plan ahead at all ("why a pre-mortem helps", "why a range") is **explanation**, and it belongs in one short, optional page, not in every field hint. The start-here page says tutorials keep explanation minimal so the learner is not overwhelmed.

### A4. Cartograph today against this

What exists: milestones with four timing forms, owner and evidence (`project.schema.json` `milestones`); costs with `basis`, `status` and `recurrent`; risks with impact, likelihood, detection, response and what each spends; the hold/adjust/concede constraints; a separate Assumption kind with `ifFalse` and `testedBy`; data consumed and produced; approval conditions.

What is missing or worth considering:

1. **Cost amounts are single numbers** (`costs[].amount`, minimum 0). There is no low and high. This is the clearest gap against the cone-of-uncertainty and optimism-bias points. Suggest `low`/`high` or a confidence mark, only in the charter-stage walk.
2. **No pre-mortem prompt.** The risk step asks "what might go wrong", which people answer with generic risks. A "suppose it failed" framing would draw out the quiet doubts Klein describes. It needs no schema change: the answers can create risks and assumptions.
3. **Assumptions are not offered in the project flow.** The project risk guidance says "Add assumptions separately", and the flow's steps have no assumption step. A person walking a project will rarely find the Assumption kind.
4. **No "firm up by" point.** There is an approval step with conditions and events, but no field that says when the outline plan will be detailed. A milestone could carry this, or a project-level `reviewBy` timing.
5. **No marker of how firm each estimate is** (first guess, quote, committed). Cost `status` (approved, requested, beingCosted, unfunded) is about funding, not confidence.
6. **No guard against over-asking.** The flow lists milestones, costs, data and risks as required-looking steps. Nothing says which are charter-essential and which are optional. This needs a decision, because the test findings say screens already show too much.

## Part B: data capture specifications

### B1. What the sources say a good indicator specification contains

**USAID Performance Indicator Reference Sheet (PIRS).** USAID's own guidance says a PIRS defines an indicator and is key to data quality and consistency, and must be complete within three months of when data collection begins (search summary of ADS 201; primary PDF not reached). The 2016 template fields, from the same summary: name of the result measured, indicator name, precise definition, unit of measure, disaggregation, data source, method of data collection and construction, reporting frequency, responsible staff, data quality assessment history, known data limitations, and optionally baseline timeframe and target rationale. (search summary; check against https://www.usaidlearninglab.org/library/recommended-performance-indicator-reference-sheet.) USAID also says baselines for outcome indicators should be set at the outset.

**UN SDG indicator metadata (read in full from the UNICEF example).** The template has seven numbered groups. I list them with what each holds:

- 0. Indicator information: goal, target, indicator, series, last update, related indicators, responsible international body.
- 1. Data reporter: organisation, contact person, unit, function, contact details.
- 2. Definition, concepts and classifications: a precise definition with the concepts it relies on, the unit of measure, and any classification used.
- 3. Data source type and collection method: what kind of source, how data are collected, the collection calendar, the release calendar, data providers, compilers, and the institutional mandate.
- 4. Other methodological considerations: rationale, comments and limitations, method of computation, validation, adjustments, treatment of missing values, regional aggregation, guidance for compilers, quality management, quality assurance, quality assessment.
- 5. Data availability and disaggregation: coverage, time series, and the breakdowns available (the example lists sex, urban or rural, wealth, age group, maternal education and region).
- 6. Comparability and deviation from international standards.
- 7. References and documentation.

The template rules (search summary of the current review): every field is completed, and "not applicable" or "TBD" is acceptable where a field does not apply or is undecided. Note this honest-unknown pattern; Cartograph's baseline already uses it.

**OECD (verified).** The OECD DAC Glossary, second edition 2023 (https://www.oecd.org/content/dam/oecd/en/publications/reports/2023/06/glossary-of-key-terms-in-evaluation-and-results-based-management-for-sustainable-development-second-edition_2767e14e/632da462-en-fr-es.pdf), defines an indicator as a quantitative or qualitative variable related to the intervention, its results or its context. Its note says an indicator is always approximate and needs interpretation and explanation, and that indicators should give simple, verifiable and reliable means to track change. It defines a baseline as the conditions before an intervention or at the start of the period, against which change is measured. It defines a target as an objective, usually a value on an established indicator, generally set at the start and expected by a specific time with available resources. Two lessons for Cartograph: "needs interpretation and explanation" supports a free-text "what could mislead" prompt, and "set at the start" for a target fits the charter stage. The edition is dated 2023 in OECD's files, not 2022 (a 2022 draft carries the same indicator wording per search results).

**World Bank (unresolved).** The page found (https://documents.worldbank.org/en/publication/documents-reports/documentdetail/181461468174880117, "Performance indicators to monitor poverty reduction") loaded as navigation only. I have no World Bank primary text.

**SMART and CREAM.** CREAM, attributed to Schiavo-Campo (1999) by secondary course material, asks that an indicator be Clear (precise), Relevant, Economic (affordable to collect), Adequate (enough to judge performance) and Monitorable (open to independent checking). A Danish health agency sheet applies it as a quality check (search summary, https://www.sst.dk/media/ywilc25s/faktaark-cream_smart.pdf, not fetched in full). "Economic" and "Monitorable" are the two a data specification answers: can this be collected at reasonable cost, and could someone else verify it? SMART I did not source from a primary text; Cartograph's own TAXONOMY D25 already ties SMART's Measurable to indicators.

**Data quality dimensions.** ISO/IEC 25012 defines 15 characteristics. The five "inherent" ones I could confirm from secondary sources are accuracy (values match reality), completeness (needed values are present), consistency (free of contradiction), credibility (users regard it as true) and currentness (up to date for its use). Others named: availability, confidentiality, compliance, traceability. (https://quality.arc42.org/standards/iso-iec-25012, secondary; the standard itself was not read.) USAID's data quality standards are validity, integrity, precision, reliability and timeliness (search summary of usaid.gov and OIG pages; the ADS 201 text was not reachable, see the Verification log). DAMA DMBOK was not fetched.

**Data contracts and dictionaries.** The Open Data Contract Standard has sections for fundamentals, schema, context, references, data quality, support channels, team, roles, SLA, infrastructure and more (https://bitol-io.github.io/open-data-contract-standard/latest/, section names only). The lesson for Cartograph is limited: a contract is for a machine-readable dataset someone else consumes. It suggests that **owner, refresh promise (SLA), quality rules and field meanings** are the four things worth agreeing. A non-technical person needs only the first three, in plain words.

### B2. The common core across the sources

Across PIRS, the UN template and the benefits profile, the same questions recur. A reader must be able to answer each:

1. **What exactly is measured** (precise definition, with the concepts it depends on).
2. **In what unit.**
3. **Which way is better.** (Benefits profiles and Cartograph say this. The UN template does not.)
4. **Where each figure comes from** (source, and who provides it).
5. **How it is collected and computed** (method; calculation).
6. **How often** it is collected and when it is released.
7. **Who is responsible** for the indicator and for the data.
8. **Baseline** (value, date, how measured) and **target** (value, date, and why that target).
9. **Breakdowns** (disaggregation).
10. **Known limits and how quality is checked.**
11. **Comparability and change over time** (if the method or source changes).

### B3. Cartograph against this

What the contract has (KPI, DataSource, ReportingCycle, Unit):

| Question | Where Cartograph holds it |
|---|---|
| Precise definition | `kpi.spec.definition`, with good and poor examples in guidance. |
| Unit | `kpi.spec.unit` as a reference to a `Unit` kind with a dimension (percent, count, money, ratio, duration). |
| Better direction | `kpi.spec.direction` (increase, decrease, reach, maintain), plus optional `specLimits`. |
| Source | `kpi.spec.sources` (several allowed); `DataSource` has category, provenance, team, `keptBy`, access, refresh, `capture`, classification, `qualityIssues`. |
| Collection method | `DataSource.capture` (byHand, scannedForms, onlineForm, systemFeed, notDecided). |
| Computation | `kpi.spec.metric` (simple, ratio, cumulative, derived) built from a source's named `metrics`; `where` in plain parts; analyst `filter` as an option. |
| Frequency and due date | `ReportingCycle` (months, days or named periods, `dueOffsetDays`). |
| Responsibility | `kpi.spec.owner` (a role, never a person); `DataSource.team` and `keptBy`. |
| Baseline and target | `baseline` (value and date, or unknown with reason and expected date), `target` (value and date, a timing, or set when an event happens). |
| Breakdowns | `kpi.spec.disaggregations` as Segment references. |
| Level in the results chain | `resultLevel` (output, outcome, impact); `goals` link. |
| Response when it goes wrong | `response` (trigger, action, role, days). |
| Limits | `DataSource.qualityIssues` (one free-text field). |

The indicator builder in the UI (`src/copy.ts`, the `kpis.metric` block) asks for the thing counted in the person's own words, conditions in parts ("the depot's region is north"), and leaves columns and dbt filters to an analyst. This fits the non-technical/power-user split well.

### B4. What a non-technical person should give, what a power user may add

**Essential (a person can answer in plain words, in one walk):**

1. A name and one sentence: what is counted, where and when.
2. The unit, picked from a list.
3. Which way is better.
4. Where the number comes from, picked from the data sources, or "not decided yet".
5. How often it is read, and who answers for it (a role).
6. Today's figure and its date, or "not known yet, because..., expected by...".
7. The target and its date, or "to be set when...".

These match what the existing four-step flow (definition, result, baseline and target, how to check) already asks, which is a good sign.

**A power user may add:** the computed form (ratio, running total, derived); source metrics as aggregations; breakdowns; specification limits and a response plan; classification of the source; dbt filters; custom units and reporting cycles; reading history with control limits.

### B5. What is missing

Compared with PIRS and the UN template:

1. **Why this target.** PIRS has an optional "target rationale". Cartograph's target has a value and date but no reason. This is cheap to add and helps reviewers.
2. **How the baseline was measured.** Baseline carries a date, not a method or source.
3. **Known limits of the indicator.** `qualityIssues` sits on the data source, not on the indicator, and is one free-text box. Both PIRS and UN ask for limitations at indicator level. A prompt such as "What could make this number misleading?" would serve a beginner better than "quality issues".
4. **Data quality in named terms.** Nothing records which quality dimension is a worry (is it late, incomplete, inconsistent between depots, not trusted?). A short choice of currentness, completeness, consistency, accuracy, credibility would map to ISO/IEC 25012 without the jargon.
5. **Who collects, and who checks.** `owner` answers for the indicator and `team` keeps the source, but nobody is named as the role that enters each reading, or that reviews it before it is used. USAID and the UN both ask for the responsible party and for validation.
6. **Release or due date separate from reading date.** `dueOffsetDays` covers part of it.
7. **Change of method over time.** A UN field for comparability. Cartograph has no note for "the source changed in 2026".
8. **Rationale for why it matters.** `goals` links the aim but there is no sentence for "why this indicator and not another". PIRS and UN both have one.
9. **A check for the CREAM questions.** "Can we afford to collect this?" and "Could someone else verify it?" are not asked. The `capture` field and `notDecided` partly answer the first. Nothing answers the second.
10. **Precision or rounding.** Absent. Probably a power-user field.

Not all of these should reach the walk. The six or seven essentials above should stay as the walk. Items 1, 3 and 4 are the best candidates for an optional "How sure are you?" screen. Items 2, 5, 7 and 10 suit the full workspace.

## Diátaxis lens for these two parts

| User need | What it looks like for planning and data |
|---|---|
| Learning | The walk. One question per screen: "Name three things that must happen, and roughly when." "Imagine it failed: why?" "What is the number, and where does it come from?" |
| Doing a task | A how-to: "Add an indicator and say where it is read from." "Record this month's reading." "Change a reporting cycle." |
| Looking up | Reference: the field list for an indicator, a data source, a cycle, a unit. This is the PIRS-style sheet, generated from the contract. |
| Understanding | Explanation: why a baseline matters, why a range beats a point early on, why the target comes with a date, why a number needs one named source. Short, optional, linked from the screen, not shown inline. |

A practical rule drawn from the sources: **the same facts serve all four needs, but each screen should serve only one.** The PIRS-style sheet is reference and may be as dense as needed. The walk is not.

## Verification log

Second pass, requested after the first draft. For each claim marked "(search summary)" or left unresolved:

| Claim | Routes tried | Result |
|---|---|---|
| OECD definitions of indicator, baseline, target | oecd.org publication page (403); oecd.org 2754804.pdf (403); search on oecd.org found the 2023 second edition PDF; downloaded and read as text | **Confirmed** from the primary PDF. Corrected the edition to 2023. |
| Benefits register and profile contents, baselines, owners | gov.uk guide page (redirects to projectdelivery.gov.uk); APM-hosted PDF of the 2017 guide (downloaded, read as text); projectdelivery.gov.uk workbook; apm.org.uk body-of-knowledge URL (404); apm.org.uk "what is benefits management" page | **Confirmed** from the 2017 guide and the workbook. The ATAP (Australian) source I had cited is replaced. MSP: no AXELOS page reachable, so not confirmed. |
| PMI progressive elaboration and rolling wave | projectmanagement.com wiki (403); PMI lexicon page (403); PMI lexicon PDF (403); search restricted to pmi.org | **Partly confirmed.** The v5.0 (2026) Lexicon wording appears in a search excerpt and agrees with the earlier text, but I have not read the PDF myself. Kept marked "(search summary)". |
| USAID PIRS field list | usaid.gov PIRS page (403); 2017-2020.usaid.gov PIRS PDF (connection refused); usaidlearninglab.org (502 on three tries); web.archive.org (blocked by the fetch tool); search restricted to usaid.gov and dec.usaid.gov | **Not confirmed.** A search excerpt of usaid.gov pages says the PIRS guidance and template is a Mandatory Reference in ADS 201 (file 201maf) and that ADS 201 requires known data limitations to be identified for each indicator and steps stated to address them. The field list in this document is still from search summary. |
| USAID data quality standards | 2017-2020.usaid.gov data-quality page (connection refused); learninglab data-quality page (502) | **Not confirmed.** Search excerpts consistently list validity, integrity, precision, reliability and timeliness, and cite ADS 201.3.5.7 (Sept 2021 version) per OIG audit reports. I now use these five as USAID's standards with a "(search summary)" mark. |
| ISO/IEC 25012 full list of 15 | iso.org/standard/35736 (403); iso.org/obp (403); iso25000.com and arc42 (secondary, already used) | **Not confirmed.** Nine characteristics named by secondary sources only. Needs the standard or a library copy. |
| PRINCE2 stage boundary and exception plan | Search for AXELOS or PeopleCert pages | **Not confirmed.** Only study guides. Kept "(search summary)". |
| CREAM (Schiavo-Campo 1999) | Earlier search; World Bank document page loaded as navigation only | **Not confirmed.** Secondary course material only. |
| MSP benefits | Search on apm.org.uk and gov.uk | **Not confirmed.** The UK guide is Cabinet Office and IPA guidance, not MSP. |
| DAMA DMBOK dimensions | Not tried; paywalled | **Not confirmed.** |

Also corrected: the first draft said the IPA guide sat on gov.uk. The gov.uk publication page now redirects to projectdelivery.gov.uk (Government Project Delivery), so the guide may be maintained there now; I read it from the APM-hosted copy.

## Open questions

1. PRINCE2 primary text (AXELOS or PeopleCert) on stage plans and tolerances was not reached. The claims rest on study guides. The PMI Lexicon PDF was not read directly either.
2. USAID's current PIRS field list and the ADS 201 data quality standards still need confirming from a primary document. Every route I tried was refused or down.
3. The World Bank indicators paper and the original CREAM text were not reached.
4. MSP (AXELOS) benefits management text was not reached. The UK government guide was used instead.
5. ISO/IEC 25012 full list of 15 characteristics and DAMA DMBOK dimensions need the paid or primary texts.
6. Cone-of-uncertainty ranges came from a low-trust source. Which ranges, if any, Cartograph should suggest is undecided.
7. Should cost ranges (low, high) enter the contract, and if so as a minor version? This needs an engine decision under VERSIONING.md.
8. Where do the pre-mortem and assumptions go in the project walk, without adding a screen to an interface people already find too full?
9. Which of the missing indicator fields (B5) belong in the walk, and which only in the workspace? Testing with real users is needed; none was done here.

## Verified by the lead (2026-10-17)

- **USAID PIRS fields, confirmed at source** in USAID's Activity Monitoring, Evaluation, and Learning Plan template (USAID/WBG, November 2021, Annex 2, published on grants.gov: https://apply07.grants.gov/grantsws/rest/opportunity/att/download/329282). The sheet has: name of indicator; name of result measured; description (precise definitions, unit of measure, data type, disaggregated by, rationale for indicator, optional); plan for data collection (data source, method of data collection and construction, reporting frequency, individuals responsible); targets and baseline (baseline timeframe, targets per year with disaggregation values, rationale for targets, optional); data quality issues (dates of previous and future data quality assessments with reviewers, known data limitations); changes to indicator; other notes; last updated.
- **USAID's five data quality standards**, confirmed in the same template (section C): validity, integrity, precision, reliability and timeliness. Data limitations found in assessments go into the PIRS.
- **Baselines**, same template: outcome indicators must have baselines set at the start; where they are not, the plan says how and when they will be collected; a baseline value may be "TBD" with the planned date.
- **PMBOK 6th edition charter contents**, through an open university textbook that cites it (Oguz, Project Management, Cleveland State University, Pressbooks, CC BY-NC: https://pressbooks.ulib.csuohio.edu/projectmanagement2ndedition/chapter/3-1-project-charter/): project purpose; measurable objectives and success criteria; high-level requirements; high-level description, boundaries and key deliverables; assumptions and constraints; overall project risk; summary milestone schedule; preapproved financial resources; key stakeholder list; project approval requirements; project exit criteria; the project manager and authority level; the sponsor's name and authority. PMI's own pages refused every fetch, so this is secondary; PMBOK 7 is principle-based and was not checked.
