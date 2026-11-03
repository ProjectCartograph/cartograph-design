# DD-0021 Deployment follows the twelve factors, declared through Nix; the rules of the work stay data

**Status:** Accepted
**Date:** 2026-10-23
**Requirements:** [K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database), [K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K4](../../reference/requirements/platform.md#k4-durable-history), [K8](../../reference/requirements/platform.md#k8-local-first), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default), [X4](../../reference/requirements/domains-and-configuration.md#x4-standard-profiles-tailored-within-their-references), [X9](../../reference/requirements/domains-and-configuration.md#x9-policies-that-bind-workspaces)

## Context

The engine is one program, from one person's laptop to a national deployment ([K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database)), and every organisation configures it differently. Two kinds of configuration meet. Deployment configuration says where the program runs: which store, which endpoints, which secrets. Domain configuration says how the work is done: the profile ([DD-0008](DD-0008-profiles-hold-what-differs-between-domains.md)) and the policies that bind workspaces ([X9](../../reference/requirements/domains-and-configuration.md#x9-policies-that-bind-workspaces)). The twelve-factor methodology sets out how a program stays portable across deployments: one codebase, explicit dependencies, configuration in the environment, backing services as attached resources, build and run kept apart, development and production alike ([TWELVE-FACTOR](../../reference/bibliography.md)). Nix builds each package in isolation and declares environments, so that what works on one machine works on another ([NIX](../../reference/bibliography.md)). Domain configuration needs what an environment variable cannot give: versions, review before a change, a history that survives ([K3](../../reference/requirements/platform.md#k3-versioned-change-reviewed-where-the-policy-asks), [K4](../../reference/requirements/platform.md#k4-durable-history)), and delivery, encrypted, to every replica ([K8](../../reference/requirements/platform.md#k8-local-first), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default)).

## Options

| Option | Makes easy | Makes hard |
|---|---|---|
| A. Configuration bundled in files shipped with each build | One artefact per organisation | A build per organisation; secrets in artefacts; domain rules change without review |
| B. Deployment configuration in the environment, declared through Nix; domain configuration as data in the record | Portable, reproducible deployments; domain rules versioned, reviewed and synchronised | Two places to look, kept apart on purpose |
| C. All configuration in the environment, domain rules included | One mechanism | Domain rules lose versions, review, history and delivery to devices; a deployment can silently change an organisation's rules |

## Decision

Option B. Every deployment follows the twelve factors, and its configuration is declared through Nix: dependencies pinned, a release a build of a pinned commit, deployment settings and secrets given by the environment, never committed. The rules of the work are never deployment configuration: profiles and policies are records, changed by accepted proposals and synchronised like any other part of a workspace.

| Factor | In Cartograph |
|---|---|
| I. One codebase, many deploys | One repository per component, deployed from a laptop to a national server |
| II. Dependencies declared and isolated | Nix pins every dependency |
| III. Configuration in the environment | Deployment settings and secrets only; domain rules are data |
| IV. Backing services as attached resources | Storage, identity, sync and the language model behind ports ([K2](../../reference/requirements/platform.md#k2-from-files-to-a-shared-database)) |
| V. Build, release and run kept apart | A release is a Nix build of a pinned commit |
| VI. Stateless processes | Server deployments; a device keeps its replica by design ([K8](../../reference/requirements/platform.md#k8-local-first)) |
| VII. Port binding | Server deployments |
| VIII. Concurrency by processes | Server deployments |
| IX. Fast start, graceful stop | Every deployment |
| X. Development as production | The same declaration in development, testing and production |
| XI. Logs as event streams | Logs; the journal is a record, not a log ([DD-0011](DD-0011-documents-with-an-append-only-journal.md)) |
| XII. Admin tasks as one-off processes | Run from the same declaration |

## Consequences

- An organisation deploys without a fork or a custom build; what differs is its environment and its records.
- A change to an organisation's rules is a reviewed proposal with a version and a history, never a redeployment.
- Secrets never enter the repositories or the record.
- Factors VI to VIII bind server deployments only; local-first replicas are stateful by design.
- The schema of deployment settings is part of the contract and versioned with it.

## Settled questions

- **How is a deployment's declaration published for others to reuse?** Three forms are built from one typed schema of settings, kept in the engine's flake, so none can drift from the others. A NixOS module, whose options carry a type, a default and a description and are checked when the system is built ([NIX-MANUALS](../../reference/bibliography.md)). A container image built by Nix without Docker, reproducible when its date is fixed, and configured by the environment (factor III) ([NIX-MANUALS](../../reference/bibliography.md)). And a Helm chart, versioned by Semantic Versioning, whose values are checked against a JSON Schema generated from the same schema at install, upgrade, lint and template; it is published to an OCI registry and installed by version or, more strictly, by digest, and each upgrade is a release revision that can be rolled back ([HELM](../../reference/bibliography.md)). The flake's lock file pins every input, direct and indirect ([NIX-MANUALS](../../reference/bibliography.md)). The engine checks its environment against the schema when it starts and refuses to run with a setting that fails, naming it. A person's device needs none of these: the local-first application runs with its defaults.
- **Which parts of a declaration are a standard profile?** None: a declaration says where the program runs, never how the work is done. It may name a standard profile or a binding policy ([X4](../../reference/requirements/domains-and-configuration.md#x4-standard-profiles-tailored-within-their-references), [X9](../../reference/requirements/domains-and-configuration.md#x9-policies-that-bind-workspaces)) by its identifier and version hash, to apply when a workspace is first created; from then on it is a record, changed only by accepted proposals.
