# The evidence

This page sets out what the design rests on: what established frameworks across many domains agree a tool for defining and steering work must hold, where they differ, and what people's use showed. Each claim cites [the bibliography](../reference/bibliography.md), which also says how far each source was read.

## How the evidence was gathered

The question was asked without assuming the answer: not "what should Cartograph add?" but "what must a tool for defining and steering work be, whoever uses it?". Primary sources were read at source wherever they are published: government guidance, standards bodies, funders, open data standards and design research, across public administration in five countries, international development, project and programme standards, construction, software and services, health, research funding, charities, corporate strategy and impact investment. Where a standard is sold or restricted, only its public pages were read, and the bibliography marks it *summary*, or *in part* naming the public pages; no requirement rests on such a source alone.

Alongside the reading, people were watched using an exploratory implementation of Cartograph, and its screens were audited ([FIELD](../reference/bibliography.md)). Several readers worked on the questions apart, so where they agree, the agreement is independent.

## Every domain holds the same core

Whatever the domain, the same concepts appear under different names.

```mermaid
flowchart LR
  PU["Purpose"] --> RE["Intended results, near to far"]
  RE --> CH["How the work is expected to bring the change about"]
  CH --> DE["A decision to commit resources"]
  DE --> ST["Stages or cycles"]
  ST --> ME["Measures with baselines and targets"]
  ME --> RV["Reviews"]
  RV --> HO["Handover to something that carries on"]
  HO --> EV["Evaluation and learning"]
```

Beside that chain sit roles and accountability, risks and assumptions, who is affected, money, and where each figure comes from.

| Concept | UK public sector | International development | Software | Charity | Corporate |
|---|---|---|---|---|---|
| Purpose | Strategic case | Overall objective | Product goal | Purposes | Mission |
| Intended results | Spending objectives, benefits | Outcomes, impact | Increments | Outcomes | Objectives |
| How change happens | Logic model | Intervention logic | Rarely explicit | Theory of change | Rarely explicit |
| Decision to commit | Business case approval | Financing decision | Funding of an epic | Trustees' decision | Planning cycle |
| Stages or cycles | Strategic outline, outline and full case | Identification to evaluation | Sprints | Grant cycle | Quarters |
| Measures | Benefit measures | Indicators with baseline, target, actual | Rarely | Outcome measures | Key results |
| After delivery | Benefits realisation review | Completion report, evaluation | Live service | Impact report | Grading |

Sources: [HMT-GREEN](../reference/bibliography.md), [HMT-CASES](../reference/bibliography.md), [EC-PCM](../reference/bibliography.md), [IATI](../reference/bibliography.md), [WB-CYCLE](../reference/bibliography.md), [SCRUM](../reference/bibliography.md), [SAFE](../reference/bibliography.md), [KELLOGG](../reference/bibliography.md), [NPC](../reference/bibliography.md), [CC-REPORT](../reference/bibliography.md), [OKR](../reference/bibliography.md).

The software and corporate columns show where a domain leaves a concept implicit, not where it lacks one: a product team still has a goal, a decision to fund and a way to tell whether it worked.

## What differs is settings, not structure

Where the frameworks disagree, they disagree on things a tool can hold as data:

- **Vocabulary.** One level is a core responsibility in Canada, a strategic goal in the United States, a purpose in the logical framework and an objective in OKRs ([TBS-RESULTS](../reference/bibliography.md), [OMB-A11](../reference/bibliography.md), [EC-PCM](../reference/bibliography.md), [OKR](../reference/bibliography.md)).
- **The shape of the results hierarchy.** Two levels, a fixed tree, four rows of a matrix, or perspectives linked as cause and effect rather than as levels of a results chain ([OKR](../reference/bibliography.md), [TBS-RESULTS](../reference/bibliography.md), [EC-PCM](../reference/bibliography.md), [BALANCED-SCORECARD](../reference/bibliography.md), [KN-2008](../reference/bibliography.md)).
- **Stages.** PM² has four phases, the RIBA Plan of Work eight stages, Scrum none ([EC-PM2](../reference/bibliography.md), [RIBA](../reference/bibliography.md), [SCRUM](../reference/bibliography.md)).
- **Who approves.** A steering committee, a minister, a board, a team's own cadence ([EC-PM2](../reference/bibliography.md), [NZT-BBC](../reference/bibliography.md), [SCRUM](../reference/bibliography.md)).
- **What is required at each step**, how a target is read (a value by a date, a threshold, a graded stretch), and the reporting calendar.

A design that builds in one answer to any of these serves one domain. This is the case for [profiles](decisions/DD-0008-profiles-hold-what-differs-between-domains.md).

## The case grows, and every step is a decision

The UK's strategic outline, outline and full business cases, New Zealand's indicative and detailed cases, the World Bank's concept and appraisal, GOV.UK's discovery, alpha and beta, and RIBA's stages describe one behaviour ([HMT-CASES](../reference/bibliography.md) 4.13 to 4.25, [NZT-BBC](../reference/bibliography.md), [WB-CYCLE](../reference/bibliography.md), [GDS-MANUAL](../reference/bibliography.md), [RIBA](../reference/bibliography.md)). The same parts of the justification become more complete; detail that is not needed yet is deferred; and each step ends in a decision whose outcomes include changing the scope, trying another option, piloting, postponing and stopping ([HMT-CASES](../reference/bibliography.md) 4.14).

Two points follow for the design. The case is one record that grows, not a set of documents written in turn. And stopping is an ordinary outcome, not a failure of the tool.

## The work does not end at delivery

Most tools for managing work stop when it is delivered. The frameworks do not. Benefits are planned in outline at the start, given owners and baselines before commitment, tracked during delivery, accepted by a named owner at handover, and reviewed after the work has closed ([IPA-BENEFITS](../reference/bibliography.md), [NISTA-BENEFITS](../reference/bibliography.md), [NISTA-GATES](../reference/bibliography.md) Gate 5, [GOVS002](../reference/bibliography.md)). Development finance writes completion reports, and evaluation looks back later still ([WB-CYCLE](../reference/bibliography.md), [OECD-CRITERIA](../reference/bibliography.md)). Benefits guidance also asks for the harms (disbenefits), the benefits nobody planned, and who receives each.

## Evaluation is designed in from the start, in proportion

The Magenta Book, the OECD's criteria and the guidance on applying them, logic model guides and US evidence law agree: before delivery, write down how the change is expected to happen, what is being assumed, which decisions the evidence must inform, and what will be measured from what baseline ([HMT-MAGENTA](../reference/bibliography.md), [OECD-CRITERIA](../reference/bibliography.md), [OECD-APPLYING](../reference/bibliography.md), [KELLOGG](../reference/bibliography.md), [OMB-A11](../reference/bibliography.md)). How much checking is proportionate is itself a judgement to record, and the OECD warns against applying its criteria mechanically.

They differ on three things the design must leave open: how rigorously an effect must be attributed to the work, whether a target is an expectation or a stretch, and whether evaluation must be independent ([HMT-MAGENTA](../reference/bibliography.md), [OKR](../reference/bibliography.md), [SCRUM](../reference/bibliography.md)).

## A measure means the same to every reader

Indicator guidance prefers quantitative indicators, because everyone reads their results the same way, and uses qualitative observation to supplement them ([USAID-TIPS](../reference/bibliography.md) criterion 4). Each scale of measurement allows its own summaries: ordered levels say which is higher but not by how much, so a median holds however they are numbered while a mean does not ([STEVENS](../reference/bibliography.md)). Judgements that resist counting are made credible as rubrics, ordered levels each described ([RUBRICS](../reference/bibliography.md)). Results standards say whether an indicator can be aggregated ([IATI](../reference/bibliography.md)); a rate rolls up only through its numerators and denominators, and an association in an aggregate can disappear or reverse in its parts, so an aggregate is read with its disaggregation ([SIMPSON](../reference/bibliography.md)).

## Assurance advises; authority decides

Assurance reviews advise and approvers decide. The author never gives the formal assurance, and how much assurance is needed grows with the work's complexity and risk ([HMT-AQUA](../reference/bibliography.md) 3, 5.1; [NISTA-GATES](../reference/bibliography.md)). The weight of review is therefore a setting, from a person looking back at their own work to a review from outside the organisation, and never an approval.

## People start from the change

People in the field could say what they wanted to change. They gave up when the tool asked them first to classify their work into its own kinds, and when a screen showed everything at once: the median screen of the exploratory implementation showed 49 controls; the one screen people finished, a guided walk, showed 7 ([FIELD](../reference/bibliography.md)). Design research explains both: people work from their own mental models, not the designer's; a choice put to someone unsure what they want, or between options hard to compare, is put off or abandoned, although across studies the number of options alone has on average almost no effect ([CHOICE-OVERLOAD](../reference/bibliography.md), [HCI-HICK](../reference/bibliography.md)); one question per page helps people with little confidence ([GDS-PATTERNS](../reference/bibliography.md)); and progressive disclosure keeps the advanced one step away rather than in the way ([NNG](../reference/bibliography.md)).

The order in which every framework asks its questions matches what people could do: what is wrong, what should be different and for whom, how it will come about, how we will know, and only then who decides and what it costs.

Watching people use a service is how such mismatches are found, and services are expected to keep learning from use ([GDS-MANUAL](../reference/bibliography.md)). Recording use is not needed to provide the service, so storing or reading anything on a person's device for it needs their consent, given by a positive act ([ICO-PECR](../reference/bibliography.md)); leading practice asks first and lets people change their choice ([GOVUK-COOKIES](../reference/bibliography.md)).

## The open standards use one record at any scale

IATI's activity, OC4IDS's project and 360Giving's grant are each one record whatever the scale, with typed links to parents and children; the scale is the publisher's choice ([IATI](../reference/bibliography.md), [OCDS](../reference/bibliography.md), [360GIVING](../reference/bibliography.md)). They require identifiers unique beyond one organisation, parties with roles, money with its currency, standard dates, and a small required core with named extensions. None of them holds the reasons, assumptions and decisions that are at the heart of a case, so the record must be richer than any of them and map to each.

## Records outlive the tool, the server and the connection

Local-first software keeps the primary copy of the data on people's own devices: it works offline and across devices, lets people collaborate, keeps data usable after the service is gone, and is private by default ([LOCAL-FIRST](../reference/bibliography.md)). Replicated data types merge changes made apart without coordination, and their replicas provably converge ([CRDT](../reference/bibliography.md)); they settle the mechanics of a merge, not its meaning. Writers want both live collaboration and private drafts with a clear history of versions ([UPWELLING](../reference/bibliography.md), [PATCHWORK](../reference/bibliography.md)). Replicas on different releases can still exchange changes when each schema change ships a translation both ways ([CAMBRIA](../reference/bibliography.md)). An encrypted editor shows that a server can store and relay documents it cannot read ([CRYPTPAD](../reference/bibliography.md)), and access control for replicated data without a central server is still maturing ([KEYHIVE](../reference/bibliography.md)).

## Programmes are phased by decisions, not by stages

No source requires one list of phases for a programme. The UK framework says a reference programme life cycle cannot be defined because programmes vary too much, while letting organisations build repeatable frameworks for the kinds they often run ([TEAL](../reference/bibliography.md) 14.8); APM and PM² each sketch four phases, and APM's guide to life cycles draws the 2011 edition of MSP the same way ([APM](../reference/bibliography.md); [APM-LIFECYCLES](../reference/bibliography.md); [EC-PGM](../reference/bibliography.md) 3.1). What the sources share is a set of decisions: to commit to delivery, to open each tranche, and to close, with benefits followed after. UK government, the World Bank, the Asian and African development banks, Canada and New Zealand all take them, though they commit delivery at different levels: the banks approve an indicative envelope with the first tranche, the Treasury approves each project's case before its delivery, and Canada authorises spending tranche by tranche after a funded definition ([HMT-CASES](../reference/bibliography.md) 5.3, 5.13; [WB-MPA](../reference/bibliography.md); [ADB-MFF](../reference/bibliography.md); [AFDB-MTF](../reference/bibliography.md) 2.1; [TBS-DMPP](../reference/bibliography.md) appendices F to H; [NZT-PBC](../reference/bibliography.md) 3.1, 3.2).

A tranche is built around a step change in capability and the benefits it starts ([GOVS002](../reference/bibliography.md) 3.2; [TEAL](../reference/bibliography.md) 3.2.3; [TBS-DMPP](../reference/bibliography.md) H.3). Tranches can overlap, projects can span them, and those after the current one often cannot be foreseen ([TEAL](../reference/bibliography.md) 14.8; [APM-LIFECYCLES](../reference/bibliography.md)). The conditions for opening a tranche are best weighed when it is due rather than fixed in advance: the World Bank dropped the triggers its earlier phased loans set at design, because they proved too rigid as circumstances changed and those loans performed worse than standalone projects, and it now judges each phase on how the earlier ones performed ([WB-MPA](../reference/bibliography.md) paragraphs 15, 16, 23, 49). Before each tranche, every source reviews whether the programme is still justified; only the UK fixes an interval, of about a year ([HMT-CASES](../reference/bibliography.md) 5.13 to 5.15; [TEAL](../reference/bibliography.md) 13.4.5; [FCDO-PROF](../reference/bibliography.md)). The World Bank's early evaluation of its phased programmes found gains in learning and continuity, and little yet in coherence or adaptation, so the case for tranches rests on how the standards govern programmes rather than on proof that tranching improves results ([WB-IEG-MPA](../reference/bibliography.md)).

## Cycles share their events, not their lengths

Work without an end is steered by cycles: sprints and planning intervals in software ([SCRUM](../reference/bibliography.md); [SAFE](../reference/bibliography.md); [SHAPE-UP](../reference/bibliography.md)), quarters and years for objectives ([OKR](../reference/bibliography.md); [OKR-PLAYBOOK](../reference/bibliography.md)), planned intervals in management systems ([ISO-HS](../reference/bibliography.md) 9.3), statutory plans and reports in government ([GPRAMA](../reference/bibliography.md); [AUS-PGPA](../reference/bibliography.md); [NZ-PFA](../reference/bibliography.md); [HMT-MPM](../reference/bibliography.md) 5), and reporting years in charities ([SORP](../reference/bibliography.md); [CGC](../reference/bibliography.md)). They set goals before a period, check progress during it, review results after it, and decide what comes next; many add a look back at how the work was done, and governments evaluate relevance and effectiveness on a longer schedule of their own ([OECD-PB](../reference/bibliography.md) good practice 6; [TBS-RESULTS](../reference/bibliography.md) 4.3.15; [HMT-MAGENTA](../reference/bibliography.md) 1.8.1). No source fixes one length for all work, and a goal moved during the period until it is met empties the review, which is why the strongest sources hold goals fixed until a recorded decision changes them ([SCRUM](../reference/bibliography.md); [OMB-A11](../reference/bibliography.md) 250.9; [KN-2008](../reference/bibliography.md)).

## Limits of the evidence

- The field sessions were not recorded. The requirements about first use rest on that testimony and on design research, and must be tested with people ([milestone M5](../reference/design-process.md)).
- Several standards are sold or restricted (the ISO 21500 family, PMI's standards, MSP and MoP ([MSP-MOP](../reference/bibliography.md)), the current APM programme guide, parts of SAFe and of the Kanban method); only their public pages were read. The programme and cycle standards rest on government, bank and framework owners' texts read at source.
- The domains covered are many but not all. New evidence enters through [adding evidence](../how-to/add-evidence.md).
