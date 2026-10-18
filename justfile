# Cartograph design. `just` lists recipes. Every recipe runs inside the
# toolchain flake.nix pins (scripts/toolchain enters `nix develop` unless
# the caller already did).
set shell := ["scripts/toolchain", "bash", "-euo", "pipefail", "-c"]

default:
    #!/usr/bin/env bash
    just --list --unsorted

# The gate, after every edit: links, identifiers, words and diagrams
test: links ids words diagrams

# What CI runs, in this order
ci: test clean-tree

# Every relative link and anchor resolves
links:
    python3 scripts/check-docs links

# Every requirement and decision named exists, and each record has a status
ids:
    python3 scripts/check-docs ids

# No em dashes; no client's words
words:
    python3 scripts/check-docs words

# Every Mermaid diagram parses
diagrams:
    python3 scripts/check-docs diagrams

# Regenerate the requirement and decision indexes from the records
index:
    python3 scripts/check-docs index

# Nothing tracked that is not the design
clean-tree:
    scripts/check-clean-tree

# Commit messages since main follow CONTRIBUTING.md
commit-check base="origin/main":
    scripts/check-commit-msg {{base}}
