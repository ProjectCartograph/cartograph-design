# The shape of the record

What a record of work is: one shape at any scale, its kind a label, its links typed, and one place for each concept.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### R1 One shape at any scale

One shape of record serves one person's single idea and a national strategy; a person never moves to a larger form to add a field.

- **Priority:** Must
- **Status:** Approved
- **Why:** Every domain studied holds the same core, and the open data standards use one record at any scale.
- **Accepted when:**
  - A piece of work labelled as a project and one labelled as a programme share one schema.
  - Any part available at one scale can be added at any other.
- **Holds across:** open data
- **Evidence:** [IATI](../bibliography.md) activity standard; [OCDS](../bibliography.md); [360GIVING](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### R2 The kind is a label, given after

The kind of work (project, programme, portfolio, service, grant, product) is a label given after the person has said what the work is, suggested by the tool, and changeable without loss.

- **Priority:** Must
- **Status:** Approved
- **Why:** Asking people to sort their work into a tool's categories before they have described it works against what they already believe about it; and in the standards, structure decides the kind (a large project split into related projects with managed benefits becomes a programme).
- **Accepted when:**
  - The walk suggests a label from the person's answers.
  - Changing a label keeps every part of the record.
- **Holds across:** design research, project standards, open data
- **Evidence:** [NNG](../bibliography.md) mental models; [PMI-STANDARDS](../bibliography.md); [IATI](../bibliography.md) activity standard
- **Verified by:** inspection of the model's schemas and their examples

### R3 Work without an end

Work with no end date (a service, a product, a portfolio) has the same core as work with one, and a life of its own (planned, running, retired) with a reason for retiring.

- **Priority:** Must
- **Status:** Approved
- **Why:** Governments, service managers and product teams steer ongoing work, not only time-bound projects.
- **Accepted when:**
  - A piece of work may have no end date.
  - Retiring a piece of work records why.
- **Holds across:** public sector elsewhere, software, UK public sector
- **Evidence:** [TBS-RESULTS](../bibliography.md); [SCRUM](../bibliography.md); [NISTA-GATES](../bibliography.md) Gate 5; [PMI-PORTFOLIO](../bibliography.md) 1.2; [TEAL](../bibliography.md) chapter 12
- **Verified by:** inspection of the model's schemas and their examples

### R4 Typed links between work

Links between pieces of work are typed (part of, depends on, funds, hands over to), declared on one side and readable from both; a piece of work may serve more than one parent.

- **Priority:** Must
- **Status:** Approved
- **Why:** Shared parts are common in large work, and declaring a link on one side keeps the record consistent.
- **Accepted when:**
  - A link is stored once and shown on both pieces of work.
  - A chain of part-of links cannot loop.
- **Holds across:** open data, project standards
- **Evidence:** [IATI](../bibliography.md) activity standard; [APM](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### R5 Views, not copies

The same record can be read as several views (a charter, a business case, a logical framework, a theory of change, a funder's form, an open data file) that stay consistent because they are rendered from it, not copied.

- **Priority:** Must
- **Status:** Approved
- **Why:** Each audience accepts its own document, and copies drift apart.
- **Accepted when:**
  - Every view is produced from the record and stores nothing of its own.
  - A change to the record appears in every view.
- **Holds across:** UK public sector, international development, charity, open data
- **Evidence:** [HMT-GREEN](../bibliography.md); [EC-PCM](../bibliography.md); [KELLOGG](../bibliography.md); [360GIVING](../bibliography.md)
- **Verified by:** comparing a rendered view with the record it came from

### R6 One place for each concept

Each concept has one place: one place for how progress will be known, one list of parties with roles, one word for each thing.

- **Priority:** Must
- **Status:** Approved
- **Why:** People should not have to wonder whether different words or places mean the same thing; the same concept asked in several places leaves them unsure which answer counts. The results standards hold each result once and point to it.
- **Accepted when:**
  - No two fields in the schema hold the same concept.
  - The glossary has one term per concept.
- **Holds across:** design research, open data
- **Evidence:** [NNG](../bibliography.md) usability heuristics, consistency and standards; [IATI](../bibliography.md) result element
- **Verified by:** inspection of the model's schemas and their examples

### R7 Outputs, outcomes and benefits kept apart

The record keeps apart what is produced, what changes for people and the lasting benefit, and a reader can tell which each item is.

- **Priority:** Must
- **Status:** Approved
- **Why:** Evaluators ask for inputs, outputs, outcomes and impacts to be kept distinct, and a benefit is the improvement that follows from an outcome.
- **Accepted when:**
  - Each intended result is marked output, outcome or impact.
  - A benefit refers to the outcome it follows from.
- **Holds across:** evaluation, UK public sector, project standards, charity
- **Evidence:** [OECD-APPLYING](../bibliography.md) chapter 4; [IPA-BENEFITS](../bibliography.md) 3.1; [EC-PM2](../bibliography.md); [KELLOGG](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### R8 Accountability named, and handed on

Every result, decision, indicator and risk names one accountable role at a time; a change of accountable role is recorded and accepted by the new holder. Roles are in the record; people are linked to roles outside it.

- **Priority:** Must
- **Status:** Approved
- **Why:** Every domain names one answerable role, and accountability moves: a senior responsible owner may pass benefits to a business owner, who must accept them.
- **Accepted when:**
  - Each result, decision, indicator and risk has exactly one accountable role.
  - Handing accountability to another role records its acceptance.
- **Holds across:** UK public sector, software, charity
- **Evidence:** [GOVS002](../bibliography.md); [IPA-BENEFITS](../bibliography.md) 5.1, 8.1; [SCRUM](../bibliography.md); [CC-REPORT](../bibliography.md)
- **Verified by:** an automated test in the build
