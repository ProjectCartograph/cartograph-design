# Contributing to cartograph-design

[AGENTS.md](AGENTS.md) is the short brief; [STYLE.md](STYLE.md) is the writing and commit style; this page is the loop.

## Getting set up

Install Nix with the Determinate installer. Every `just` recipe enters the flake itself. Run `git config core.hooksPath .githooks` once, so each commit message is checked as you write it.

## The loop

1. Edit the documents.
2. `just index` if you changed a requirement or a decision.
3. `just test` after every edit: links and anchors, identifiers and statuses, citations, words, diagrams.
4. `just ci` before a pull request.
5. A pull request fixes or refers to its issue, and is labelled by type.

## Reviewing the design

Requirements are reviewed in their area's issue ([review a requirement](docs/how-to/review-a-requirement.md)); decisions in their own ([propose a decision](docs/how-to/propose-a-decision.md)). The [design process](docs/reference/design-process.md) says who decides.

## Commit messages

Every commit follows Google's Angular commit message format, strictly; `just commit-check` checks it.

- The header is `<type>(<scope>): <summary>`, at most 72 characters, with no "and" in the summary.
- Types: `build`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `test`. Most changes here are `docs`.
- Scopes: `architecture`, `ci`, `contributing`, `decisions`, `domain`, `guide`, `requirements`, `research`, `tooling`, or none for a change across several.
- The body says what and why, in prose wrapped at 72 characters. Issues are named in trailers, never the body.
- Trailers, in order: `Fixes #N` or `Refs #N`, `Signed-off-by:`, `Co-authored-by:`.
