# Review a requirement

Approve, change or drop a requirement, and leave a trail of why.

1. Open the review issue for the requirement's area in the [M2 milestone](https://github.com/ProjectCartograph/cartograph-design/milestone/2). Each area of [the catalogue](../reference/requirements/README.md) has one.
2. Read the requirement in its area page: the statement, its priority, why, the domains that support it and its sources.
3. If you doubt it, follow its sources to the research ([trace a requirement](trace-a-requirement.md)).
4. Comment on the issue with your verdict for each requirement you have a view on: approve, change (with the new wording), or drop (with the reason).
5. Once the verdicts are agreed, change each record's **Status:** line to `Approved`, `Changed` or `Dropped`, and for a change, edit the statement and add a line `- **Changed:** <date>, <why>`.
6. Run `just index` to refresh the indexes, then `just test`.
7. Open a pull request that fixes the issue.
