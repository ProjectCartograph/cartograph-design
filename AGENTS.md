# Working on cartograph-design

This repository holds Cartograph's design: requirements, research, the domain model, the architecture and the decisions, as documentation that follows Diataxis. There is no code to build; the checks run in the flake.

- **Read first:** [README.md](README.md), [CONTRIBUTING.md](CONTRIBUTING.md), [STYLE.md](STYLE.md).
- **Nix is the toolchain.** Every command is a `just` recipe, run in the flake (`scripts/toolchain` enters it) or in the test environment through `scripts/dev`. The gate after every edit is `just test`.
- **Version control is jujutsu, colocated with git.** Make changes with `jj` from the flake, never `git commit`, `git push` or `git rebase`. Never run write commands unless the person asks for that in so many words. Run `git config core.hooksPath .githooks` once per clone.
- **One kind per page.** Every page under `docs/` is a tutorial, a how-to guide, reference or explanation, and lives in that folder.
- **Requirements and decisions are records.** Each requirement has a priority and a status; each decision record a `**Status:**` line. Change a status only when the owner has decided, in the record's issue. Run `just index` after changing either.
- **Research is a record.** Reports in `research/` are kept as written; new evidence goes in a new note ([how to add a source](docs/how-to/add-a-source.md)).
- **Upstream is the design and nothing else.** No working notes, plans, logs or agent state are committed (`just clean-tree`). No real client's names, logos or documents.
- **Diagrams are Mermaid,** with every label quoted in flowcharts and no pipes; `just diagrams` parses them.
