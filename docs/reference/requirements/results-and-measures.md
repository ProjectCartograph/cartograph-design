# Results and measures

How progress is known: indicators, targets and readings.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### M1 A complete indicator

Each indicator holds what it measures, its unit, which way is better, a baseline or a stated unknown with when it will be known, a target, its source, who collects it, how often (matched to when the data arrive) and who checks it.

- **Priority:** Must
- **Status:** Approved
- **Why:** Indicator reference sheets, results frameworks and benefits guidance agree on these fields.
- **Accepted when:**
  - An indicator has a field for each of these.
  - An indicator read more often than its data arrive is flagged.
- **Holds across:** international development, open data, UK public sector, health
- **Evidence:** [USAID-PIRS](../bibliography.md); [IATI](../bibliography.md) result element; [HMT-MAGENTA](../bibliography.md) 4.1; [IPA-BENEFITS](../bibliography.md) 7.69; [WHO-INDICATORS](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M2 Readings apart from definitions

Readings are stored per period apart from the indicator, with the value, whether it may still change, and an optional note and breakdown; a target never overwrites an actual.

- **Priority:** Must
- **Status:** Approved
- **Why:** Results standards keep targets and actuals per period, and overwriting loses the record.
- **Accepted when:**
  - A reading belongs to one period of one indicator.
  - A corrected reading keeps the earlier value in its history.
- **Holds across:** open data, corporate strategy
- **Evidence:** [IATI](../bibliography.md) result element; [OKR](../bibliography.md)
- **Verified by:** an automated test in the build

### M3 Targets over time, and what achievement means

An indicator can carry interim or per-period targets, and say what falling short and exceeding would mean.

- **Priority:** Must
- **Status:** Approved
- **Why:** Results frameworks score against interim targets; objectives and key results are graded.
- **Accepted when:**
  - An indicator can hold a target per period.
  - An indicator can say how short of and over its target are read.
- **Holds across:** UK public sector, open data, corporate strategy
- **Evidence:** [HMT-MAGENTA](../bibliography.md); [IATI](../bibliography.md) result element; [OKR](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M4 Every indicator on a defined scale

Every indicator is measured on a defined scale: an amount or count, a percentage or rate, ordered levels each with a description, or categories. A target is a value, a threshold or a level on that scale, by a date or an event. Narrative goes with a reading as its evidence, never in place of one.

- **Priority:** Must
- **Status:** Approved
- **Why:** Indicator guidance prefers quantitative indicators, because their results are read the same way by everyone, and uses qualitative observation to supplement them. Judgements that resist counting are made credible as rubrics: ordered levels, each described. Each scale allows its own summaries. Ordinal levels say only which is higher, not by how much: a median depends only on order, so it is the same however the levels are numbered, while a mean adds the gaps between levels as if they were equal, so renumbering them can change which group looks better. Ordinal levels therefore take a median, never a mean.
- **Accepted when:**
  - An indicator states its scale, and each ordered level has a description.
  - A reading's value lies on its indicator's scale; narrative is a note on the reading ([M2](#m2-readings-apart-from-definitions)).
  - A target is a value, a threshold or a level on the indicator's scale.
  - The summaries offered for an indicator follow its scale.
- **Holds across:** international development, evaluation, open data, public sector elsewhere, corporate strategy
- **Evidence:** [USAID-TIPS](../bibliography.md) criterion 4; [STEVENS](../bibliography.md); [RUBRICS](../bibliography.md); [IATI](../bibliography.md) indicator measure codelist; [OECD-GLOSSARY](../bibliography.md) indicator; [TBS-RESULTS](../bibliography.md); [OKR](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M5 Aggregation and disaggregation

Each indicator states its aggregation rule (how its readings roll up across pieces of work and periods: summed, weighted by its denominator, or not aggregable), and its readings can be disaggregated (broken down) by group.

- **Priority:** Must
- **Status:** Approved
- **Why:** An aggregate is honest only when the measure can be aggregated, and a rate aggregates only through its numerators and denominators. An association in an aggregate can disappear or reverse in its disaggregations (Simpson's paradox); which view answers a question depends on how the groups relate to the cause, so an aggregate is shown with its disaggregation and the reader judges. Results about people are disaggregated by groups such as gender, age and location, because work often affects them differently.
- **Accepted when:**
  - An indicator states its aggregation rule: summed, weighted by its denominator, or not aggregable.
  - A rate rolls up by its numerator and denominator, never by averaging the rates.
  - A reading can carry a disaggregation by group, and an aggregate can be shown with its disaggregation.
- **Holds across:** open data, health, evaluation, international development
- **Evidence:** [IATI](../bibliography.md) result element, aggregation status; [SIMPSON](../bibliography.md); [USAID-TIPS](../bibliography.md) criterion 5; [WHO-INDICATORS](../bibliography.md); [OECD-CRITERIA](../bibliography.md) effectiveness
- **Verified by:** inspection of the model's schemas and their examples

### M6 Recognised indicator lists

An indicator from a recognised list (the Sustainable Development Goals, IRIS+, a health registry, a funder's set) names the list and the code; an organisation's own says so. A programme or fund can declare common measures and see who reports them.

- **Priority:** Should
- **Status:** Approved
- **Why:** Comparison across organisations needs shared codes.
- **Accepted when:**
  - An indicator can name a list and a code.
  - A programme can show which of its members report each common measure.
- **Holds across:** open data, health, UK public sector
- **Evidence:** [IATI](../bibliography.md) result element; [WHO-INDICATORS](../bibliography.md); [HMT-MAGENTA](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M7 Outcomes measured as change, not as work done

An outcome or impact is measured by at least one indicator of the change itself; when every indicator on it measures activity or output, the tool warns and asks for one that measures the change.

- **Priority:** Should
- **Status:** Approved
- **Why:** Counting work done shows effort, not whether anything changed: an outcome such as "farmers earn more" is not shown by "workshops held" (an activity) or "farmers trained" (an output), but by a measure such as median farm income. Evaluators find that objectives and indicators often focus on activities, and a results chain keeps outputs and outcomes apart ([R7](shape-of-the-record.md#r7-outputs-outcomes-and-benefits-kept-apart)).
- **Accepted when:**
  - An indicator states the level it measures: activity, output, outcome or impact.
  - An outcome or impact whose indicators all measure activity or output is flagged with a request for an indicator of the change; the flag never blocks.
- **Holds across:** evaluation, charity
- **Evidence:** [OECD-APPLYING](../bibliography.md) chapter 4; [KELLOGG](../bibliography.md)
- **Verified by:** an automated test in the build

### M8 Success criteria stated and confirmed

A piece of work states what must be true for it to be judged successful: for each criterion, the outcome, the evidence and the threshold that settles it, how and how often it is measured, the role that owns it, and the role that confirms it. The criteria are reviewed at closing and in the reviews after.

- **Priority:** Must
- **Status:** Approved
- **Why:** The UK standard has the senior responsible owner set the criteria for measuring success when a project is initiated, for its outputs, outcomes and benefits, and reviews the degree of success after closing; method and project standards ask for the criteria, their measures and who verifies them before work begins. A target tracks progress in a period; a success criterion judges the work itself.
- **Accepted when:**
  - A success criterion holds its outcome, evidence, threshold, method, frequency, owner and confirming role.
  - The closing record and the reviews after it record each criterion as met or not, with the evidence.
- **Holds across:** UK public sector, project standards
- **Evidence:** [GOVS002](../bibliography.md) 6.4.5, 6.4.9; [PRINCE2](../bibliography.md) project product description; [PMI-STANDARDS](../bibliography.md) measurement performance domain
- **Verified by:** inspection of the model's schemas and their examples

### M9 Outputs accepted against their criteria

An output states the criteria it must meet to be accepted, how it is verified against its design and validated against the need, and the role that accepts it; handover records the criteria as met.

- **Priority:** Must
- **Status:** Approved
- **Why:** The UK standard requires outputs to meet defined quality criteria, verified against the design and validated against the need; project methods state each product's acceptance criteria, method and responsibilities before it is made.
- **Accepted when:**
  - An output can hold its acceptance criteria, verification, validation and accepting role.
  - A handover records each acceptance criterion as met or not.
- **Holds across:** UK public sector, project standards
- **Evidence:** [GOVS002](../bibliography.md) 8.2, 8.6; [PRINCE2](../bibliography.md) project product description
- **Verified by:** inspection of the model's schemas and their examples
