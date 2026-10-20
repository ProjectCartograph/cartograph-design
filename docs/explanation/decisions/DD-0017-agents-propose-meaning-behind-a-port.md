# DD-0017 Agents propose; questions of meaning go behind a port

**Status:** Proposed
**Date:** 2026-10-17
**Requirements:** [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide), [K1](../../reference/requirements/platform.md#k1-the-contract-as-data), [K10](../../reference/requirements/platform.md#k10-encrypted-by-default), [O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)

## Context

Agents read records and suggest changes; accountability for the record stays with people ([GOVS002](../../reference/bibliography.md), [CC-REPORT](../../reference/bibliography.md)). Some checks are questions of meaning that rules cannot settle: whether a sentence states one objective or two, whether two goals say the same thing. A language model can answer them, but the core must work without one, and must say plainly when a question was not judged.

## Options

| Option | For | Against |
|---|---|---|
| A. Agents write to the record, behind a setting | Fast for routine changes | Accountability leaves people; fails [K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide) |
| B. Agents propose like people; questions of meaning go to a language model behind a port, off by default | One standard for people and agents; the core works without a model and says when a question was not judged | A port and a "not judged" answer to design |
| C. No agents and no language model | Simplest | Loses the help agents give, and checks of meaning become impossible |

## Decision (proposed)

Agents use the same proposals as people ([DD-0014](DD-0014-proposals-saved-straight-in-when-alone.md)) and meet the same checks. Questions of meaning go to a **language model** behind a port, off by default, whose answer may be "not judged". It is called by its standard name, as in the guidance on generative AI that treats large language models as one class of model ([NIST-GAI](../../reference/bibliography.md)), and its answers are never called decisions, so that "decision" keeps its governance sense.

## Consequences

- An agent's change is always a proposal a person accepts, under any policy, and the version it creates names both ([K5](../../reference/requirements/platform.md#k5-agents-propose-people-decide)).
- With the language model off, every check that needs it answers "not judged", and nothing blocks on it.
- Answers from the language model advise; they are never recorded as decisions.

## Open questions

- **Where does the language model run, and what may it see?** Records are encrypted before they leave a device ([K10](../../reference/requirements/platform.md#k10-encrypted-by-default)), but a model asked a question of meaning must read the text it is asked about. The workspace must choose where the model runs (on the device, in its own deployment, or at a provider) and which text it may send, and personal data stays out unless the workspace chooses otherwise ([O5](../../reference/requirements/openness-and-exchange.md#o5-personal-data-separable)).
