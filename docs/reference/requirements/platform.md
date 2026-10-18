# The platform

Qualities the system as a whole must have, whatever the model.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### K1 The contract as data

The schemas, walks, words and checks are data served to any interface or agent.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Interfaces, agents and tests then share one definition, and profiles change data rather than code.
- **Accepted when:**
  - An interface renders a walk from what the engine serves, without knowing its fields.
- **Holds across:** design research, public services
- **Evidence:** [DIATAXIS](../bibliography.md); [GDS-PATTERNS](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### K2 From files to a shared database

Storage, identity and synchronisation sit behind ports with conformance suites, from plain files to a shared database, in one program.

- **Priority:** Must
- **Status:** Proposed
- **Why:** The same program then serves one person on a laptop and a national deployment.
- **Accepted when:**
  - Each store passes the same conformance suite.
- **Holds across:** public services
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards
- **Verified by:** an automated test in the build

### K3 Reviewable change, straight in when alone

Every change can be reviewed before it becomes the record, and the record keeps who changed what and why; a person working alone saves straight in.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Bodies that must account for their decisions need review and a trail; a person alone should not pay for it.
- **Accepted when:**
  - A workspace's policy decides whether changes wait for acceptance.
  - Every accepted change records who and why.
- **Holds across:** charity, UK public sector, software
- **Evidence:** [CC-REPORT](../bibliography.md); [GOVS002](../bibliography.md); [SCRUM](../bibliography.md)
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### K4 Durable history

Versions, decisions and their reasons survive rebuilding any index.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Approved plans, dated evaluation plans and decisions on a version need history that cannot be lost.
- **Accepted when:**
  - Rebuilding every index leaves every version and decision intact.
- **Holds across:** UK public sector
- **Evidence:** [HMT-MAGENTA](../bibliography.md); [NAO-PROGRAMMES](../bibliography.md)
- **Verified by:** an automated test in the build

### K5 Agents propose; people decide

An agent reads and proposes and cannot change the record by itself; its proposals meet the same checks as a person's.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Accountability stays with people, under one standard for both.
- **Accepted when:**
  - No agent can accept its own proposal.
- **Holds across:** UK public sector, charity
- **Evidence:** [GOVS002](../bibliography.md); [CC-REPORT](../bibliography.md)
- **Verified by:** an automated test in the build

### K6 Records open in later releases

From the first stable release, a record opens in every later release, and the tool says what it changed.

- **Priority:** Must
- **Status:** Proposed
- **Why:** People's records must outlive the releases of the tool that wrote them; open, stable formats are how public services keep data usable as software changes.
- **Accepted when:**
  - Every release opens records written by every earlier stable release.
- **Holds across:** public services
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards
- **Verified by:** an automated test in the build

### K7 Measured on people's use

The tool records what people do, by shape and never by content, and design changes are judged on it.

- **Priority:** Must
- **Status:** Proposed
- **Why:** What people believe about a system differs from what its designers intend, and the difference shows in what people do rather than in what they say; services are expected to learn from their users' behaviour at every phase, not only before launch.
- **Accepted when:**
  - Sessions can be traced without recording anything people wrote.
- **Holds across:** public services, design research
- **Evidence:** [GDS-MANUAL](../bibliography.md) user needs, live; [NNG](../bibliography.md) mental models
- **Verified by:** an automated test in the build
