# People and first use

How a person first meets Cartograph: the first screen, the guided walk, the vocabulary and the help. Design research finds that people learn faster and make fewer mistakes when they are shown the few things that matter first, in terms they already use, with the rest on request ([NNG](../bibliography.md) progressive disclosure, mental models).

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

### P4 The person's vocabulary

Every term shown is one the person would use, and the standard term for it is one step away.

- **Priority:** Must
- **Status:** Approved
- **Why:** Domains name the same thing differently. When a system's terms differ from what people expect, they misread it and can repeat the mistake through a session without questioning it; familiar labels reduce the learning a screen demands.
- **Accepted when:**
  - Every term on a walk screen is drawn from the workspace's taxonomy.
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

### P11 A programme set out in order

When a piece of work is labelled a programme, or its structure suggests one ([R2](shape-of-the-record.md#r2-the-kind-is-a-label-given-after)), the walk sets it out in this order:

1. the need: who is affected, the problem in their terms, and what carrying on as now would mean for them, or a plain statement that this is not known ([D3](case-and-decisions.md#d3-if-nothing-new-is-done));
2. the accountable owner, who may be interim, and the approving authority; the depth they agree ([P10](#p10-depth-in-proportion)); and that the work lies within the purposes and powers of the body doing it;
3. the one change it brings about, as a few objectives stated as outcomes, and the higher objectives they serve;
4. the scope, what is needed to meet the objectives, and how the change is expected to come about, with what must hold at each step ([E1](change-and-evaluation.md#e1-how-the-change-is-expected-to-happen));
5. the benefits and disbenefits: who gains or bears each, its measure, baseline, target and timing, its owner, its priority, and the objective it serves ([B1](benefits-handover-closure.md#b1-benefits-owned-and-dated), [B8](benefits-handover-closure.md#b8-which-benefits-for-whom-and-why));
6. the future state, drawn from the objectives and the benefits;
7. the constraints, the dependencies, and the strategic risks and assumptions known so far;
8. who must support it, and how far they do;
9. the critical success factors;
10. the parts of the change;
11. the options, built from the parts and including carrying on as now and a minimum option ([D3](case-and-decisions.md#d3-if-nothing-new-is-done), [D4](case-and-decisions.md#d4-options-considered)), each weighed on its costs, benefits and risks against the objectives and the critical success factors, and the preferred way forward;
12. the work in each part;
13. the tranches, with the current one in full ([S6](stages-and-cycles.md#s6-a-tranche-declares-its-step-change));
14. the commercial approach;
15. the money: affordability, funding, the range of the estimate, each tranche's indicative share, and the conditions to go on, each with an owner, a due point and what it holds back ([D6](case-and-decisions.md#d6-conditions-on-a-decision));
16. how it is governed and managed: decision rights and escalation, the assurance planned before each decision, change control, the move into business as usual, how benefits are tracked, how much evaluation is proportionate and why ([E5](change-and-evaluation.md#e5-evaluation-in-proportion-and-possible)), and the review of every assumption with the plan to manage risk;
17. the programme case, for the decision to commit ([S5](stages-and-cycles.md#s5-a-programmes-decision-points)), saying what its approval authorises and what it does not.

Answers already in the record, from the first walk or elsewhere, are carried in rather than asked again ([R6](shape-of-the-record.md#r6-one-place-for-each-concept)), and each step is asked one decision per screen ([P2](#p2-one-decision-per-screen)). This is the order of asking, not of finishing: an answer that changes an earlier step reopens it, visibly, and an assumption is recorded wherever it arises. Where a profile takes an earlier decision to start the programme ([S5](stages-and-cycles.md#s5-a-programmes-decision-points)), the first three steps and an outline plan of the next phase serve it. A profile may leave out options, critical success factors or the commercial approach, at the depth agreed.

- **Priority:** Could
- **Status:** Approved
- **Why:** The programme frameworks and the planning methods read in one direction: from the people affected and their problem, to the change wanted, to what it needs and the benefits it brings, then to the choice of how, the work, the money and the management, with the case written last. Each step follows a dependency the sources state. Objectives restate the problem as an outcome ([NZT-PBC](../bibliography.md) 5.3, 5.7; [EC-PCM](../bibliography.md) 3.2). The UK standard requires the senior responsible owner to be appointed while the need is first identified, and the Treasury names the owner and the approving authority in the first piece of work, where they agree the depth of the case; a charity's trustees first make sure the work furthers its purposes and lies within its powers. Requirements are set against the objectives before the benefits, as the Treasury, New Zealand and the Teal Book's benefits map order them, and working backwards from the change wanted reaches them the same way. New Zealand derives the future state from the objectives and the benefits, and is the one source that orders it; others only list a vision among the contents. Strategic risks, constraints and assumptions come before the options because they filter them, and critical success factors are drawn from them; only the plan to manage risk comes late. Options are built from the parts of the change and appraised on their costs, benefits and risks before a preferred way forward is chosen. Carrying on as now appears twice: as what it means for those affected, with the need, and as a costed baseline among the options; the Green Book lists it with the rationale and the Treasury's programme guidance after the objectives, and the split serves both. The commercial strategy and the total cost stay at programme level, while detailed costs and delivery plans sit with each project. The order is judged against these sources and the tests their approvers and auditors apply (the Treasury's confirmations, the strategic gate review, the National Audit Office's questions), not by testing it with people, since a sound programme definition is a matter of the expertise the sources hold. No study shows that one order of definition yields better programmes than another.
- **Accepted when:**
  - The walk asks the steps in this order; an answer that changes an earlier step reopens it visibly; saving never fails ([P9](#p9-save-anything-completeness-only-when-deciding)).
  - The need and who is affected are asked before any objective, benefit or option; the accountable owner or an interim owner, the approving authority, the agreed depth and the check against purposes and powers are recorded before the objectives.
  - Objectives are few, stated as outcomes, measurable, free of a named solution, and each names the higher objective it serves; each requirement traces to an objective.
  - Each benefit or disbenefit names who gains or bears it, its measure, baseline, target and timing, its priority, the objective it serves, and its owner or an interim owner with when one will be named.
  - The future state names no action, body or technology, and each part of it traces to an objective or a benefit.
  - The risks recorded before the options are strategic, not delivery risks, and constraints, dependencies and critical success factors are recorded before any option is compared; where the profile requires options, carrying on as now and a minimum option are present, each option is weighed on its costs, benefits and risks, and the preferred way forward says why.
  - Every piece of work belongs to a part and to at least one tranche; the current tranche is complete and later ones are marked as outlines.
  - The cost states its range and the stage of the estimate, later tranches' shares are marked indicative, and each condition to go on has an owner, a due point and what it holds back.
  - The governance names decision rights and escalation, and an assurance review is planned before the decision to commit; the move into business as usual is planned, and how much evaluation is proportionate is recorded with its reason.
  - Every answer sits under one of the five questions of the case ([D2](case-and-decisions.md#d2-five-questions-at-any-scale)) and is held once.
  - The case states what its approval authorises and what it does not, adds nothing the earlier steps do not hold, and its decision names who decided.
- **Holds across:** UK public sector, public sector elsewhere, development finance, project standards, charity
- **Evidence:** [GOVS002](../bibliography.md) 6.4.2, 6.4.5; [TEAL](../bibliography.md) 14.8, 15.5, 19.5, 19.6; [HMT-CASES](../bibliography.md) 5.3 to 5.11, 6.4, 6.5, 7.5 to 7.29, 8.13 to 8.32; [HMT-GREEN](../bibliography.md) 3.4, 4.1 to 4.27, 5.1 to 5.5; [NZT-PBC](../bibliography.md) 2.3, 4.2, 5.3 to 5.14, 6.4 to 6.12, 7 to 9, 10.2; [TBS-DMPP](../bibliography.md) F.3, F.6, G.2; [EC-PGM](../bibliography.md) 5.1 to 5.3; [EC-PCM](../bibliography.md) 3.2, 3.3, figure 17; [ACTK](../bibliography.md); [IPA-BENEFITS](../bibliography.md) 7.8 to 7.23, 8.1; [NISTA-GATES](../bibliography.md) Gate 0; [NAO-PROGRAMMES](../bibliography.md) questions 1 to 18; [CC3](../bibliography.md) 4, 6.2
- **Verified by:** inspection of the walk and its records against the sources' orders and the tests their approvers apply
