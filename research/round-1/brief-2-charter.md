# Agent 2: what a project charter is, by the standards

Read COMMON.md in this folder first, and Diátaxis (you will write the
findings as an explanation).

Research what a good project charter (and its equivalents) contains,
from trusted standards and guidance:
- PMI: the PMBOK Guide 7th edition and The Standard for Project
  Management; the Agile Practice Guide on agile charters.
- PRINCE2 (AXELOS/PeopleCert): the project brief and the project
  initiation documentation (PID), the business case, the project mandate.
- ISO 21502:2020 (project management guidance) and ISO 21500.
- APM Body of Knowledge (7th edition).
- Government practice: HM Treasury Green Book and the five case model
  for business cases; GOV.UK service manual on discovery and alpha.
- Development practice: the logical framework approach (logframe) and
  theory of change / logic models (W.K. Kellogg Foundation logic model
  guide, USAID or EU guidance).
- Agile and lean alternatives: the Inception Deck, the Project Model
  Canvas, the lean canvas, where well documented.

Write **charter-standards.md**:
1. A matrix: each element a charter may contain (purpose / business need,
   problem, objectives, success criteria, scope in and out, deliverables,
   milestones, budget, stakeholders, governance and roles, authority and
   approval, assumptions, constraints, risks, dependencies, benefits,
   handover to operations, and any element the sources add) against each
   source, marking required, recommended or absent, with citations.
2. **What is essential** to a charter (the minimum every source agrees
   on), **what is common but optional**, and **what belongs to later
   planning** rather than the charter.
3. How the sources differ for small, medium and large work, and for
   agile versus predictive delivery (without giving size opinions as
   rules: Cartograph serves a hobbyist and a nation alike).
4. **Cartograph against the standards**: read the engine's project
   schema (contract/schemas/project.schema.json), guidance
   (contract/guidance/en/project.guidance.json), the walk's stages
   (cartograph-ui src/projects/types.ts) and the rendered charter
   (internal/render). Say what Cartograph asks that the standards also
   ask, what it asks that they do not (and whether that is justified),
   and what they ask that it lacks.

Output: /home/cascadura/git/project-cartograph/.eval/research/charter-standards.md
