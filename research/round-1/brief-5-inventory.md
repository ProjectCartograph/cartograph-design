# Agent 5: what Cartograph does today, on the Diátaxis map, and first drafts

Read COMMON.md in this folder first, and Diátaxis.

1. **Inventory.** Read both repositories (cartograph-ui src/routes,
   src/surfaces, src/projects, src/copy.ts; cartograph-engine
   docs/TAXONOMY.md, docs/UI_CONTRACT.md, contract/flows, the README)
   and list every capability a person can use: each screen, each walk,
   each kind of record, each action (define, change, review, merge,
   record readings, import, export, charter PDF, graph, sheets, agents,
   comments, change sets, snapshots, access). For each, say who uses it
   (non-technical, power user, administrator, developer) and which
   Diátaxis need it serves.
2. **Gaps.** What has no documentation for its users today (most of the
   docs are for developers and deployers)? What is documented in the
   wrong kind (for example a how-to mixed into reference)?
3. **First drafts** of user documentation, in Cartograph's own words and
   Diátaxis's conversational tone, written for the web interface as it
   is today:
   - one tutorial: "Charter your first project" (from the welcome walk to
     a merged project and its charter);
   - six to eight how-to guides for the commonest tasks (for example:
     record an indicator's readings; review and merge an agent's change
     set; add a data source and its metrics; export the charter; invite
     people and give them roles; connect an AI agent);
   - a reference outline: what the kinds are and where their fields come
     from (the contract's schemas and guidance), without copying them;
   - three explanation pages: why Cartograph separates purpose, goals,
     objectives and outcomes; what a change set is and why work goes
     through one; how checks and the decision model advise but never
     block.

Outputs, under /home/cascadura/git/project-cartograph/.eval/research/:
inventory.md (parts 1 and 2) and a folder docs-draft/ with one Markdown
file per draft page (tutorials/, how-to/, reference/, explanation/).
