# Contributing to cartograph-design

`AGENTS.md` is the short brief; `STYLE.md` is the writing and commit style; this page is the loop.

## Getting set up

Install Nix with the Determinate installer. Every `just` recipe enters the flake itself. Run `git config core.hooksPath .githooks` once, so each commit message is checked as you write it.

## The loop

1. Edit the documents.
2. `just index` if you changed a requirement or a decision record.
3. `just test` after every edit: links and anchors, identifiers and statuses, words, diagrams.
4. `just ci` before a pull request.
5. A pull request fixes or refers to its issue, and is labelled by type.

## Reviewing the design

Requirements are reviewed in their area's issue ([how to review a requirement](docs/how-to/review-a-requirement.md)); decisions in their own ([how to propose a decision](docs/how-to/propose-a-decision.md)). The owner approves.

## Commit messages

Every commit follows Google's Angular commit message format, strictly, and `just commit-check` checks it.

The header is `<type>(<scope>): <summary>`, 72 characters at most, with no "and" in the summary.

Types: `build`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `test`. In this repository most changes are `docs`; tooling is `build` or `ci`.

Scopes: `architecture`, `ci`, `contributing`, `decisions`, `domain`, `guide`, `requirements`, `research`, `tooling`, or none for a change across several.

The body says what and why, in prose wrapped at 72 characters. Issues go in trailers, never the body. The trailers are, in order: `Fixes #N` or `Refs #N`, `Signed-off-by:`, `Co-authored-by:`.
