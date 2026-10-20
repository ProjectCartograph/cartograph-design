# Read the design

In this tutorial you follow one thread through the design: from what people did in the field, to a requirement, to the evidence behind it, to a decision, the domain model and the architecture. At the end you leave your first review comment. Allow about an hour.

You need a web browser and a GitHub account.

## 1. Start from people

Open [vision and scope](../explanation/vision-and-scope.md) and read the table of needs. The first is to say what we want to change, in plain language, without learning a method first.

## 2. Find the requirement

Open [people and first use](../reference/requirements/people-and-first-use.md) and read **P1 Start from the change, with no choice first**. Read its **Why**, then its **Accepted when**: these are the conditions a build must meet. Its status is Approved: every requirement was reviewed and approved, in milestone M2 or, for programmes and cycles, M3.

## 3. Check the evidence

P1 cites HMT-CASES and NNG among others. Open [the evidence](../explanation/the-evidence.md) and read "People start from the change". Then open [the bibliography](../reference/bibliography.md), find NNG, and see how far it was read.

## 4. See the decision

Open [DD-0005 The entry is the change](../explanation/decisions/DD-0005-the-entry-is-the-change.md). Compare the three possible entries and what each makes hard. Note that it is Accepted, and that it rests on the frameworks and design research, not on a test.

## 5. See the model

Open [DD-0004 One record for work at any scale](../explanation/decisions/DD-0004-one-record-for-work-at-any-scale.md), which is Accepted, and look at its diagram: one kind of record carries the labels portfolio, programme, project and service. Then open [the domain model](../explanation/domain-model.md) and find Work definition on the context map.

## 6. See it run

Open [the architecture](../explanation/architecture.md) and read "How a change flows". The answers a person gives become a proposal, are checked against the profile, and are written with an entry in the journal.

## 7. Leave a comment

Open the [M4 milestone](https://github.com/ProjectCartograph/cartograph-design/milestone/4), choose the issue for DD-0010, and comment with your view on it: accept, change or reject, and why, naming the requirements your view rests on.

You have followed one requirement from the field to the shape of the system. Every other requirement can be traced the same way ([trace a requirement](../how-to/trace-a-requirement.md)).
