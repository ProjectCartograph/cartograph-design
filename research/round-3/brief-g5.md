# G5: Cartograph today, judged without loyalty

No new web research is needed beyond checking a claim. Read both
repositories in full where it matters (contract/schemas, flows,
guidance, docs/TAXONOMY.md and DESIGN_RULES.md, the ADRs, the engine's
packages and ports, the interface's routes and copy) and the research
and guide from rounds one and two under ../.

Write g5-current-state.md:
1. **The model as it is**: every kind, what it is for, how many fields,
   how they link; the flows; the checks; the screens; the size of each
   (schemas, lines, controls from the audit in COMMON.md).
2. **What is genuinely good and should survive any rebuild** (for
   example: the contract-first engine, change sets, the decision model
   behind a port, the vault of files, the people's trace), with why.
3. **What looks irrelevant, duplicated, misplaced or over-built** against
   the research so far, with evidence from the code and the round-one
   and round-two research.
4. **The cost of change**: what a rebuild would throw away, what could
   be carried over (data, tests, the interface's components), and what
   a migration of existing users' vaults would need.
Be candid. The owner wants the truth, not reassurance.
