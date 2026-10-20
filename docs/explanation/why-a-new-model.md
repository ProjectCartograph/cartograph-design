# Why a new model

An exploratory implementation of Cartograph was built and used before this design. This page explains why the design does not extend it, and what it keeps. The decision is [DD-0001](decisions/DD-0001-a-new-model-reusing-only-what-earns-its-place.md).

## What the exploratory implementation was

It modelled work as 22 kinds of record (project, programme, portfolio, service, component and others), each with its own schema, walk and screens, served by an engine with storage behind ports, change review, agent access and printed charters. A project record had grown to 174 fields.

## Where it stands against the evidence

| Holds | Fails |
|---|---|
| The model served as data to any interface or agent | A person must choose one of eight kinds before anything else |
| Storage and identity behind ports, each with a conformance suite | Each kind has its own shape; a project has 174 fields |
| Every change reviewable before it becomes the record | How success will be known is asked in seven places, who is involved in eight |
| Agents that propose and never change the record themselves | No decision, stage or review exists as a record |
| A strategy of purpose, goals, problems and indicators that work points at | Process-improvement and metric-formula methods sit in the core |
| Indicators with their readings kept apart | History is lost when the index is rebuilt |

The failures are not missing fields. They are the centre of the model: what a person meets first, and what a record is made of. Adding the missing records beside 22 kinds would leave people still choosing a kind first, still meeting the same question twice, and still facing screens built for the largest case. Every requirement in [the shape of the record](../reference/requirements/shape-of-the-record.md) and most in [people and first use](../reference/requirements/people-and-first-use.md) would stay failed.

## Three ways forward

| Option | For | Against |
|---|---|---|
| Evolve the 22 kinds | The least disruption at each step | The centre cannot pass by addition, and much would be built twice |
| A new model, reusing parts that earn their place | Every requirement is reachable; proven parts are kept on their merits | The model, its screens and its help are rewritten |
| Rebuild everything | Every technology chosen afresh | Rebuilds parts that already pass, for no requirement that needs it |

The second is chosen. It is greenfield where the evidence calls for it, at the model and the first use, and carries a platform part over only when it meets the requirements on its own ([existing components](../reference/existing-components.md)).

## What could make this wrong

- If one record cannot express what distinguishes a programme from a project without becoming as complex as separate kinds, [DD-0004](decisions/DD-0004-one-record-for-work-at-any-scale.md) must be revisited.
