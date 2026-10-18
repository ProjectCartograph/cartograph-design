# Working on cartograph-design

This repository is Cartograph's design, written as documentation that follows Diataxis. There is no code to build; the checks run in the flake.

- **Read first:** [README.md](README.md), [CONTRIBUTING.md](CONTRIBUTING.md), [STYLE.md](STYLE.md).
- **Nix is the toolchain.** Every command is a `just` recipe, run in the flake (`scripts/toolchain` enters it) or in the test environment through `scripts/dev`. The gate after every edit is `just test`.
- **Version control is jujutsu, colocated with git.** Make changes with `jj` from the flake, never `git commit`, `git push` or `git rebase`. Never run write commands unless the person asks in so many words. Run `git config core.hooksPath .githooks` once per clone.
- **One kind per page.** Every page under `docs/` is a tutorial, a how-to guide, reference or explanation, and lives in that folder.
- **Requirements and decisions are records.** Change a status only on the owner's verdict, in the record's issue, then run `just index`.
- **Every claim cites the bibliography** by key. Read sources at source; say how far.
- **Only the design is committed.** No working notes, research drafts, logs or agent state (`just clean-tree`); no real client's names or documents.
- **Diagrams are Mermaid,** with every flowchart label quoted and no pipes; `just diagrams` parses them.
