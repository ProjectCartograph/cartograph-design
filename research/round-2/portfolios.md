# Portfolios: what setting up and running one involves

Research for round two (programmes, portfolios, large projects). Read-only
on both repositories. Sources are cited by URL. Section 0 says what could
not be read at source.

## 0. What I could and could not read

Read at source (fetched this round):

- UK government Teal Book, chapter 12, "Portfolio definition and
  delivery". This is the government's own portfolio guidance, which
  follows the MoP model. https://projectdelivery.gov.uk/?p=14014
- APM, "What is portfolio management".
  https://www.apm.org.uk/resources/what-is-portfolio-management/
- SAFe page on weighted shortest job first (the public part only).
  https://framework.scaledagile.com/wsjf
- GOV.UK page for GovS 002 (structure and version notes only).
  https://www.gov.uk/government/publications/project-delivery-functional-standard
- projectdelivery.gov.uk page for GovS 002 (structure and version notes
  only).
  https://projectdelivery.gov.uk/library-product/government-functional-standard-govs-002-project-delivery/
- GOV.UK business case guidance page (the 2024 merge of the project and
  programme guides, and the Five Case Model as its base only).
  https://www.gov.uk/government/publications/business-case-guidance-for-projects-and-programmes
- GOV.UK Green Book page (update history only).
  https://www.gov.uk/government/publications/the-green-book-appraisal-and-evaluation-in-central-government/the-green-book-2020

Could not read at source:

- **PMI, The Standard for Portfolio Management, 4th edition.** Both
  pmi.org pages and the ANSI preview returned 403. I therefore cannot
  list its performance domains or quote it. A search returned mirror
  copies on unrelated domains; I did not use them. Everything below
  attributed to PMI comes from the repository's own TAXONOMY.md (D32),
  which cites it, and from the brief, and is marked "unverified".
- **ISO 21504:2022.** iso.org and the ANSI preview returned 403. Nothing
  below is attributed to its text. I know only that it exists as ISO's
  guidance on portfolio management.
- **AXELOS/PeopleCert MoP manual.** Not public. The Teal Book chapter
  above is the nearest open route. A search on MoP returned training
  providers and secondary sites; I did not rely on them for step names.
- **GovS 002 clause text** (section 5, portfolio management). The pages
  carry only the structure and version notes. The PDF of version 2.0
  returned 410 Gone. So I cannot say what the standard says about
  prioritisation, stopping or records.
- **Green Book and business case guidance body text.** The pages give
  summaries only. I cannot cite the Green Book on portfolio
  prioritisation. Search summaries (not read at source) say the 2025
  review and 2026 update warn against ranking spending only by
  benefit-cost ratio; treat that as unconfirmed until read. Review
  findings page located but not opened:
  https://www.gov.uk/government/publications/green-book-review-2025-findings-and-actions/green-book-review-2025-findings-and-actions
- **Markowitz, "Portfolio Selection" (1952)** and any peer-reviewed
  source on the efficient frontier for project portfolios. Only
  encyclopedic summaries came back. The efficient frontier is described
  below from those summaries and flagged.
- **SAFe WSJF detail**: the scoring scales are behind a login.

Where a source is a training or vendor site I say so. Search summaries
are marked "search summary".

## 1. What a portfolio definition holds, by source

A portfolio has no end date, so "definition" here means what is written
down once (the strategy) plus what is revisited at each review (the
decisions). The Teal Book separates these as a **strategy** and a
**delivery plan**.

| Element | Teal Book ch. 12 (MoP route) | APM | GovS 002 | PMI 4th ed. | Cartograph today |
|---|---|---|---|---|---|
| Vision, objectives, outcomes | Yes: objectives, outcomes, benefits, success factors, tied to business plan priorities | Yes: aligned to strategic objectives | Not readable | Unverified | `aim`, `objectives` |
| Risk appetite | Yes, in the strategy | Portfolio-level risks named: resources, capacity, investment limits, regulation | Not readable | Unverified | None |
| Funding envelope | Yes: the portfolio works within one | Investment constraints | Not readable | Unverified | `funding` (budgets) |
| Categories of work | Yes: by benefit, objective, type or reason | Not stated | Not readable | Unverified | None |
| Criteria and weights | Yes: weighted scoring | Not stated | Not readable | Unverified | None |
| Components and their status | Yes: the pipeline and the plan | Yes: portfolio plan lists contents, dependencies, timescales | Not readable | Unverified | Contents read back; decisions |
| Ranking | Yes: scored, ranked list | Yes: prioritisation | Not readable | Unverified | `priority` per decision |
| Balance tests | Yes: gaps and clashes | Yes: change against business as usual | Not readable | Unverified | None |
| Capacity | Yes: market capacity and absorption | Yes: capacity to resource and implement | Not readable | Unverified | None |
| Benefit timing, dependencies | Yes, in the delivery plan | Yes, dependencies | Not readable | Unverified | Not at portfolio level |
| Governance, roles | Yes: owners appointed, tolerances set | Yes: executive buy-in | Roles made mandatory in v2.1 (clauses 5.2, 6.2) | Unverified | `leadTeam` |
| Review rhythm | Yes: periodic validation and event-driven | Not stated | Not readable | Unverified | `reviewCycle` |
| Decision record | Approvals in phases at gates; baselined plan with controlled change | Not stated | Not readable | Unverified | PortfolioDecisions |

Sources: Teal Book https://projectdelivery.gov.uk/?p=14014; APM
https://www.apm.org.uk/resources/what-is-portfolio-management/; GovS 002
v2.1 note https://www.gov.uk/government/publications/project-delivery-functional-standard.

The Teal Book's shape, in my words: a portfolio keeps a **strategy**
(what it is for, its appetite for risk, its limits) and a **delivery
plan** (what it will fund, with costs, benefit timing, dependencies and
risks), baselined and changed under control. https://projectdelivery.gov.uk/?p=14014

## 2. How a portfolio decides

### 2.1 Categorise, score, rank, balance

The Teal Book gives a clear cycle (https://projectdelivery.gov.uk/?p=14014):

1. **Categorise** current and possible work by benefit, objective, type
   of work or reason. Use more than one lens if useful. Each group can
   get its own investment criteria.
2. **Prioritise** by scoring against weighted criteria (it names social
   value, achievability and attractiveness). The result is a ranked
   list, and not everything on it is chosen.
3. **Balance** the ranked list. Look for gaps and clashes in objective
   coverage, timing, risk, benefit, market capacity, the organisation's
   ability to absorb change, and regulation. A map of attractiveness
   against achievability, with benefit as bubble size, helps show what
   to commit to, rethink or reject, and where order matters. Other
   functions take part.

APM describes the same job in plainer words: reshape the parts of the
portfolio to fit what the organisation can resource and any change of
strategic pace, and balance change work against running the business.
It adds that project sponsors are often asked to give up their own
priorities for the whole. https://www.apm.org.uk/resources/what-is-portfolio-management/

### 2.2 Start, stop, pause, continue

- **Start.** The Teal Book keeps a **pipeline** of possible work,
  selects candidates and approves them in phases tied to gate
  decisions. Each phase begins from an approved brief, with a senior
  responsible owner and manager appointed and tolerances set.
- **Continue and pause.** Validation is periodic and also happens when
  new work starts or the setting changes: is the portfolio still
  affordable, relevant and on course? Assurance reviews feed it.
- **Stop.** The chapter treats corrective action as part of monitoring.
  It does not use the words start, stop and pause as a fixed list;
  those are Cartograph's words (invest, hold, stop).

All from https://projectdelivery.gov.uk/?p=14014. GovS 002 and the
Green Book would say more on stopping; I could not read them.

### 2.3 Methods named in the brief

- **Scoring against strategic criteria.** Sourced above (Teal Book).
  What changes between users is the criteria and the weights, not the
  method.
- **Weighted shortest job first (WSJF).** SAFe describes it as relative
  cost of delay divided by relative job size, to sequence work for the
  most economic benefit. Cost of delay has three inputs on the public
  page: business value, time criticality, and risk reduction or
  opportunity enablement. Scores are relative, and money already spent
  is ignored. Priorities must be refreshed regularly.
  https://framework.scaledagile.com/wsjf . Note its home is a flow of
  features in a backlog, so it fits fine-grained sequencing better than
  a choice between a programme and a school building. That is my
  reading, not SAFe's. The scales are behind a login.
- **Efficient frontier.** From finance: the set of portfolios giving the
  best return for a given risk, with a final choice made from that set
  by the investor's appetite for risk (search summary; no primary source
  read; originally Markowitz 1952). For public and social work, return
  and risk are rarely numbers everyone agrees on, so the idea is useful
  as a picture (balance, and no free lunch) more than as a calculation.
  This is my judgment.
- **Benefit-cost ratio alone.** A search summary reports that the UK
  Green Book review of 2025 and the 2026 update say spending decisions
  should not rest only on the highest ratio. Unconfirmed; see section 0.

### 2.4 Records each decision should leave

From the sources read, a decision is easier to defend later when it
records: what was decided (start, continue, pause, stop), its rank, the
criteria or reason, the date, who decided (the board, by name or team),
what the decision depended on (a gate, a brief, a review), and what
would change it. The Teal Book asks for a baselined plan with controlled
change, and a comparison of performance to baseline with variances
explained. https://projectdelivery.gov.uk/?p=14014 The last two items
("who", "what would change it") are my inference from that requirement
for control, not text from a source.

## 3. Essential, common, later

My ranking, for any size of portfolio. The test is "can a board make an
honest decision without it?".

**Essential**
- The aim: what the portfolio funds and for what end.
- The strategic objectives it ranks against.
- What it holds, with each item's name.
- The body that decides.
- A decision for each held item, with a reason and a date.

**Common**
- The budgets it hands out (a funding envelope).
- A review rhythm, and a record of each review.
- A rank for each item.
- Categories of work.
- Criteria, and how they are weighted or used.
- Portfolios inside portfolios.

**Later**
- Risk appetite, and risks held at portfolio level.
- Capacity: people, money, the organisation's ability to absorb change.
- Balance tests: coverage of objectives, clashes in timing, mix of risk.
- Benefit timing and dependencies across items.
- A rolling delivery plan with decision points and assurance reviews.
- A pipeline of items not yet chosen.
- Scores kept per criterion per item.

## 4. How scale and long horizons change it

I give no sizes and no durations. What changes:

- **Who the decider is.** A hobbyist may be the whole board. A larger
  body has a board, a strategy office that prepares and a delivery
  office that reports. The Teal Book says other functions take part in
  balancing, so the more functions exist, the more voices the record
  must hold. https://projectdelivery.gov.uk/?p=14014
- **How much is scored.** With few items, a reason in a sentence is
  enough. With many, categories and weighted criteria earn their cost,
  because people cannot compare everything by eye.
- **Nesting.** A large body has portfolios inside portfolios, each with
  its own team. The question changes from "which to fund" to "which
  portfolio gets the envelope, and what may each decide alone".
- **Rolling plans.** The Teal Book's delivery plan is rolling, detailed
  for the near term and thinner after, and warns against one Gantt chart
  of everything. As a horizon lengthens, the portfolio keeps decision
  points and reviews, and leaves detailed schedules to programmes and
  projects. https://projectdelivery.gov.uk/?p=14014
- **Review rhythm.** Review on a cycle and also when something changes
  (new work arrives, the setting shifts). The sources give no interval
  and I give none.
- **Drift.** Over a long horizon, the strategy itself changes. The
  portfolio needs to tell "we stopped it because the strategy moved"
  from "we stopped it because it failed". The record should hold the
  reason in words. My inference.
- **Absence of an end.** Programmes and projects finish; portfolios do
  not (Teal Book). So "close" is a decision about an item, rarely about
  the portfolio.

## 5. What differs from a programme and a project

| | Project | Programme | Portfolio |
|---|---|---|---|
| Focus | Deploying outputs | Outcomes and benefits | Investing in and prioritising both |
| Held together by | One delivery goal | Shared benefits and one change | A strategy and one set of limits |
| Items need each other? | Parts do | Yes, to bring about the change | No |
| Ends? | Yes | Yes | No, open-ended |
| Central decision | How to deliver | Whether the change is still coming | What to fund, in what order, what to stop |

APM states the first row. https://www.apm.org.uk/resources/what-is-portfolio-management/
The Teal Book states that portfolios have no fixed end.
https://projectdelivery.gov.uk/?p=14014 The test that items need not
depend on each other is the repository's, quoting PMI (unverified here):
TAXONOMY.md D32.

In practice a thing can be both: a programme can sit in a portfolio and
hold its own components. A portfolio never needs a theory of change; it
needs a strategy and a way to compare.

## 6. Cartograph against it

Read: `contract/schemas/{portfolio,portfoliodecisions,allocation,fundingsource}.schema.json`,
their guidance and flows, TAXONOMY.md D7, D32 and D69, the example
under `examples/minimal`, and in the UI `src/portfolios/` and
`src/copy.ts` (`portfolios`).

### 6.1 What it asks today

- **Portfolio** (required: aim, leadTeam). Aim up to 400 characters;
  objectives (goal or objective level, outcomes refused); lead team (a
  team, never a person); budgets; review cycle; parent portfolios
  (a tree, loops refused).
- **Membership** is declared on the member, not the portfolio: a project
  (`alignment.portfolios`), a programme (`portfolios`) or a portfolio
  names it. The portfolio screen "Contents" reads them back. This is a
  sound design for accuracy, and a heavy one for the portfolio manager
  (see 6.3).
- **PortfolioDecisions** is a file of its own, one per review. Per item:
  kind, id, priority (1 first, ties allowed), decision (invest, hold,
  stop), reason (400 characters), date. Checks: objectives named,
  members declared, a decision for each member.
- **FundingSource** (name, code, holder, period) and **Allocation**
  (source, project, amount, currency, status approved, requested or
  unfunded, date, note). The project's cost lines on that source cannot
  exceed it (D69). Allocation appears in the project's plan registers
  in the UI, not on the portfolio screens.
- **Screens.** A list of portfolios; a four-step walk (Aim, Strategy,
  Contents, Governance); on Contents, a card per held item with
  Invest/Hold/Stop buttons, a priority box and a reason box, and a
  "Save decisions" button that saves one review. Each save writes a
  version named "Portfolio review".

Versus the sources, this matches the MoP-style "authorise and
review" step well, and the bones of APM's "selection, prioritisation and
control".

### 6.2 What it lacks (against the sources read)

1. **No criteria or scores.** The Teal Book's central step, weighted
   scoring, has no place. A reason in words is all a decision holds.
   Later, not essential: a portfolio of few items can reason in words.
2. **No categories.** Nothing groups held items by benefit, objective or
   type of work.
3. **No link from a decision to an objective.** A reason says "moves
   earnings most", but nothing connects the item to the objective it
   advances. The portfolio has objectives; the decision does not point to
   one.
4. **No capacity or risk at portfolio level.** APM names resources,
   implementation capacity, investment constraints and regulation as
   portfolio risks. Cartograph has none, and no risk appetite.
5. **No balance view.** No view of how held items cover objectives, or
   how decisions cluster in time.
6. **No funding envelope arithmetic.** The portfolio lists budgets
   (`funding`) but nothing sums what it holds against them. Allocation
   is per project and per source; no view rolls it up by portfolio.
7. **No pipeline.** Only items that already name the portfolio appear.
   A possible item not yet proposed has no home.
8. **Decision history is one latest file.** The schema says "at its
   latest review". Saving makes a new version, and the engine keeps
   versions (the UI calls `saveVersion`), so history exists, but the
   decision record itself holds no "who decided", no "what would change
   this", and no link to a gate or brief. I did not verify how versions
   are shown to a reader.
9. **No decision of "pause" distinct from "hold".** "Hold" is defined as
   commit nothing more until reviewed. That fits "pause". I find no gap
   here, only a different word for it.
10. **Decisions use a month-or-day date; an Allocation uses a day.**
    Two date shapes in one family. The example writes `2025-03`. This
    is a small point and I did not confirm the types in `common.schema.json`.

### 6.3 What it asks that it should not

- **Members declare their portfolio, and the portfolio manager must open
  each project to add it.** The guidance says so in three places
  ("open each programme ... and choose this portfolio there"). It is
  correct for data integrity (TAXONOMY D1) but it is a poor task for a
  strategy office, which thinks "this portfolio holds these". The
  screen should let the manager add from the portfolio and write on the
  member behind the scenes. This is an interface matter, not a data
  matter.
- **Objectives are required to be goals, not outcomes**, which is
  right, but the refusal is a cliff for a newcomer. Explain, don't
  block. (Guidance already says "Outcomes cannot be chosen".)
- **Nothing here is too much for a first portfolio.** Four short steps
  and two required fields are light. The risk is the next screen:
  Contents shows three controls and a text box per item, which is many
  for a long list.

### 6.4 Suggested direction (for the team to weigh, not a decision)

- Keep the required set at aim, objectives and lead team; keep
  decisions as the centre.
- Add, as optional and late: a short list of criteria with a plain
  weight (low, medium, high), a score per item per criterion, and a
  rank that falls out of them but can be overridden with a reason.
  This follows the Teal Book. No scale or count should be named.
- Add an optional link from each decision to the objective it serves.
- Add a view, not a field, for balance: items by objective, by
  decision, by budget.
- Add an envelope view: budgets listed on the portfolio against the
  Allocations of the items it holds.
- Let the manager add members from the portfolio screen.

### 6.5 A boundary to respect

Project-level costing and allocation belong to the project and the
budget holder (D69). A portfolio view should read them, not duplicate
them.

## 7. Diátaxis needs

Lens: https://diataxis.fr/start-here/ (four kinds; action or cognition,
study or work). Tone: tutorials direct and encouraging, how-to guides
brisk, reference neutral, explanation free to discuss and take a view.

### 7.1 A portfolio manager (does the work)

- **Study (tutorial).** Learning by doing: "set up a first portfolio
  from two things the cooperative already has, rank them, save the
  first review". One route, no choices, a visible result at each step.
  Uses the cooperative example (Cooperative Investment Portfolio, its
  two programmes).
- **Work (how-to).** Add a project to a portfolio. Record a review.
  Stop something and say why. Nest a portfolio inside another. Connect
  a budget. Each names a goal and links out to reference for fields.
- **Look up (reference).** Every field of Portfolio, PortfolioDecisions,
  FundingSource and Allocation, in screen order, the same shape each
  time; the checks and what they say.
- **Understand (explanation).** Why a portfolio differs from a
  programme and a collection (D32); why membership is declared on the
  member; what a decision means (invest, hold, stop).

### 7.2 An investment board member (reads and decides)

Mostly **work and look up**; rarely edits.

- **Work.** A single view: the ranking, each decision, its reason, the
  date, the money. A how-to: "Review this season's decisions and change
  one".
- **Look up.** What "hold" means, in one line, on the screen.
- **Understand.** A short explanation: how the board's decision is
  recorded and kept, and how to see earlier reviews.
- Little study. Do not make them take a tutorial. Give them the board
  pack view first (the walk-first rule from the brief).

### 7.3 A strategy office (prepares and keeps the frame)

The heaviest user of **explanation and reference**, then how-to.

- **Understand.** Methods: scoring, weighting, balancing, what each
  gives and costs (WSJF, efficient frontier, benefit-cost ratio),
  sourced, with no size or duration named.
- **Work.** Set up criteria. Set the review rhythm. Nest portfolios for
  a regional body. Hand a decision to a programme or project.
- **Look up.** The full schema, API and checks, for those who connect
  by MCP or script.
- **Study.** A second tutorial: "run a whole review season", after the
  first.

## Open questions

1. What do PMI's 4th edition and ISO 21504:2022 say about criteria,
   risk, capacity and stopping? Unread. Someone with PMI or ISO access
   should check section 1's "unverified" cells.
2. What do GovS 002 section 5 and the Green Book say on portfolio
   prioritisation and on stopping? Unread: the text was not reachable.
3. Is a criteria-and-score model worth adding, or does a reason in
   words serve most users? I have no user evidence.
4. How are earlier reviews shown to a reader? Versions exist; I did not
   verify the screen.
5. Is "who decided" worth recording per decision, or is the lead team
   enough?
6. Should a portfolio list possible items (a pipeline) before they name
   it?
7. Date shapes (`2025-03` against a day) across the decision and the
   allocation: confirm against `common.schema.json`.
