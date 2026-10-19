# Openness and exchange

How the record leaves the tool: files, identifiers, standards and privacy.

Each requirement is a statement that can be checked. Its status starts Proposed and becomes Approved, Changed or Dropped in review ([how to review a requirement](../../how-to/review-a-requirement.md)). Sources are in [the bibliography](../bibliography.md).

### O1 Plain open files, both ways

The whole record exports as plain, open files and imports again without loss.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Decisions must outlive the tool and the organisation that made them.
- **Accepted when:**
  - Exporting and importing a workspace gives an identical record.
- **Holds across:** public services
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards
- **Verified by:** an automated test in the build

### O2 Identifiers beyond the workspace

Each thing has an identifier unique beyond its workspace: a publisher's prefix and a local identifier.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Open data standards require globally unique identifiers.
- **Accepted when:**
  - Every identifier carries the workspace's publisher prefix.
- **Holds across:** open data
- **Evidence:** [IATI](../bibliography.md); [360GIVING](../bibliography.md)
- **Verified by:** an automated test in the build

### O3 Parties, money and dates in standard form

Parties have one identity and a role wherever they appear; money carries its currency, source and dates; dates are in ISO 8601.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Every open standard studied requires these.
- **Accepted when:**
  - Every amount has a currency; every date is ISO 8601; every party has one identifier.
- **Holds across:** open data
- **Evidence:** [IATI](../bibliography.md); [360GIVING](../bibliography.md); [OCDS](../bibliography.md)
- **Verified by:** an automated test in the build

### O4 Each supported standard held whole

For each open standard Cartograph supports (such as IATI, 360Giving or OC4IDS), the record can hold every field and code the standard defines, in the core or in the standard's extension. An export therefore omits nothing the standard asks for, and a document in that standard imports and exports again without loss. A mapping drops only parts of the record the standard has no place for, and lists them.

- **Priority:** Should
- **Status:** Proposed
- **Why:** Several domains publish to a standard by law or under funders' rules. A record that cannot hold one of the standard's fields forces the publisher to leave it out or keep a second system; holding the whole standard keeps the record the single source. The record may hold more than a standard, never less. The fields the core lacks live in the standard's extension, turned on when a workspace publishes to it, so the core stays small ([X5](domains-and-configuration.md#x5-methods-are-extensions)).
- **Accepted when:**
  - For each supported standard and version, every element, attribute and code it defines maps to a place in the record; the build checks the mapping against the standard's schema.
  - Codes are held as the standard's codes, or as the record's own codes with a mapping to them.
  - An export validates against the standard; an export missing a field the standard requires is refused, naming what is missing.
  - A valid document in the standard imports and exports again unchanged.
  - Each mapping lists the parts of the record it drops.
- **Holds across:** open data, public sector elsewhere
- **Evidence:** [IATI](../bibliography.md); [360GIVING](../bibliography.md); [OCDS](../bibliography.md); [OMB-A11](../bibliography.md)
- **Verified by:** an automated test in the build, per supported standard and version

### O5 Personal data separable

Personal data can be separated, and the record published without it; who may see findings is a recorded choice.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Open data rules exempt personal data, and evaluation findings may concern people.
- **Accepted when:**
  - A published record contains no personal data unless the workspace chooses it.
  - Findings record who may see them.
- **Holds across:** public services, open data, UK public sector
- **Evidence:** [GDS-MANUAL](../bibliography.md) open standards; [360GIVING](../bibliography.md); [HMT-MAGENTA](../bibliography.md)
- **Verified by:** an automated test in the build

### O6 Published packages say who and how

A published package says who published it, when, under what licence, and which version of the shape it uses.

- **Priority:** Should
- **Status:** Proposed
- **Why:** Open data packages carry this, and readers need it.
- **Accepted when:**
  - Every published package has publisher, date, licence and version.
- **Holds across:** open data
- **Evidence:** [OCDS](../bibliography.md); [360GIVING](../bibliography.md)
- **Verified by:** an automated test in the build
