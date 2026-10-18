# Review the design: a first reading

In this tutorial you follow one thread through the whole design, from a finding in the field to a requirement, a decision, the domain model and the architecture. At the end you will have left your first review comment. It takes about an hour.

You need a web browser and a GitHub account with access to this repository.

## 1. Start from what people said

Open [the problem](../explanation/the-problem.md) and read "What happened in the field". Note the one screen people finished: one question per screen, plain words, an obvious next step.

## 2. See the requirement it became

Open [people and first use](../reference/requirements/people-and-first-use.md) and read P1, "Start from the change, with no choice first". Look at its **Why** and its **Sources**. One source is round 3's first principles report, criteria C1 and C5.

## 3. Follow it to the evidence

Open [the first principles report](../../research/round-3/g4-first-principles.md) and find section 3, "From first principles: what a person needs". You will see the eleven needs, and that the first five come in the same order in every domain read: the problem, the change, how, how we will know, show it to someone.

## 4. See the decision that answers it

Open [DD-0005, the entry is the change](../explanation/decisions/DD-0005-the-entry-is-the-change.md). Read the table of three entries and what each makes hard. Notice the status, Proposed, and that it is conditional on a test with people.

## 5. See how the model holds it

Open [DD-0004, one record for work at any scale](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md) and look at its diagram: the same record carries the labels portfolio, programme, project and service. Then open [the domain model](../explanation/domain-model.md) and find Work definition in the context map.

## 6. See where it runs

Open [the architecture](../explanation/architecture.md) and read "How a change flows". The answers a person gives in the first walk become a proposal, are checked against the profile, and are written with a journal entry.

## 7. Leave your first comment

Open the [M2 milestone](https://github.com/ProjectCartograph/cartograph-design/milestone/2), choose the issue for people and first use, and comment with your verdict on P1: approve, change, or drop, and why.

You have followed one requirement from the field to the code's shape. Every other requirement can be traced the same way ([trace a requirement](../how-to/trace-a-requirement.md)).
