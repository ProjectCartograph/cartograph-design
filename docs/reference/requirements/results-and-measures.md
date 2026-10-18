# Results and measures

How progress is known: indicators, targets and readings.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### M1 A complete indicator

Each indicator holds what it measures, its unit, which way is better, a baseline or a stated unknown with when it will be known, a target, its source, who collects it, how often (matched to when the data arrive) and who checks it.

- **Priority:** Must
- **Status:** Proposed
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
- **Status:** Proposed
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
- **Status:** Proposed
- **Why:** Results frameworks score against interim targets; objectives and key results are graded.
- **Accepted when:**
  - An indicator can hold a target per period.
  - An indicator can say how short of and over its target are read.
- **Holds across:** UK public sector, open data, corporate strategy
- **Evidence:** [HMT-MAGENTA](../bibliography.md); [IATI](../bibliography.md) result element; [OKR](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M4 Any kind of target

A target may be a value by a date, a threshold, a graded stretch or a statement in words; an indicator may be numeric or qualitative.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Governments use thresholds, objectives and key results are graded, and some measures are qualitative.
- **Accepted when:**
  - An indicator can be qualitative.
  - A target can be a value, a threshold, a grade or words.
- **Holds across:** public sector elsewhere, corporate strategy
- **Evidence:** [TBS-RESULTS](../bibliography.md); [OKR](../bibliography.md); [AUS-PERFORMANCE](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M5 Adding up and breaking down

An indicator says whether it can be added across pieces of work, and can be broken down by group.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Totals across work are only honest when the measure can be added, and averages hide groups.
- **Accepted when:**
  - An indicator states whether it can be summed.
  - A reading can carry a breakdown by group.
- **Holds across:** open data, health, evaluation
- **Evidence:** [IATI](../bibliography.md) result element; [WHO-INDICATORS](../bibliography.md); [OECD-CRITERIA](../bibliography.md) effectiveness
- **Verified by:** inspection of the model's schemas and their examples

### M6 Recognised indicator lists

An indicator from a recognised list (the Sustainable Development Goals, IRIS+, a health registry, a funder's set) names the list and the code; an organisation's own says so. A programme or fund can declare common measures and see who reports them.

- **Priority:** Should
- **Status:** Proposed
- **Why:** Comparison across organisations needs shared codes.
- **Accepted when:**
  - An indicator can name a list and a code.
  - A programme can show which of its members report each common measure.
- **Holds across:** open data, health, UK public sector
- **Evidence:** [IATI](../bibliography.md) result element; [WHO-INDICATORS](../bibliography.md); [HMT-MAGENTA](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### M7 An outcome measured only by outputs

A warning appears when an outcome or impact is measured only by indicators of activity or output.

- **Priority:** Should
- **Status:** Proposed
- **Why:** Evaluators find objectives and indicators often measure activity rather than change.
- **Accepted when:**
  - An outcome whose indicators are all at output level is flagged.
- **Holds across:** evaluation, charity
- **Evidence:** [OECD-APPLYING](../bibliography.md) chapter 4; [KELLOGG](../bibliography.md)
- **Verified by:** an automated test in the build
