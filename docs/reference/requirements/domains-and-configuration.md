# Domains and configuration

What differs between domains, held as settings rather than built in.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### X1 The workspace's taxonomy

A workspace sets its taxonomy, the terms it uses for levels, labels, stages and roles; each term maps to exactly one standard term, which stays one step away.

- **Priority:** Must
- **Status:** Approved
- **Why:** Terms are the first difference every domain shows; one level is a core responsibility in Canada, a strategic goal in the United States, a purpose in the logical framework and an objective in OKRs. Mapping each term to one standard term lets every workspace speak its own taxonomy while its records stay comparable and exportable.
- **Accepted when:**
  - Every user-facing term can be set in the workspace's taxonomy.
  - Each term in the taxonomy maps to exactly one standard term.
  - Exports and standard views use the standard terms.
- **Holds across:** public sector elsewhere, corporate strategy, international development
- **Evidence:** [TBS-RESULTS](../bibliography.md); [OMB-A11](../bibliography.md); [OKR](../bibliography.md); [EC-PCM](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X2 Results hierarchies mapped to reference levels

A profile chooses a recognised results hierarchy, and each of its levels maps to a reference level: activity, output, outcome or impact. Category schemes, such as a balanced scorecard's perspectives or a government's core responsibilities, classify results and are not levels.

- **Priority:** Must
- **Status:** Approved
- **Why:** The recognised hierarchies name their levels differently but share one chain. The logical framework's overall objective, purpose, results and activities are impact, outcome, output and activity; Canada's departmental results are outcomes, and its programs have outputs and outcomes; an objective's key results describe outcomes, not activities, so they are its indicators rather than a level. A balanced scorecard links its perspectives as cause and effect, from long-term financial objectives down through customers and processes to people, technology and culture, but the perspectives are viewpoints on a business's strategy, not the activity, output, outcome and impact of a results chain; a government's core responsibilities cut across the chain. Mapping every level keeps outputs and outcomes apart ([R7](shape-of-the-record.md#r7-outputs-outcomes-and-benefits-kept-apart)) and lets [M7](results-and-measures.md#m7-outcomes-measured-as-change-not-as-work-done) check any hierarchy.
- **Accepted when:**
  - A profile sets its results hierarchy by choosing a recognised one, and names its levels in the taxonomy.
  - Each level maps to activity, output, outcome or impact.
  - A category scheme classifies results without adding a level.
- **Holds across:** corporate strategy, international development, public sector elsewhere
- **Evidence:** [EC-PCM](../bibliography.md) 3.3.2; [TBS-RESULTS](../bibliography.md) Directive on Results A.2.2, A.2.5; [OKR](../bibliography.md); [BALANCED-SCORECARD](../bibliography.md); [KN-2008](../bibliography.md); [KELLOGG](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X3 A decider at every decision point

Each decision point names the role with authority to decide, from recognised roles (a sponsor, a senior responsible owner, a board, a funder, a product owner); in a workspace of one, that person decides, and the record says so.

- **Priority:** Must
- **Status:** Approved
- **Why:** Every stage is preceded by a decision taken with authority ([S1](stages-and-cycles.md#s1-life-cycles-mapped-to-a-reference)). Who holds that authority differs: boards, ministers, steering committees, funders and product owners all decide. A person working alone is their own authority, recorded as such, as a self-review is ([A5](risk-and-assurance.md#a5-reviews-are-records-apart-from-approvals)).
- **Accepted when:**
  - Every decision point in a profile names a deciding role.
  - The profile draws its roles from recognised roles, named in its taxonomy.
  - In a workspace of one, a decision records that its author decided alone.
- **Holds across:** project standards, public sector elsewhere, software, UK public sector
- **Evidence:** [GOVS002](../bibliography.md) 6.3; [EC-PM2](../bibliography.md); [TBS-RESULTS](../bibliography.md); [NZT-BBC](../bibliography.md); [SCRUM](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X4 Standard profiles, tailored within their references

Cartograph ships standard profiles, each built from recognised patterns and citing its sources (for example public investment, project delivery, product team, charity, research); a workspace tailors its profile only within the references each part maps to.

- **Priority:** Should
- **Status:** Approved
- **Why:** Domains differ in recognisable bundles of settings, and a standard profile spares each organisation configuring them one by one. Tailoring within fixed references (the standard terms, the reference levels, the reference life cycle, date intervals, the fields a published standard requires) keeps work comparable across workspaces and the standards met. Whether people want to choose a profile at the start is untested.
- **Accepted when:**
  - Cartograph ships standard profiles, each naming the patterns and sources it draws on.
  - Every tailoring keeps each part of the profile mapped to its reference; a change that would not is refused, naming the reference it breaks.
- **Holds across:** public sector elsewhere, project standards, software, charity
- **Evidence:** [TBS-RESULTS](../bibliography.md); [EC-PM2](../bibliography.md); [SCRUM](../bibliography.md); [KELLOGG](../bibliography.md); [GOVS002](../bibliography.md) 6.3
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### X5 Methods are extensions

Method-specific parts (process improvement and control charts, metric formulas, economic appraisal, a particular evaluation framework) are extensions outside the core and the first walk, off unless turned on.

- **Priority:** Must
- **Status:** Approved
- **Why:** No cross-domain source asks a core to hold them.
- **Accepted when:**
  - The core schema holds no method-specific field.
  - An extension that is off does not appear.
- **Holds across:** open data
- **Evidence:** [IATI](../bibliography.md); [360GIVING](../bibliography.md); [OCDS](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X6 Hold results, link to tools

Cartograph holds the result of a domain's own analysis (an appraisal, a building information model, a backlog) and links to the tool that made it, rather than absorbing it.

- **Priority:** Must
- **Status:** Approved
- **Why:** Absorbing each domain's analysis would make the core everyone's tool and no one's: a core built to do every domain's specialist work (appraisal models, building models, backlogs) would do each worse than the domain's own tools, while loading every other user with features they do not need. Cartograph holds what those tools conclude, and links to where the work was done.
- **Accepted when:**
  - A part of the record can hold a result with a link to its source tool.
- **Holds across:** construction, software, UK public sector
- **Evidence:** [ISO-19650](../bibliography.md); [SCRUM](../bibliography.md); [HMT-GREEN](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X7 Reporting periods as date intervals

Every reporting period is an interval with ISO 8601 start and end dates, generated by a recognised calendar (a financial year with its start month, a quarter, a month, an academic term, a season, a sprint) or given explicitly.

- **Priority:** Must
- **Status:** Approved
- **Why:** Reporting cycles differ by domain and country. Results standards report a period as its start and end dates, which lets periods from different calendars be compared, aggregated and exported without translation.
- **Accepted when:**
  - Every period has ISO 8601 start and end dates.
  - A profile sets the calendar that generates its periods.
  - A period given explicitly has both dates.
- **Holds across:** public sector elsewhere, software, open data
- **Evidence:** [IATI](../bibliography.md) result period; [OMB-A11](../bibliography.md); [TBS-RESULTS](../bibliography.md); [SCRUM](../bibliography.md); [O3](openness-and-exchange.md#o3-parties-money-and-dates-in-standard-form)
- **Verified by:** inspection of the model's schemas and their examples

### X8 More than one language

Text can be held in more than one language.

- **Priority:** Should
- **Status:** Approved
- **Why:** International standards and bilingual governments carry text in several languages.
- **Accepted when:**
  - A text field can hold a value per language.
- **Holds across:** open data, public sector elsewhere
- **Evidence:** [IATI](../bibliography.md); [TBS-RESULTS](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### X9 Policies that bind workspaces

A body may set a policy, a versioned set of profile parts each marked fixed or open, that binds the workspaces under it: every workspace of an organisation, applied by its administrator, or a workspace that accepts it as a condition of funding or membership. A bound workspace may tailor only what the policy leaves open, and the engine enforces it.

- **Priority:** Should
- **Status:** Approved
- **Why:** Central bodies set frameworks that the records of those under them must follow. The UK standard requires a framework at government level with mandatory policies, process and data; Canada's directive binds every department and its projects, each department setting its gates and the evidence each gate decision needs; and a funder's agreements fix the fields its partners, and their partners, must publish, on pain of future funding. Enforced as data, as a workspace's own profile already is ([X4](#x4-standard-profiles-tailored-within-their-references)), such a framework needs no checking by hand. The content of a policy is decided by a deciding role and recorded as a decision ([X3](#x3-a-decider-at-every-decision-point)); the administrator applies it and cannot change it.
- **Accepted when:**
  - A policy holds profile parts, each marked fixed or open, the body that set it, and the decision that approved it.
  - An administrator can apply a policy to every workspace of an organisation; a workspace can accept a policy for the work it covers.
  - A bound workspace cannot save a tailoring or a record that breaks a fixed part; the refusal names the policy and the part.
  - A policy can add to the references of [X4](#x4-standard-profiles-tailored-within-their-references), never loosen them.
  - A change to a policy is a proposal, accepted under the setting body's own policy ([K3](platform.md#k3-versioned-change-reviewed-where-the-policy-asks)), and says what it affects in each bound workspace.
  - Policies are delivered to each replica and checked on its devices; applying a policy gives the administrator no access to a workspace's records ([K8](platform.md#k8-local-first), [K10](platform.md#k10-encrypted-by-default)).
  - Where two policies bind one workspace, the stricter applies to each part; a contradiction is shown to both setters, never resolved silently.
  - A workspace that belongs to no organisation is bound by nothing it has not accepted.
- **Holds across:** UK public sector, public sector elsewhere, development finance
- **Evidence:** [GOVS002](../bibliography.md) 4.1.2; [TBS-DMPP](../bibliography.md) 4.1.3, 6.1 to 6.3; [FCDO-IATI](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples, and a test that a bound workspace refuses a tailoring that breaks a fixed part
