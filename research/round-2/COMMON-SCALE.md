# Shared brief, part two: programmes, portfolios and large projects

Read ../COMMON.md first (the product, the users, Diátaxis, the rules on
sources, copyright, words and read-only work). Then this.

## Why this round

In the field, some people use Cartograph to define **programmes** with
long time horizons (years, sometimes decades), some to set up
**portfolios**, and some to define **projects so large that they need
sub-projects** (components) for specific parts. The first round of
research centred on a single project and its charter
(../charter-standards.md, ../planning-and-data.md, ../tools-and-ux.md and
the guide under ../guide/). This round asks what those other users need,
from trusted sources, and how Cartograph should serve them.

## What Cartograph has today (read the code for detail)

- Kinds: Portfolio, PortfolioDecisions, Programme, Project (with
  `components`, which can be sub-projects), Operation; Goal levels;
  Gap; KPI; Allocation and FundingSource.
- Schemas: cartograph-engine/contract/schemas/{portfolio,
  portfoliodecisions,programme,project,allocation,fundingsource,common}.schema.json;
  guidance in contract/guidance/en; flows in contract/flows.
- Decisions on these words: cartograph-engine/docs/TAXONOMY.md (search
  for programme, portfolio, component, pathway, tranche, benefit).
- Screens: cartograph-ui src/routes/{programmes,portfolios,projects},
  src/surfaces, src/projects (components, critical path).
- The example: cartograph-engine/examples/minimal (two programmes, one
  portfolio, a project).
- The research and guide from round one, as above. New pages must fit
  that guide (../guide/WRITING.md, ../WRITE-RULES.md).

## Rules for this round

As in COMMON.md. Cite every claim with its URL. Say plainly what you
could not read at source (pmi.org and iso.org refused the last round;
try other trusted routes: official public extracts, government
publications that quote the standards, university open textbooks, the
APM and AXELOS/PeopleCert public pages, GovS 002 on
projectdelivery.gov.uk, the Infrastructure and Projects Authority on
gov.uk). Never state a size or a duration as a rule (Cartograph serves a
hobbyist and a nation): say what changes with scale, not where the line
is. Write only under ~/git/project-cartograph/.eval/research/scale/.
