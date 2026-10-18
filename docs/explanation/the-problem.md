# The problem Cartograph must solve

This page explains who Cartograph is for, what went wrong with the version built so far, and what a good result looks like. It is the starting point for every requirement in [the catalogue](../reference/requirements/README.md).

## Who it is for

Cartograph is for anyone who has to write down what they decided to do and why, and then steer it: a hobbyist's group, a cooperative, a charity, a research team, a company, a public body, a national government. Some are technical and some are not. Some define one piece of work; some define programmes over long horizons, portfolios of investment, or projects large enough to need parts of their own.

In their own words, the need is:

> I need to write down what we have decided to do and why, so that others can see it, challenge it, fund it or continue it, and so that I can tell whether it is working and change it when it is not.

That sentence, and the eleven needs it breaks into, come from [round 3's first principles report](../../research/round-3/g4-first-principles.md).

## What happened in the field

In person, people could not get started. They gave up at the first screen after onboarding. They said the interface cascaded, was hard on the eyes and was frightening to use. Home asked an open question with no direction; every other screen showed so many panels, buttons and counts that they could not tell where to begin. The one part they finished, and liked, was the onboarding walk: one question per screen, in plain words, with an obvious next step.

The audit of the screens agrees. The median screen showed 49 controls and 2 primary actions in its first screenful; a project's governance step showed 118. The onboarding walk showed 7 controls and 1 primary action.

No session was recorded, so this is testimony, not data. The design must be checked against people with the trace switched on (see [the validation milestone](../reference/milestones.md)).

## The cause

The screens were the symptom. Research found the cause in the model underneath them ([why a new model](why-a-new-model.md)):

- The tool asks people to classify their work in its own nouns before anything else, when every domain starts from the problem and the change wanted.
- Each kind of work has its own shape, and the project's grew to 174 fields, so every screen showed a great deal.
- The same question was asked in several places, so people met it twice and did not know which was right.
- The acts every framework turns on (a decision, a stage, a review, a handover, a look at the benefits) had no place, so the tool could not say what to do next.

## The end state

A person who has never used Cartograph says what they want to change, in their own words, one question at a time, and ends with a record their board, funder or team accepts. They always know the next step. The full workspace is one step away for anyone who wants it. The same record serves a hobbyist and a national government, in each one's own words and stages, and outlives the tool.

## Related

- [Why a new model](why-a-new-model.md)
- [People and first use](../reference/requirements/people-and-first-use.md)
