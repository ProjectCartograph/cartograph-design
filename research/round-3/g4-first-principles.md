# G4: first principles, people and data standards

Brief: `brief-g4.md`, with `COMMON-GREENFIELD.md` and `../COMMON.md`. The
owner added a second instruction while this was being written: the
design must hold across many domains, not only UK government. Section 6
tags every criterion by the domains whose sources support it and says
whether it is neutral or specific.

Read this file in the order you need it. Section 1 says what was and was
not read. Section 2 is what the sources say. Section 3 starts from the
person. Section 4 offers three centres. Section 5 is what an open data
standard asks of the record. Section 6 is the criteria. Section 7 is the
options where sources disagree. Section 8 is what the sources make look
irrelevant, misplaced or missing in Cartograph today.

---

## 1. How far the sources were read

"Source" means the publisher's own page or document, fetched and read as
text in this session. "Search only" means I saw the publisher's
description through a search result and did not read the document, so
I rely on it less and say so where it matters.

| Source | Status |
|---|---|
| Diátaxis: home, start here, map, compass, tutorials, how-to, reference, explanation (diataxis.fr) | Read at source |
| GOV.UK Service Manual: learning about users and their needs; Service Standard points 1, 2, 3, 4, 5, 10, 13; working with open standards; scoping a transaction; measuring success; using performance data; roadmaps; question pages | Read at source |
| NN/g: mental models; progressive disclosure; IA versus navigation; novice versus expert users | Read at source |
| NN/g: complex application design, wizards, ten heuristics, card sorting | Fetched, skimmed, not relied on |
| IATI Standard 2.03 reference: activity standard, result, indicator, period, reference, related-activity, about | Read at source |
| IATI guidance on results data, licence page, dimension page | Not readable (404 or empty) |
| OCDS 1.1.5 home, primer, extensions page | Read at source (short pages) |
| OC4IDS 0.9.5 home, reference and schema pages (project, budget, metrics, completion) | Read at source |
| 360Giving Data Standard reference (required fields, structure) | Read at source |
| HM Treasury Green Book (2026 edition page): rationale, five elements, Five Case Model summary | Read at source |
| HM Treasury Magenta Book (HTML): proportionality, theory of change, evaluation registry | Read at source, in part |
| OECD DAC "Better Criteria for Better Evaluation" (2019), PDF via NZ MFAT | Read at source |
| W.K. Kellogg Foundation Logic Model Development Guide (2004), PDF via US EPA archive | Read at source, in part |
| European Commission PM² Guide v2.5 (2015) | Read at source, in part. The v3.0.1 guide is the current one and I did not read it |
| US OMB Circular A-11, Section 200 (2025) | Read at source |
| US GPRA Modernization Act of 2010 (Public Law 111-352) text | Read at source, searched for public-website and quarterly clauses only |
| Scrum Guide (scrumguides.org) | Read at source, Product Goal and commitments only |
| Impact Frontiers: Impact Management Project five dimensions | Read at source |
| UN SDG indicator metadata repository page | Read at source (the page, not the metadata files) |
| RIBA Plan of Work landing page | Read at source (one page; the stage detail is behind a download) |
| WHO results reports page | Read at source (one page, not the framework) |
| NZ Treasury Better Business Cases; Canada Policy on Results and Directive on Results | Blocked (403 or "request rejected"). Search only. Five Case Model for NZ confirmed by a search result and an NZTA page title; Canada structure (core responsibilities, results, indicators, program inventory) by search excerpts |
| IRIS+ (GIIN) | Blocked. Search only |
| World Bank results framework, Horizon Europe impact pathways, UKRI, Charity Commission SORP, NPC four pillars, NHS, SAFe Lean Portfolio Management, Google OKR guide, balanced scorecard (HBR), ISO 21500 family (21500, 21502, 21505), US GAO | Not read: pages blocked, moved, paywalled or too thin. I make no claim from them. They are listed in Section 9 as gaps |
| 360Giving, OCDS, IATI licence terms and stewardship rules | Governance pages not read |

Two things this means. First, the ISO family is paywalled, so nothing
here rests on it. The owner's list of domains is therefore only partly
covered: strong on public sector (UK, EU, US), international
development, impact investing, philanthropy (Kellogg) and agile
(Scrum); thin on health, research funders, corporate OKRs and
construction. The criteria that lean on the thin domains say so.

Second, the earlier rounds' files are in `../`
(`charter-standards.md`, `tools-and-ux.md`, `planning-and-data.md`,
`inventory.md`, `scale/`). I used them as orientation, not as sources.

---

## 2. What the sources say

### 2.1 Diátaxis: a model of how people use a product

Source: https://diataxis.fr/start-here/, https://diataxis.fr/map/,
https://diataxis.fr/compass/.

- Four needs, from two questions. Does the content inform action or
  cognition? Does it serve study (acquisition) or work (application)?
  Action and study is a tutorial. Action and work is a how-to guide.
  Cognition and work is reference. Cognition and study is explanation
  (compass table, start-here page).
- The needs are about the user, not the product. The map page says
  structuring work around features of a product is rarely successful.
  This is the single most useful line for a rebuild: do not organise by
  the product's nouns, organise by what people are doing.
- The map page also says users do not move through the four in order.
  A person can enter anywhere and their need changes from moment to
  moment. There is still a rough cycle: learn by doing, apply, look up,
  step back to understand.
- Blur is the failure. Tutorials that explain too much, how-to guides
  that teach, reference that argues, explanation that gives steps.
  The tutorials page asks for the smallest explanation inside a
  tutorial and a link out.
- Reference should mirror the structure of what it describes, and is
  neutral about what the user is doing: the same facts serve a
  navigator and a judge (start-here, "Reference").

Used as a lens on a product, not on documents, this gives four modes of
being in the tool:

| Mode | The person is | What the tool owes them |
|---|---|---|
| Learn | New, or new to this kind of thing, and wants to get it right | A guided walk where success is safe and the first result comes quickly |
| Do | Competent, with a real goal today | The shortest path to that goal, no teaching in the way |
| Look up | Mid-task, missing a fact | The facts, complete and neutral, findable by the structure of the thing |
| Understand | Away from the task, trying to see why | The reasons, the links between things, the trade-offs |

The earlier finding that people liked the onboarding walk and fled the
workspace fits this exactly: the walk is Learn, the workspace is a
mixture of Do and Look up with no Understand, and the workspace mixes
them on every screen. That is blur, shown in a product.

### 2.2 GOV.UK Service Manual and Service Standard

- User needs are what a user needs of a service to get a right outcome.
  They are written as "I need ... so that ...", from the user's side,
  in the user's words, about the problem and not a solution (Learning
  about users and their needs, https://www.gov.uk/service-manual/user-research/start-by-learning-user-needs).
- They are researched with all kinds of user, including the people who
  provide the service or support others, such as caseworkers
  (same page). Opinions that do not come from users are assumptions.
- User needs are stable and high level. User stories sit under them and
  carry the traceability back (same page).
- Point 1: understand the whole context of what the user is trying to
  do, not only the part where they touch your service. Point 2: solve a
  whole problem, scoped by how users think, not how government is
  organised; check whether it was already solved; consider whether a
  service is the right answer at all; work in the open, including
  business cases and roadmaps; ask for the same information once
  (https://www.gov.uk/service-manual/service-standard/point-2-solve-a-whole-problem).
- Scoping: too broad hides the task, too narrow does not solve the
  problem; one task per transaction; merge what government calls three
  things if the user sees one (https://www.gov.uk/service-manual/design/scoping-your-service).
- Point 4: the user succeeds first time with minimum help
  (https://www.gov.uk/service-manual/service-standard/point-4-make-the-service-simple-to-use).
- Point 5: everyone can use it, including people who lack skills or
  confidence; simple words help people in a hurry as well as people with
  a learning disability (point 5 page).
- Point 10: define what success looks like, pick metrics, use the
  data to decide, publish. Four mandatory measures (cost per
  transaction, satisfaction, completion, digital take-up) plus others
  you choose (https://www.gov.uk/service-manual/measuring-success/using-data-to-improve-your-service-an-introduction).
  The measuring-success page separates three questions: how a
  transaction performs, how a whole journey performs, and whether the
  work serves an organisational strategy, for which it recommends
  benefits realisation.
- Point 13: use open standards; publish data created by the service in
  an open, machine-readable format under an open licence, except for
  personal data, sensitive data or others' rights
  (https://www.gov.uk/service-manual/service-standard/point-13-use-common-standards-components-patterns).
  Open standards are meant to avoid lock-in and let systems talk
  (https://www.gov.uk/service-manual/technology/working-with-open-standards).
- Roadmaps say what you are not doing as well as what you are, are kept
  online and simple, and are public where possible
  (https://www.gov.uk/service-manual/agile-delivery/developing-a-roadmap).

### 2.3 NN/g: mental models, structure, disclosure

- A mental model is what the user believes about the system. It predicts
  how they act. A prime duty of design is to make the interface show the
  real nature of the system so the model is accurate. The gap between
  designer and user models is one of the biggest usability dilemmas
  (https://www.nngroup.com/articles/mental-models/).
- People bring models from other systems. Departing from them costs.
- Information architecture is the backbone: content and function
  identified and defined, plus structure and naming (taxonomy, grouping,
  metadata). It is not the screens and it is not the navigation. It is
  documented outside wireframes. Choosing navigation first can force a
  bad structure (https://www.nngroup.com/articles/ia-vs-navigation/).
- Progressive disclosure: show a few important options first, the rest on
  request. It serves both power and simplicity, improves learnability,
  efficiency and error rate. What appears first signals what matters. The
  split must be right, the route to the second level obvious and
  labelled. More than two levels usually fails. Staged disclosure (a
  wizard) is a related but different thing
  (https://www.nngroup.com/articles/progressive-disclosure/).
- Expert performance deserves attention too: shortcuts for the
  experienced, hidden from novices, and in-depth content for experts
  (https://www.nngroup.com/articles/novice-vs-expert-users/). That
  article is old and about the web; I use it only for the principle.

### 2.4 Open data standards: what they hold and how they stay open

**IATI** (international aid; https://iatistandard.org/en/iati-standard/203/activity-standard/).
- An activity is defined by the reporting organisation and can be a
  large programme, a small project or another logical grouping of work
  and resources (activity standard page). So the central unit is
  deliberately not fixed to one scale.
- Each activity has a unique identifier (iati-activity/iati-identifier
  element), dates, the organisations involved and their roles, budgets
  and transactions, results, links to other activities and documents
  (activity standard page, list of questions it answers).
- Results: a result carries a type (output, outcome, impact and others
  from a code list) and holds one or more indicators
  (https://iatistandard.org/en/iati-standard/203/activity-standard/iati-activities/iati-activity/result/).
  An indicator has a measure (unit type), a direction ("ascending"
  true when bigger is better), and a flag for whether values can be
  added across activities ("aggregation-status")
  (…/result/indicator/). Under it sit a baseline, and per period a
  target and an actual, each of which may be broken down by dimensions
  such as sex or age and located (…/result/indicator/period/ example).
- An indicator can carry a reference to a code in a recognised
  vocabulary. A publisher may use its own vocabulary but then should
  give the URI where it is defined (…/result/indicator/reference/).
- Hierarchy is declared through a related-activity element with a type
  such as parent or child, and the standard strongly recommends that
  (https://iatistandard.org/en/iati-standard/203/activity-standard/iati-activities/iati-activity/related-activity/).
- Why it exists: transparency and coordination so organisations can see
  what each other is doing and avoid duplication; users named include
  partner governments, donors, delivery organisations and citizens
  (https://iatistandard.org/en/about/).

**OCDS and OC4IDS** (public contracting and infrastructure).
- OCDS is a common data model for disclosing data and documents at all
  stages of contracting (https://standard.open-contracting.org/latest/en/).
  It has a core, and it expects publishers to add what the core lacks
  through **extensions**, with a registry and a governance process for
  those that matter widely (extensions page).
- OC4IDS joins project-level disclosure to contract-level disclosure.
  A project there is a set of infrastructure assets with budget, parties,
  locations, sector, purpose, status, forecasts, actual metrics,
  milestones and completion data (https://standard.open-contracting.org/infrastructure/latest/en/reference/schema/).
  Its metrics are "actual" progress over time and its forecasts are
  separate.
- It states plainly that passing its schema says nothing about data
  quality, and it allows extra fields (reference page). That candour is
  useful: validity is not truth.
- Data is published in a package that carries publication metadata
  (reference page).

**360Giving** (UK grant-making; https://standard.threesixtygiving.org/en/latest/reference/).
- The required core is deliberately small: ten fields. Eight are common
  to every grant: identifier, title, description, currency, amount,
  award date, funder identifier and name. The other two identify the
  recipient, as an organisation or as an anonymous individual. Anything
  else is optional and grows through extensions.
- It is usable as a spreadsheet, one grant per row, or in richer
  structures.

**What these three agree on.** A small required core. Stable identifiers
for the thing and for the organisations. Roles of parties. Money with
currency. Dates. Optional depth added by named extensions. Code lists
for what must be comparable and free text for what cannot be. A way to
say "this is a part of that". A package or file that states its own
licence and publisher. None of them stores workflow state, drafts,
comments or who clicked what; they describe the thing and its results.

**Indicators and results more widely.** I found no single open standard
for "an indicator and its readings" that is neutral across domains.
IATI's result element is the nearest in a standard I could read. The
UN SDG indicator metadata repository publishes reference metadata for
each global indicator, but it does so as Word documents by custodian
agency, and I read only the repository page. IRIS+ (impact investing)
is a catalogue of standard metrics with a thematic taxonomy; I could not
read it, so I only note it exists (search result). SDMX is the usual
statistical exchange format and I did not manage to read its page, so I
make no claim.

### 2.5 Frameworks for the case, the theory, the evaluation

These are the "centres" the sources point to. I read them for what they
put at the middle.

- **UK Green Book.** Appraisal is the process of assessing the costs,
  benefits and risks of options for achieving objectives it does not set.
  The proposal needs five elements: case for change, theory of change,
  business as usual (what happens if you do nothing), objectives (SMART)
  and strategic fit. The business case is built on the Five Case Model:
  strategic, economic, commercial, financial, management, five distinct
  but closely linked views of one proposal. It must be used
  proportionately (https://www.gov.uk/government/publications/the-green-book--2/the-green-book-2026,
  summary, chapter 4 and the Five Case Model section). NZ Treasury and
  NZTA use the same five-case model, which suggests it travels (search
  result and the NZTA page title only; I could not read NZ's own page).
- **UK Magenta Book.** Evaluation should be proportionate, useful,
  credible and tailored to the people who will use it. Theory of change
  work starts at the beginning, is best built with a wide set of
  stakeholders including beneficiaries, and rests on synthesised
  existing evidence. Evaluations are registered and pre-planned in
  proportion to their weight
  (https://www.gov.uk/government/publications/the-magenta-book/magenta-book-central-government-guidance-on-evaluation-html).
- **Kellogg logic model guide.** A logic model is a picture of how the
  work is supposed to work, linking resources, activities, outputs,
  outcomes and impact, with the assumptions underneath. It says most of
  the value is in the act of building and checking the model with
  others
  (https://19january2021snapshot.epa.gov/sites/static/files/2015-09/documents/logic-model-development-guide.pdf,
  early pages). This is philanthropy and community practice, not
  government.
- **OECD DAC criteria (2019).** Six lenses on any "intervention":
  relevance, coherence, effectiveness, efficiency, impact,
  sustainability. "Intervention" is deliberately wide: project,
  programme, policy, strategy, institution and more, run by governments,
  NGOs or firms (Box 1, para 10). The criteria serve accountability and
  learning (para 12) and are used beyond evaluation, for monitoring and
  planning (para 13). They must not be applied mechanically; context and
  purpose decide which matter (Principles One and Two, para 15). The
  consultation found that applying too many criteria was a common
  fault (para 6).
- **EC PM² Guide v2.5.** Distinguishes outputs, outcomes and benefits:
  benefits are measurable improvements resulting from an outcome, often
  realised after the project has closed (section 2.1.3). The initiating
  phase produces a request, a business case (justification and budget)
  and a charter (scope and organisation), with a handbook for
  management rules (sections 5.2 to 6.2). Tailoring is expected.
- **US OMB A-11 Section 200 and GPRA Modernization Act.** A cycle of
  strategic plan, annual performance plan with goals, review routines
  that mix quantitative and qualitative evidence, and a public
  reporting site; the Evidence Act adds evaluation officers and
  learning agendas (section 200.2 and 200.3). The GPRA Modernization
  Act requires a public performance website and quarterly progress
  reviews of priority goals. This is the same shape as the Canadian
  policy that I could only see excerpts of: the organisation states its
  results and indicators, lists what contributes to them and reports.
- **Impact Management Project (via Impact Frontiers).** Impact is a
  change in an outcome caused by an organisation; five dimensions say
  what the outcome is, who experiences it, how much, whether the
  organisation contributed beyond what would have happened anyway, and
  the risk the impact differs from expected
  (https://impactfrontiers.org/norms/five-dimensions-of-impact/).
  "Who" and "contribution" are the two that most tools omit.
- **Scrum Guide.** One Product Goal at a time for a team, with
  commitments that make progress transparent. A reminder that agile
  work is steered by a goal that persists across short cycles, and that
  the unit of work there is the product, not the project
  (https://scrumguides.org/scrum-guide.html, Scrum Team and Artifacts).
- **RIBA Plan of Work.** Building projects organised into eight stages
  with stage outcomes, tasks and information exchanges, and optional
  overlays for specific concerns such as inclusive design or
  engagement. Only the landing page was readable
  (https://www.architecture.com/knowledge-and-resources/resources-landing-page/riba-plan-of-work).
  I use it only as evidence that a staged lifecycle with optional
  overlays is a normal construction pattern.
- **WHO results reports.** WHO reports achievements against a programme
  budget on a fixed cycle (https://www.who.int/about/accountability/results).
  I read one page only.

### 2.6 What the frameworks agree on, and where they diverge

Agree:
1. Start from the problem or need, not the solution (GOV.UK point 1,
   Green Book case for change, Kellogg, OECD relevance).
2. Say how the work is supposed to produce the change, with the
   assumptions visible (Green Book theory of change, Magenta, Kellogg,
   IMP contribution).
3. Separate what is produced from what changes from the lasting
   benefit (PM² 2.1.3, Kellogg, IATI result types, OECD effectiveness
   and impact).
4. Define success and its measures at the start, and use them
   (GOV.UK point 10, Green Book SMART objectives, A-11, IATI indicators
   with baseline and target).
5. Be proportionate (Green Book, Magenta, OECD Principle Two, PM²
   tailoring).
6. Publish openly where you can (GOV.UK points 12 and 13, IATI,
   OCDS, 360Giving, GPRA site).
7. Look at the same thing from several angles rather than one form
   (Five Case Model, OECD criteria, IMP dimensions).

Diverge:
- **Where the middle is.** Green Book: the proposal and its case.
  Kellogg/Magenta: the theory of change. IATI: the activity (any scale)
  with results hanging off. A-11: the goal and the performance cycle.
  Scrum: the product goal. GOV.UK: the user need and the whole problem.
- **Who the framework is for.** Green Book and A-11 are for spending
  approval and accountability. Kellogg and Magenta are for learning.
  IATI, OCDS and 360Giving are for outsiders to read. A tool has to
  serve all three audiences, and they want different things from the
  same record.
- **How much structure up front.** Green Book/PM² want a defined
  document set. Scrum and GOV.UK roadmaps want something light that
  changes. The OECD explicitly warns against mechanical completeness.

---

## 3. From first principles: what a person needs

Start with the user need the brief names, written the way the Service
Manual asks, from the user's side and about the problem, not a solution.

> I need to write down what we have decided to do and why, **so that**
> others can see it, challenge it, fund it or continue it, and **so that**
> I can tell whether it is working and change it when it is not.

Break that into needs, with the Diátaxis mode and who has them. These
are stated as assumptions to test, as the Service Manual requires (user
opinions only count when they come from research). The in-person tests
back the ones marked (T).

| # | Need | Mode | Who |
|---|---|---|---|
| N1 | I need to say what we are trying to change and why it matters, in my own words, without learning a method first (T: people liked plain questions, one at a time) | Learn | Everyone, most of all non-technical |
| N2 | I need to see where I am and what to do next, without a wall of controls (T: too much on each screen; Home too vague) | Do | Everyone |
| N3 | I need to say how the work will make the change happen, and what I am assuming | Do, Understand | Sponsors, managers, funders |
| N4 | I need to say how we will know it worked, and then record what we find | Do | Managers, analysts |
| N5 | I need to show this to a funder, board, minister or partner in a form they already accept | Do | Officers, sponsors |
| N6 | I need to find out what a term means or what a field expects, when I am stuck | Look up | Everyone |
| N7 | I need to understand why the tool asks what it asks, and how things I wrote connect | Understand | Managers, PMO, analysts |
| N8 | I need to change my mind, see what changed, and who agreed | Do | Everyone in a team |
| N9 | I need the decisions to survive me, my tool and my organisation (hand over, publish, move to another system) | Do | Administrators, sponsors, public bodies |
| N10 | I need to bulk-load, query, script and connect agents, without the walk in the way | Do, Look up | Analysts, developers, agents |
| N11 | I need what I write to be fair to the people it is about, including those who will never read it | Understand | NGOs, public bodies, impact funders |

Three observations from putting them together:

1. **N1 to N5 happen in the same order in every domain I read.** Problem,
   change, how, measure, show. That order is the walk. It is not a
   project-charter order; the charter is one of the things that comes
   out of it (N5). This challenges the current centre (Section 8).
2. **N8 and N9 are what a "record" is for.** A record that cannot be
   changed with a trail, or taken elsewhere, fails people who are not
   present when it is written. Open data standards address N9; change
   sets address N8.
3. **N10 is not "advanced N1".** The same person may do both, but at a
   different moment. The Diátaxis journey says the moment decides, not
   the person. Progressive disclosure (NN/g) and "walk-first" agree
   here, provided the full workspace is one clear step away and not a
   second product.

Whose mental model? NN/g's warning is that designers' models are rich
and users' are thin. The users in the tests do not hold the model
"portfolio contains programmes contains projects contain milestones".
They hold "we want this to change; here are the things we do about it".
Several of the nouns in Cartograph's taxonomy (portfolio, programme,
operation, component) exist because standards from MSP, APM and PMI
distinguish them. That is useful to a PMO and invisible to a
cooperative. The sources do not say people must meet those nouns first.
IATI shows the alternative: one noun, "activity", whose scale the
publisher decides (section 2.4).

---

## 4. Three genuinely different centres

A "centre" is the thing the tool's home, its walk, its data and its
outputs are organised around, and the first noun a person meets. The
three below differ in what they treat as the primary record. I keep
each honest by naming what it makes hard.

### Centre A: the decision and its case

**The primary record is a decision**: "we will do X, because of Y, expecting
Z, at this cost, on these terms". Everything else (purpose, goals,
indicators, work, risks) is attached to a decision as its case.

Sources that point here: Green Book (the proposal and the business case
as "the information needed to make a decision"), PM² (business case and
charter as the pair that give direction), GOV.UK point 2 (publish
business cases, consider alternatives), OECD (relevance, the right
thing), Magenta (evaluation planned from the start of the proposal).

Easy:
- Maps straight to what sponsors, funders and boards ask for. The Five
  Case Model is a ready checklist of angles.
- Ties directly to approval, hand-over and audit trails (N5, N8).
- Small decisions are as welcome as large ones: a cooperative's "buy a
  shared cold store" and a ministry's programme use the same shape.
- A decision can be superseded and linked (a history), which fits the
  change-set model the product already has.
- Portable across domains: construction stages, grant awards and
  procurement all produce decisions.

Hard:
- A decision is a moment; steering is continuous. Indicators, readings
  and review cycles hang awkwardly off an event.
- It invites a form-filling culture (a business case for everything),
  which the Green Book itself warns against by asking for proportion.
- The "why" often belongs to many decisions. A purpose is not a
  decision. You need a place for what persists.
- Weak on the beneficiary's view of change unless the case includes one.

### Centre B: the theory of change (the change, and how we think it happens)

**The primary record is a chain of change**: a situation, what we want to be
different, the steps and assumptions between, and how we would know.
Work (projects, services, grants) appears as the things that make steps
happen. Indicators sit on the steps.

Sources that point here: Kellogg (logic model, value is in building it),
Magenta (theory of change first), Green Book (theory of change is one of
five elements), IATI (results nested in the activity: outputs, outcomes,
impact, with indicators, baseline, target, actual), IMP (outcome, who,
how much, contribution, risk), OECD (effectiveness, impact), PM² (outputs
to outcomes to benefits).

Easy:
- Matches the product's own vocabulary (purpose, goals, objectives,
  outcomes, indicators, gaps) and the strongest piece of evidence in the
  tests: people could say what they want to change in plain words.
- Brings "why" and "how will we know" together, and exposes assumptions
  to challenge (N3, N4, N7).
- A natural home for indicators and the data behind them.
- Works for a hobbyist (one small chain), an NGO (several), a nation
  (a tree).
- Maps cleanly to results-based standards (IATI result) for exchange.

Hard:
- Abstract. Non-technical people can say what they want to change, but
  "assumption" and "causal link" are jargon. Kellogg and Magenta both
  recommend building it with stakeholders, which is a facilitated
  conversation, not a form.
- Weak at decisions, money and authority. A theory does not say who
  decided or what it costs. Those need their own space.
- Easily becomes a diagram that is never checked. The sources say the
  value is in revising it; the tool must make revision natural.
- Time and cost are not first-class. A funder who wants a budget has to
  look elsewhere.

### Centre C: the portfolio of work (what is being done, by whom, towards what)

**The primary record is a unit of work** (an activity, in IATI's word),
at any scale, with its parts, its parties, its money and dates, and its
links to what it serves. Goals and indicators are things a unit of work
points at.

Sources that point here: IATI (activity as the central object, scale
chosen by publisher, parent/child links, parties with roles, budgets,
results), OC4IDS (project with budget, parties, milestones, metrics,
completion), 360Giving (the grant as the unit), Scrum (the product),
A-11 (program inventory in the Canadian equivalent, from search
excerpts), RIBA (staged lifecycle), PM² (project lifecycle and
documents).

Easy:
- Closest to what open data standards describe, so exchange (N9) is the
  most direct: a unit of work maps to an IATI activity, an OC4IDS
  project or a 360Giving grant.
- Familiar to PMOs and delivery staff. Money, dates and responsibility
  are natural.
- Good for a ministry or NGO with many things in flight and a need to see
  overlap (GOV.UK: work in the open, avoid duplication).
- Fits the current product, which already has portfolio, programme,
  project and operation kinds.

Hard:
- It is the most output-shaped. The sources I read that say "do not
  confuse outputs with benefits" (PM² 2.1.3, Kellogg, OECD) are warning
  about exactly this tendency.
- It makes "why" secondary and risks reproducing the current problem:
  people have to know what kind of work this is before they can start.
- Heavy for a hobbyist or a cooperative with one idea.
- The scale nouns (portfolio, programme, project, operation) become the
  first thing people see, which is the screen-one confusion the tests
  found. IATI gets round that by using one noun.

### How the three relate (and a fourth thing worth naming)

They are not exclusive layers; they are different answers to "what is on
the home page and what do I create first". Reading across sources:

- B is the best *entry* for people (N1, N3, N4, N7) and is what the walk
  that people liked actually does.
- A is the best *output* for approval and accountability (N5, N8):
  whatever the centre, the thing sent to a board is a case for a
  decision.
- C is the best *exchange* shape (N9), because the open standards
  describe work and its parties and results.

My recommendation, stated plainly because the brief asks for one:
**centre the record on the change (B) and make the others views and
outputs of it.** Concretely: a person writes down a change they want, the
reasons and the assumptions; attaches how they will tell; then says what
is being done about it. The "unit of work" is created inside that walk,
at whatever scale the person names, and gets its kind afterwards (the
IATI approach). A decision and its case is produced from that record
(the charter, a business case, a funder's form are renderings). I hold
this with moderate confidence: the sources support B as the middle of
*steering* and *evaluation*, but the evidence that non-technical users
prefer to start from a change instead of from a piece of work comes only
from the in-person tests described in the brief, with no recorded data.
It needs a test before it is adopted (Section 9).

**A fourth centre, not developed:** the *question* (what do we need to
find out). Magenta Book and Scrum both say work is learning under
uncertainty, and the Evidence Act has learning agendas (A-11 200.2).
A tool centred on questions and evidence would be a research tool, not
what the brief asks for. I mention it so the choice is seen as a choice.

---

## 5. What an open data standard requires of the record

The standards I read (IATI, OCDS, OC4IDS, 360Giving) and the GOV.UK
rules for publishing data (point 13) imply the following of a record
so it can be shared and exchanged. I name what each source shows and
mark where I am extrapolating.

1. **A stable, globally unique identifier for each thing**, not just one
   that is unique within a workspace. IATI requires one per activity;
   360Giving requires identifier for grant, funder and recipient.
   Today a Cartograph `id` is a slug fixed once chosen within a vault
   (`common.schema.json`, Metadata). Two vaults can both have
   `reading-check`. An exchange needs a prefix that says whose it is.
2. **Parties are first-class, with roles.** IATI and OC4IDS record
   organisations with roles (funder, implementer, authority).
   360Giving requires funder and recipient identity. A record that
   stores only names of people in text cannot be exchanged.
3. **Money carries a currency**, with dates. (360Giving: currency and
   amount required. IATI and OC4IDS: budgets and transactions.)
4. **Dates and periods are explicit** and use a standard form. (IATI
   period start and end; 360Giving award date and planned dates.)
5. **A small required core, with named extensions for the rest.** (OCDS
   extensions page; 360Giving 10 required fields.) This lets a hobbyist
   fill in four things and a ministry fill in forty without the record
   being different in kind. It is also the right shape for the walk
   (a few questions first).
6. **Results are structured, not paragraphs.** IATI: type of result
   (output, outcome, impact), indicator with unit and direction,
   baseline, per-period target and actual, optional breakdown. The
   record must hold at least: what is measured, unit, which way is
   better, baseline, target, actual per period, and whether values can
   be added across things.
7. **Standard vocabularies where comparison matters, owned vocabularies
   where it does not,** with the owned one declared. IATI's indicator
   reference lets you use a recognised vocabulary or your own with a
   URI.
8. **Relationships between things are typed and declared on one side,**
   so a hierarchy can be rebuilt. IATI's related-activity with parent and
   child types; OC4IDS links project to contracting processes.
   Cartograph's "declared on one side, derived on the other" (TAXONOMY D1)
   is compatible with this.
9. **Status and provisional values are marked.** OC4IDS keeps forecasts
   and actuals apart and the schema reference says validity does not
   mean quality. IATI has aggregation status. Cartograph's
   `provisional` flag on a reading is in the same spirit.
10. **The package says who published it, when, and under what licence.**
    OCDS and 360Giving packages carry publisher metadata and a licence;
    GOV.UK point 13 asks for an open licence on published data.
11. **Personal data is separated or anonymised on publication.** GOV.UK
    point 13 exempts personal and sensitive data. 360Giving treats
    individual recipients as anonymous. A record for a cooperative
    or NGO that contains names of beneficiaries must be able to be
    published without them.
12. **The standard's version is declared** so readers know what they
    have (IATI keeps a page per version and states when version 1 was
    retired). Cartograph's `apiVersion: cartograph/v1` does this for its
    own shape.
13. **The mapping is documented and lossy in the open.** None of the
    external standards hold workflow state, comments, drafts or who
    changed what. An export to them will lose those. That is fine if it
    says so. This is my inference, not a rule I read.
14. **Language and place are carried.** IATI carries narrative in
    multiple languages; 360Giving and IATI carry locations. (The IATI
    codelists are available in French; the rules are English only, per
    iatistandard.org/en/iati-standard/.) A tool that serves ministries in
    many countries needs this.

What the standards do **not** ask for, and Cartograph should not add
because of them: a particular screen, a particular wizard, a method for
reaching the record. They are silent on how a person gets the data in.
That is the freedom a rebuild has.

What no standard I read covers: the *reasons* (the case for change,
the assumptions, the decision). IATI has descriptions and documents;
OC4IDS has a purpose field; none structures a decision. If Cartograph's
centre is the change and the case, it will hold things the standards
cannot carry. The exchange format should therefore be a **profile or
mapping**, not the storage model.

---

## 6. Design criteria

Marked **E** essential or **D** desirable. "Domains" lists the sources
I read that support the criterion, using these tags: **PUB** public
sector (UK Treasury, GOV.UK, US OMB/GPRA, EC PM²), **DEV** international
development (IATI, OECD DAC), **INFRA** infrastructure and construction
(OC4IDS, RIBA), **PHIL** philanthropy and grants (Kellogg, 360Giving),
**IMP** impact (IMP via Impact Frontiers), **AGILE** (Scrum),
**HCI** user-centred design in general (Diátaxis, NN/g). "Neutral"
means the requirement does not depend on a domain; "specific" says to
what.

Domains I could not read (health beyond one WHO page, research funders,
corporate OKRs and scorecard, ISO) are not cited. Where a criterion is
likely to matter there, the last column says "untested".

### 6.1 The person and the walk

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C1 | A first-time person can start the first walk from the first screen they see, with no choice of kind or method beforehand. | GOV.UK point 4 and "Learning about users"; NN/g progressive disclosure; Diátaxis Learn mode; owner's tests | E | HCI, PUB | Neutral |
| C2 | Each screen of a walk asks one thing and offers one clear next step; the count of other controls in view is low enough that the one step stands out. | NN/g progressive disclosure (what appears first signals importance); owner's tests | E | HCI | Neutral |
| C3 | A person can leave a walk at any point and later see exactly where they stopped and what is left. | Diátaxis (users enter and leave anywhere); GOV.UK point 4 | E | HCI, PUB | Neutral |
| C4 | Every term shown to a non-technical person is a word they would use, with the standard term available one step away. | GOV.UK "words users would recognise"; NN/g mental models | E | PUB, HCI | Neutral |
| C5 | A person can say what they want to change before they are asked what kind of work they are doing. | GOV.UK scoping ("scope how users see them"); NN/g mental models; IATI (one activity noun, any scale) | E | PUB, DEV, HCI | Neutral |
| C6 | The full workspace is one visible step from any walk and the person returns to the same place in the walk. | NN/g progressive disclosure (route obvious, labelled); NN/g novice vs expert | E | HCI | Neutral |
| C7 | There are no more than two levels between the first view and the detail of a record. | NN/g progressive disclosure (more than two levels usually fails) | D | HCI | Neutral |
| C8 | A person with a screen reader, a keyboard only, or low confidence with computers can finish the first walk unaided. | GOV.UK point 5 | E | PUB (legal duty there), HCI | Neutral in principle; legal force is domain-specific |
| C9 | Home tells the person the single most useful next thing for them, drawn from the state of their record. | Diátaxis (Do mode); GOV.UK point 4; owner's tests (Home too vague) | E | HCI | Neutral |

### 6.2 The four modes

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C10 | Each page or screen has one of four jobs (learn, do, look up, understand) and does not carry the others' content beyond a link. | Diátaxis map, "Blur" | E | HCI | Neutral |
| C11 | A person doing a task can reach the facts for a field (what it means, what it accepts, an example) from the field, without leaving the task. | Diátaxis reference; NN/g | E | HCI | Neutral |
| C12 | A person can find an explanation of why the tool asks for something, from the place it asks. | Diátaxis explanation; GOV.UK point 1 (understand the context) | D | HCI | Neutral |
| C13 | The reference for every kind of record is complete and mirrors the structure of the record. | Diátaxis reference | E | HCI | Neutral |
| C14 | The tool's own help is organised by what people are doing, not by the tool's features. | Diátaxis map ("rarely successful" to organise by features) | E | HCI | Neutral |

### 6.3 The record: why, how, and how we will know

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C15 | The record holds, for any piece of work or change, the problem or need it answers, in words. | Green Book case for change; GOV.UK point 1; OECD relevance; IATI (description) | E | PUB, DEV, HCI | Neutral |
| C16 | The record holds what happens if nothing is done. | Green Book "business as usual" element | D | PUB (UK; untested elsewhere) | Specific to appraisal practice |
| C17 | The record holds how the work is expected to produce the change, as steps a reader can follow, with the assumptions in each step stated. | Green Book theory of change; Magenta; Kellogg; IMP | E | PUB, PHIL, IMP, DEV | Neutral |
| C18 | The record keeps apart what is produced, what changes for people, and the lasting benefit, and a reader can tell which each item is. | PM² 2.1.3; Kellogg; IATI result types; OECD effectiveness and impact | E | PUB, PHIL, DEV | Neutral |
| C19 | The record says who experiences the change, and a person can state it for more than one group. | IMP "who"; OECD relevance (equity); GOV.UK point 1 (all kinds of user) | E | IMP, DEV, PUB | Neutral |
| C20 | The record can say whether the change would have happened anyway. | IMP contribution; Magenta evaluation; Green Book BAU | D | IMP, PUB | Mostly neutral; depth is evaluation-specific |
| C21 | Each objective can be stated so it can be checked, and the tool does not insist on one form of wording. | Green Book (SMART); OECD Principle Two (no mechanical application) | D | PUB, DEV | Neutral. SMART is UK Treasury practice |
| C22 | Each indicator holds what it measures, its unit, which direction is better, a baseline, a target, and whether it can be added to others. | IATI indicator and period; GOV.UK point 10 | E | DEV, PUB | Neutral |
| C23 | A reading is stored per period with the value, whether it may still change, and an optional note and breakdown. | IATI period (actual, dimension); OC4IDS metrics; GOV.UK point 10 | E | DEV, INFRA, PUB | Neutral |
| C24 | A target and an actual are kept apart and never overwrite each other. | IATI period; OC4IDS forecasts versus metrics | E | DEV, INFRA | Neutral |
| C25 | Where an indicator comes from a recognised list, the record names the list and code; where it is the organisation's own, it says so and points to its definition. | IATI indicator reference; IATI-style use of a vocabulary URI; UN SDG metadata repository | D | DEV, PUB | Neutral |
| C26 | The record says where the data for an indicator will come from and who will collect it, before the first reading. | GOV.UK point 10 and "measuring from the start" (analyst on the team, find where data is kept) | E | PUB, HCI | Neutral |
| C27 | The record lets a person say the work has risks and which parties it depends on, without forcing a method. | Five Case Model management case; PM² charter; OC4IDS | D | PUB, INFRA | Mostly neutral |
| C28 | The money for a piece of work is held with currency, source and dates, separate from the outcomes. | IATI budget and transaction; OC4IDS budget; 360Giving amount, currency | E | DEV, INFRA, PHIL, PUB | Neutral |
| C29 | Each party in the record has a role in the work (funder, implementer, owner, affected group) and one identity wherever it appears. | IATI participating-org; OC4IDS parties; 360Giving funder and recipient | E | DEV, INFRA, PHIL | Neutral |

### 6.4 Scale and structure

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C30 | The same record shape serves one person's one idea and a nation's whole strategy; a person never has to choose a larger form to add a field. | IATI (activity at any scale); 360Giving (small core, extensions); OCDS extensions | E | DEV, PHIL, INFRA | Neutral |
| C31 | Parent and child relations between pieces of work are declared on one side only and can be read from both. | IATI related-activity strongly recommended parent/child; TAXONOMY D1 | E | DEV | Neutral |
| C32 | Work that has no end date is recorded with the same core as work that has one. | TAXONOMY (operations); IATI (activity not tied to project); Scrum (product, not project) | D | DEV, AGILE, PUB | Neutral |
| C33 | The kind of work (project, programme, service, portfolio, grant, product) is a label chosen after the person has said what it is, and can be changed without losing the record. | IATI (activity "might be a large programme, a small project or another grouping"); OECD "intervention" | D | DEV, PUB | Neutral. The named kinds are PMO conventions |
| C34 | A person can attach more than one view to the same record (case, theory, plan, budget) and they stay consistent. | Five Case Model ("distinct but closely linked" views); OECD criteria as lenses; IMP dimensions | E | PUB, DEV, IMP | Neutral |

### 6.5 Proportion and tailoring

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C35 | The minimum a person must provide to save a piece of work is small, and the tool says plainly which more detail is for whom. | 360Giving required fields; Green Book proportionality; OECD Principle Two | E | PHIL, PUB, DEV | Neutral |
| C36 | An organisation can turn sections on or off, or add its own, without changing the tool's code. | OCDS extensions; PM² tailoring; RIBA overlays | E | PUB, INFRA | Neutral |
| C37 | The tool does not mark a record incomplete for lacking content the organisation has chosen not to use. | OECD Principle Two; Magenta proportionality | E | DEV, PUB | Neutral |
| C38 | The tool's checks say what is missing and why it matters, in terms of the person's purpose. | GOV.UK point 4; OECD (judgement over mechanics) | D | PUB, DEV | Neutral |

### 6.6 Change, history and trust

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C39 | A person can see what a record said at any earlier time and who changed it. | GOV.UK point 2 (work in the open); OC4IDS (project package carries publication metadata); my inference for audit | E | PUB, INFRA | Neutral |
| C40 | A reading marked provisional can be restated and the earlier value is kept. | OC4IDS (schema does not judge quality); IATI aggregation status | D | INFRA, DEV | Neutral |
| C41 | A change to a shared record is proposed, reviewed and accepted by a named person before it takes effect, if the organisation chooses. | Green Book (approval); PM² (documents approved); Scrum (transparency) | D | PUB, AGILE | Policy is organisation-specific; the ability is neutral |
| C42 | Anything an agent proposes is shown as a proposal for a person to accept. | owner decisions; not a source claim | E | Neutral | Specific to this product |

### 6.7 Showing, publishing and exchanging

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C43 | A person can produce, from the record, the document an audience expects (charter, business case, funder form, board paper) without retyping. | PM² (request, business case, charter, handbook); Green Book (business case); A-11 (plan, report) | E | PUB | Specific: which documents differ by domain; the capability is neutral |
| C44 | Each piece of work has a globally unique identifier that carries whose it is. | IATI identifier; 360Giving identifier | E | DEV, PHIL | Neutral |
| C45 | An organisation can export its record, or a chosen part of it, in an open, machine-readable form with a stated licence and publisher. | GOV.UK point 13; OCDS and 360Giving packages | E | PUB, DEV, INFRA, PHIL | Neutral |
| C46 | The export to each external standard is a documented mapping that says what it drops. | IATI, OC4IDS, 360Giving carry no workflow state; my inference | D | Neutral | Neutral |
| C47 | A person can publish without personal data and see before they publish what will be left out. | GOV.UK point 13 (exemptions); 360Giving (individuals anonymous) | E | PUB, PHIL | Neutral |
| C48 | The record can be imported from a spreadsheet and used as a spreadsheet. | 360Giving (spreadsheet is the common route) | D | PHIL | Neutral |
| C49 | A record in a recognised external standard can be read in, with what could not be mapped shown. | IATI and 360Giving are published precisely to be read by others | D | DEV, PHIL | Neutral |
| C50 | The tool does not lock the record: the format is documented and the whole record can be taken out by the person who owns it. | GOV.UK point 13 and open standards page (lock-in) | E | PUB | Neutral |

### 6.8 Power use and agents

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C51 | Anything a person can do in the interface can be done through a documented programme interface and the command line. | GOV.UK point 13 (APIs) | E | PUB, HCI | Neutral |
| C52 | A power user can see all records of a kind in a table, filter and bulk edit, reached from the same place as the walk. | NN/g novice vs expert (experts need depth and speed) | D | HCI | Neutral |
| C53 | The walk and the table edit the same record, so neither is a copy. | NN/g mental models (one system); my inference | E | HCI | Neutral |

### 6.9 Fairness and the wider world

| # | Criterion | Source | E/D | Domains | Neutral? |
|---|---|---|---|---|---|
| C54 | The record can say who is affected, including groups who will not use the tool, and flag unintended or negative effects. | OECD impact (positive or negative, intended or unintended); IMP (negative impacts); GOV.UK point 1 (all kinds of users) | D | DEV, IMP, PUB | Neutral |
| C55 | The tool can run in the language of the organisation, and records can carry text in more than one language. | IATI narrative; IATI codelists in French (iatistandard.org) | D | DEV | Neutral. Not tested outside DEV |

**Domain notes.**
- Rows that cite only PUB are the ones most likely to be UK or US
  convention: C16, C21, C43 (the document list). They are marked
  desirable or "capability neutral".
- Rows that cite DEV, PHIL, INFRA, IMP and PUB together (C17, C18, C22,
  C28, C29, C30, C45) are the best candidates for the fixed core,
  because several unrelated domains arrive at them independently.
- Health, research funding, corporate OKRs/scorecard and agile scaling
  frameworks are not cited by any row. I cannot say the criteria hold
  there. Scrum is the only agile source and it supports only C32 and
  C41.

---

## 7. Where sources disagree or leave room: options and trade-offs

**O1. Where the model begins: purpose, problem, or decision.**
- *Start at the problem or change* (Green Book case for change, GOV.UK,
  Kellogg, Magenta). Good for N1, N3, N7. Risk: abstract.
- *Start at the decision* (PM² request and business case). Good for
  approval. Risk: people with no decision to make yet cannot begin.
- *Start at the purpose of the organisation* (the product today:
  purpose, goals, objectives). Good for a strategy owner. Risk: the first
  screen asks the biggest question and the tests show people stalled
  after onboarding. The walk worked in part because it asked small
  questions.
- Trade-off: ask the smallest question first. My recommendation is the
  change; purpose and goals are what a person adds when they find a
  change belongs to something larger (the bottom-up route, which
  Cartograph's goal tree already allows).

**O2. How many distinct kinds of work.**
- *One noun, labelled later* (IATI, OECD "intervention"). Simple for
  people; relies on labels for filters and on convention.
- *Several nouns, enforced* (Cartograph today, MSP/PMI/APM). Gives
  checks and meaning (a programme coordinates; a project ends). Costs the
  first-screen choice.
- Trade-off: the sources support one underlying shape with kinds as
  labels with rules attached, so the person never meets the choice
  before they have said what it is. Whether that loses the benefits of
  TAXONOMY's definitions is open (Section 9).

**O3. How much structure is required.**
- *Small fixed core plus extensions* (360Giving, OCDS). Best for
  adoption and exchange.
- *Fixed rich document set* (PM², Five Case Model). Best for
  comparability in one institution.
- *Proportion decides* (Green Book, OECD, Magenta).
- Trade-off: a small core and organisation-defined sections. The
  institution that needs the full set can turn it on. C35 to C37.

**O4. Hierarchy: tree or graph.**
- IATI uses parent/child with a recommendation to manage hierarchy that
  way. OECD and the Five Case Model treat things as lenses, not
  hierarchy. Programmes and portfolios in PMI/APM are groupings with a
  governance rule.
- Trade-off: a tree is easy to see and explain; many real things have
  two parents (a shared enabler). The product's "declared on one side"
  rule already allows several. Keep the tree as a default view only.

**O5. What counts as success: criteria set or free choice.**
- OECD gives six lenses; IMP gives five dimensions; GOV.UK gives four
  mandatory KPIs plus others; Green Book gives SMART objectives plus
  critical success factors.
- They all say: do not apply mechanically. Trade-off: offer a named set
  as a prompt (optional), do not require it. A cooperative may want two
  of the six.

**O6. Record versus view.**
- Kellogg and the Green Book each say the exercise of building the
  model is where the value is; PM² and A-11 want the document. If the
  tool stores documents, they go stale. If it stores structure and
  renders documents, the walk is the work and the document is a
  by-product. The product already renders the charter. Keep that
  direction and extend it to other documents.

**O7. Whether to store the standard's shape.**
- *Store in IATI or OC4IDS shape.* Exchange is free; the record cannot
  hold decisions, drafts or the case, which no standard I read carries.
- *Store in own shape, map out.* Exchange costs a mapping per standard;
  the record can hold the case.
- Trade-off: own shape plus profiles. The mapping tests exist today for
  other ports. Use the same approach.

**O8. Public by default or private by default.**
- GOV.UK work-in-the-open and the open standards push public. A ministry
  working on a sensitive programme, an NGO working with vulnerable
  people, and a hobbyist all need private. GOV.UK has exemptions for
  personal, sensitive and third-party rights data.
- Trade-off: private by default, with a deliberate publish step that
  shows what is left out (C47).

---

## 8. Cartograph today against these sources

Read from the repositories: `cartograph-engine/docs/TAXONOMY.md`,
`contract/schemas`, `cartograph-ui/src/copy.ts` (4177 lines),
`src/routes`, and `../inventory.md`, `../tools-and-ux.md`,
`../charter-standards.md`.

### 8.1 What the sources support

- **The walk.** Matches Diátaxis Learn, GOV.UK point 4 and NN/g staged
  disclosure. Keep it. It is the part users liked.
- **Indicators with unit, direction, baseline, target, readings per
  period, provisional marks and a note.** The shape is very close to
  IATI's result indicator and period (`kpi.schema.json`,
  `kpireadings.schema.json`). One difference: IATI records target and
  actual together per period; Cartograph keeps the target on the KPI.
  That is a defensible choice but affects mapping.
- **Declared-on-one-side relations.** Same as IATI related-activity
  (TAXONOMY D1, D2).
- **Programme checks that advise.** Matches OECD's "do not apply
  mechanically".
- **A codec port and an open file format (YAML/JSON manifests).**
  Supports C50 (no lock-in) and C46 (a documented mapping).
- **Change sets and history.** Support C39 and C41.
- **Rendering the charter from structure.** Matches O6.
- **TAXONOMY.md's definitions drawn from APM and PMI.** Reasonable for a
  PMO audience, and explicit about departures.
- **Provisional marks, notes and the refusal to put zero for an unread
  period.** Consistent with OC4IDS's separation of forecast and actual
  and its warning about data quality.

### 8.2 What the sources make look misplaced or irrelevant

Candid, and each with what would change the view.

1. **The project is the centre.** Nothing I read says the centre of
   steering is a project. IATI's centre is a scale-free activity. The
   Green Book's is a proposal. Kellogg and Magenta's is the change. The
   project charter is a PM² document (and APM, PMI). It is a good output
   and a poor centre, because projects end and what people care about
   (the change, the indicators, the service) outlives them. The
   taxonomy itself says "a project does not by itself produce benefits"
   (TAXONOMY, Definitions). A centre on the project contradicts that.
2. **The scale nouns shown first.** Portfolio, programme, project,
   operation, component come from MSP, PMI and APM. The sources on open
   standards and evaluation avoid forcing them (IATI, OECD). The New
   screen asks "which describes it best?" with questions to decide the
   kind (`inventory.md` 1.1). That is a classification task before the
   person has done anything, against C5.
3. **A sheet-and-register workspace.** `/sheets`, `/sheets/$kind` and
   per-kind lists present the model as tables of kinds (teams,
   beneficiary groups, resources, segments, units, budgets, allocations,
   assumptions, data sources, reporting cycles). Diátaxis says
   structuring around features of a product is rarely successful. These
   are legitimately Look up reference for power users (C52). They should
   not be the main way into the product.
4. **Assumptions, segments and units as separate kinds.** `Assumption`,
   `Segment`, `Unit` and `ReportingCycle` are kinds in their own right.
   Kellogg and Green Book put assumptions inside the theory of change,
   not beside it; IATI puts unit in the indicator measure. Separate
   kinds may be right for reuse (a unit shared by many indicators) but
   the sources do not require them. I could not tell from the sources
   whether the reuse justifies the cost to the person. It needs a check
   with real records.
5. **Control limits, capability (Cp, Cpk), sigma level, DMAIC response
   plan on a KPI** (`kpi.schema.json`: `specLimits`, `response`).
   None of the standards I read carry these. They come from Lean Six
   Sigma, which the owner has chosen to use (`TAXONOMY.md` D58).
   This is neither wrong nor sourced from the frameworks the owner asked
   me to use. It is a specialist extension. Under C36 and C30 it
   belongs behind an extension, not in the core indicator, so a
   hobbyist does not see it. I am not saying remove it.
6. **The decision model (Laya) on Home and in pickers.** Optional and
   off by default per `inventory.md`. Irrelevant to the sources; keep it
   behind its port. Home, though, should not be the home of a model
   experiment (C9).
7. **Snapshots screen with buttons that have no handler** (noted in
   `inventory.md` 1.1). A broken control is a trust problem (GOV.UK
   point 4: succeed first time). Not a sourced issue, but worth
   fixing.

### 8.3 What the sources make look missing

1. **A first-class record of the decision and the case.** There is
   `Project.spec.funding` and `mandate` as "partial and deliberate"
   business case (TAXONOMY mapping table). The Green Book and PM²
   treat the case as central: case for change, options considered,
   preferred option, why. Cartograph has `Gap`, `PortfolioDecisions`
   (invest, hold, stop) and change sets, but I did not find a place that
   records "options we considered and why we chose this one". GOV.UK
   points 2 and 12 ask services to consider alternatives and publish
   the business case. I checked the schemas list and TAXONOMY; I did
   not read every schema, so confirm before relying on this.
2. **The "if we do nothing" baseline.** Green Book names business as
   usual; I did not find it as a field. Desirable (C16), not essential.
3. **Contribution and who, beyond a beneficiary group.** IMP's
   contribution (would it have happened anyway) and OECD's equity
   emphasis. `BeneficiaryGroup` covers who. Contribution, I did not find.
4. **A globally unique identifier.** Ids are slugs unique within a
   vault. Exchange standards need a publisher prefix (Section 5, item
   1). Essential for C44.
5. **Parties with roles as organisations, across vaults.** `Resource`
   covers roles and bodies; whether a funder can be one identity across
   several records and be exported as one is a question for the schema
   I did not read closely.
6. **Currency and funding source on every amount.** `FundingSource`
   and `Allocation` exist. I did not verify currency handling.
7. **An exchange route for the web interface.** The inventory found no
   screen for import or export, only a command line (`inventory.md`
   1.3). Under C45, C48 and C49 a non-technical person cannot take
   their record out. That is a gap the sources make essential, not only
   desirable.
8. **A "publish" step with a licence and a preview of what is left
   out.** Not found.
9. **A mapping to IATI, OC4IDS or 360Giving.** Not found in the
   repositories I searched (`grep` for the names in architecture and
   extending docs returned nothing). The architecture has the ports it
   would need (codec, reporting).
10. **Explanation as a mode.** The inventory shows a glossary, a tour
    and a tutorial project. It does not show pages that explain why
    the tool asks for what it asks (Understand). The docs drafts under
    `../docs-draft/explanation/` are a start. Diátaxis would call this
    an incomplete map.
11. **A learning loop.** Magenta and A-11 both build review and
    evaluation into the cycle: Magenta registers evaluations; A-11 has
    review routines. The product has the DMAIC path and reporting
    cycles, but I did not find a recurring "review how this is going
    and change the plan" step in the walk. Worth checking.

### 8.4 The rebuild question, answered plainly

The brief asks: is a better structure available, or is the existing
one right? My answer, with confidence stated:

- **Keep (high confidence):** the walk as the way in; the declared
  relation shape; the indicator and reading shape; open file formats
  behind a port; change sets; the rule that the charter is rendered from
  the record.
- **Change the centre (moderate confidence):** from "the project" to
  "the change and its case". A project, service, programme or grant
  becomes a kind of work attached to a change, named after the person
  has said what it is.
- **Add (high confidence on the need, lower on the form):** identifiers
  that carry ownership, a plain way out of the tool (export and a
  publish step), and a place for the decision and the options
  considered.
- **Demote (moderate confidence):** kind selection on the first screen,
  the register-style sheets as a way in, and the specialist
  quality-control fields as part of the core indicator.
- **Test before committing (low confidence on any answer):** whether
  non-technical people prefer to begin from a change or from a piece of
  work. The tests in the brief did not record data, so I cannot say
  more than that the one part people liked asked small questions in
  plain words.

---

## 9. Open questions

1. **Which centre do real users choose?** The recommendation to start
   from the change rests on the sources and on the owner's in-person
   tests, which recorded no data. A short comparison test of two
   first walks (begin from a change; begin from a piece of work) would
   settle it.
2. **Does one noun with labels lose anything the taxonomy's kinds
   give?** TAXONOMY D1, D2, D6 tie rules (programme checks, operation
   links) to the kinds. I did not test whether labels with attached
   rules can carry these.
3. **Domains not read.** Health (NHS, most of WHO), research funders
   (UKRI, Horizon Europe), corporate OKRs and balanced scorecard,
   ISO 21500/21502/21505, SAFe Lean Portfolio Management, Charity
   Commission, NPC, World Bank results framework, Canada's Policy on
   Results (excerpts only), NZ Better Business Cases (title only), IRIS+
   (search only), GAO, SDMX. The criteria are untested there. A second
   pass with browser access or the printed standards would help; the
   ISO documents need purchase.
4. **Is there an open standard for indicators and readings that is not
   tied to aid?** I found IATI's result element, and UN SDG metadata as
   documents. SDMX is the likely candidate and I did not read it.
5. **Do IATI's actual-per-period and Cartograph's target-on-the-KPI
   shapes map cleanly?** Probably, but the mapping was not tested.
6. **Is the owner's use of "decision" (change sets, decision model,
   "decided for you") the same as the Green Book's decision?** The
   repository uses the word for several things (Laya decision model,
   agent assumptions, portfolio decisions, change-set merges). A
   rebuild around a decision needs one meaning.
7. **Do gov.uk-style user needs exist for Cartograph written down?**
   Section 3 states needs in the Service Manual's format, but they are
   my reading, not validated needs. Per the Service Manual, they remain
   assumptions until tested with the users in the brief.
8. **Where does the beneficiary's own voice enter?** Magenta says to
   build the theory of change with beneficiaries. The tool currently
   has `BeneficiaryGroup` as a described group. Whether a person from
   the group can contribute directly is not something the sources
   settle for a tool of this kind.
9. **What should publish mean for a cooperative or hobbyist?** Open
   publication is a public-sector norm (GOV.UK point 13). For small
   private users it may be irrelevant. The criteria mark it essential
   only where the organisation chooses to publish.
10. **Licence for exported records.** GOV.UK names the Open Government
    Licence; other countries use other open licences. The IATI and
    360Giving licence pages were not readable.
