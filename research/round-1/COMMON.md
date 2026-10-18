# Shared brief for every research agent

## The product

Cartograph is an open-source tool that helps an organisation write down
what it has decided to do and why: its purpose, goals, objectives and
outcomes, the indicators that measure them, the gaps it sees, and the
work that closes them (portfolios, programmes, projects, and ongoing
services called operations). Its centre today is the **project**: a
person is walked through defining one (context, problem, objectives,
governance, scope, plan, handover, approval) and Cartograph renders a
**project charter** from it. It goes a little beyond chartering: it asks
people to think ahead about the plan (milestones, costs, risks, data)
without making them do all of the planning, and it asks them to specify
how the data behind each indicator will be captured (data sources,
metrics, reporting cycles).

Two repositories, read-only for you:
- /home/cascadura/git/project-cartograph/cartograph-engine (engine,
  contract, docs: docs/TAXONOMY.md, docs/DESIGN_RULES.md,
  docs/UI_CONTRACT.md, docs/EVALUATING_PEOPLE.md, contract/schemas,
  contract/guidance/en, contract/flows)
- /home/cascadura/git/project-cartograph/cartograph-ui (the web
  interface: src/copy.ts holds every word a person reads, src/routes and
  src/surfaces the screens)

## Who uses it

Both **non-technical** people (project officers, managers, sponsors in a
ministry, an NGO, a cooperative) and **technical / power users**
(analysts, PMO staff, data people, administrators, developers and AI
agents connecting over MCP). It must be friendly to the first and let
the second "go all out".

## What users told us (in-person tests, no data recorded)

The interface looks "too cascading": too many elements, hard on the
eyes, frightening. Every screen shows too much information and too many
buttons; people gave up at the first screen after onboarding. Home is
too vague (one open question). The only part they could do, and liked,
was the onboarding walk: one question per screen, plain words, one next
step. We decided "walk-first": every core task starts as a guided walk,
with the full workspace one step away for those who want it
(ProjectCartograph/cartograph-ui#136). A screen audit found the median
screen shows 49 controls in view and 2 to 3 primary actions; the
onboarding walk shows 7 controls and 1.

## The common framework: Diátaxis

Read https://diataxis.fr/ and https://diataxis.fr/start-here/ first, then
the pages they lead to that bear on your task (the map, the compass,
tutorials, how-to guides, reference, explanation, and what the site says
about tone and language). Diátaxis sorts what a user needs along two
axes, action or cognition, and acquisition (study) or application
(work), into four kinds: tutorials, how-to guides, reference and
explanation. Use its map not only for documentation but as a lens on
**how people use the product**: someone learning, someone doing a task,
someone looking something up, someone trying to understand.

## Rules

- **Sources:** valid, trusted ones only: standards bodies (ISO, PMI,
  AXELOS/PeopleCert, APM), governments (GOV.UK, HM Treasury, USAID, UN),
  peer-reviewed or well-established research (Nielsen Norman Group,
  Baymard, academic papers), the Diátaxis site itself, and primary
  vendor documentation for tool comparisons. Cite each claim with its
  URL. No blogs or content farms unless nothing better exists, and say
  so when you use one.
- **Copyright:** paraphrase. At most one short quotation (under 15 words)
  per source, in quotation marks, attributed.
- **Words:** plain English, short sentences, standard terms, no em
  dashes. Where you write documentation for users, use the conversational,
  second-person tone Diátaxis describes.
- **Read-only:** do not edit either repository, do not run git or jj
  write commands, do not start servers, do not open pull requests or
  issues. Write only the output files your brief names, under
  /home/cascadura/git/project-cartograph/.eval/research/.
- **Finish:** end your output with a short "Open questions" list of what
  you could not settle, and reply with just the paths you wrote.
