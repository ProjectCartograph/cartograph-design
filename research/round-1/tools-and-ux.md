# Tools, guided flows and cognitive load

Agent 4, parts A and B. Written 2026-10-17. Every claim carries the URL I
fetched it from. Where a page was only seen in a search result, or a
vendor page was a marketing blog, I say so.

## Part A: what established tools ask when someone charters a project

### A.1 Through the Diátaxis lens

Diátaxis sorts needs into tutorial (learning by doing, with a guide),
how-to (a competent person reaching a goal), reference (neutral facts for
use at work) and explanation (the why)
(https://diataxis.fr/start-here/). Almost every tool below hands a
newcomer a **template**, which is a blank reference page (a list of
fields) with a few hints. None gives a true tutorial. A few give a short
ordered recipe, which is a how-to guide. That gap is where Cartograph's
walk sits: a walk is a tutorial-shaped path (one concrete action and
result at a time, a clear destination, a supportive tone
(https://diataxis.fr/tutorials/)) that ends in real work, not a toy.

### A.2 The landscape

| Tool | What it asks | Newcomer path | Expert path |
|---|---|---|---|
| Atlassian Confluence project charter template | Name, description, stakeholders; purpose, objectives, scope, deliverables, timeline, budget; team and roles; communication; resources; risks; success metrics. Five usage steps: basics, boundaries, people and resources, schedule, keep current. Charter is a high-level authorisation, distinct from the brief. https://www.atlassian.com/software/confluence/templates/project-charter | A filled document with placeholder sections and a five-step recipe. | Edit the document freely; links to plan, scope and risk templates. |
| Atlassian project poster | Five sections: the basics (owner, team, status, fit with strategy), problem space, assumptions and open questions, solution and scope, reference links. A living document. https://www.atlassian.com/software/confluence/templates/project-poster | Prompts in plain questions ("how will you know it is solved"). | Free text and links. |
| Jira Product Discovery | Ideas with fields, insights, four views (list, matrix, board, timeline). Eight-step quick start: create project, assign roles, add ideas, fields, insights, prioritise, roadmap, connect delivery. https://www.atlassian.com/software/jira/product-discovery/guides/getting-started/quick-start and https://www.atlassian.com/software/jira/product-discovery/guides/views/overview | Ordered quick start; Contributor role has fewer powers. | Creators build custom fields, formulas and views (fields page: https://www.atlassian.com/software/jira/product-discovery/guides/fields/overview, seen through search only). |
| Asana | "Why" (purpose, SMART objectives), "what" (scope, out of scope, budget), "who" (stakeholders, sponsor, team); plus timeline, success criteria, risks. https://asana.com/resources/project-charter | Three-part split that mirrors how people think. | Not separated; a marketing guide. |
| monday.com | Seven steps: business need, roles, measurable objectives, scope and exclusions, milestones and budget, risks and assumptions, sign-off. Variants: simple (single screen), one-page, agile. https://monday.com/blog/project-management/project-charter-templates/ (vendor blog, not documentation) | Pick a variant by project size; fields in a fixed order. | Link the charter to boards. |
| Smartsheet | Six parts: overview, scope, schedule, risks, budget, stakeholders; optional communication plan and sponsor approval. Advice is the same for all levels. https://www.smartsheet.com/content/project-charter-elements | Short sections ("a few sentences"). | Downloadable one-page or full forms. |
| Notion | No charter template found. Official project brief guidance: description, organisational context, goals, team, timeline; five steps. https://www.notion.com/blog/project-brief | Brief in five short steps. | Templates and databases are fully editable. |
| Miro | Project charter and project canvas templates on a whiteboard; five-step path: choose, customise, add visuals, share, keep updated. https://miro.com/templates/project-charter/ (the seven activities are not listed on the page) | Pick a template that fits size and type. | Free canvas. |
| Microsoft Planner (Project for the web was folded into it) | Choose a template, enter a title, optional group, privacy, Create. https://support.microsoft.com/en-us/planner/planner-templates ; retirement noted via search at https://learn.microsoft.com/en-us/office365/servicedescriptions/project-online-service-description/project-web-service-description | Starts from a plan template; no chartering questions. | Full plan editing. |
| TASO Theory of Change Builder (free, hosted; licence not stated) | Tips, guidance and examples while building a theory of change; sample projects; saves in the browser with no account. https://toc-builder.taso.org.uk/ | Sample projects to copy; help guide and video. | Import, new project. |
| Leantime (open source project suite) | Theory of change in three phases: map change logic with goal hierarchies and milestones, manage activities with task lists and Kanban, track assumptions and risks. https://leantime.io/theory-of-change-leantime/ (vendor page; no onboarding detail found) | Help centre, community chat. | Plugins, API. |

I found no open-source chartering tool with a guided flow. I searched
only the web, not GitHub itself, so this is "none found", not "none
exist".

### A.3 What the landscape tells us

1. **Everyone converges on the same core:** purpose or business need,
   objectives with measures, scope in and out, people and roles,
   milestones, budget, risks and assumptions, approval. Cartograph's
   charter covers this ground; the question is how it is asked, not what.
   (Compare agent 2's charter brief.)
2. **Newcomer help is the template itself.** The common aids are a short
   ordered recipe (five to eight steps), size variants (simple, one-page),
   and plain prompts. This is the vendors' answer to cognitive load: fewer
   sections, shorter text. Smartsheet says each section needs only a few
   sentences (https://www.smartsheet.com/content/project-charter-elements).
3. **Expert help is freedom, not speed.** Experts get editable documents,
   custom fields and views. Only Jira Product Discovery separates roles
   (Creator and Contributor) and offers formulas.
4. **No one asks one question at a time.** Every template shows all
   sections on one page. That is the screen Cartograph users found
   frightening. Cartograph's walk is a real difference, and it has
   government-service precedent (Part B).
5. **None connects the charter to measurement.** Asana, monday.com and
   Smartsheet ask for success criteria, but none asks how the data behind
   each measure will be captured. This is Cartograph's own ground.

## Part B: guided flows, cognitive load, and principles for walk-first

### B.1 The evidence in short

- **Progressive disclosure:** show a small core first and offer
  specialist options on request; it improves learnability, efficiency and
  error rate; two levels work best, three or more tend to confuse; the
  control for more must have strong "information scent"
  (https://www.nngroup.com/articles/progressive-disclosure/).
- **Staged disclosure** (a wizard) is linear. It suits tasks that split
  into distinct steps with little interaction between them, and fails
  when steps depend on each other and people keep flipping between them
  (same page).
- **Wizards** suit rare tasks and novices, and feel controlling to
  experts on repeat tasks. Show the full step list with the current step
  marked, allow saving and resuming, keep each step self-contained, put
  help beside the step, pre-fill from the last use
  (https://www.nngroup.com/articles/wizards/).
- **Choice cost:** more options mean more effort and sometimes
  abandonment (https://www.nngroup.com/articles/simplicity-vs-choice/).
  Hick's law says choice reaction time grows roughly with the logarithm
  of the number of alternatives. A peer-reviewed paper states this and
  lists its limits: it shrinks with practice, and recency and frequency
  explain part of it (https://pmc.ncbi.nlm.nih.gov/articles/PMC5990552/).
  The original is Hick (1952),
  https://journals.sagepub.com/doi/10.1080/17470215208416600 (abstract
  only). NN/g's own written Hick's law page returned 404 twice; its
  video summary says more options mean a longer decision
  (https://www.nngroup.com/videos/hicks-law-long-menus/). I use Hick's
  law only as direction, never as a number.
- **Cognitive load** is the mental effort needed to use an interface;
  working memory is limited, so too much at once slows people, causes
  mistakes or makes them leave. NN/g names two types, intrinsic (the
  unavoidable effort of taking in information and keeping a goal) and
  extraneous (effort that does not help understanding), and says to
  reduce the extraneous: remove clutter, use familiar patterns, replace
  reading and remembering with defaults and repeated information
  (https://www.nngroup.com/articles/minimize-cognitive-load/). The
  three-part version with a "germane" load is academic theory, not on
  that page.
- **Novice and expert:** newcomers need guidance, experts want speed.
  A system built only for novices slows repeat users; one built only for
  experts is hard to learn
  (https://www.nngroup.com/articles/flexibility-efficiency-heuristic/).
  Offer a simple default and a powerful version
  (https://www.nngroup.com/articles/novice-vs-expert-users/).
- **Accelerators** are optional shortcuts to actions that already exist.
  Beginners can ignore them. Reveal them gradually; show a tip after
  someone does a thing the long way; keep the product learnable without
  them (https://www.nngroup.com/articles/ui-accelerators/).
- **Onboarding:** push tutorials get skipped and forgotten; pull help in
  context works better, is easy to dismiss and easy to find again
  (https://www.nngroup.com/articles/onboarding-tutorials/).
- **GOV.UK question pages:** one question per page; the question is the
  heading; allow "I'm not sure" where valid; always a back link; a
  Continue button; never ask the same thing twice; mark optional, not
  mandatory; test without a progress indicator first
  (https://design-system.service.gov.uk/patterns/question-pages/).
- **GOV.UK task list:** only for longer transactions done over several
  sessions; task names start with a verb; any order where possible; as
  few statuses as possible (Completed, Incomplete); "Cannot start yet"
  for blocked tasks; show errors where they happen
  (https://design-system.service.gov.uk/patterns/complete-multiple-tasks/).
- **GOV.UK check answers:** one review page before the final step; group
  by section; a change link for each; return straight to the review
  after an edit; show "Not provided" for skipped optional rows; label the
  submit button with what it does
  (https://design-system.service.gov.uk/patterns/check-answers/).
- **Where sources differ:** GOV.UK says the button says "Continue",
  not "Next"; NN/g says to label wizard buttons with the next step's
  name. We follow GOV.UK for a walk question and test the step name
  only where a step starts a new section.

### B.2 The screen audit against this evidence

COMMON.md reports a median of 49 controls in view and 2 to 3 primary
actions per screen, against 7 controls and 1 primary action in the
onboarding walk. The audit is our measure of extraneous load. The walk
is the one part people finished and liked. This matches the evidence
that fewer fields per page feel less overwhelming
(https://www.nngroup.com/articles/wizards/). The target for a walk
screen should stay near the walk's own figures (about 7 controls, 1
primary action). That target is a design choice of ours, not a number
from any source. See open questions.

### B.3 Design principles for walk-first

Each principle has a source and says how it applies in Cartograph's
words. Diátaxis types are named so documentation and product agree.

**Home**

1. **Home is a short choice of tasks plus where you left off.** Offer a
   handful of verb-named tasks ("Define a project", "Review a change",
   "Record a reading"), and put unfinished walks first. Why: choice cost
   rises with options (https://www.nngroup.com/articles/simplicity-vs-choice/);
   task names start with a verb
   (https://design-system.service.gov.uk/patterns/complete-multiple-tasks/);
   pull people back to unfinished work as wizards should allow saving and
   resuming (https://www.nngroup.com/articles/wizards/). Diátaxis: Home
   serves "I want to do a task" (how-to), not browsing reference.
2. **Home asks one question, never open ended.** "What do you want to do?"
   with the choices as tiles. Today's single open question is too vague
   because it gives no information scent
   (https://www.nngroup.com/articles/progressive-disclosure/).
3. **The full workspace is one visible link from Home**, labelled by what
   it holds ("All your records"), not hidden. Strong information scent;
   no more than two levels deep
   (https://www.nngroup.com/articles/progressive-disclosure/).

**Task walks**

4. **One question per screen; the question is the heading.**
   (https://design-system.service.gov.uk/patterns/question-pages/)
5. **Always a way back, and "I'm not sure" where it is a valid answer.**
   People who cannot answer stall and give up; a way to defer keeps them
   moving (same page).
6. **Ask only what the charter needs now.** Defer the rest. Planning
   detail (milestones, costs, risks, data capture) is offered after the
   core charter, with a stated reason for each question. Sources: know
   why you ask every question
   (https://design-system.service.gov.uk/patterns/question-pages/);
   explain why you collect data and defer what is not needed at launch
   (https://www.nngroup.com/articles/onboarding-tutorials/ was the
   source of the "defer" advice only through a search summary, so treat
   as supporting, not primary).
7. **Never ask twice.** Carry answers forward
   (https://design-system.service.gov.uk/patterns/question-pages/).
8. **Help sits beside the question, in plain words, not in a tour.**
   (https://www.nngroup.com/articles/wizards/ and
   https://www.nngroup.com/articles/onboarding-tutorials/)
9. **Show where you are in the walk** by naming the section as a caption
   above the question, not a long progress bar; test it before adding a
   count (https://design-system.service.gov.uk/patterns/question-pages/).
10. **Save as you go.** Leaving mid-walk loses nothing; Home shows the
    walk again (https://www.nngroup.com/articles/wizards/).

**Task list**

11. **Use a task list for the project walk only**, because defining a
    project is long and done over several sessions. Do not use one for
    short walks such as a reading. Source: use only for longer
    transactions (https://design-system.service.gov.uk/patterns/complete-multiple-tasks/).
12. **Name tasks with verbs, allow any order, use the fewest statuses.**
    Start with Completed and Incomplete; add "Cannot start yet" only
    where one task truly needs another (same page).
13. **The person decides when a task is complete**, by a final question,
    since much of the charter is optional or needs a colleague's check
    (same page).

**Check your answers**

14. **One review before saving**, grouped by the charter's own sections,
    each with a change link that returns straight to the review. Show
    "Not provided" for skipped optional rows. Label the button with the
    action ("Save the charter", "Merge this change").
    (https://design-system.service.gov.uk/patterns/check-answers/)
15. **Say that nothing is saved until the person confirms.** (same page)
16. **Review a change set the same way.** The merge walk ends with a
    summary of what changes and a button naming the effect. For many items
    of one kind, use summary cards (same page).

**The full workspace stays one step away**

17. **Every walk screen has a link to the same record in the full
    workspace**, and every workspace record has a link to continue its
    walk. Both paths reach the same data, so people can switch without
    redoing work. Source: tasks completed several ways, without
    duplicated features
    (https://www.nngroup.com/articles/flexibility-efficiency-heuristic/).
18. **Keep to two levels.** Walk, then workspace. Do not add a third
    mode (https://www.nngroup.com/articles/progressive-disclosure/).
19. **Remember the last choice.** Return people to the mode they used
    last, as a simple form of personalisation
    (https://www.nngroup.com/articles/flexibility-efficiency-heuristic/).

**Accelerators for power users**

20. **Accelerators are extras, never required.** Keyboard shortcuts,
    a command palette, batch edit, bulk import, saved views, and the
    MCP and API routes for agents and analysts. The walk and workspace
    must be fully usable without them
    (https://www.nngroup.com/articles/ui-accelerators/).
21. **Reveal them late.** After someone does a task the long way
    several times, show one short tip once. Show shortcuts beside
    commands in a muted style (same page).
22. **Do not make experts use a walk.** NN/g warns that wizards feel
    controlling to people repeating a task
    (https://www.nngroup.com/articles/wizards/). A person who has
    defined a project should be able to open its record directly.

**Documentation that follows from this**

23. **Match each screen to one Diátaxis kind.** A walk is tutorial-like
    (guided doing, small visible results, supportive "we" tone). The
    workspace is reference-like (structure mirrors the product). A
    "Why this question" link is explanation. A written guide for a task
    is a how-to. Do not mix them on one screen
    (https://diataxis.fr/start-here/,
    https://diataxis.fr/tutorials/, https://diataxis.fr/reference/,
    https://diataxis.fr/explanation/).

### B.4 Risks the evidence names

- Walks hurt when steps depend on each other and people must compare
  (staged disclosure page above). The indicator data-capture questions
  depend on each other, so show a running summary beside them.
- Walks lose progress on interruption, so save as you go.
- Experts feel controlled, so principle 22 matters.
- Task lists add a screen. If the project walk is short for small
  projects, GOV.UK says to simplify before adding one.

## Part B2: accessibility for walks and the workspace

Why this matters here: people who find a screen frightening and people
with a cognitive or learning disability need much the same things (less
at once, plain words, no memory work). A walk helps both only if it is
built so that a keyboard, a screen reader, a magnifier and speech
control all work. GOV.UK sets Level AA of WCAG 2.2 as the minimum for
government services, requires use with screen magnifiers, screen readers
and speech recognition, and requires disabled people in research
(https://www.gov.uk/service-manual/helping-people-to-use-your-service/making-your-service-accessible-an-introduction).
Cartograph is not a government service, but this is the best public bar
to adopt, and the same bar applies to the walk and the workspace.
Diátaxis check: accessibility is a quality of every kind of page, so it
sits in reference (what the product guarantees) and in each how-to.

### B2.1 Success criteria that matter most

The table lists WCAG 2.2 criteria (https://www.w3.org/TR/WCAG22/) and
the Understanding pages I read, and what each asks of Cartograph.

| Concern | Criterion and level | What it asks of a walk or the workspace |
|---|---|---|
| One question per page | 2.4.6 Headings and Labels (AA) | The heading says what the page asks; labels say what to enter. https://www.w3.org/TR/WCAG22/ |
| | 3.3.2 Labels or Instructions (A) | Every input has a visible label or instruction; options in a group are each labelled; give an example of an unusual format. Do not clutter the page. https://www.w3.org/WAI/WCAG22/Understanding/labels-or-instructions.html |
| | 3.2.1 On Focus (A), 3.2.2 On Input (A) | Focusing or choosing never jumps to the next question by itself; the person presses Continue. https://www.w3.org/TR/WCAG22/ |
| Focus order and keyboard | 2.4.3 Focus Order (A) | Focus moves in an order that keeps meaning. When a step opens new content, it comes right after the control that opened it. Moving to the next question puts focus at its heading or first field, not back at the top of the page (my reading of the intent, not stated for single-question pages). https://www.w3.org/WAI/WCAG22/Understanding/focus-order.html |
| | 2.4.7 Focus Visible (AA) and 2.4.11 Focus Not Obscured (AA) | The focus mark is always visible and a sticky header or help panel never covers the focused field. https://www.w3.org/TR/WCAG22/ |
| | 2.5.8 Target Size (Minimum) (AA) | Controls are at least 24 by 24 CSS pixels, or spaced so they are not mis-pressed. https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum.html |
| | 2.5.7 Dragging Movements (AA) | Anything that can be dragged, such as reordering plan steps or links on a canvas, can also be done with a click or tap. https://www.w3.org/WAI/standards-guidelines/wcag/new-in-22/ |
| Errors | 3.3.1 Error Identification (A) | Say which answer is wrong, in text, not by colour alone. https://www.w3.org/WAI/WCAG22/Understanding/error-identification.html |
| | 3.3.3 Error Suggestion (AA) | Where the product knows the fix (a date written another way), offer it. https://www.w3.org/TR/WCAG22/ |
| | 4.1.3 Status Messages (AA) | "Saved" and error messages are announced to a screen reader without moving focus. https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html |
| Check your answers | 3.3.4 Error Prevention, legal, financial, data (AA) | Changes to stored data are reversible, checked or confirmed. The check-answers page is the confirmed route; change sets and version history give the reversible one. https://www.w3.org/WAI/WCAG22/Understanding/error-prevention-legal-financial-data.html |
| | 3.3.7 Redundant Entry (A) | Do not ask again for what was given in the same walk; fill it in or let the person pick it. The product, not browser autofill, must supply it. https://www.w3.org/WAI/WCAG22/Understanding/redundant-entry.html |
| Help | 3.2.6 Consistent Help (A) | If help or contact appears on several screens, it sits in the same place each time. https://www.w3.org/WAI/WCAG22/Understanding/consistent-help.html |
| Timing | 2.2.1 Timing Adjustable (A) | Avoid timers. If a session must time out, warn first, let the person extend it with a simple answer, and return them to the same place. https://www.w3.org/WAI/WCAG22/Understanding/timing-adjustable.html |
| | 2.2.6 Timeouts (AAA) | Warn about inactivity that could lose data. Aim for it: a walk saves as it goes. https://www.w3.org/TR/WCAG22/ |
| Sight | 1.4.3 Contrast (Minimum) (AA) | Text 4.5 to 1; large text 3 to 1. https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html |
| | 1.4.10 Reflow (AA) | Content works at about 320 CSS pixels wide without sideways scrolling; maps, diagrams and data tables are exempt, so the canvas and big tables may scroll both ways, but the walk may not. https://www.w3.org/WAI/WCAG22/Understanding/reflow.html |
| Autofill | 1.3.5 Identify Input Purpose (AA) | Personal fields (name, email) carry the standard purpose so the browser and tools can fill them. https://www.w3.org/TR/WCAG22/ |
| Sign-in | 3.3.8 Accessible Authentication (Minimum) (AA) | No memory test or puzzle to sign in without an alternative. https://www.w3.org/TR/WCAG22/ |

I read these from the standard and its Understanding pages. I did not
test any Cartograph screen against them. The criterion text for 3.3.4 and
others is paraphrased from the pages named.

### B2.2 Cognitive accessibility

W3C's "Making Content Usable for People with Cognitive and Learning
Disabilities" (https://www.w3.org/TR/coga-usable/) is guidance, not a
standard, and goes beyond WCAG. The patterns that bear on a walk:

- 4.2.4 Make Each Step Clear: show finished, current and pending steps
  and important choices.
- 4.5.2 Let Users Go Back, without losing work.
- 4.5.4 Design Forms to Prevent Mistakes: ask for as little as possible,
  mark what is required, accept many input formats, correct automatically
  when safe.
- 4.5.5 Make it Easy to Undo Form Errors: let people review and change
  their data, show a summary before final submission, give clear
  cancellation.
- 4.5.9 Avoid Data Loss and "Timeouts".
- 4.5.1 Keep controls and content from moving unexpectedly.
- 4.4.1 to 4.4.5 plain language: common words, present tense and active
  voice, no double negatives, short paragraphs and one point per
  sentence; explain acronyms and jargon.
- 4.4.9 Separate Each Instruction.
- 4.7.5 Do not rely on calculation or memorising earlier information.
- 4.8.4 Provide Help for Forms and Non-standard Controls, 4.8.5 Make It
  Easy to Find Help and Give Feedback, 4.8.3 Clearly State the Results
  and Disadvantages of Actions, Options and Selections.

I read titles for all and the detail of 4.4.x, 4.4.9, 4.5.2, 4.5.4,
4.5.5 and the timeout objective. The rest are title-level only.
Where it applies: the check-answers page is 4.5.5; "I'm not sure" and
back links serve 4.5.2; the walk's purpose-then-practice wording serves
4.4.x and 4.8.3; WCAG 3.1.5 Reading Level (AAA) says to give easier text
when reading ability above lower secondary is needed
(https://www.w3.org/TR/WCAG22/), which agrees with the plain-copy rule.

### B2.3 Principles added for walks and the workspace

24. **Build to WCAG 2.2 Level AA and test with real assistive
    technology**, on both modes. Source: GOV.UK, above.
25. **A walk's question heading is the first thing focus lands on after
    Continue**, and the screen reader hears it once. (GOV.UK question
    pages, https://design-system.service.gov.uk/patterns/question-pages/;
    focus order, https://www.w3.org/WAI/WCAG22/Understanding/focus-order.html.)
26. **Errors appear where they happen, in text, and say how to fix.**
    GOV.UK also says to avoid error statuses in task lists
    (https://design-system.service.gov.uk/patterns/complete-multiple-tasks/).
27. **No timers, no data loss.** Save as you go; if a session ends,
    return people to where they were (2.2.1, COGA 4.5.9).
28. **Do not ask people to drag, to hold, or to memorise.** Every drag
    has a click route; every earlier answer is shown or carried forward
    (2.5.7, 3.3.7, COGA 4.7.5).
29. **The workspace's dense parts (canvas, tables) may scroll both ways
    but must be keyboard-operable and have a text route** to the same
    records. Reflow exempts them; keyboard and focus rules do not.
30. **Plain words are an accessibility feature.** The user's own
    plain-copy rules and COGA 4.4.x agree.

## Open questions

- No primary source gives a numeric target for controls per screen. The
  "about 7 controls, 1 primary action" figure is our own, taken from the
  onboarding walk. We should test it, not cite it.
- NN/g's written Hick's law page returned 404 twice. Hick's law rests
  on a peer-reviewed paper and the 1952 abstract; NN/g gives only
  a video summary.
- The accessibility table is from reading the standard, not from testing
  Cartograph. No screen has been audited.
- COGA's guidance (a W3C note, not a standard) was read in part; later
  sections, including any "one thing at a time" pattern, were not
  reached.
- Which of WCAG's AAA items (2.2.6, 3.1.5) Cartograph adopts is a
  decision for the team.
- Several vendor pages (monday.com, Asana, Smartsheet) are marketing
  guides. Atlassian, Microsoft and Notion are the closest to primary
  vendor documentation. I did not find fields of Miro's seven-activity
  charter.
- I found no open-source chartering tool with a guided flow; I did not
  search GitHub directly.
- GOV.UK's "Continue" against NN/g's named-step button is unsettled for
  our audience.
- Whether a progress indicator helps in a walk of unknown length is
  untested; GOV.UK says to test without one first.
- Do non-technical members of a cooperative like the fictional one in `examples/minimal` read "task list"
  statuses the way GOV.UK public users do? Untested.

## Verification log

Follow-up check, 2026-10-17. "Fetched" means I opened the page and read
it. "Search only" means the claim rests on a search snippet.

| Claim | Result |
|---|---|
| NN/g cognitive load | Fetched https://www.nngroup.com/articles/minimize-cognitive-load/. It names two types, intrinsic and extraneous, not three. I corrected the text. |
| Hick's law, NN/g | https://www.nngroup.com/articles/hicks-law/ is 404. NN/g video page fetched, short. Peer-reviewed paper fetched: https://pmc.ncbi.nlm.nih.gov/articles/PMC5990552/. Hick 1952 is abstract only (paywall). |
| Krug, Rocket Surgery Made Easy | Fetched https://stevekrug.com/rocket-surgery-made-easy/ and https://stevekrug.com/download-files/ (the sensible.com address fails its certificate). Downloads and sharing terms confirmed. His script PDF https://stevekrug.com/downloads/test-script.pdf was read from the saved file, pages 1 to 6. Not confirmed: "one morning a month, three participants, observers watching" (creativebloq secondary report only); his script itself mentions observers and a roughly one-hour session. |
| SEQ | Fetched https://measuringu.com/seq10/. Wording, 7 points, average 5.3 to 5.6, "ask why below 5" confirmed. This replaced my earlier "4 or lower". |
| SUS | The ten items fetched verbatim from https://measuringu.com/sus-items/; scoring and 68 average from https://measuringu.com/sus/ and https://measuringu.com/10-things-sus/. The archived usability.gov page could not be fetched (redirect, then archive.org blocked). Brooke 1996 itself not read. "Brooke cautioned against single items" is from a search snippet. |
| WCAG 2.2 | Fetched https://www.w3.org/TR/WCAG22/ (long page, read in parts; some criteria checked through the Understanding pages listed in the table) and https://www.w3.org/WAI/standards-guidelines/wcag/new-in-22/. |
| COGA | Fetched https://www.w3.org/TR/coga-usable/ in two parts; later parts not read. |
| GOV.UK accessibility | Fetched the introduction page and https://www.gov.uk/service-manual/helping-people-to-use-your-service/understanding-wcag. |
| Vendor pages | Fetched as listed in Part A. Smartsheet's charter template page returned 404; Smartsheet's elements page was used. |
| Still search only | Leantime onboarding detail; JPD fields page; Planner retirement note; the academic cognitive load link above. |
