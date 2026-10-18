# Cartograph's documentation guide, built on Diátaxis

Written 2026-10-17 from the Diátaxis site and from a read of both
repositories (`cartograph-engine`, `cartograph-ui`). It is the common
input for the other research briefs. Nothing in the repositories was
changed.

Contents: 1 the framework, 2 Cartograph's users on the map, 3 the map as
a UX lens, 4 the documentation's structure, 5 tone and style, then open
questions.

---

## 1. The framework in brief

**What it is.** Diátaxis is a way to decide what to write, how to write
it and how to organise it. It starts from what users need, and says each
need calls for its own kind of document
([diataxis.fr](https://diataxis.fr/)).

**The two axes.** A person who practises a craft has two things: skill
(knowing how, which is action) and knowledge (knowing that, which is
cognition). They are also in one of two relations to the craft: studying
it (acquisition) or working at it (application). Two axes with two
poles each give exactly four quadrants
([foundations](https://diataxis.fr/foundations/)). The same page says the
four are a complete list of what practitioners need.

**The four kinds.**

| Kind | The axes | Orientation | One-line test | Source |
|---|---|---|---|---|
| Tutorial | action + study | learning | A lesson that leads a learner through doing something | [tutorials](https://diataxis.fr/tutorials/) |
| How-to guide | action + work | goal | Directions to reach a real goal, for someone already competent | [how-to guides](https://diataxis.fr/how-to-guides/) |
| Reference | knowledge + work | information | Neutral facts about the machinery, looked up mid-task | [reference](https://diataxis.fr/reference/) |
| Explanation | knowledge + study | understanding | Context and reasons, read away from the task | [explanation](https://diataxis.fr/explanation/) |

**The compass.** Two questions place any piece of content: does it
inform action or cognition, and does it serve acquisition or application
([compass](https://diataxis.fr/compass/)). Action and study is a
tutorial. Action and work is a how-to guide. Knowledge and work is
reference. Knowledge and study is explanation.

**The map and the learning journey.** The map is two-dimensional, not a
list. Each kind sits next to two others and tends to blur into them. The
most common collapse is tutorial into how-to guide
([map](https://diataxis.fr/map/)). A user may enter anywhere. A loose
loop runs from learning, to applying, to looking things up, to stepping
back to understand.

**What separates the neighbours.**

- Tutorial and how-to: the user's need, not the difficulty. A tutorial
  is a controlled lesson with one fixed route, safe to repeat, where the
  teacher answers for the outcome. A how-to guide meets the messy real
  world, can fork, and leaves the user in charge
  ([tutorials and how-to guides](https://diataxis.fr/tutorials-how-to/)).
- Reference and explanation: both are knowledge. Reference is for use
  mid-task; explanation is for reflection afterwards. A useful test is
  whether someone needs it while doing the task or after stepping back
  ([reference and explanation](https://diataxis.fr/reference-explanation/)).

**The principles of each kind, short.**

- Tutorial: show the destination early, give a visible result at every
  step, say what to expect, keep explanation to a minimum, offer no
  choices, and make it work every time. Use "we"
  ([tutorials](https://diataxis.fr/tutorials/)).
- How-to guide: name a goal, not a tool. Assume competence. Give a
  logical sequence that fits the person's flow. Allow forks where the
  work forks. Leave out teaching and full option lists, and link to them
  ([how-to guides](https://diataxis.fr/how-to-guides/)).
- Reference: describe and only describe. Mirror the structure of the
  machinery. Use the same pattern everywhere. Give short examples
  ([reference](https://diataxis.fr/reference/)).
- Explanation: take a wider view, give context and reasons, weigh
  alternatives, admit perspective. Keep it bounded by a "why" question.
  A title passes if "About" fits in front of it
  ([explanation](https://diataxis.fr/explanation/)).

**How to work with it.** Do not plan a grand structure or create empty
sections for each kind. Pick one piece of content, ask what need it
serves and how well, make the one change that helps most, and repeat.
The structure grows from the inside
([workflow](https://diataxis.fr/how-to-use-diataxis/),
[start here](https://diataxis.fr/start-here/)).

**What it does not do.** It cannot make documentation accurate or
complete. It protects "deep quality": flow, fit to the user, not
interrupting a person's purpose with the wrong kind of content
([quality](https://diataxis.fr/quality/)). It is not a substitute for
UX or visual design, which is why this guide pairs it with
`DESIGN_RULES.md`.

---

## 2. Cartograph's users on the map

Each table gives the four quadrants for one user, in Cartograph's own
kinds and screens. "Walk" means a one-question-per-screen flow. The
screens named are real routes in `cartograph-ui/src/routes` and words in
`src/copy.ts`.

Cartograph's own nouns, used below: **purpose** (vision and mission),
**goal / objective / outcome**, **indicator** (the KPI kind), **gap**,
**assumption**, **portfolio / programme / project / operation**,
**stakeholder map**, **beneficiary group**, **team**, **resource**,
**data source**, **reporting cycle**, **readings**, **change set**,
**proposal**, **charter**, **results framework**, **sheet**
(`engine docs/TAXONOMY.md`, `src/copy.ts` glossary).

### 2.1 The non-technical project officer, first time

They are unsure what the words mean and afraid of doing it wrong. They
liked only the onboarding walk (`/welcome`, then `/projects/start`).

| Quadrant | What they need |
|---|---|
| Study (tutorial) | A first lesson that walks them through a small, real success: name the organisation, state a vision and mission, add a goal, refine it to an objective and an outcome (what `/welcome` does today), then start one project (`/projects/start`: about, gaps, outcomes, people, team, ready). The in-product tour (`src/tour`) is already a tutorial: it fills itself in and "does not affect your workspace". |
| Work (how-to) | Almost none yet. They should not need a how-to guide to start a first project: the walk is the guide. Later, "start a project from an idea" is their first real task. |
| Look up (reference) | What a word means, in one line, while a question is on screen: the "What it is" and "For example" lines the walk shows (`copy.onboarding.definition`, `.example`), and the glossary. |
| Understand (explanation) | Why Cartograph asks for a gap before a project, and why outcomes come before work. One short page, read after the first walk: "About the order of work" (engine `/order`, `TAXONOMY.md` D28). |

### 2.2 The same person on their tenth project

They know the shape. They want speed and a way to resume.

| Quadrant | What they need |
|---|---|
| Study | Little. Perhaps a short lesson on the parts they skipped: the plan, costs, risks, data. |
| Work | Task paths: start a project from an idea; pick up where you left off (Home, "Pick up where you left off"); finish the checks and hand a project over; record a reading; change a project already approved (change set). These are how-to paths, entered from Home or the project page. |
| Look up | The project's sections in the editor, the checks panel (what is blocking and why), the sheets for shared lists (Teams, Resources, Data sources, Reporting cycles), the charter. |
| Understand | Why a check exists and what it protects: "Checks never block a draft; they block a submission" (`DESIGN_RULES.md` rule 11). Why a project names the operation that takes it over. |

### 2.3 The sponsor or approver

They read, decide and sign. They seldom write.

| Quadrant | What they need |
|---|---|
| Study | A five-minute orientation to what they will be shown and what their decision means. Not a lesson in defining a project. |
| Work | Review a project's charter and approve it; accept or decline a proposal from an agent (`/proposals`); review a change set. Each is a short task with one decision at the end. |
| Look up | The charter (`/projects/$id/charter`: print, PDF), the results framework, the "What it changes" diff on a proposal, the checks met and left open. |
| Understand | What approval commits them to; what a waiver of a check ("checks left open") means; what a change set is and why a change is not live until rolled in. |

### 2.4 The PMO or strategy analyst

They keep the whole picture coherent across many records.

| Quadrant | What they need |
|---|---|
| Study | How the kinds fit: purpose to goal to objective to outcome, gaps and indicators beside them, portfolios and programmes above projects and operations. A guided tour of the taxonomy, with the produce-cooperative running example (vision, goal "Raise produce quality", gap "Faults are found after dispatch", the Quality Check Rollout project, the Quality Check Service operation). |
| Work | Arrange the strategy (`/strategy`); decide portfolio investments (Portfolio decisions); link projects to programmes; find records with no work, no indicator or no gap (the "Not finished" notes on `/strategy`); review change sets; print the results framework as CSV. |
| Look up | The strategy tree and graph (`/graph`), registers (Goals, Projects, Programmes, Operations, Gaps, Indicators), sheets, the glossary, the taxonomy table "How Cartograph maps onto them". |
| Understand | Where Cartograph departs from the discipline and why (`TAXONOMY.md`: programme versus portfolio, benefit decomposed into goal, key result, KPI and beneficiary group); why a gap is not a problem; why a pathway is not the goal tree. |

### 2.5 The data person who specifies indicators and data sources

| Quadrant | What they need |
|---|---|
| Study | A worked example that follows one indicator end to end: indicator, metric, data source, reporting cycle, readings. Use the running example: the indicator "Quality pass rate" (percent, share of deliveries meeting the standard at intake, baseline 62 in 2025-09, target 75 by 2027-06), read each season from the Quality Check Tool. |
| Work | Define an indicator; specify how its data is captured; add a data source and a reporting cycle; record a reading; connect a metric to a source (`/kpis/$id/definition`, `/metric`, `/readings`; sheets for Data sources and Reporting cycles). |
| Look up | Field definitions: unit, baseline, target, direction, cycle, owner, who confirms (`copy.framework.verification`: "Read from", "Read each", "Tracked by", "Confirmed by"). The schema for `KPI`, `DataSource`, `ReportingCycle`, `KPIReadings`. The semantic layer and metric sources. |
| Understand | Why an indicator belongs to the project, not to a key result (`DESIGN_RULES.md`); why "not known yet" with a reason beats blank prose; what a reading is and why a missing one is not a zero. |

### 2.6 The administrator who deploys and configures it

| Quadrant | What they need |
|---|---|
| Study | One guided first deployment: run `just stack`, open it, create a vault, add a person. Nothing to choose until it works. |
| Work | Deploy (binary, container, Compose, Helm); set identity and roles (`/access`); add a person and teams; back up and restore; upgrade; turn on MCP; set up a stateless or highly available shape; read the trace. These map to the headings in `docs/DEPLOYMENT.md`. |
| Look up | Every setting (`cartograph serve -h`, `CARTOGRAPH_*`), roles and what each does (Reader, Contributor, Strategy editor, Administrator), health probes, metrics, ports. |
| Understand | Why the vault is files, why the store is a port, copy-on-write versus merge-on-read, why agents propose and people decide (ADRs 0008, 0013, 0016, 0024). |

### 2.7 The developer or distribution builder

| Quadrant | What they need |
|---|---|
| Study | Build a small interface or distribution end to end (the Laravel with Entra ID example in `docs/DISTRIBUTIONS.md` is already written as numbered steps). |
| Work | Add a kind; add a rule; add a store, codec, printer or fan-out adapter; map groups to roles; pass the conformance suite (`docs/EXTENDING.md`, `docs/UI_CONTRACT.md`). |
| Look up | The five contract documents (schema, flow, checks, problems, settings), the client port, `openapi.yaml`, controls, the `x-cartograph-*` extensions, the package map and dependency rule. |
| Understand | Clean architecture and the dependency rule (`ARCHITECTURE.md` sections 3 and 7), one bar for people and agents, why transports are adapters, why the contract is the engine's. |

### 2.8 An AI agent over MCP

An agent is a reader first. Documentation for it should be the same
four kinds, but served as tool and prompt text, not as web pages.

| Quadrant | What it needs |
|---|---|
| Study | A worked trace of one correct task: read the kind's guide, draft, run checks, propose. As an example transcript, not as prose. |
| Work | Task recipes as MCP prompts: "draft a project from this idea", "close the open checks or say why", "record a reading". Each names the tools in order and the stop condition. |
| Look up | Tool list with arguments; the kind's guide (contract guidance joined to the organisation's records); schemas; flows; check ids and what they mean. |
| Understand | The rules it works under: it reads and proposes, people decide; a proposal with open checks is refused unless it says why; manifests that reference each other go as one set (`DEPLOYMENT.md` "Agents", ADRs 0016, 0017, 0025, 0027). |

---

## 3. The map as a UX lens

### 3.1 Learning is not working

Diátaxis separates the person at study from the person at work. In a
product, the same human is both at different times. What they see should
change with the mode, not only with the content. The audit and the
in-person tests say the same thing in other words: a screen that shows
49 controls serves a reader who is working and knows what they want. A
newcomer is studying. They need one question and one next step, which
the onboarding walk gives with 7 controls and 1 primary action.

### 3.2 What each kind is in the product

| Kind | In the product | Where it lives today |
|---|---|---|
| **Tutorial** | A guided walk that is safe, always works, has one route, gives a visible result at each step and teaches the words by using them. | The onboarding walk (`/welcome`, `src/onboarding`). The tour (`src/tour`), which fills in a sample project and saves nothing. |
| **How-to** | A task walk with a stated goal, entered from a goal-shaped place (Home), that can branch where the work branches, and ends when the goal is met. | The project start walk (`/projects/start`), the "prepare" step (`/projects/prepare`), the handover walk (`/projects/$id/handoff`), `newWork` ("Does this work finish?"), "Pick up where you left off". Programme and operation equivalents. |
| **Reference** | Neutral places to look up or scan: complete, same shape each time, no coaching. | Sheets (`/sheets/$kind`), registers (Projects, Gaps, Indicators lists), the workspace and graph, the charter, the results framework, the glossary entries as definitions, the checks panel as a list of facts. |
| **Explanation** | Short, bounded text that says why, read when stepping back. | Guidance and Help (`copy.guidance`), the glossary's "Example" and "Comes after", the taxonomy "What it is" lines, check messages that say what a check protects, and (not yet in product) pages like "Why the order of work". |

### 3.3 Walk-first, in these terms

The decision (cartograph-ui#136) is that every core task starts as a
guided walk, with the full workspace one step away. Through the lens:

- A walk is a tutorial on the first run and a how-to on every run after.
  The same screens serve both, so make the difference explicit. A first
  run states the destination and teaches the word on the screen. A later
  run is brief, skips what was answered, and offers "Skip to the full
  page" (`copy.start.toPage` already does).
- The workspace is reference with editing. It should be complete,
  predictable and calm. It need not coach. It can be dense, because the
  person came to look something up or change one thing.
- Explanation should never sit in the way. It lives behind an icon or a
  link ("Help", "What it is") and in separate pages, as Diátaxis asks.
  The walk may show a one-line definition (the "what it is" pattern),
  because that is reference that the learner needs at that moment, but
  not reasons or history.

### 3.4 Where today's screens mix modes

Read from `src/copy.ts` and the routes. Each is a candidate for the
"one small change" loop in section 1, not a rewrite.

1. **Home asks a work question with a study answer.** "What are you
   working on?" is a goal-shaped how-to entry, which is right. But the
   results mix "Already in Cartograph" (reference), "Define something
   new" and "Not sure? Answer a few questions" (how-to and tutorial)
   and a "Next in your strategy" line (explanation of the order). A
   person arrives at one open question and then meets four modes.
2. **The project editor mixes work, reference and teaching.** The
   project page carries a stepper (Initiation, Closure, Handover), eight
   stage names, sixteen section names, an Outline, "What can be decided
   now", checks, versions, a save bar and a change-set button. The
   `stageQuestion` strings (for example "Where the project sits...")
   are good how-to prompts. The rest is reference. A newcomer meets all
   of it at once. `DESIGN_RULES.md` rule 4 already says "one stage on
   screen at a time"; the audit says the median screen shows 49
   controls.
3. **Hints sometimes explain instead of instruct.** The start walk has
   good instruction hints ("Write what happens today that falls short"),
   with examples. Some hints elsewhere give a principle. The rule
   "A hint says what to write, not what a thing is" in `DESIGN_RULES.md`
   is the same Diátaxis boundary: reference-like or explanation-like
   text where an imperative belongs.
4. **The tour is a tutorial that explains too much.** Its stops carry
   definitions and reasons in the same box as the next action. For
   instance the Gaps stop explains the gap idea in a long sentence.
   Diátaxis says a tutorial should link to explanation, not give it
   mid-task ([tutorials](https://diataxis.fr/tutorials/)).
5. **The glossary page is reference written like explanation.** "The
   words Cartograph uses, in the order you meet them" is a good reference
   rule (order of the machinery). The "Example" and "Comes after" lines
   are a reasonable mix, but the "why" for each kind is spread across
   TAXONOMY.md, guidance JSON and the tour. Gather it.
6. **Check messages are reference; "why a check exists" is nowhere.** A
   check says what is wrong and where to fix it. Nobody can find, from a
   check, why it exists. Explanation pages linked from a check ("About
   this check") would close the gap without adding text to the screen.
7. **Agents page: how-to, reference and explanation in one block.** The
   intro paragraph explains what agents do, the "Connect" text is a
   how-to, and the token form is another how-to for a rare case. It
   reads clearly, but it is three modes in one panel.
8. **Proposals and change sets: reference with an implicit lesson.** The
   review page ("What it changes", "Checks", "What it records") is
   reference for a decision. A first-time approver also needs a
   one-time explanation of the idea of a change set. Today that is only
   the sentence in the Save dialog.
9. **Sheets are pure reference but are reached by "Add".** The
   `Add` button on a sheet starts a task inside a lookup screen. This is
   fine for power users. It is a mode switch with no signal.
10. **Onboarding teaches the taxonomy while collecting data.** This is
    deliberate (the file comment says so) and is the best learning in
    the product. The cost is that it also saves real records. Keep it,
    but treat it as the product's one true tutorial and keep it small.

### 3.5 Design consequences

- Mark the mode of every screen to yourself, in design review: tutorial,
  task walk, workspace (reference), or help (explanation). One mode per
  screen. If a screen needs two, split it, or put the second behind a
  control.
- A newcomer's path should never include a reference screen before the
  first win. The first screen after onboarding is the break point the
  tests found. It should be a task walk (what to do next) and not a
  workspace.
- Power users get the reference mode in full, one step away. Do not
  trim the workspace to please the newcomer; keep the newcomer out of it.
- Give each task a name that states a goal ("Start a project from an
  idea"), because that is how a how-to guide is titled
  ([how-to guides](https://diataxis.fr/how-to-guides/)).
- Quality has two parts. Checks and tests protect functional quality.
  Flow and fit protect deep quality, which Diátaxis helps with
  ([quality](https://diataxis.fr/quality/)). The in-person tests were a
  deep-quality failure, not a functional one.

---

## 4. The documentation's structure

The site is for people. Agents get the same content as MCP prompts and
guides (section 2.8). Start small: Diátaxis advises growing the
structure page by page rather than building empty sections
([workflow](https://diataxis.fr/how-to-use-diataxis/)). The list below
is the target, in the order to write it. Items marked (exists) already
live in the repositories and need moving, trimming or relinking, not
writing.

### 4.0 Large sets and several audiences: what Diátaxis says

It says little, and I could not find a dedicated page (open question 1).
What the site does say, and what I infer from it:

- **Do not plan the whole hierarchy first.** The workflow page says the
  top-level structure emerges as individual pages improve, that empty
  sections for each kind should not be created in advance, and that
  Diátaxis "changes the structure of your documentation from the
  inside" ([workflow](https://diataxis.fr/how-to-use-diataxis/)). So a
  large set is built page by page. It is not drawn as a tree and then
  filled.
- **Audience is a need, not a persona.** The map defines the four kinds
  by what a practitioner needs at that moment (study or work, action or
  knowledge), not by job title
  ([foundations](https://diataxis.fr/foundations/),
  [map](https://diataxis.fr/map/)). The same person is a learner on
  Monday and a worker on Tuesday. Inference: sort pages by need first.
  Label them for roles (administrator, developer) only inside a kind, as
  a filter or a sub-heading, not as a fifth top-level axis.
- **Reference mirrors the thing it describes.** For a product with many
  parts, the reference tree takes the shape of the product's own
  structure, so users can move through both together
  ([reference](https://diataxis.fr/reference/)). Cartograph's parts are
  its kinds, its settings, its command line and its API, so those are
  the reference sections (4.4).
- **Each page has one job.** A page that tries two kinds serves neither
  ([tutorials and how-to guides](https://diataxis.fr/tutorials-how-to/),
  [map](https://diataxis.fr/map/)). With several audiences it is
  tempting to write one page for all of them. Write one page per need
  and link between them.
- **Readers arrive by search, not by reading in order.** The start page
  tells readers they need not read everything first and should bring a
  specific problem ([start here](https://diataxis.fr/start-here/)).
  Inference: every page must say who it is for and link to its
  neighbours in the other kinds.
- **Explanation is easy to scatter.** The site warns that it ends up in
  small pieces across other sections
  ([explanation](https://diataxis.fr/explanation/)). With several
  audiences, give it a home of its own.

**Cartograph's decision (mine, not Diátaxis's).** Keep one four-kind
tree. Do not make a separate "administrator guide" and "user guide"
with four kinds each. Within each kind, group by what the page is about,
and mark who it is for in the page's first line ("For administrators").
The landing page (4.1) is where audiences are named, because that is
where a person decides which door to take. Revisit if the set grows to
the point that one tree is hard to navigate, and then split by product
part (the web interface, the engine, the agent interface), each with its
own four kinds, which is how Diátaxis's reference rule would point.

### 4.1 Landing page

Purpose: orient a newcomer in under a minute and send each person to the
right door. Do not list the four kinds as headings. Name the doors by
who the reader is and what they want:

1. One paragraph: what Cartograph is for, in the user's words (write
   down what you decided to do and why; get a charter out).
2. "New here?" A single link: **Your first project** (the tutorial).
3. "I have a job to do": a short list of the most common tasks, each a
   how-to title.
4. "I need to look something up": the glossary, sheets, kinds, checks,
   settings.
5. "I want to understand": three or four explanation titles.
6. "I run it or build on it": links to deploy, extend, connect an
   agent.

This follows the Diátaxis idea that structure serves the reader's need,
with the four kinds as an inner discipline and not the first thing the
reader sees ([start here](https://diataxis.fr/start-here/)).

### 4.2 Tutorials (learning by doing)

| Page | Purpose |
|---|---|
| Your first project | Start from nothing, name your organisation, state a vision and mission, add a goal, start one project. Mirrors `/welcome` and `/projects/start`, and the in-product tour. |
| Follow one indicator from goal to reading | Take the running example from an outcome to an indicator, a data source, a reporting cycle and a first reading. |
| Run Cartograph on your own machine | `just stack` on the example vault, open it, add a person. For the administrator. |
| Build a tiny interface | Draw one screen from a flow, using the contract. For developers. |
| Let an agent draft a project | Connect an agent, ask it for a draft, review the proposal, accept it. |

### 4.3 How-to guides (a goal, in competent hands)

People:

| Page | Purpose |
|---|---|
| Start a project from an idea | Type what you are working on, pick what Cartograph finds, name it. |
| Finish a project's checks | Read the checks, fix or give a reason, reach "nothing blocking". |
| Hand a project over to an operation | Complete the handover and name the service that takes it over. |
| Define an indicator and say where its data comes from | Indicator, metric, data source, reporting cycle, owner. |
| Record a reading | Add a period's value and who confirmed it. |
| Add a gap and link the outcomes that close it | Current state, desired state, outcomes. |
| Arrange the strategy | Add, move and refine goals, objectives and outcomes. |
| Group projects into a programme | Name the programme, add components, state the shared goal. |
| Decide a portfolio | Weigh projects and programmes, record the decision. |
| Change something already approved | Open a change set, edit, send for review. |
| Review and accept a change set or a proposal | Read what changed, decide. |
| Print or download a charter | Print, PDF, open in a tab. |
| Work on the same record as a colleague | Presence, drafts, versions. |

Operators and builders:

| Page | Purpose |
|---|---|
| Add a person and give them access | Roles, teams, directory groups. |
| Connect an agent | Add the MCP address, sign in, allow, or make a token. |
| Turn off an agent for one person | The Access page switch. |
| Deploy with Docker Compose / Helm / a stateless store | One page per shape. |
| Back up and restore a vault | Snapshots and recovery. |
| Upgrade | Check the version promise, upgrade, roll back. |
| Add a new kind | Schema, flow, guidance, rules. |
| Add a store, codec or printer | One page per adapter. |
| Ship a distribution with your own sign-in | The Entra ID example, generalised. |
| Read a trace of a test session | `cartograph ux`. |

### 4.4 Reference (neutral description)

Structure it as the machinery is structured, so users can navigate both
together ([reference](https://diataxis.fr/reference/)).

| Page | Purpose |
|---|---|
| Glossary | Each word, one plain line, one example, and what it comes after (exists in product; give it a stable page). |
| Kinds | One page per kind: fields, units, which kinds it links to, which checks apply. Generate from the schemas, then add the examples by hand. |
| Checks | Each check id, what it tests, and which step fixes it. |
| Flows and steps | Each flow's steps, order and fields. |
| Roles and permissions | The four roles and what each can do. |
| Settings and environment variables | Every `CARTOGRAPH_*` setting, its default and effect. |
| Command line | Each command and flag. |
| HTTP API | From `openapi.yaml`. |
| MCP tools and prompts | Each tool, argument and result. |
| Client port | The Go interface and the conformance suite format. |
| Contract documents | The five documents and the `x-cartograph-*` extensions. |
| File layout and manifest syntax | Vault, manifests, state manifest. |
| Release and compatibility | What each version promises. |

Generated reference is a start, not the whole job; the site warns
against treating it as sufficient
([reference](https://diataxis.fr/reference/)).

### 4.5 Explanation (why, read at leisure)

| Page | Purpose |
|---|---|
| About the order of work | Why purpose and goals come before gaps, and gaps before projects. |
| About projects, programmes, portfolios and operations | What each is, how they differ, where Cartograph follows or departs from PMI, APM and MSP. From `TAXONOMY.md`, in plain words. |
| About gaps, problems and indicators | What each says and why they are kept apart. |
| About benefits, and how Cartograph spreads them across kinds | Goal, key result, indicator, beneficiary group. |
| About checks | Why a check never blocks a draft but blocks a submission, and why a check nobody can pass checks nothing. |
| About change sets | Why every change goes through one, and what review is for. |
| About working together | Presence, drafts, versions, guided flows being private. |
| About agents | Read and propose, people decide; one bar for people and agents. |
| About the architecture | Hexagonal layout, the dependency rule, ports and adapters. |
| About the vault | Why files, what the state manifest is, how a store can be swapped. |
| About walk-first | Why every task starts as a walk, with the workspace one step away. |

### 4.6 In-product placement

Documentation is not only a website. Put each kind where its user is:

- Tutorial: onboarding walk and tour. No separate page needed.
- How-to: the entry points on Home and on each register ("Start a
  project"), and the task walks themselves.
- Reference: workspace, sheets, registers, charter, glossary.
- Explanation: a "Help" link on a screen, and "About this check" on a
  check. Short, linked, never in the way.

---

## 5. Tone and style rules

The Diátaxis site gives a voice to each kind
([tutorials](https://diataxis.fr/tutorials/),
[how-to guides](https://diataxis.fr/how-to-guides/),
[reference](https://diataxis.fr/reference/),
[explanation](https://diataxis.fr/explanation/)). The project's own
rules add to it: plain words, second person, purpose then practice, no
rhetoric, no scale opinions, no internal vocabulary, and say it once
(`DESIGN_RULES.md` "A hint says what to write, not what a thing is").

### 5.1 Rules for every page

- Short sentences. Plain English. Standard terms. No em dashes.
- Use Cartograph's words: *indicator*, *outcome*, *gap*, *operation*,
  *change set*. Do not shorten them or invent synonyms. If a term is
  new on the page, give its full name and a short gloss once.
- Do not state sizes or durations as facts ("usually three years").
  Cartograph serves a hobbyist and a nation.
- One kind per page. If a page starts to explain, link to an
  explanation page. If it starts to instruct, link to a how-to.
- Say it once. A title and its first sentence should not say the same
  thing.
- Use the running example: the fictional produce cooperative in
  `cartograph-engine/examples/minimal` (depots, grading, members, retail
  buyers). Never use a real organisation, and never a ministry. Take
  names from that vault so a reader can open the same records.

### 5.2 Tutorial voice: "we", the walk, the visible result

Do:
- "In this tutorial, we will start a project and see its charter."
- "Type a name for your organisation. You should see it appear at the
  top of the page."
- "Notice that the next question has already been filled in from your
  idea."
- "Well done. You have a project."

Don't:
- "In this tutorial you will learn what a project is." (Presumes what
  the learner will take away.)
- "A project is a temporary endeavour producing outputs, which differ
  from programmes because..." (Explanation mid-lesson. Link to it.)
- "You can choose a programme, a portfolio or neither, depending on how
  your organisation works." (A choice. A tutorial has one route.)

### 5.3 How-to voice: the goal, the imperative, the fork

Do:
- Title: "Record a reading".
- "This guide shows you how to record a reading for an indicator."
- "If the indicator has no reporting cycle, add one first."
- "Pick the indicator. Enter the period and the value. Choose who
  confirms it."
- "For every field in a reading, see the Readings reference."

Don't:
- "How to think about readings" (that is explanation).
- "Readings are the observed values of an indicator over time, and
  matter because..." (Background in a task page.)
- "Click the Add button, then click inside the box." (A tool-level step
  any competent user knows.)
- "Do you want to record a reading?" (A "whether" title, not a "how".)

### 5.4 Reference voice: neutral, uniform, complete

Do:
- "Project. A temporary piece of work with one team, one sponsor and
  one budget."
- "Direction. One of: increase, decrease, maintain."
- "Required. A project needs at least one beneficiary group before it
  can be submitted."
- Use the same fields, in the same order, on every kind's page.

Don't:
- "Projects are great for bounded work, and we recommend that you try
  them first." (Opinion and advice.)
- "Cartograph helps you to define a project, which you can do by..."
  (Instruction mixed into description.)
- A different layout for each kind because the writer found it more
  interesting.

### 5.5 Explanation voice: discursive, with reasons and alternatives

Do:
- "A gap is what is wrong. A problem is what it does to somebody.
  Cartograph keeps them apart so that a gap can be measured while a
  problem is told in the words of those who bear it."
- "Another tool might let a project report straight to an outcome. We
  chose to go through an indicator, because an outcome without a
  measure cannot be seen to move."
- Admit where Cartograph departs from the standard definition, and say
  why.
- Title with "About": "About change sets."

Don't:
- "To create a change set, click New change set." (A how-to.)
- A list of every field of a change set. (Reference.)
- "Everyone knows a gap analysis is the first step." (Opinion as fact,
  and a scale claim in disguise.)

### 5.6 Tone in the product itself

Words in the interface follow the same split.

| Place | Voice | Do | Don't |
|---|---|---|---|
| A walk's question | Imperative or a plain question | "Which team owns it?" | "Please specify the owning organisational unit." |
| A walk's hint | Instruction, with one example | "Write what happens today that falls short. For example: two in five deliveries are graded after they leave the depot." | "A shortfall in results, not a missing thing." |
| A "what it is" line | Reference: one plain sentence | "A gap is how things are now, against how they should be." | "Gaps are a key concept in strategic planning." |
| A check message | Reference: what, where | "This project has no beneficiary group. Add one in Beneficiaries." | "Oops! You forgot something." |
| "Why this check" link | Explanation | "A project with no beneficiary cannot show who it is for, so approvers cannot weigh it." | A rule with no reason. |
| A button | Icon plus a short noun, full sentence in the label | "Add gap" | "Click here to add a gap" |
| Tutorial or tour box | "We", one step, visible result | "Type what you are working on. We will find related records." | A paragraph of definitions. |

### 5.7 A check before publishing any page

1. Which kind is it? Ask the two compass questions
   ([compass](https://diataxis.fr/compass/)).
2. Is there anything in it that belongs to another kind? Move it or
   link to it.
3. Does the title name a goal (how-to), a result (tutorial), a thing
   (reference) or a topic with "About" (explanation)?
4. Could a competent reader skip every sentence of background and still
   finish the task? (How-to.) Could a learner finish with no choice to
   make? (Tutorial.)
5. Is every example from the running example or marked as sample?
6. Does it use only Cartograph's words, with no scale opinions or
   rhetoric?

---

## Sources

All fetched on 2026-10-17. Each point above cites its page where it is
made. Primary sources are the Diátaxis site itself:

- https://diataxis.fr/
- https://diataxis.fr/start-here/
- https://diataxis.fr/map/
- https://diataxis.fr/compass/
- https://diataxis.fr/foundations/
- https://diataxis.fr/tutorials/
- https://diataxis.fr/how-to-guides/
- https://diataxis.fr/reference/
- https://diataxis.fr/explanation/
- https://diataxis.fr/tutorials-how-to/
- https://diataxis.fr/reference-explanation/
- https://diataxis.fr/how-to-use-diataxis/
- https://diataxis.fr/quality/
- https://diataxis.fr/application/

Cartograph material read (local, not quoted at length):
`cartograph-engine/docs/{TAXONOMY,DESIGN_RULES,UI_CONTRACT,DEPLOYMENT,
DISTRIBUTIONS,EXTENDING,EVALUATING_PEOPLE}.md`,
`contract/flows/project.flow.json`,
`contract/guidance/en/project.guidance.json`,
`cartograph-ui/src/copy.ts`, `src/onboarding`, `src/tour`,
`src/surfaces/home`, and the route tree under `src/routes`.

## Open questions

0. **The engine's own docs still use another example.**
   `cartograph-engine/docs/TAXONOMY.md` and `DESIGN_RULES.md` describe
   their running example as a public body. This guide now uses
   the produce cooperative from `examples/minimal`, as instructed. The
   two should be made to agree; I did not edit the engine.

1. **Complex hierarchies (settled, with a limit).** The current
   Diátaxis site has no page on complex hierarchies or multiple
   audiences. I checked `/complex-hierarchies/` (404), the site's sitemap
   (it lists only the home page), the site's navigation, the source
   folder of its GitHub repository
   (`evildmp/diataxis-documentation-framework`, `source/`: application,
   compass, explanation, foundations, how-to-guides, how-to-use-diataxis,
   map, quality, reference, reference-explanation, start-here, theory,
   tutorials, tutorials-how-to) and the Wayback Machine (blocked for
   this tool). Section 4.0 therefore records what the pages say
   indirectly, marks my inferences as inferences, and treats the split
   between people and operators as Cartograph's own decision. If an
   older or newer version of the site had such a page, it is not
   reachable from the live site or the repository's current tree.
2. **Where the documentation lives.** A separate site, or in-repo
   Markdown, or both? `AGENTS.md` says no notes or plans are committed,
   which does not forbid user documentation, but the choice needs a
   decision. Also: whether the engine repository or the UI repository
   owns the tutorials.
3. **Which sentences are in-product and which are pages.** The "what it
   is" lines already come from the engine's guidance JSON. Whether the
   explanation pages should reuse that source, so a term is defined
   once, is not settled.
4. **Agent documentation format.** Section 2.8 says agents get the same
   kinds as MCP prompts and guides. I did not audit what `internal/mcp`
   serves today against that.
5. **Tutorial safety.** The tour saves nothing, while the onboarding walk
   saves real records. A true tutorial should be safe to repeat. Whether
   to give onboarding a sandbox, or to keep it as a real first-run walk,
   is a product choice.
6. **Evidence.** The counts (49 controls, 7 and 1) come from the brief
   (COMMON.md); I did not re-run the audit. The mode-mixing list in 3.4
   is from reading copy and routes, not from watching people use them.
7. **Translation.** Diátaxis says nothing here about other languages.
   Guidance exists under `guidance/en` only; whether docs follow the
   same locale split is open.
