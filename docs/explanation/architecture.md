# The architecture

This page explains the shape of the system at a level above the code: what Cartograph talks to, what it is made of, how a change flows through it, and the trade-offs behind each choice. Which parts of the exploratory implementation may be reused is judged in [existing components](../reference/existing-components.md).

## What Cartograph talks to

```mermaid
flowchart LR
  PE["People: sponsors, managers, officers, analysts, board members"] --> CG["Cartograph"]
  AG["Agents, through MCP"] --> CG
  CG --> ID["Identity provider: OIDC"]
  CG --> MM["Meaning model: a language model, optional"]
  CG --> ST["Storage: files, SQLite or Postgres"]
  CG --> OD["Open data registries: IATI, 360Giving"]
  CG --> DT["Delivery and analysis tools: backlogs, appraisal, BI"]
  RD["Readers of views: boards, funders, the public"] --> CG
```

Cartograph holds the case, the decisions and the results. It links to delivery tools (a backlog, a schedule, a building model) and to analysis tools (an appraisal, a data warehouse), and holds their results, never their workings ([DD-0009](decisions/DD-0009-a-small-core-with-extensions.md)).

## What it is made of

```mermaid
flowchart TB
  subgraph Clients
    WEB["Web interface"]
    MCP["MCP server for agents"]
    CLI["Command line"]
  end
  subgraph Engine["Engine, one binary"]
    API["Contract API: schemas, walks, words, checks, served as data"]
    APP["Application: proposals, checks, decisions, views"]
    DOM["Domain: the bounded contexts"]
    PORTS["Ports"]
  end
  WEB --> API
  MCP --> API
  CLI --> API
  API --> APP --> DOM
  APP --> PORTS
  PORTS --> S1["Store adapters: files, SQLite, Postgres"]
  PORTS --> S2["Journal"]
  PORTS --> S3["Identity and access"]
  PORTS --> S4["Renderer: print and export"]
  PORTS --> S5["Meaning model"]
  PORTS --> S6["Sync: optional live co-editing"]
```

The engine is one program, from a single person's laptop to a national deployment. The dependencies point inward: the domain knows nothing of adapters, and each adapter passes a conformance suite.

| Choice | Chosen | Instead of | Because | At the cost of |
|---|---|---|---|---|
| Contract as data | Schemas, walks, words and checks served by the engine | Each interface hard-coding the model | One definition for every interface and agent ([K1](../reference/requirements/platform.md#k1-the-contract-as-data)); profiles change the served data, not the code | A generic interface is harder to make beautiful than a bespoke one |
| One program | A modular monolith with a module per context | Services per context | Runs anywhere from a laptop to a cluster; contexts stay separate by architecture tests, not by networks | Scaling is of the whole, not of a part |
| Ports and adapters | Storage, identity, rendering, meaning and sync behind ports | Direct dependencies | Files for a hobbyist, Postgres for a nation ([K2](../reference/requirements/platform.md#k2-from-files-to-a-shared-database)); each swappable | An interface to keep per port |
| Documents and a journal | Plain documents as the truth, an append-only journal of versions | Event sourcing; git | Readable files ([O1](../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways)) with durable history ([K4](../reference/requirements/platform.md#k4-durable-history)) ([DD-0011](decisions/DD-0011-documents-with-an-append-only-journal.md)) | Two structures to keep consistent |
| Proposals for every write | One route for people and agents, with a per-workspace policy | Direct writes | Review where needed, none where not ([K3](../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone)); agents never write ([K5](../reference/requirements/platform.md#k5-agents-propose-people-decide)) | A concept every person meets, made light by the straight-in policy |

## How a change flows

```mermaid
sequenceDiagram
  participant P as Person or agent
  participant E as Engine
  participant C as Checks
  participant J as Journal
  participant S as Store
  P->>E: propose a change to a piece of work
  E->>C: check against the profile
  C-->>E: advice, and anything that blocks
  alt policy: straight in
    E->>S: write the documents
    E->>J: append versions, who, why
  else policy: needs acceptance
    E-->>P: proposal waits
    P->>E: another person accepts
    E->>S: write the documents
    E->>J: append versions, who, why
  end
  E-->>P: the record, and the next step
```

A decision follows the same route, and names the journal version of the case it rests on.

## Quality attributes

| Attribute | What it means here | Requirements |
|---|---|---|
| Scale without a second product | The same binary, record and walk for one person and a nation | [R1](../reference/requirements/shape-of-the-record.md#r1-one-shape-at-any-scale), [K2](../reference/requirements/platform.md#k2-from-files-to-a-shared-database) |
| Learnability | A first-time person finishes the first walk unaided | [P1](../reference/requirements/people-and-first-use.md#p1-start-from-the-change-with-no-choice-first), [P2](../reference/requirements/people-and-first-use.md#p2-one-decision-per-screen), [P7](../reference/requirements/people-and-first-use.md#p7-finishable-unaided-by-anyone) |
| Portability | The record leaves the tool whole, as files and as open standards | [O1](../reference/requirements/openness-and-exchange.md#o1-plain-open-files-both-ways), [O4](../reference/requirements/openness-and-exchange.md#o4-each-supported-standard-held-whole) |
| Durability | History and decisions survive any rebuild | [K4](../reference/requirements/platform.md#k4-durable-history) |
| Privacy | Personal data separable; roles in the record, people outside | [O5](../reference/requirements/openness-and-exchange.md#o5-personal-data-separable), [R8](../reference/requirements/shape-of-the-record.md#r8-accountability-named-and-handed-on) |
| Adaptability | A domain expresses itself through a profile, not a fork | [X1](../reference/requirements/domains-and-configuration.md#x1-the-organisations-own-words), [X2](../reference/requirements/domains-and-configuration.md#x2-the-shape-of-the-results-hierarchy), [X3](../reference/requirements/domains-and-configuration.md#x3-the-approval-route) |
| Accountability | Who changed what, and who decided, always known | [K3](../reference/requirements/platform.md#k3-reviewable-change-straight-in-when-alone), [D5](../reference/requirements/case-and-decisions.md#d5-a-decision-is-a-record) |
| Evidence | The tool records how people use it, by shape | [K7](../reference/requirements/platform.md#k7-measured-on-peoples-use) |

## Open architectural questions

- How profiles are validated and changed on a workspace in use ([DD-0008](decisions/DD-0008-profiles-hold-what-differs-between-domains.md)).
- How extensions declare their fields and views without loosening the core contract ([DD-0009](decisions/DD-0009-a-small-core-with-extensions.md)).
- Journal retention ([DD-0011](decisions/DD-0011-documents-with-an-append-only-journal.md)).
- Whether the interface stays one generic renderer of walks, or has a bespoke walk for the first use.
