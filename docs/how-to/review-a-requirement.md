# Review a requirement

Approve, change or drop a requirement, and leave a record of why.

1. Open the requirement's review issue. The areas were reviewed in the [M2 milestone](https://github.com/ProjectCartograph/cartograph-design/milestone/2?closed=1), and the requirements on programmes and cycles in [M3](https://github.com/ProjectCartograph/cartograph-design/milestone/3?closed=1); for a requirement proposed or questioned since, open an issue labelled `requirements` in the milestone it affects.
2. Read the requirement: its statement, why it exists, when it is accepted, the domains it holds across and its evidence.
3. If you doubt it, follow its evidence ([trace a requirement](trace-a-requirement.md)).
4. Comment on the issue with a verdict for each requirement you have a view on: approve; change, with the new wording; or drop, with the reason.
5. Once a verdict is given, edit the record:
   - set **Status:** to `Approved`, `Changed` or `Dropped`;
   - for a change, rewrite the statement and add `- **Changed:** <date>, <reason>`;
   - for a drop, add `- **Dropped:** <date>, <reason>`.
6. Run `just index`, then `just test`.
7. Open a pull request that fixes the issue.
