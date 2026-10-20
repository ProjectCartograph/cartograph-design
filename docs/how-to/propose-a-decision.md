# Propose a design decision

Write a decision record when a choice shapes the system and has real alternatives.

1. Take the next number after the last record in [the decision log](../reference/decision-log.md).
2. Create `docs/explanation/decisions/DD-NNNN-a-short-name.md` with, in order:
   - a title, `# DD-NNNN What is decided`;
   - `**Status:** Proposed`, `**Date:**`, and `**Requirements:**` linking the requirements it serves;
   - **Context**: the forces at work, citing [the bibliography](../reference/bibliography.md);
   - **Options**: at least two, as a table of what each makes easy and hard;
   - **Decision (proposed)**: the choice and why;
   - **Consequences**: what follows from it, good and bad;
   - **Open questions**, if any.
3. Add a Mermaid diagram where a structure or a flow is clearer seen than read.
4. Run `just index`, then `just test`.
5. Open an issue labelled `decision` in the milestone it belongs to, and a pull request that refers to it.
6. When the verdict is given, set **Status:** to `Accepted` or `Rejected`, and rename the heading *Decision (proposed)* to *Decision*. A decision that replaces another sets the earlier one to `Superseded by DD-NNNN`.
