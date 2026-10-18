# People and first use

How a person first meets Cartograph: the first screen, the guided walk, the words and the help. Field sessions showed people giving up when shown everything at once and finishing only a guided walk of one question per screen; the design research explains why.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### P1 Start from the change, with no choice first

A first-time person starts from the first screen without choosing a kind of work, a level or a method, and is first asked what they want to change.

- **Priority:** Must
- **Status:** Proposed
- **Why:** People stopped when asked to classify their work in the tool's nouns; every framework asks first for the problem and the change wanted.
- **Accepted when:**
  - The first screen after sign-in offers to start from the change, and offers no choice of kind or method.
  - The first question of the first walk asks what should be different.
- **Holds across:** field observation, public services, UK public sector, charity, design research
- **Evidence:** [FIELD](../bibliography.md); [GDS-MANUAL](../bibliography.md) user needs; [HMT-CASES](../bibliography.md) 4.13; [KELLOGG](../bibliography.md); [NNG](../bibliography.md) mental models
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P2 One thing per screen

Each screen of a walk asks one thing and offers one clear next step, with few enough other controls that the step stands out.

- **Priority:** Must
- **Status:** Proposed
- **Why:** The only screen people finished showed 7 controls and one primary action; the median screen of the exploratory implementation showed 49 and two.
- **Accepted when:**
  - Each walk screen has exactly one primary action.
  - Each walk screen shows no more than ten controls and one way to move on.
- **Holds across:** field observation, public services, design research
- **Evidence:** [FIELD](../bibliography.md); [GDS-PATTERNS](../bibliography.md) question pages; [NNG](../bibliography.md) minimise cognitive load; [NNG](../bibliography.md) Hick's law
- **Verified by:** the screen audit, and a session with people

### P3 Leave and come back

A person can leave a walk at any point, return to where they stopped, and see what is left to do.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Defining work happens over days and between meetings.
- **Accepted when:**
  - Leaving and reopening a walk returns to the same question with the answers kept.
  - A task list shows each part as not started, in progress or done.
- **Holds across:** public services
- **Evidence:** [GDS-PATTERNS](../bibliography.md) complete multiple tasks
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P4 The person's own words

Every term shown is one the person would use, and the standard term for it is one step away.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Domains name the same thing differently, and unfamiliar terms were part of what frightened people.
- **Accepted when:**
  - Every term on a walk screen is drawn from the workspace's words.
  - Each such term links to its definition and its standard equivalent.
- **Holds across:** field observation, design research, public services
- **Evidence:** [FIELD](../bibliography.md); [NNG](../bibliography.md) mental models; [GDS-MANUAL](../bibliography.md) user needs
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P5 The full workspace one step away

The full workspace is one step from any walk, and coming back returns to the same place in the walk.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Experienced people must lose nothing; a walk must not become a second product.
- **Accepted when:**
  - Every walk screen has one control to the full record.
  - Returning from the full record resumes the walk where it was left.
- **Holds across:** design research
- **Evidence:** [NNG](../bibliography.md) progressive disclosure
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P6 Home names the next thing

Home names the single most useful next thing to do, drawn from the state of the person's records.

- **Priority:** Must
- **Status:** Proposed
- **Why:** An open question with no direction left people stuck on the home screen.
- **Accepted when:**
  - Home shows one recommended next step, with the reason it is next.
  - With nothing in progress, the next step is to start from a change.
- **Holds across:** field observation, design research
- **Evidence:** [FIELD](../bibliography.md); [NNG](../bibliography.md) simplicity and choice
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P7 Finishable unaided by anyone

A person using a screen reader, a keyboard only, or with little confidence with computers can finish the first walk unaided.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Public bodies must meet accessibility standards, and the tool is for non-technical people as much as technical ones.
- **Accepted when:**
  - The first walk meets WCAG 2.2 at level AA.
  - In sessions, people with little confidence with computers finish the first walk without help.
- **Holds across:** public services
- **Evidence:** [GDS-MANUAL](../bibliography.md) accessibility
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P8 Help organised by need

Each help page does one Diataxis job (learn, do, look up or understand) and links to the others, and the facts for a field can be reached from the field.

- **Priority:** Must
- **Status:** Proposed
- **Why:** A page that mixes the four jobs serves none of them well; a person stuck on a field needs its facts there.
- **Accepted when:**
  - Every help page is classed as tutorial, how-to guide, reference or explanation.
  - Every field links to its reference entry.
- **Holds across:** design research
- **Evidence:** [DIATAXIS](../bibliography.md) start here; [DIATAXIS](../bibliography.md) the compass
- **Verified by:** inspection of the model's schemas and their examples

### P9 Save anything; completeness only when deciding

A person can save at any point; only a step that asks for a decision or a handover requires completeness, and it says what is missing.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Staged cases approve an outline before a full case exists; refusing a save loses work.
- **Accepted when:**
  - Saving never fails because a part is missing.
  - Asking for a decision lists every part the decision needs that is not yet filled in.
- **Holds across:** UK public sector
- **Evidence:** [HMT-CASES](../bibliography.md) 4.13 to 4.25; [GOVS002](../bibliography.md) 6.3
- **Verified by:** an automated test in the build

### P10 Depth in proportion

The depth asked of a piece of work follows what the person and whoever approves it agree it needs; nothing appears that was not asked for or needed.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Every framework asks for proportion, and a hobbyist and a national government use the same tool.
- **Accepted when:**
  - A piece of work records the depth agreed for it and why.
  - Parts beyond the agreed depth are not shown in the walk.
- **Holds across:** UK public sector, charity, corporate strategy
- **Evidence:** [HMT-CASES](../bibliography.md) 3.21; [HMT-MAGENTA](../bibliography.md) 1.9; [NPC](../bibliography.md); [OKR](../bibliography.md)
- **Verified by:** a session with people, technical and not, recorded with the people's trace
