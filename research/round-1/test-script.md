# How to run the in-person test for walk-first (cartograph-ui#136)

This guide helps you run a short, moderated usability test of Cartograph
with real people and read the result. It is a how-to guide: it assumes
you can use a laptop and run the stack, and it does not teach usability
theory. Why each choice is made is linked, not explained here. The
background design principles are in `tools-and-ux.md` in this folder.

You will test three tasks: define a project, review and merge a change
set, and record an indicator reading. Allow 45 minutes a person.

## Before you start

### 1. Decide who comes and how many

Test two kinds of people, because they behave differently and the aim is
to make the first comfortable and let the second "go all out".

| Kind | Who | How many |
|---|---|---|
| Non-technical | Project officers, managers and sponsors: people who plan, run or approve work in an organisation but do not work with data or software for a living | 5 |
| Technical or power | Analysts, PMO staff, data people, administrators | 3 to 4 |

- About five people per group that behaves differently is the standard
  for finding problems; three to four per group can do when behaviour
  overlaps (https://www.nngroup.com/articles/how-many-test-users/).
- GOV.UK plans four to eight per round (https://www.gov.uk/service-manual/user-research/find-user-research-participants).
- Steve Krug's routine uses three people in one morning a month and
  fixes what they find before the next round. That figure comes from a
  secondary report of his talks
  (https://www.creativebloq.com/netmag/steve-krug-diy-usability-testing-6116958);
  his own site offers the scripts and forms but I did not find the
  number there (https://stevekrug.com/download-files/). If you can only
  get three in the first round, run three, fix, and run again.
- Include at least one person who uses assistive technology (a screen
  reader, a magnifier, speech recognition or keyboard only) or has
  limited digital skills or a cognitive or learning disability. GOV.UK
  asks for this in recruitment and says it can take a month to arrange
  (https://www.gov.uk/service-manual/user-research/find-user-research-participants).
  This counts inside the five or the three to four, not on top of them.
  See "Accessibility in the session" below.
- Do not use people who built or wrote the screens. Include at least
  some who also took the earlier in-person tests only if you note it;
  they have seen the old design.
- These numbers find problems. They do not give statistics. Quantitative
  figures need at least 20 people (same NN/g page).

### 2. Get consent first

Before anyone sits down, send an information sheet, then confirm at the
start. Follow https://www.gov.uk/service-manual/user-research/getting-users-consent-for-research.
Cover:

- who you are and why you are testing;
- that you are testing Cartograph, not them;
- what is kept (see "What is recorded" below), for how long, and who
  controls it;
- whether anyone else watches;
- that taking part is voluntary and they can stop at any time, and if
  they withdraw you delete their data;
- how to complain.

Remind them of this at the start and end of the session. If you collect
consent aloud, keep a copy of the script with the notes. Do not stream
the session to people you cannot see
(https://www.gov.uk/service-manual/user-research/taking-notes-and-recording-user-research-sessions).
If anyone is under 18 or vulnerable, you need consent from a responsible
adult too. Krug's own kit has a one-page recording permission form you
can adapt, free to share if you keep its copyright line and link to the
page instead of posting the file (https://stevekrug.com/download-files/).
Everything the person sees and types is the fictional produce
cooperative in `cartograph-engine/examples/minimal`. No real
organisation's name, logo or document goes in the test data, and
participants are told so.

### 3. Prepare the stack and the trace

1. Pick a folder for the day, then start the stack with the trace on:

   ```
   CARTOGRAPH_TRACE_DIR=~/sessions/2026-10-20 just stack
   ```

2. Check before anyone arrives: `GET /api/v1/session` must answer
   `"traceOn": true`. If it does not, stop and fix it. A session is
   measured only if the trace was on (docs/EVALUATING_PEOPLE.md,
   "Recording a test session").
3. Load the example vault (`cartograph-engine/examples/minimal`, the
   fictional produce cooperative) with the starting state in the next
   section. Reset it between participants so each starts the same.
4. Open a fresh browser tab for each participant. One tab is one session
   in the trace. Write down the tab, the participant code (P1, P2, not a
   name) and the clock time each task begins.
5. Do a practice run yourself or with a colleague the day before, then
   again on the day. GOV.UK recommends both
   (https://www.gov.uk/service-manual/user-research/plan-round-of-user-research).

### 4. Prepare the starting state

All three tasks use the example vault as it ships: a produce
cooperative that collects, checks and sells its members' produce
through six depots.

- **Task 1** starts from that vault with no cold-room project in it, and
  a short facts card the person can use (see the card below). The
  existing project, "Quality Check Rollout", is there to look at, so a
  person can find an example if they want one.
- **Task 2** needs a change set already waiting for the person: a
  colleague's suggested edits to "Quality Check Rollout", including one
  edit that conflicts with something already there (for example, a new
  cost for the check tool against the one the board approved), so
  merging needs a decision.
- **Task 3** uses the indicator "Collection turnaround" (median hours
  between a delivery being taken in and collected, monthly cycle, from
  the Collection Log). The vault has readings up to 2026-04, the last
  one provisional. The person adds the reading for 2026-05.

Write the story for each task on a paper card. Use plain, short, realistic
wording, ask the person to act, and avoid the words on the screen
(https://www.nngroup.com/articles/task-scenarios-usability-testing/,
https://www.nngroup.com/articles/better-usability-tasks/).

### 5. Plan the room

- Two people: a **facilitator** who talks, and a **note-taker** who does
  not. This is GOV.UK's advice, so the facilitator can attend to the
  participant (https://www.gov.uk/service-manual/user-research/taking-notes-and-recording-user-research-sessions).
- Allow no more than six one-hour sessions a day, 15 minutes apart
  (https://www.gov.uk/service-manual/user-research/using-moderated-usability-testing).
- Keep analysis time: about one hour for every two hours of sessions,
  the same day (https://www.gov.uk/service-manual/user-research/plan-round-of-user-research).

## Run a session

### 1. Welcome and consent (5 minutes)

The facilitator says, in these words:

> "Thank you for coming. Before we start: we are testing the software,
> not you. You cannot do anything wrong. If something is confusing, that
> is a problem with the software and it helps us to know. Please do not
> worry about hurting our feelings; we need your honest reactions."
>
> "I will give you three short jobs on a card. Please say out loud what
> you are thinking as you go, like what you are looking for, or what
> surprises you. I will mostly stay quiet, because I want to see what
> you would do on your own."
>
> "We record which screens you open and what you press. We do not
> record anything you type or choose, and we do not record your name.
> [Name the note-taker.] will take notes. Nobody else is watching. You
> can stop at any time, and if you do, we will delete everything from
> your session. Are you happy to go ahead?"

This follows the shape of Krug's published script: say you are testing
the product and not them, ask them to think aloud, say you may not
answer questions during the tasks, tell them about recording and
observers, then get consent
(his script, page 1 to 2: https://stevekrug.com/downloads/test-script.pdf,
read from the saved PDF). Add his line that they can
ask questions, that you may not answer them right away, and that they
can take a break whenever they like.

Get a yes before anything else. Then ask two friendly warm-up questions:
what their job is, and how they plan work today (Krug asks about
occupation and how much time they spend online, same script). Write the
answers by participant code, not name.

**First look (3 minutes at most).** Open Home, and say: "Please look at
this page and tell me what you make of it: what it is for and what you
can do here. Just look around and say your thoughts. Please do not
press anything yet." This is Krug's first-look step, taken from his
script; it tests whether Home is vague, which is what people said. Note
what they say it is for, and how many choices they name. Then start the
tasks.

### 2. Run each task

For each task:

1. Hand over the card and read it aloud once. Write the clock time.
2. Say: "Please say your thoughts out loud as you go."
3. Stay quiet. The facilitator watches, the note-taker writes.
4. When they say they are done, or stop, or you step in, say "Thank
   you." Then show the one-question form (below).

Start each task from Home, not from a deep screen.

#### Task 1: define a project

Card:

> "You work for a cooperative whose members grow produce. Produce
> sometimes waits in the heat at the depots before it is collected, and
> the board has agreed to try cold rooms at two depots. You have been
> asked to write this down so the board can approve it. Use the facts on
> the next card. Get it to the point where you would send it to the
> board."

Facts card (seven lines at most): the project is a cold room pilot at
two depots; the depot network team leads it; the problem is that
produce waits in the heat before collection and some is lost; two goals
(less produce lost after picking, collection within a day); a rough end
date of the end of next season; the board approves it.

Done when: a project exists with the facts, they have reached the check
step, and they have saved or submitted it. The vault's own goals, such
as "Less harvest lost after picking", are there to be found; whether the
person links to one is a thing to note, not a requirement.

#### Task 2: review and merge a change set

Card:

> "A colleague has suggested some edits to the cooperative's quality
> check project. Look at what they suggest, decide what to do with each
> edit, and make the project reflect your decision."

Done when: the change set is merged or declined, with a decision on the
conflicting edit. Both outcomes count as finished; what you note is
whether the person understood what was changing and what conflicted.

#### Task 3: record an indicator reading

Card:

> "It is the start of June. The depot supervisors' collection log shows
> that last month the typical wait between a delivery arriving and being
> collected was 29 hours. Make sure this is written down where the board
> will find it."

Done when: a reading of 29 is saved against the collection turnaround
indicator for May 2026. The card says "typical wait" and does not use the
screen's words ("reading", "indicator", "period").

Order: use this order for everyone for the first round, so the early
tasks do not drift. Change the order for half the group in a later round
if you want to see if learning from one carries over.

### 3. When you may help

Let people struggle, but know when to step in
(https://www.nngroup.com/articles/thinking-aloud-the-1-usability-tool/;
GOV.UK: help only if someone is completely stuck,
https://www.gov.uk/service-manual/user-research/using-moderated-usability-testing).
Use this ladder and note the highest rung used.

| Rung | When | Say, exactly |
|---|---|---|
| 0 | They go quiet | "What are you thinking now?" |
| 1 | They ask you a question | "What do you think it does?" or "What would you try?" |
| 2 | Still stuck after about two minutes with no progress, or visibly upset | "What are you looking for?" |
| 3 | Stuck after a further minute | Point to the area only: "Have a look around here." |
| 4 | Still stuck, or they ask to stop | "Let's leave that one. Thank you." Mark the task given up, and move on. |

Rules:

- Never name a button, a screen or a step.
- Never say "good" or "right" or "wrong." Say "thank you."
- If your prompt may have changed what they did, note it and discard that
  part of the data (NN/g think-aloud page above).
- If they ask "did I do it right?" say: "I'll tell you at the end. What
  would you do next?"
- If they say they want to stop the whole session, stop and say thank
  you. Then delete their data if they ask.

### 4. After each task: one question (about 20 seconds)

Ask at once, right after the task, while it is fresh
(https://measuringu.com/seq10/). Read it aloud and show it on paper:

> "Overall, how difficult or easy was the task to complete?"
> 1 (very difficult) to 7 (very easy).

Write the number. This is the Single Ease Question: a 7-point scale
with only the ends labelled. The wording above is the one on Jeff
Sauro's page; the page says the average across more than 400 tasks and
10,000 people falls between about 5.3 and 5.6 (same page). Keep the
direction (1 difficult, 7 easy) so you can compare. For any answer below
5, ask: "Briefly, what made it difficult?" The same page gives this
advice. For 5 or higher, ask nothing.

### 5. The short difficulty form (5 minutes, at the end)

After the three tasks, give the person the System Usability Scale on
paper. It is ten statements, each answered from "strongly disagree" to
"strongly agree" on five points (Brooke 1996, cited at
https://verdi.cs.ucl.ac.uk/constructDB/publications/brooke-susa-1996.html).
Print the statements exactly as below. The wording is copied from
https://measuringu.com/sus-items/:

1. I think that I would like to use this system frequently.
2. I found the system unnecessarily complex.
3. I thought the system was easy to use.
4. I think that I would need the support of a technical person to be able to use this system.
5. I found the various functions in this system were well integrated.
6. I thought there was too much inconsistency in this system.
7. I would imagine that most people would learn to use this system very quickly.
8. I found the system very cumbersome to use.
9. I felt very confident using the system.
10. I needed to learn a lot of things before I could get going with this system.

Score: for odd items, subtract 1 from the answer; for even items,
subtract the answer from 5; add the ten; multiply by 2.5, for 0 to 100
(https://measuringu.com/sus/). A score is not a percentage. The average
over about 500 products is 68, so above 68 is above average
(https://measuringu.com/10-things-sus/). With five people the average is
only roughly stable and the confidence interval is wide (same page).
Treat it as a flag, not a result, and report it with the number of
people. Do not read single items on their own; Brooke cautioned against
it (cited on https://measuringu.com/sus-items/ in a search summary; I did not read Brooke's text).

Then ask two open questions and write the answers:

- "What was the best part?"
- "What was the most confusing part?"

Then ask whether anything they said may not be used, thank them, say what
happens next, and ask for feedback on the session
(https://www.gov.uk/service-manual/user-research/using-moderated-usability-testing).

## Accessibility in the session

Run the same three tasks for everyone, and change the setting, not the
task. Sources: GOV.UK on sessions with disabled people
(https://www.gov.uk/service-manual/user-research/running-research-sessions-with-people-with-disabilities),
and on recruiting them (find-user-research-participants, above).

- **Their own set-up.** Ask people who use assistive technology to bring
  their own device or settings, or visit them. Their settings are hard to
  recreate (GOV.UK page above). For a visit, serve the stack from a
  laptop you bring.
- **Before they arrive.** Ask what helps (large text, a quiet room,
  extra time, a person to read aloud, a break). Meet them at reception,
  introduce everyone in the room, and say where the accessible toilet is.
- **Consent.** Check the person can use and understand the consent
  sheet and offer it aloud or in large print. Do not assume what they can
  or cannot do; ask before helping (GOV.UK page above).
- **Talk to them, not their helper.** Use plain words. If speech is hard
  to follow, do not guess; ask them to write it down (same page).
- **No clock pressure.** The help ladder's times (two minutes, one
  minute) are for a person who is lost, not a person who is slow. Do not
  use them for someone using a screen reader or speech control. Let them
  take as long as they need; ask whether they would like a break between
  tasks, and offer one. WCAG gives people more time as a principle
  (https://www.w3.org/WAI/WCAG22/Understanding/timing-adjustable.html).
- **The two forms.** Read the Single Ease Question and the ten SUS
  statements aloud if the person prefers, and write the answer for them.
  Tell them they may skip the SUS.
- **Note it separately.** For each task, add: which assistive technology,
  whether focus went where they expected, whether an error or "saved"
  message was announced, whether they could reach the control with the
  keyboard or voice, and anything they could not read. These map to
  WCAG criteria 2.4.3, 3.3.1, 4.1.3 and 2.5.8 (the table in
  `tools-and-ux.md`, Part B2).
- **Do not average them in.** One person using a screen reader is a
  source of problems to fix, not a data point for the SEQ and SUS mean.
  Report their outcomes next to the others, and the SEQ and SUS as
  single values.
- **Not a substitute for an audit.** A usability test with a few people
  does not show that a screen meets WCAG. GOV.UK asks for an audit as
  well (https://www.gov.uk/service-manual/helping-people-to-use-your-service/making-your-service-accessible-an-introduction).

## What to note

The note-taker writes one observation per line, by participant code, task
and clock time. Write what was seen or heard, not what you think it
means (https://www.gov.uk/service-manual/user-research/taking-notes-and-recording-user-research-sessions).

For each task, record one outcome:

| Outcome | Meaning |
|---|---|
| Finished unaided | Done at rung 0 or 1 only |
| Finished with help | Done after rung 2 or 3 |
| Given up | Person or facilitator stopped (rung 4), or time ran out |

Also note:

- **Where**: the screen or step where they hesitated, went back,
  pressed something that did nothing, or gave up. Use the screen's
  heading as the person saw it.
- **What they said**: a short quote, if exact.
- **Which route**: the walk or the full workspace, and whether they
  chose to switch.
- **Highest help rung** used.
- **Time**: start and end clock times.
- **Accelerators**: whether power users looked for a shortcut, a bulk
  action, or a way around the walk.
- **The SEQ number** and the open answers.

Do not write names, organisations or what they typed. If you slip, strike
it out on the day.

## What is recorded

The trace records one line per act: when, what kind, which screen (by
route pattern, never by address), how long, the outcome, and the tab's
random session id. It never records what anybody typed or chose: no text,
no name, no figure and no search term. The server refuses a batch whole
if any act could carry one (docs/EVALUATING_PEOPLE.md, "What it
records"). Tell people this truthfully; the consent words above do.

What you keep besides the trace: the paper cards with the SEQ number, the
SUS form and your notes, all by participant code. Keep the table that
links codes to people separate and locked, delete it as soon as the round
is analysed, and delete notes and recordings from personal devices once
stored securely
(https://www.gov.uk/service-manual/user-research/taking-notes-and-recording-user-research-sessions).
Commit none of it to the repositories (`just clean-tree`); results go in
the pull request.

## Read the result

1. **Debrief the same day.** Observers and facilitator agree the top
   problems, as Krug recommends (secondary summary above). Rank by how
   many people hit a problem and how bad it was (gave up beats slowed).
2. **Read the trace**:

   ```
   cartograph ux ~/sessions/2026-10-20/ui.jsonl
   ```

   Use `-from` and `-to` to cut one task's window using your written
   clock times, and `-json` to hand it to a script. Read: the task table
   (started, finished, given up, median and p95 time by kind); dead
   ends, dead clicks and repeated presses; back in a walk and screens per
   task; slow answers (docs/EVALUATING_PEOPLE.md).
3. **Join notes and trace** by tab and clock time. Check that "given up"
   in your notes matches the table.
4. **Compare with the old design** where you have it: the median screen
   showed 49 controls in view and 2 to 3 primary actions; the onboarding
   walk showed 7 and 1. Your question is whether people who finished
   the onboarding walk now also finish the three tasks unaided.
5. **Report plainly.** For each task: how many of how many finished
   unaided, with help, or gave up, by kind of person; the SEQ values;
   the SUS flag; the top three problems with where they happened. Do not
   report percentages for groups this small.
6. Fix, then run the next round with fresh people. Small rounds, often,
   catch what the last one missed (NN/g how-many page above).

## Open questions

- I did not read Krug's book. I read his published script and his
  download page. His numbers (one morning a month, three people, a
  debrief) are still from a secondary report. The facilitator's words
  above are mine, built on his script, GOV.UK and NN/g guidance.
- The SUS statements are copied from MeasuringU, not from Brooke's
  paper. Check them against the paper before the first session if
  exactness matters.
- Whether to use the help ladder's time limits at all, for anyone, is
  untested.
- The time thresholds for the help ladder (two minutes, one minute) are
  my judgement, not from a source. Test them in the practice run.
- Whether the three tasks fit 45 minutes is unproven; the practice run
  will show.
- How to recruit the non-technical group from outside the team, and
  how to explain that everything on screen is a fictional cooperative,
  is a decision for the team.
- Whether to include people who already did the earlier in-person tests.

## Verification log

Follow-up check, 2026-10-17.

| Claim | Result |
|---|---|
| Krug's script and kit | Fetched https://stevekrug.com/download-files/ (the sensible.com address fails its certificate): the script, consent form, checklists, observer handout and phrase list exist; sharing terms confirmed. Read his script PDF https://stevekrug.com/downloads/test-script.pdf, pages 1 to 6: welcome, "testing the site, not you", think aloud, recording and observers, consent form, warm-up questions, first look at Home, tasks, observer questions, wrap-up. |
| Krug's "one morning a month, three people" | Not confirmed from his own pages. Secondary: https://www.creativebloq.com/netmag/steve-krug-diy-usability-testing-6116958. |
| Single Ease Question | Fetched https://measuringu.com/seq10/. Exact wording used. Follow-up "ask why below 5" confirmed there; I corrected my earlier "4 or lower". |
| SUS | Items verbatim from https://measuringu.com/sus-items/; scoring from https://measuringu.com/sus/. usability.gov archived page not reachable. Brooke's paper not read. |
| Think aloud, tasks, facilitation | NN/g think-aloud and task pages fetched earlier; GOV.UK moderated testing, notes and planning pages fetched earlier. |
| Sessions with disabled people | Fetched https://www.gov.uk/service-manual/user-research/running-research-sessions-with-people-with-disabilities. It says nothing on breaks or accessible materials; those two bullets are my own good practice. |
| Accessibility mapping | WCAG pages as listed in `tools-and-ux.md` Part B2. |
| Running example | Checked `cartograph-engine/examples/minimal`: a produce cooperative with six depots; project "Quality Check Rollout"; indicator "Collection turnaround" (hours, monthly cycle, Collection Log) with readings to 2026-04. The "cold room pilot" in Task 1 is invented for the card and not in the vault. No ministry or real organisation remains in either file. |
