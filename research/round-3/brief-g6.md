# G6: robust across domains

The owner wants the design robust enough to serve many different
domains, not only UK government projects. Find the established,
trusted frameworks each domain uses to define, approve, steer and
measure work, read them at source where possible, and test whether a
domain-neutral design could serve them all.

Cover at least these domains, with one or two primary sources each:
- **Project, programme and portfolio standards beyond the UK:** ISO 21500
  family (21502, 21503, 21504, 21505 governance), IPMA Individual
  Competence Baseline, PMI (through public pages and open textbooks),
  the European Commission's PM² methodology (open, free).
- **Public sector elsewhere:** New Zealand Treasury Better Business
  Cases; Australian Department of Finance (or a state) investment
  frameworks; Canada Treasury Board policy on results; US OMB Circular
  A-11 (Part 6, performance) and the GAO's guidance; the World Bank
  project appraisal and results framework.
- **International development and humanitarian:** EU project cycle
  management and the logframe; USAID; the OECD DAC criteria; IATI.
- **Construction and infrastructure:** RIBA Plan of Work; ISO 19650
  (information management) at the level of stages and decisions; the
  IPA Routemap.
- **Technology and agile:** the Scrum Guide; SAFe's Lean Portfolio
  Management (public pages); ITIL or ISO/IEC 20000 for services and
  operations where a project hands over.
- **Health:** WHO or NHS guidance on programme and service planning and
  indicators (for example the NHS business case or the WHO indicator
  metadata registry).
- **Research funding:** a major funder's application structure (UKRI,
  the ERC or Horizon Europe), with impact pathways.
- **Philanthropy and nonprofits:** theory of change and outcome
  frameworks from a recognised body (for example the Charity Commission,
  NPC or the Kellogg Foundation), 360Giving.
- **Corporate strategy and performance:** Objectives and Key Results (a
  primary source), the balanced scorecard (Kaplan and Norton, a primary
  or university source), Hoshin Kanri if well sourced.
- **Impact measurement:** IRIS+ (Global Impact Investing Network), the
  Impact Management Project's five dimensions, SDG indicator metadata.
- **Process improvement:** Lean Six Sigma's DMAIC from a recognised body
  (ASQ).

Write g6-domains.md:
1. For each domain: what it calls the work and its parts, the stages and
   decisions, what it measures and how, the roles, and what record it
   keeps. A cross-domain table of these.
2. **The common core**: the concepts every domain has under different
   names (a purpose, intended results, a chain from work to change, a
   decision to commit resources, stages, roles and accountability,
   risks and assumptions, measures with baselines and targets, reviews,
   a handover to ongoing operation), and a vocabulary map from each
   domain's words to the core.
3. **What differs** and must be configurable rather than built in:
   terminology, stage names and count, approval routes, mandatory
   documents, measurement conventions, reporting cycles.
4. **Design criteria for domain robustness**, checkable, each with the
   sources that motivate it, marked essential or desirable: for example
   a configurable vocabulary, stage models as data, measures that fit
   any of the indicator conventions, export to the domain's own standard.
5. Where Cartograph today is tied to one domain's way of working.

Output: ~/git/project-cartograph/.eval/research/greenfield/g6-domains.md
