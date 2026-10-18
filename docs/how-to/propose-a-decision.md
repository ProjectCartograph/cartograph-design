# Propose a design decision

Add a decision record when a choice shapes the system and has real alternatives.

1. Take the next number after the last record in [the decision log](../reference/decision-log.md).
2. Create `docs/explanation/decisions/DD-NNNN-a-short-name.md` with these parts, in this order:
   - a title `# DD-NNNN What is decided`;
   - `**Status:** Proposed`, `**Date:**` and `**Requirements:**` with links to the requirements it serves;
   - **Context**: the forces, with links to the research;
   - **Options**: at least two, each with what it makes easy and hard, as a table;
   - **Decision (proposed)**: the choice and its reason;
   - **Consequences**: what follows, good and bad;
   - **Open questions**, if any.
3. Add a Mermaid diagram where structure or flow is easier seen than read.
4. Run `just index`, then `just test`.
5. Open an issue labelled `decision` in the milestone the decision belongs to, and a pull request that refers to it.
6. When the owner accepts or rejects it, change **Status:** to `Accepted` or `Rejected` with the date and who decided. A decision that replaces an earlier one sets the earlier one to `Superseded by DD-NNNN`.
