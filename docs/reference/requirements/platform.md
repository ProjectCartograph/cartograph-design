# The platform

Qualities the system as a whole must have, whatever the model.

Each requirement below is a statement that can be checked. Its status moves from Proposed to Approved, Changed or Dropped as it is reviewed ([how to review a requirement](../../how-to/review-a-requirement.md)).

### K1 Contract as data

The schema, flows, guidance and checks are data served to any interface or agent.

- **Priority:** Must
- **Status:** Proposed
- **Why:** It lets interfaces, agents and tests share one definition, and words move to other languages.
- **Domains:** every domain read
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) section 2
- **Verified by:** inspection of the model and its records

### K2 Ports from files to databases

Storage, identity and sync sit behind ports with conformance suites, from plain files to a shared database, from one binary.

- **Priority:** Must
- **Status:** Proposed
- **Why:** It is what makes 'from a hobbyist to a nation' believable.
- **Domains:** every domain read
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) section 2
- **Verified by:** an automated check in the build

### K3 Reviewable change, straight in when alone

Every change can be reviewed before it becomes the record, and the record keeps who changed what and why; a person working alone saves straight in.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Audit-bearing bodies need review; a person alone should not pay for it.
- **Domains:** public sector, charity and philanthropy, software and services
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) C20, section 6 option D
- **Verified by:** a test with people (the walk-first test script)

### K4 Durable history

History is durable: versions, decisions and their reasons survive rebuilding any index.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Baselines, dated plans and decisions on a version need history that cannot restart.
- **Domains:** public sector, international development
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) section 4; [g2](../../../research/round-3/g2-evaluation.md) G2, T7
- **Verified by:** an automated check in the build

### K5 Agents propose; people decide

An agent reads and proposes and cannot make the record; its proposals meet the same checks as a person's.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Accountability stays with people; one bar for both.
- **Domains:** every domain read
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) C21
- **Verified by:** an automated check in the build

### K6 Records open in later releases

From the first stable release, a record opens in every later release, and the tool says what it changed.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Users' records must outlive releases. The exploratory releases before it carry no such promise (DD-0002).
- **Domains:** every domain read
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) C23
- **Verified by:** an automated check in the build

### K7 Measured on people's use

The tool records what people do, by shape, never what they decided, and changes are judged by it.

- **Priority:** Must
- **Status:** Proposed
- **Why:** The in-person tests recorded no data; design must be judged on evidence.
- **Domains:** design research
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) C24
- **Verified by:** an automated check in the build
