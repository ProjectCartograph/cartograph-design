# Openness and exchange

How the record leaves the tool: files, identifiers, standards and privacy.

Each requirement below is a statement that can be checked. Its status moves from Proposed to Approved, Changed or Dropped as it is reviewed ([how to review a requirement](../../how-to/review-a-requirement.md)).

### O1 Plain open files, both ways

The whole record exports as plain open files and imports again without loss.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Decisions must outlive the tool and the organisation.
- **Domains:** every domain read
- **Sources:** [g5](../../../research/round-3/g5-current-state.md) C16
- **Verified by:** an automated check in the build

### O2 Identifiers beyond the workspace

Each thing has an identifier unique beyond its workspace (a publisher prefix and a local id).

- **Priority:** Must
- **Status:** Proposed
- **Why:** IATI and 360Giving require globally unique identifiers.
- **Domains:** international development, charity and philanthropy
- **Sources:** [g4](../../../research/round-3/g4-first-principles.md) section 5
- **Verified by:** an automated check in the build

### O3 Parties, money and dates in standard form

Parties have one identity and a role wherever they appear; money carries currency, source and dates; dates use a standard form.

- **Priority:** Must
- **Status:** Proposed
- **Why:** Every open standard read requires these.
- **Domains:** international development, charity and philanthropy, public sector
- **Sources:** [g4](../../../research/round-3/g4-first-principles.md) C28, C29, section 5
- **Verified by:** an automated check in the build

### O4 Mappings to open standards

The record maps to at least one open standard where a domain has one (IATI, 360Giving, OC4IDS), and the mapping states what it loses.

- **Priority:** Should
- **Status:** Proposed
- **Why:** Several domains publish by law or funder rule.
- **Domains:** international development, charity and philanthropy, public sector
- **Sources:** [g4](../../../research/round-3/g4-first-principles.md) section 5; [g6](../../../research/round-3/g6-domains.md) DR-30
- **Verified by:** review of a rendering against its source

### O5 Personal data separable

Personal data can be separated, and the record published without it; who may see findings is a recorded choice.

- **Priority:** Must
- **Status:** Proposed
- **Why:** GOV.UK's open data rules and 360Giving exempt personal data.
- **Domains:** public sector, charity and philanthropy, international development
- **Sources:** [g4](../../../research/round-3/g4-first-principles.md) section 5; [g2](../../../research/round-3/g2-evaluation.md) Q8, D8
- **Verified by:** an automated check in the build

### O6 Published packages say who and how

A published package says who published it, when, under what licence and which version of the shape.

- **Priority:** Should
- **Status:** Proposed
- **Why:** OCDS and 360Giving packages carry this; readers need it.
- **Domains:** international development, public sector
- **Sources:** [g4](../../../research/round-3/g4-first-principles.md) section 5
- **Verified by:** an automated check in the build
