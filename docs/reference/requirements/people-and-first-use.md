# People and first use

How a person first meets Cartograph: the first screen, the guided walk, the words and the help. Design research finds that people learn faster and make fewer mistakes when they are shown the few things that matter first, in words they already use, with the rest on request ([NNG](../bibliography.md) progressive disclosure, mental models).

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### P1 Start from the change, with no choice first

A first-time person starts from the first screen without choosing a kind of work, a level or a method, and is first asked what they want to change.

- **Priority:** Must
- **Status:** Approved
- **Why:** The frameworks for justifying work ask first for the problem and the change wanted. A design built on its own categories, rather than what people already believe about their work, is misread, and explaining it seldom helps because people resist reading instructions; the research favours redesigning to match people's model where that is feasible.
- **Accepted when:**
  - The first screen after sign-in offers to start from the change, and offers no choice of kind or method.
  - The first question of the first walk asks what should be different.
- **Holds across:** public services, UK public sector, charity, design research
- **Evidence:** [GDS-MANUAL](../bibliography.md) user needs; [HMT-CASES](../bibliography.md) 4.13; [KELLOGG](../bibliography.md); [NNG](../bibliography.md) mental models
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P2 One decision per screen

Each screen of a walk asks for one decision, and the action that moves the person on is the most prominent on the screen.

- **Priority:** Must
- **Status:** Approved
- **Why:** People put a decision off most when they are unsure what they want, the options are hard to compare or the task is difficult, which is the position of someone defining work for the first time. One question per page helps people with little confidence, and makes errors, branches and saving easier to handle; people barely mind moving through pages of straightforward questions. A primary action that stands apart from the others prevents mistakes, at the cost of a little more looking. The findings are qualified: across studies, the number of options alone has on average almost no effect, and harms only under the conditions above; the law relating choice time to the number of options rarely governs the use of software; and questions people answer together may share a screen where research with them shows it helps.
- **Accepted when:**
  - Each walk screen asks one question, or a group of questions that research with people has shown belong together.
  - Each walk screen has exactly one primary action, visually distinct from every other action.
  - Every other action is at most one step away, and no more than two levels deep.
- **Holds across:** public services, design research, decision research
- **Evidence:** [GDS-PATTERNS](../bibliography.md) question pages; [GDS-FORMS](../bibliography.md); [CHOICE-OVERLOAD](../bibliography.md); [HCI-HICK](../bibliography.md); [WROBLEWSKI](../bibliography.md); [NNG](../bibliography.md) progressive disclosure, minimise cognitive load
- **Verified by:** a session with people, measuring whether they find the next step and how often they leave a walk unfinished

### P3 Leave and come back

A person can leave a walk at any point, return to where they stopped, and see what is left to do.

- **Priority:** Must
- **Status:** Approved
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
- **Status:** Approved
- **Why:** Domains name the same thing differently. When a system's terms differ from what people expect, they misread it and can repeat the mistake through a session without questioning it; familiar labels reduce the learning a screen demands.
- **Accepted when:**
  - Every term on a walk screen is drawn from the workspace's words.
  - Each such term links to its definition and its standard equivalent.
- **Holds across:** design research, public services
- **Evidence:** [NNG](../bibliography.md) mental models, minimise cognitive load; [GDS-MANUAL](../bibliography.md) user needs
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P5 The full workspace one step away

The full workspace is one step from any walk, and coming back returns to the same place in the walk.

- **Priority:** Must
- **Status:** Approved
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
- **Status:** Approved
- **Why:** An excess of options can lead people to put off or abandon a decision, above all when they are unsure what they want or the options are hard to compare; highlighting a recommended option and setting a smart default take part of the decision off them. How many options is right depends on the context and on the person's commitment and expertise, so the recommendation is one step, not the only one.
- **Accepted when:**
  - Home shows one recommended next step, with the reason it is next.
  - With nothing in progress, the next step is to start from a change.
- **Holds across:** design research
- **Evidence:** [NNG](../bibliography.md) simplicity and choice, minimise cognitive load; [CHOICE-OVERLOAD](../bibliography.md); [LAWS-OF-UX](../bibliography.md) Hick's law
- **Verified by:** a session with people, technical and not, recorded with the people's trace

### P7 Finishable unaided by anyone

A person using a screen reader, a keyboard only, or with little confidence with computers can finish the first walk unaided.

- **Priority:** Must
- **Status:** Approved
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
- **Status:** Approved
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
- **Status:** Approved
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
- **Status:** Approved
- **Why:** Every framework asks for proportion, and a hobbyist and a national government use the same tool.
- **Accepted when:**
  - A piece of work records the depth agreed for it and why.
  - Parts beyond the agreed depth are not shown in the walk.
- **Holds across:** UK public sector, charity, corporate strategy
- **Evidence:** [HMT-CASES](../bibliography.md) 3.21; [HMT-MAGENTA](../bibliography.md) 1.9; [NPC](../bibliography.md); [OKR](../bibliography.md)
- **Verified by:** a session with people, technical and not, recorded with the people's trace
