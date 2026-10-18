# What a project charter holds, by the standards

An explanation, in the Diátaxis sense: it gives background and reasons, weighs the sources against each other, and links out for the how-to and the reference. It is written from one standpoint, the question "what should Cartograph's charter ask for, and why?". Other readings are possible, and the places where I could not check a source are marked.

Date of research: 2026-10-17.

## 0. How far the sources were read

The brief asks for sources to be fetched. Some could not be. This table says what each claim below rests on, so you can weigh it.

| Source | What I read | Status |
|---|---|---|
| HM Treasury, Guidance on Developing Business Cases (2026) | The full PDF, text extracted | Read in full. [PDF](https://assets.publishing.service.gov.uk/media/6a4390675b6406df58c14006/Guidance_on_Developing_Business_Cases.pdf) |
| HM Treasury, The Green Book (2026) | The first half of the web edition (five case model, SMART objectives, proportionality, SOC/OBC/FBC) | Read in part. [Page](https://www.gov.uk/government/publications/the-green-book-appraisal-and-evaluation-in-central-government/the-green-book-2026) |
| GOV.UK Service Manual, discovery and alpha | Both pages | Read. [Discovery](https://www.gov.uk/service-manual/agile-delivery/how-the-discovery-phase-works), [Alpha](https://www.gov.uk/service-manual/agile-delivery/how-the-alpha-phase-works) |
| European Commission, Project Cycle Management training handbook (logframe) | Text extracted from the PDF | Read in part. [PDF](https://caricom.org/wp-content/uploads/EC_PCM_Training_Handbook.pdf) |
| W.K. Kellogg Foundation, Logic Model Development Guide, chapter 2 | Text extracted from the PDF | Read in part. [PDF](https://azprc.arizona.edu/sites/default/files/CHWtoolkit/PDFs/LOGICMOD/CHAPTER2.PDF) |
| APM Body of Knowledge 7th edition, sample, and APM's free "What is a business case?" page | Contents page and glossary of the sample; the whole web page | Read. The page gives the five elements of a business case but says nothing on a project brief or on scaling. [PDF](https://www.apm.org.uk/media/k2zga0pa/ampbok7-sample.pdf), [page](https://www.apm.org.uk/resources/what-is-project-management/what-is-a-business-case/) |
| UK Government Functional Standard GovS 002: Project delivery | The clauses on business case, authorisation, proportionality, assumptions, dependencies, constraints, benefits and handover (the first 100,000 of 125,644 characters, to clause 8.12) | Read. Added in the verification pass. [Page](https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/) |
| PRINCE2 | Pages on the project brief, PID, business case and project product description at prince2.wiki | Read, but **prince2.wiki is a community wiki, not AXELOS/PeopleCert**. The official manual is paid and was not available. Treat the lists as a reliable summary, not the text. [Brief](https://prince2.wiki/management-products/project-brief/), [PID](https://prince2.wiki/management-products/project-initiation-documentation/), [Business case](https://prince2.wiki/management-products/business-case/), [Product description](https://prince2.wiki/management-products/project-product-description/) |
| PMI (PMBOK Guide 7, Standard for Project Management, Agile Practice Guide) | **Not fetched.** pmi.org returned 403 to every request. I have only search-result summaries of [PMI's charter article](https://www.pmi.org/blog/project-charter), [the PMI library article](https://www.pmi.org/learning/library/charter-selling-project-7473) and the [PMBOK FAQ](https://www.pmi.org/-/media/pmi/documents/public/pdf/pmbok-standards/pmbok-guide-public-faqs-1-july-2021.pdf?v=c93d156f-0acc-43e1-b12b-158511111788) | Still unverified at source (see the verification log). Only PMI's own FAQ PDF was reachable, and it has nothing on the charter. The charter contents attributed to PMI below come from earlier PMBOK editions as PMI's articles describe them. |
| ISO 21502:2020 and ISO 21500 | **Not fetched.** iso.org and ANSI returned 403. I read an academic comparison, the [University of Granada white paper](https://catedras.ugr.es/openpm2/sites/webugr/copenpm2/public/ficheros/PM2%20vs%20ISO%2021502_EN.pdf) | Secondary. It gives the definitions and the practice list, not a charter contents list. Search results for the standard's table of contents place the business case at subclause 4.3.2 under "Project governance" (not read at source). |
| USAID (ADS 201, logic model how-to note) | **Not fetched** (host unreachable, then 502). Only search summaries of the [Learning Lab note](https://usaidlearninglab.org/node/15065) | Unverified. |
| Inception Deck | Search summaries of [Rasmusson's chapter](https://oreilly.com/library/view/the-agile-samurai/9781680500066/f_0026.html) (403 on fetch), lecture notes | Secondary, and a practitioner source. Used because nothing better exists. |
| Project Model Canvas | Search summaries only | Secondary, mostly Brazilian sources. Block names vary by version. Used lightly. |

Where a cell in the matrix says "?", I could not check it. I did not fill it from memory.

## 1. The matrix

Legend: **R** required by the source, **Rec** recommended or listed as typical, **–** not part of it, **?** not verified.

The columns are the sources whose contents I could read. PMI and ISO are in the notes below the table, not as columns, because I could not read them.

| Element | PRINCE2 brief / PID / business case | Green Book five cases (2026) | GOV.UK discovery and alpha | EC logframe | Kellogg logic model | Inception Deck | Project Model Canvas |
|---|---|---|---|---|---|---|---|
| Purpose, business need, reasons | R (brief background; business case "reasons") | R (strategic case: case for change, business needs) | R (a reframed problem statement) | R (overall objective, project purpose) | Rec (it starts from intended results) | R ("why are we here") | R ("why", justification) |
| Problem | R (brief background) | R (case for change) | R (problem statement, cost of the problem) | R (problem analysis is the step before the matrix) | – | Rec (elevator pitch) | Rec |
| Objectives | R (SMART) | R (SMART, as few as possible, outcome over output) | R (a discovery goal) | R (objectives at two levels) | R (outcomes) | Rec | R |
| Success criteria, measures | R (brief: objectives; business case: benefit measures and tolerances) | R (benefits, monitoring and evaluation) | R (success measures and metrics) | R (indicators and sources of verification) | Rec (data needed is part of the model's use) | Rec | Rec |
| Scope in and out | R (brief; product description: scope, out of scope "where relevant") | R (potential scope and service requirements) | R (what is out of scope) | Rec (the levels draw the boundary) | – | R (the NOT list) | Rec |
| Deliverables, products | R (product description: purpose, quality criteria, assessment) | Rec (plan for delivery) | Rec (ideas to test) | R (results) | R (outputs) | Rec (product box, solution) | R |
| Milestones, plan | PID: R (project plan). Brief: – | R in the management case (plan for delivery); outline at SOC | Rec (rough team and ideas) | – in the matrix; activities are the bottom row | – | Rec ("what it will take") | R |
| Budget, costs | R in the business case (project and operating costs) | R (financial case) | Rec (cost of the problem; budget for beta) | – | Rec (resources) | Rec (sizing it up) | R |
| Stakeholders | R (brief) | R (engage early, management case) | R (users and other organisations) | R (stakeholder analysis before the matrix) | Rec | Rec ("meet your neighbours") | R |
| Governance, roles | PID: R (team structure, role descriptions, controls). Brief: Rec | R (management case: governance, assurance, approvals) | – | – | – | Rec | R ("who") |
| Authority and approval | R (the project mandate comes before; the board authorises the brief and then the PID) | R (the approving authority agrees the type of business case at the start; SOC, OBC and FBC are approval points) | R (a decision to move to alpha) | – | – | – | – |
| Assumptions | Rec (a PID component in PRINCE2's own list, per the wiki, is the risk register and plan; assumptions sit in the business case and plan) ? | R (assumptions are tested and logged across the case) | R (riskiest assumptions are tested in alpha) | R (a column, and an "assumptions algorithm") | ? | Rec ("what keeps us up at night") | Rec |
| Constraints | R (brief) | R (strategic case: constraints) | R (hard and soft constraints) | – | – | Rec ("what's going to give") | Rec |
| Risks | R (brief; business case: major risks) | R (strategic case and management case) | R (riskiest assumptions) | R (risks sit with assumptions) | – | R | R |
| Dependencies | Rec (in the plan) | R (strategic case: dependencies) | R (other services and teams) | Rec | – | Rec | Rec |
| Benefits | R (business case: expected benefits and dis-benefits, measured) | R (benefits management in the management case) | Rec (value of the problem) | R (the overall objective is the benefit level) | R (outcomes, impact) | – | R |
| Options considered | R (business case: do nothing, do minimum, do something) | R (economic case: longlist and shortlist) | Rec (list of ideas to test) | – | – | – | – |
| Handover to operations | R (operating and maintenance costs in the business case; benefits management lives on after closure) | R (business as usual; benefits management) | Rec (service owner; team for beta) | – | Rec (impact is after the programme) | – | – |
| Benefits tracking after the project | R (a benefits management approach, kept outside the PID so it can outlive the project) | R | Rec | – | R (outcomes over short, medium and long term) | – | – |
| Quality approach | R (PID approach documents; product description quality criteria) | – | – | – | – | – | Rec |
| Communication, change, configuration approaches | R in the PID (strategies) | R (change management) | – | – | – | – | Rec |
| Logic that links results to purpose | Rec | R (theory of change) | – | R (the intervention logic) | R (the chain of resources, activities, outputs, outcomes, impact) | Rec | Rec |

Notes on the cells.

- **PRINCE2.** The wiki says the brief covers background, objectives, scope, constraints, risks, stakeholders and an outline business case, and that it follows SMART criteria. The PID bundles the business case, project plan, four approach documents and the project controls, and leaves out the benefits management approach because it must outlive the project. See the sources linked in section 0. The "assumptions" cell is a guess I could not settle, so it is marked "?".
- **Green Book.** The strategic case lists strategic assessment, case for change, SMART objectives, existing arrangements, business needs, potential scope and service requirements, and benefits, risks, constraints and dependencies. The management case lists governance, management, assurance and approvals, plan for delivery, change management, benefits management, risk management, contract management, and monitoring and evaluation. Both lists are in the [2026 guidance](https://assets.publishing.service.gov.uk/media/6a4390675b6406df58c14006/Guidance_on_Developing_Business_Cases.pdf) (Boxes 1 and 5).
- **GOV.UK.** Discovery and alpha are phases, not a charter. They are in the matrix because they say what a team must know before it commits, which is what a charter records.
- **EC logframe.** The four-by-four matrix has objectives, indicators, sources of verification and assumptions, at the levels of overall objective, purpose, results and activities. The handbook reads it as "if results are delivered and assumptions hold, then the purpose will be achieved".
- **PMI.** Not verified at source (pmi.org blocks automated reads, and the Lexicon PDF returned 403). As reported by search summaries of PMI's own pages, and from older editions. For the Agile Practice Guide, search summaries of its chartering section (5.1, 2017 edition) say a minimum agile charter needs a project vision or purpose and working agreements, and covers why the project exists, who benefits, what done means and how the team works together; I could not read the guide, and PMI now lists a second edition, so treat this as unverified. As reported: a charter formally recognises the project and gives the manager authority, and should provide, directly or by reference, requirements, business need, summary schedule, assumptions and constraints, and a business case. PMI says the PMBOK Guide mandates no format. Unverified for the 7th edition.
- **ISO 21502:2020.** From the white paper: it defines deliverable, output, outcome and benefit; it puts the project in its organisational context; it lists eight integrated practices that include pre-project and post-project work, and 17 management practices that include benefits management and organisational change. I could not confirm whether it lists charter contents.
- **APM.** The 7th edition defines the business case as the justification for a project, evaluating benefit, cost and risk of options and giving a rationale for the preferred one ([sample](https://www.apm.org.uk/media/k2zga0pa/ampbok7-sample.pdf), glossary). APM's free page, which cites its Body of Knowledge, lists five elements: strategic context (the case for change), economic analysis (return on investment from appraising options), commercial approach (sourcing and procurement), the financial case (affordability over the timeframe), and management approach (roles, governance, life cycle choice). It says the business case is built in the concept phase, reviewed at decision gates, records the do-nothing option as a reference, and that every project needs one ([page](https://www.apm.org.uk/resources/what-is-project-management/what-is-a-business-case/)). That is the same five-case shape as the Green Book. The page says nothing about a project brief or charter.
- **GovS 002 (UK government project delivery standard).** Verified at [projectdelivery.gov.uk](https://projectdelivery.gov.uk/library-products/government-functional-standard-govs-002-project-delivery/). Clause 4.3: work "shall be governed through a business case or equivalent document", developed over phases and reviewed before each gate. Clause 6.4.5: the initial justification goes in a strategic outline case, and the senior responsible owner confirms that a real policy, opportunity or business need is being addressed. Clause 6.3: each stage is preceded by a gate that authorises the next, and governance is proportionate, with simpler projects having fewer stages. Clause 7.6: where a variable is unknown, assumptions are made and written in the business case, quantified where possible. Clause 7.2.4: plans carry assumptions, constraints, critical paths and risk, and define dependencies. Clause 6.1: work proceeds within constraints such as cost, benefit, schedule, quality, scope and risk. Clause 7.3: each benefit has an owner, and forecasts account for disbenefits. Clause 6.4.8: responsibility for ongoing risks, issues, actions and benefit tracking is handed over to a business authority that accepts it. This confirms, from a primary government source, authority and gates, assumptions, constraints, dependencies, benefit owners, disbenefits and handover as expected content.

## 2. What is essential, common, and later

### Essential: what every readable source asks for

Seven things appear in every source I could read that speaks about starting work, and PMI's reported list agrees on most of them.

1. **Why**: the purpose, need or problem.
2. **What it will change**: objectives, stated so they can be checked.
3. **How anyone will know**: success criteria, benefits or indicators.
4. **Scope**, including what is left out. PRINCE2, the Green Book, GOV.UK and the Inception Deck all say what is out.
5. **Who**: the stakeholders, and who is accountable.
6. **What stops or threatens it**: risks, and constraints.
7. **Who authorises it**: an identified decision or authority. Every source treats the charter or brief as the thing a named person or board approves.

### Common but optional

These appear in most sources but differ in whether they are required.

- Deliverables (the products the work leaves).
- A summary of timing, and a summary of cost.
- Assumptions (explicit in the logframe, the Green Book and GOV.UK alpha, reported in PMI).
- Dependencies on other work or services.
- Benefits and who receives them.
- The options considered, including doing nothing. PRINCE2 and the Green Book require this in the business case. The logframe and logic model do not.
- The roles and the governance bodies.

### Belongs to later planning

The sources keep these out of the first document, or in a separate one.

- **Detailed plan, schedule and costs.** PRINCE2 puts the project plan in the PID, after the brief. The Green Book defers the financial and management cases to the outline business case (the strategic and economic cases come first at SOC stage).
- **The approach documents** for quality, risk, communication and configuration (PRINCE2 PID).
- **Investment appraisal** (net present value and similar), in the business case, not the brief.
- **Contracts and procurement** (the Green Book commercial case).
- **Activities and task lists.** The logframe lists them as the bottom row. The Kellogg guide treats them as part of the model, but neither makes them a charter matter.
- **The benefits management approach**, which PRINCE2 deliberately keeps apart from the PID.

The shape this gives: the charter answers "should we start, and who says so?". The plan answers "how, when and at what cost?".

## 3. How the sources differ by size and by way of working

### Size

None of the sources sets a number that tells you which form to use. The ones that speak to it say to scale the effort.

- The Green Book says business cases must be proportionate to scale, cost, complexity and risk, and says the approving authority should agree at the outset which type to build and how far costs, benefits and risks are measured (paragraphs 3.21 and 3.22 of the 2026 guidance). Its staged form (SOC, then OBC, then FBC) means the same five cases appear in outline first and in full later. The guidance says a programme may combine the first two stages.
- PRINCE2 says the brief should be concise, the product description is typically one to three pages, and the PID can be one document, an index or a tool record, per the wiki.
- The Project Model Canvas and the Inception Deck compress the same questions onto one sheet or ten short exercises.
- The EC logframe has the same matrix at every size.

So the content is nearly the same across sizes. What changes is depth, who approves, and how many stages the approval is split into.

### Agile and predictive

- **Predictive.** PRINCE2 and the Green Book fix the stage gates: mandate, brief, PID, then stage plans. The charter is a baseline that is re-checked at boundaries.
- **Agile.** The Inception Deck says the agile methods it was built beside (Scrum, XP) were silent on chartering, and fills the gap with ten short questions answered by the whole team. Per lecture notes about it, it is meant to be revisited and to last about six months of planning (secondary source). GOV.UK's discovery, alpha and beta are not a charter but stage the commitment the same way: spend a little to find out, then decide. They test the riskiest assumption first.
- **Where they meet.** Both want the purpose, the people, the limits, and a way to tell if it worked. Agile pushes the plan later and the testing earlier. I could not confirm what PMI's Agile Practice Guide says about an agile charter.

## 4. Cartograph against the standards

What I read: the project schema (`contract/schemas/project.schema.json`), the guidance (`contract/guidance/en/project.guidance.json`), the walk in `cartograph-ui/src/projects/types.ts`, and the charter renderer `internal/render/charter_project.go`.

### The walk and the charter, as they stand

The walk has seven stages plus approval: context, problem, objectives, governance, scope, plan, handover (types.ts, `STAGES`). Its fifteen steps are goals, beneficiaries, aim, measures, resources, stakeholders, scope, deliverables, timeline, costs, data, risks, success, landing, approval. The rendered charter has these sections: At a glance (with a document control block), Objective and key results, Scope, Components and critical path, Schedule, Deliverables, Governance, Budget, and Success criteria and handover.

The schema's required fields are only `summary` and `team`. Everything else is optional in the file. Completeness is enforced by checks (for example `scope-in`, `aim-mandate`, `risks-mitigation`, `success-criteria`, `landing-operation`), which the guidance words as instructions.

### What Cartograph asks that the standards also ask

| Standard element | Cartograph place |
|---|---|
| Purpose, need | `summary.about`, and the problems (situation, cause, change) |
| Problem | `summary.problems`, each with who feels it and the change that answers it |
| Objectives | `objectives`, one objective with one to three key results, each with baseline, target and source (the guidance echoes the Green Book's "as few as possible") |
| Success criteria | `successCriteria`, each with a metric dimension, standard, source, cycle, owner and a confirmer |
| Scope in and out | `summary.scopeIn`, `scopeOut` |
| Deliverables and acceptance | `deliverables`, each with an acceptance test and a named verifier (matches the PRINCE2 product description: criteria, assessment, who verifies) |
| Milestones, schedule | `milestones`, with timing, owner and what each waits on |
| Budget | `costs`, with a funding source and status |
| Stakeholders | A stakeholder map the project links to |
| Governance and roles | `resources`, `responsibilities` (RACI-style), `escalationRoute` |
| Authority and approval | `mandate` (the decision, policy or law that authorises the work), `signOffs`, `conditions` on approval |
| Constraints | `constraints`: which of scope, schedule and cost holds, adjusts or concedes |
| Risks | `risks`, with impact, likelihood, mitigation, owner and escalation |
| Dependencies | `components` and the risk list's dependency rows, with direction and a schedule check |
| Assumptions | A separate Assumption kind, linked to the success criterion it conditions (not a flat list) |
| Benefits | Beneficiary groups, key results, KPIs, and success criteria |
| Handover | `operation`: the service that runs the result, with a service owner and funding for running it |
| Logic | Problem to change to objective to key results to success criteria (a results chain, closest to the Kellogg and logframe shape) |

Two choices here line up closely with named sources. The mandate check follows the PRINCE2 idea that a project starts from a mandate. The constraint trio follows the "what's going to give" question in the Inception Deck, and the hard and soft constraints split in GOV.UK discovery is the other half of the same idea.

### What Cartograph asks that the standards do not, and whether it is justified

- **Data capture per indicator** (data sources, reporting cycles, personal data, hand-offs, turnaround). The standards I read ask for indicators and a means of verification (the logframe) or a monitoring and evaluation plan (Green Book management case), but not how the figures are captured. This is more than a charter needs, and it belongs under the section 2 "later planning" heading. The justification is Cartograph's own: it measures results, so an indicator with no source would sit empty. The logframe's "sources of verification" column and the Green Book's monitoring and evaluation plan back the idea, not the depth.
- **Cost lines with periods, recurrent flags and funding conditions, and procurement.** The Green Book defers these to the financial and commercial cases, and PRINCE2 to the business case and plan. Cartograph's guidance asks the person to plan ahead without requiring all of it. This is later planning that Cartograph invites early.
- **Schedule logic** (milestones waiting on others, a critical path, a dependency cycle check, a deadline check against a dependency). PRINCE2 puts the plan in the PID, after the brief. This is later planning too.
- **Risk response in terms of the constraint trio** (`risks-held-accepted`, `risks-spend-held`). This is Cartograph's own rule, linking risk responses to the held, adjusted or conceded sides. I found no source for it. It is defensible as an extension of the "what's going to give" idea but unsourced.
- **Beneficiary groups kept qualitative** (no counts). The Green Book asks who benefits and how many. Cartograph keeps counts out on purpose. That departs from the Green Book's SMART guidance on the number of beneficiaries.
- **Linking to goals, outcomes, programmes and portfolios.** The standards place a project inside a strategy (PRINCE2's mandate and corporate alignment check, the Green Book's strategic fit). Cartograph models it as links. This goes further in structure but not in intent.

### What the standards ask that Cartograph lacks

These are the clearest gaps. Each is stated as a gap in the schema or walk as I read it. I did not look for it in every document of the engine, so a thing recorded elsewhere would not show here.

1. **Options considered, including doing nothing.** PRINCE2's business case (do nothing, do minimum, do something) and the Green Book economic case (longlist and shortlist) both require it. The schema has no field for alternatives and the walk has no step. The problem's "change" is the only forward statement. This is the most notable omission against the two government standards, though it is a business-case matter rather than strict charter content, and PMI's reported charter list does not name it either.
2. **Benefits as a thing in itself, with timing and a tolerance.** The Green Book and PRINCE2 ask for each benefit, how and when it is measured, and its tolerance. Cartograph has key results and KPIs, which cover the "measured" part. It has no "dis-benefits" and no place for a benefit that falls after the project, apart from a success criterion marked as due at handover or later (`landing-criteria`).
3. **A plain list of assumptions on the project.** The standards (PMI as reported, the logframe, GOV.UK) list assumptions with the charter. Cartograph holds them as a separate kind linked to success criteria. The reason is stated in the schema: an assumption is tested, a risk is mitigated. That is a sound design, but a reader of the rendered charter may not find assumptions printed in it. I did not check whether the renderer prints linked assumptions.
4. **The approach documents** for quality, communication and change (PRINCE2 PID; change management in the Green Book management case). Cartograph has nothing for a communication or change approach on the project. These are later planning under the section 2 split, so the gap is small for a charter.
5. **A one-line theory of change.** The Green Book strategic case requires one. Cartograph's chain of problem, change, objective and key results does the work in effect, but there is no explicit statement of why the deliverables should produce the change. The success criterion's `assumes` link covers part of this.
6. **An explicit "do not start" or review point.** GOV.UK says that stopping after discovery is not failure, and PRINCE2 has the board recheck the business case at stage ends. Cartograph has sign-offs by stage and conditions on approval, but I found no rule that ends or pauses a project when its case no longer holds. I did not read the engine's change-set or gate documents, which may cover this.

### Reading across the walk-first decision

Against section 2, the walk's first four stages (context, problem, objectives, governance) plus scope and the handover question are the essential list almost point for point: why, what changes, how known, scope, who, authority. Plan and data are the "later planning" group. The standards support asking for them after approval, or in outline at first, which fits the stated finding that people stalled on screens that ask for too much. This is an inference from the sources and from the in-person test findings in COMMON.md. The standards say nothing about screen load.

One structural point worth stating without turning it into a rule: the sources split the document that asks for approval to start from the document that plans the work (PRINCE2's brief against the PID, the Green Book's SOC against the FBC, GOV.UK's discovery against beta). Cartograph's charter asks for both together, in one walk. The sources would call the plan, costs and data steps a second stage.

## Verification log

Second pass, 2026-10-17. Each line says what I tried and what came of it.

| Item | Tried | Result |
|---|---|---|
| APM five dimensions of a business case | apm.org.uk "What is a business case?" page, fetched | **Verified.** Five elements recorded in section 1. The 7th edition sample's own section 1.3.7 text is still unread. |
| APM definition of a project brief | The same page, and a search on apm.org.uk | **Not found.** The business case page does not mention a brief. The Body of Knowledge glossary in the free sample defines the business case only. |
| UK government standard quoting these ideas | GovS 002 at projectdelivery.gov.uk, fetched (first 100,000 characters) | **Verified** and added as a source. It does not cite ISO 21502 or APM, so it does not verify them. |
| PMI charter contents (PMBOK 7, Standard for Project Management) | pmi.org/blog/project-charter, the PMI library article, pmi.org/pmbok-guide-standards (all 403, also with a browser user agent); the PMBOK FAQ PDF (fetched, no charter content); searches for a public PMBOK 7 extract | **Still unverified.** No public PMBOK 7 extract found. Free sites quoting the charter text cite different editions, and I did not use them. |
| PMI Lexicon of Project Management Terms | The Version 5.0 PDF link from a pmi.org search (403); the lexicon page says a free PMI account is needed | **Unverified.** Needs a PMI login. The charter definition I can repeat (a document that authorises a project and gives the manager authority) comes from second-hand copies. |
| PMI Agile Practice Guide charter | The O'Reilly preview page (403); search summaries only | **Unverified.** The summary in the PMI note above is from search results. |
| ISO 21502:2020 charter or brief contents | iso.org Online Browsing Platform (loads a script shell with no clause text to a plain fetch), standards.govt.nz and scc-ccn.ca (empty or 403), iteh.es (host unreachable), ANSI blog (403); searches | **Unverified.** Only the table-of-contents placement of the business case (4.3.2, under "Project governance") came back, from search summaries. Search results also say a second edition is at committee draft stage. |
| PRINCE2 official wording | prince2.com "What is PRINCE2" (no content on the brief), axelos.com resource hub (no contents list); prince-2.net glossary page (404); searches return only third-party glossaries | **Still secondary.** The brief and business case lists rest on prince2.wiki, a community wiki. A search summary of prince-2.net says its glossary reproduces the official one and adds product description, project approach and team structure to the brief; I could not open that page, so I did not use it. |
| USAID logic model / ADS 201 | usaidlearninglab.org (502 twice), pdf.usaid.gov (host unreachable) | **Unverified.** The EC logframe handbook and the Kellogg guide stand in for the logframe and logic model rows. |

What changed in the document: the APM note, the GovS 002 note and source row, the PMI and ISO notes (reworded to say what could not be read), and these open questions. The matrix cells did not change. Where GovS 002 agrees with them (assumptions, constraints, dependencies, benefits, handover, gates), it adds a second verified source for the same marks.

## Open questions

- What the PMBOK Guide 7th edition, the PMI Lexicon and the Agile Practice Guide say about the charter. Every pmi.org page for them is blocked or needs a login, so the PMI column rests on summaries of older material.
- What ISO 21502:2020 lists for starting a project (the clause on the business case, 4.3.2, and any project brief). Only a secondary white paper and search summaries were readable.
- How APM defines a project brief. Its free business case page does not say.
- The USAID logic model note and ADS 201 (currency and exact required elements). Not reached.
- Whether the official PRINCE2 manual lists assumptions in the brief or PID. I used a community wiki, and that cell is "?".
- Whether the rendered charter prints the assumptions linked to success criteria, and whether any engine document ends or pauses a project whose case has failed.
- Whether the Project Model Canvas has a fixed official block list. Sources disagree.
