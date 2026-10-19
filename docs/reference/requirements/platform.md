# The platform

Qualities the system as a whole must have, whatever the model.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### K1 The contract as data

The schemas, walks, vocabulary and checks are data served to any interface or agent.

- **Priority:** Must
- **Status:** Approved
- **Why:** Interfaces, agents and tests then share one definition, and profiles change data rather than code.
- **Accepted when:**
  - An interface renders a walk from what the engine serves, without knowing its fields.
- **Holds across:** design research, public services
- **Evidence:** [DIATAXIS](../bibliography.md); [GDS-PATTERNS](../bibliography.md)
- **Verified by:** inspection of the model's schemas and their examples

### K2 From files to a shared database

Storage, identity and synchronisation sit behind ports with conformance suites, from plain files to a shared database, in one program.

- **Priority:** Must
- **Status:** Approved
- **Why:** The same program then serves one person on a laptop and a national deployment.
- **Accepted when:**
  - Each store passes the same conformance suite.
- **Holds across:** public services
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards
- **Verified by:** an automated test in the build

### K3 Versioned change, reviewed where the policy asks

Every change becomes a new version of the record, with who made it, when and why, and any earlier version can be restored; a workspace's policy decides whether a person's change waits for acceptance, and a person working alone may accept their own straight in.

- **Priority:** Must
- **Status:** Approved
- **Why:** Bodies that must account for their decisions need review and a trail. Anyone, a person working alone included, needs to see what changed and to go back: review is a cost only some need, history a benefit all do. Change tracking that is always on, shown as a clear difference between versions, serves writers better than a tracking mode they must remember to turn on.
- **Accepted when:**
  - Every change, including one accepted straight in, creates a version recording who, when and why.
  - Any earlier version can be restored; restoring creates a new version and erases nothing.
  - The difference between any two versions can be shown.
  - A workspace's policy decides whether a person's changes wait for acceptance.
- **Holds across:** charity, UK public sector, software, design research
- **Evidence:** [CC-REPORT](../bibliography.md); [GOVS002](../bibliography.md); [SCRUM](../bibliography.md); [UPWELLING](../bibliography.md)
- **Verified by:** an automated test in the build

### K4 Durable history

Versions, decisions and their reasons survive rebuilding any index.

- **Priority:** Must
- **Status:** Approved
- **Why:** Approved plans, dated evaluation plans and decisions on a version need history that cannot be lost.
- **Accepted when:**
  - Rebuilding every index leaves every version and decision intact.
- **Holds across:** UK public sector
- **Evidence:** [HMT-MAGENTA](../bibliography.md); [NAO-PROGRAMMES](../bibliography.md)
- **Verified by:** an automated test in the build

### K5 Agents propose; people decide

An agent reads and proposes, and cannot change the record by itself: whatever the workspace's policy, a workspace of one included, an agent's change is always a proposal that a person accepts, and it meets the same checks as a person's.

- **Priority:** Must
- **Status:** Approved
- **Why:** Accountability stays with people, under one standard for both. The straight-in policy spares a person a review nobody would perform; it must never let an agent's change bypass a person.
- **Accepted when:**
  - No agent can accept its own or another agent's proposal.
  - The straight-in policy never applies to an agent's change.
  - The version an accepted proposal creates names the agent that proposed it and the person who accepted it.
- **Holds across:** UK public sector, charity
- **Evidence:** [GOVS002](../bibliography.md); [CC-REPORT](../bibliography.md)
- **Verified by:** an automated test in the build

### K6 Records open in later releases

From the first stable release, a record opens in every later release, and the tool says what it changed; replicas on different releases still merge.

- **Priority:** Must
- **Status:** Approved
- **Why:** People's records must outlive the releases of the tool that wrote them; open, stable formats are how public services keep data usable as software changes.
- **Accepted when:**
  - Every release opens records written by every earlier stable release.
  - A release that changes the schema translates changes to and from the version before it; where a change cannot be translated back without loss, older replicas read that record but cannot change it until they update.
- **Holds across:** public services, software
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards; [CAMBRIA](../bibliography.md)
- **Verified by:** an automated test in the build

### K7 Measured on people's use, by consent

Measurement of use is off unless a workspace turns it on, and then records a person's use only with their consent, which they can withdraw at any time; it records the shape of what people do, never what they write, and design changes are judged on what it shows.

- **Priority:** Must
- **Status:** Approved
- **Why:** How people use a system shows where its design and their understanding differ, and services are expected to learn from it at every phase. Measuring use is not strictly necessary to provide the service, so storing or reading anything on a person's device for it needs their consent, given by a positive act; leading practice asks first and lets people change their choice.
- **Accepted when:**
  - Measurement is off by default in every workspace.
  - When a workspace turns it on, each person is asked and can decline or withdraw; nothing is recorded without consent.
  - Traces never contain what people wrote.
  - Traces stay within the deployment unless the workspace chooses to share them.
- **Holds across:** public services, design research, UK public sector
- **Evidence:** [GDS-MANUAL](../bibliography.md) user needs, live; [NNG](../bibliography.md) mental models; [ICO-PECR](../bibliography.md) regulation 6; [GOVUK-COOKIES](../bibliography.md)
- **Verified by:** an automated test in the build

### K8 Local-first

A person can read and change their records without a connection, on any of their devices; changes made apart merge without loss when the devices reconnect, and the records live on the person's own devices as well as on any server.

- **Priority:** Must
- **Status:** Approved
- **Why:** Work should not depend on a server being reachable or a service continuing to exist, and records a person holds outlive the tool ([O1](openness-and-exchange.md#o1-plain-open-files-both-ways), [K6](#k6-records-open-in-later-releases)). Replicated data types merge changes made without coordination, and their replicas provably converge.
- **Accepted when:**
  - Every function that needs no other person works offline.
  - Changes made on two disconnected devices merge without loss on reconnection.
  - A workspace can run with no server, from files alone ([K2](#k2-from-files-to-a-shared-database)).
- **Holds across:** software, design research
- **Evidence:** [LOCAL-FIRST](../bibliography.md); [CRDT](../bibliography.md)
- **Verified by:** an automated test in the build

### K9 Live and private drafts

People work on a draft privately or edit it together live, seeing who is present; a draft enters the record only as a proposal under the workspace's policy ([K3](#k3-versioned-change-reviewed-where-the-policy-asks)), and an agent's draft always waits for a person ([K5](#k5-agents-propose-people-decide)).

- **Priority:** Must
- **Status:** Approved
- **Why:** Teams need both live and asynchronous collaboration, and writers do not want first drafts watched, so a draft is private until shared. Automatic merging cannot resolve conflicts of meaning, such as an objective and its indicator changed apart in ways that each pass alone, so the record still changes only through proposals and checks.
- **Accepted when:**
  - A draft is private until its author shares it.
  - Several people can edit a shared draft at once and see who is present.
  - Accepting a draft creates a version that attributes every contributor.
  - A draft's changes are checked when it is proposed, and a conflict of meaning is shown to a person, never resolved silently.
- **Holds across:** software, design research
- **Evidence:** [UPWELLING](../bibliography.md); [LOCAL-FIRST](../bibliography.md); [PATCHWORK](../bibliography.md)
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### K10 Encrypted by default

Records are encrypted on the person's devices before they are synchronised or stored remotely, so that a synchronisation or storage server cannot read them.

- **Priority:** Must
- **Status:** Approved
- **Why:** Privacy and security by default is an ideal of local-first software: a server that only relays and stores what it cannot read cannot leak, misuse or be compelled to disclose it.
- **Accepted when:**
  - Data leaves a device for synchronisation or remote storage only encrypted.
  - A synchronisation or storage server holds no key that decrypts the records.
- **Holds across:** software, design research
- **Evidence:** [LOCAL-FIRST](../bibliography.md); [KEYHIVE](../bibliography.md)
- **Verified by:** an automated test in the build
