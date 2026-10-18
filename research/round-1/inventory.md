# What Cartograph does today, on the Diátaxis map

Written from a read of `cartograph-ui` (`src/routes`, `src/surfaces`,
`src/projects`, `src/copy.ts`) and `cartograph-engine` (`README.md`,
`docs/TAXONOMY.md`, `docs/UI_CONTRACT.md`, `docs/DEPLOYMENT.md`,
`contract/flows`, `docs/adr`). Nothing was run. Every row comes from code
or text that is in the repositories now.

## How the sorting works

Diátaxis sorts a user need with two questions: does it inform action or
thinking, and is the user studying or working? The four answers are
tutorial, how-to guide, reference and explanation
([the compass](https://diataxis.fr/compass/)). In the tables below, the
last column says which need a capability serves, and what kind of page
would meet it.

- **L** = learning (tutorial). **T** = task (how-to guide).
  **R** = look-up (reference). **U** = understanding (explanation).
- Who: **N** non-technical person, **P** power user or analyst,
  **A** administrator, **D** developer or agent builder.

## 1. Inventory

### 1.1 Screens in the web interface

| Screen (route) | What a person does there | Who | Needs |
|---|---|---|---|
| Welcome walk (`/welcome`) | Name the organisation, state vision and mission, name goals, refine one into objectives and outcomes. One question a screen, skippable, saves as it goes. Ends on a map. | N | L |
| Home (`/`) | Type what you are working on in your own words. Cartograph finds matching records, or offers the three likeliest kinds to define it as. Also: "Pick up where you left off", recent records, counts per register, "Next in your strategy". | N | T, L |
| New (`/new`) | Pick the next stage of the strategy to write, by order of work. A few yes/no questions decide whether work is a project, component, programme, portfolio or service ("Which describes it best?"). | N | T, U |
| Strategy (`/strategy`) | Read the purpose, goals, objectives and outcomes as a tree, with SMART marks, gaps, work and indicators per row. "Arrange" edits it. Edit the purpose and logo. | N, P | T, R |
| Goals (`/goals`, `/goals/$id`) | Edit a goal, objective or outcome: aim, key results, owner and horizon, rationale, "also leads to". | N, P | T |
| Projects (`/projects`, `/projects/$id`) | List, open and edit projects. Each has a stage rail: Context, Problem, Objectives, Governance, Scope, Plan, Handover, Approval. Checks sit beside every step. | N, P | T |
| Start a project (`/projects/start`, `/projects/prepare`) | A short walk: what it is about, gaps, outcomes, who it is for, team, name. Things named in passing are filled in afterwards, one at a time. "Prepare" adds what the walk will pick from first. | N | L, T |
| Project steps (`/projects/$id/initiation/*`) | Fifteen steps: alignment, beneficiaries, problem, objectives, resources, stakeholders, scope, deliverables, schedule, costs, data, risks, success, handover, approval. | N, P | T |
| Charter (`/projects/$id/charter`) | Read the charter as a document, edit in place, print, download PDF, open in a tab. | N | T, R |
| Results framework (`/projects/$id/framework`) | See a project's goal alignment as a table. Programmes have one too. | P | R |
| Closing and handover (`/projects/$id/closing`, `/landing`, `/handoff`) | Judge success criteria at closure and handover, record events, then hand off. Hand-off refuses while a blocking check stands and writes a bundle for the delivery tool. | N, P | T |
| Programmes (`/programmes/*`) | Aim, problems, components, alignment, teams, stakeholders, risks, pathway, charter, framework. Checks advise only. | N, P | T |
| Portfolios (`/portfolios/*`) | Aim, strategy, what it holds, governance, and decisions to invest, hold or stop. | N, P | T |
| Operations (`/operations/*`) | Record a running service: service, alignment, service levels, data, mandate, charter. | N, P | T |
| Gaps (`/gaps/*`) | Record a gap: current and desired state, who it affects, scope, shortfall, evidence. Quick add from a dialog. | N, P | T |
| Indicators (`/kpis`, `/kpis/$id/*`) | Define an indicator (unit, direction, baseline, target, owner, sources, cycle, breakdown), how it is computed from source metrics, its control limits, and record readings per period with a chart. | N, P | T, R |
| Sheets (`/sheets`, `/sheets/$kind`) | Tables of shared lists: teams, beneficiary groups, resources, segments, units, budgets, allocations, assumptions, data sources, reporting cycles. Add, edit, search, filter. | N, P, A | T, R |
| Data sources (a sheet) | Where numbers come from, access and quality, and the metrics a source gives, each written as an aggregation for an analyst to map. | P | T |
| Graph (`/graph`) | Every record in order of work, with links. Point to see links, select to follow them. | N, P | U, R |
| Glossary (`/glossary`) | Every term as a dictionary gives it, with example. | N | R, U |
| Change sets (`/changesets`, `/changesets/$id`) | List yours and others', review one record by record with checks and a charter preview, trim items, ask for changes, merge, discard, hand to an agent. | N, P, A | T |
| Working-in bar and merge bar (every screen) | Name, switch, leave and rename the change set you work in; review and merge from anywhere. | N, P | T |
| Drafts (`/drafts`) | Carry on with your own drafts, or see others'. | N | T |
| Proposals (`/proposals/*`) | Accept or decline what an agent proposed, with what it changes and its checks. Older route; change sets replace most of it. | N, P | T |
| Agents (`/agents`) | Copy the MCP address to connect an agent, create a token for a client that cannot sign in, see connected agents, disconnect. | P, A | T |
| Agents at work (side panel) | Follow an agent step by step; hide or show agents; see others' agents on drafts. | N, P | T |
| Mentions (`/mentions`) | Comments that ask you, by name or through a team. | N | T |
| Comments (beside sections) | Write, reply, @-mention a person or team, resolve and reopen. | N | T |
| Access (`/access`) | Add people by address, give roles and teams, allow agents, remove. Also: Vocabularies (the words for classification, refresh and source forms) and Change control (the four roll-in policies). | A | T, R |
| Snapshots (`/snapshots`) | Every saved version, search by kind; recover removed records; apply files not yet in the workspace. "Rebuild index" and "Open vault folder" buttons appear with no handler in the code read. | P, A | T, R |
| Tour (menu: "Take the tour") | A guided tour that ends with a tutorial project that is not saved. | N | L |
| Presence (people here, follow) | See who is in a record, follow someone. | N | U |

### 1.2 Kinds of record

From `contract/schemas` and `docs/TAXONOMY.md`. The interface names them
in its own words (`copy.ts`).

| Layer | Kinds (interface word) | Who writes | Needs |
|---|---|---|---|
| Purpose and strategy | Purpose, Goal at three levels (goal, objective, outcome) | N, strategy editor | U, R |
| Evidence | Gap, Assumption, BeneficiaryGroup, Segment | N, P | U, R |
| Measures | KPI (indicator), KPIReadings (actuals), Unit, ReportingCycle, DataSource | N, P | T, R |
| Work | Portfolio, PortfolioDecisions, Programme, Project, Operation (service) | N, P | T, U |
| People and money | Team, Resource (roles and bodies), FundingSource (budget), Allocation, StakeholderMap | N, A | R |
| Workspace | Settings, vault | A | R |

### 1.3 Actions

| Action | Where | Who | Needs |
|---|---|---|---|
| Define a record by a walk | Welcome, Start a project, New, flows per kind | N | L, T |
| Change a record | Any editor, saved into a change set | N, P | T |
| Check a record | Check panel beside every step | N, P | T, R |
| Review and merge | Merge bar, `/changesets/$id` | N, P | T |
| Ask an agent to finish a change set | "Agent" button, paste a request | N, P | T |
| Record indicator readings | Indicator, Actuals | N, P | T |
| Add a data source and its metrics | Sheets, Data sources | P | T |
| Compute an indicator from source metrics | Indicator, Metric step | P | T, R |
| Hold the gain (control limits and response) | Indicator, Holding the gain | P | T |
| Run a project through DMAIC, control chart | Project, DMAIC | P | T, U |
| Sign off, record what happened | Project, Approval | N | T |
| Hand off | Project, Hand off | N, P | T |
| Print or download the charter PDF | Charter | N | T |
| Comment, mention, resolve | Beside sections | N | T |
| Invite people, set roles and teams | Access | A | T |
| Set change-control policy | Access, Change control | A | T, R |
| Edit the workspace's own words | Access, Vocabularies | A | T |
| Connect or disconnect an agent | Agents | P, A | T |
| Recover a removed record, apply a file | Snapshots | A | T |
| Import, export, diff, validate, render, report | `cartograph` command line only (`import`, `export`, `diff`, `validate`, `check`, `render charter`, `report`, `handoff`, `snapshot`) | P, D | T, R |
| Serve, deploy, size, sign-in | `docs/DEPLOYMENT.md`, `SERVERLESS.md` | A, D | T, R |
| Extend (kind, store, codec, authenticator) | `docs/EXTENDING.md` | D | T, R |

I found no screen for importing or exporting records. Those are command
line only today. The brief lists "import, export"; that is the answer
for the web interface.

### 1.4 What is built in that a person does not call a feature

These need explanation more than instructions.

- **Checks.** Marks beside a field and a list with fix links. They never
  block a save. A project's blocking checks stop a hand-off; a
  change set's `malformed` check stops a merge (ADR 0035). Programmes,
  goals, operations, portfolios and gaps have advice only (TAXONOMY D6).
- **The decision model** (Laya, ADR 0023). Optional. Ranks matches on
  Home, puts likely records first in pickers, adds advisory judgements.
  Off by default. Works without it, by shared words.
- **Change sets** (ADR 0022, 0024). Every change is made in one. A
  policy decides what may be merged.
- **Assumptions an agent declares** ("Decided for you", ADR 0033).
- **The order of work** (D28): which stage to write now.
- **Multiplayer** (`MULTIPLAYER.md`): two people typing in one sentence
  both keep their words; a conflict is a note, never a lost value.

## 2. Gaps

### 2.1 Nothing written for users

Every file under `cartograph-engine/docs` and `cartograph-ui/docs` is
for a developer or a deployer. The two `README.md` files say how to run
and build it. I found no page that a project officer could read. These
have **no user documentation at all**:

1. Getting started: what to do after the welcome walk. (L)
2. Defining a project, step by step, and what each stage wants. (L, T)
3. Reading and acting on checks. (T)
4. Review and merge, including what the merge bar's words mean. (T)
5. Recording readings. (T)
6. Data sources and metrics. (T)
7. Access, roles, teams. The role descriptions exist only as UI text. (T, R)
8. Agents: connecting one, following it, trusting what it did. (T, U)
9. Comments and mentions. (T)
10. The charter: reading, editing in place, printing, PDF, hand-off. (T)
11. Snapshots, recover, apply. (T)
12. Sheets and shared lists. (T, R)
13. Import and export from the command line, for a non-developer. (T)
14. Why the kinds are separate; what a gap is next to an outcome. (U)
15. A reference for what each kind holds, in the interface's words. (R)
16. Troubleshooting: "You are not on the access list", "Hand-off refused", "stale". (T, R)

### 2.2 Documented in the wrong kind

| Where | Problem | Better home |
|---|---|---|
| `cartograph-engine/README.md` "Run it" | Mixes a tutorial-style first run (`just stack`) with environment reference and a pointer to deployment. | Split: a short getting-started tutorial for a first run; settings stay in reference. |
| `docs/DEPLOYMENT.md` | One page holds a settings table (reference), recipes ("To turn on agents…") that are how-tos, and design talk about stateless replicas (explanation). | Three pages. |
| `docs/TAXONOMY.md` | Called a reference, but it is mostly explanation: long decisions (D1 to D72) with history and argument. The definitions at the top are reference. | Keep as explanation for developers; write a short user-facing reference of the kinds. |
| `docs/DESIGN_RULES.md` | Rules for designers, mixed with research and sources. Explanation and reference together. | Leave for contributors; do not point users to it. |
| `docs/UI_CONTRACT.md` | Explanation (three decisions) mixed with reference (controls table, client port) and a how-to for conformance. | Three pages for developers. |
| `docs/EVALUATING.md`, `EVALUATING_PEOPLE.md` | How-to for researchers ("Recording a test session") inside design explanation. | Separate how-to. |
| `copy.ts` hints | Guidance sits beside fields, such as "Describe it in your own words". Short hints like that are fine as in-product help. The longer ones teach (the gap hints with examples) and are tutorial or explanation text inside a form. | Keep short hints; link out for the "why". |
| `copy.ts` "tour" | A tutorial that is also an advert for the sections. It is the only learning material. | Keep it; write the written tutorial to match, and link both ways. |
| `cartograph-ui/README.md` | Layout list is reference; "Running it" is a how-to; both for developers. | Fine for its audience; mark it so. |
| Glossary (UI) | It is reference, and some entries lean toward explanation ("why"). | Keep entries to a definition and an example; link to explanation pages. |

### 2.3 Other things I noticed

- Words differ between places, which will confuse a reader of the
  docs: "change set" and "draft" and "proposal" all appear in the
  interface for related things (Drafts, Proposals, Change sets are three
  rail items or routes); the save button on a project says "Change set"
  but its dialog says "Save to change set". "Roll in" (Access) and
  "Merge" (merge bar) mean the same thing.
- "KPI" and "Indicator", "Operation" and "service", "Resource" and
  "role" are used for the same thing in different places. The draft docs
  use the interface's words (Indicator, service, role) and name the
  record kind once in reference.
- The snapshots page has two buttons with no handler that I found. Docs
  should not describe them until they work.
- A project has fifteen steps in its flow and eight stages that group
  them; Closure is a further page outside the flow. A reader sees both
  counts. The tutorial uses the stages.
- User tests found a screen shows too much. Documentation will not fix
  that, but a tutorial that mirrors the walk's one-step-at-a-time shape
  will not add to it.

## 3. Sources

- Diátaxis: [home](https://diataxis.fr/), [start here](https://diataxis.fr/start-here/), [compass](https://diataxis.fr/compass/), [tutorials](https://diataxis.fr/tutorials/), [how-to guides](https://diataxis.fr/how-to-guides/), [reference](https://diataxis.fr/reference/), [explanation](https://diataxis.fr/explanation/), [tutorials and how-to guides](https://diataxis.fr/tutorials-how-to/). All fetched.
- Cartograph repositories as listed at the top.

## Open questions

- Is the web interface the only target? The terminal interface is not
  built; a docs set should say "web" in each page title or front matter
  until it is.
- Should user docs ship inside the interface (a "Help" link; the rail
  has a `help` label in `copy.ts` but I found no route for it)?
- Who owns the words: the draft docs follow `copy.ts`. If the copy is
  renamed, the docs need a pass.
- Are "Rebuild index" and "Open vault folder" meant to work?
- Should `/proposals` and `/drafts` stay as separate screens next to
  change sets? The docs can only be as clear as the product.
