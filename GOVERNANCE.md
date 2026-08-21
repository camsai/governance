# CAMSAI Governance

> **Interim draft — pre-incorporation.** This document has not been ratified; a
> version date tag is applied when it is. Last revised 2026-08-20.
> It operates together with the [Charter](CHARTER.md), which defines what
> CAMSAI is for. Where the two conflict, the Charter prevails.

## 1. Steering Committee

The Steering Committee is the body responsible for the Consortium as a whole.
It has **seven seats**, each allocated to a **constituency** rather than to an
organization:

| # | Constituency | Drawn from |
|:---|:-------------------|:--------------------------------------------------------|
| 1 | Government laboratory | A federal, national, or equivalent public research laboratory or agency-funded research organization, in any country — including, but not limited to, United States Department of Energy laboratories |
| 2 | Academic | A university, or a non-profit research institute or other academic research organization, whether or not it grants degrees |
| 3 | Startup / small enterprise | A company of fewer than 100 employees working in this field |
| 4 | Cloud infrastructure provider | An organization providing compute, storage, or platform infrastructure at scale |
| 5 | HPC hardware provider | An organization producing high-performance computing hardware, accelerators, or their systems software |
| 6 | AI models provider | An organization that develops or serves AI models or systems used in materials research, whether as open-weight models or as a hosted service |
| 7 | Independent | A practitioner with no employment or consulting relationship to an organization already holding a seat |

The current holders of these seats are recorded in [STEERING.md](STEERING.md).

**Seat 6 spans two sub-constituencies** whose interests differ: organizations
that publish open-weight models, and organizations that serve models as a
hosted commercial service. The appointment record must state which of the two
the seated member represents, and where both are active in the Consortium the
Steering Committee should alternate the seat between them across successive
terms. A standing imbalance is grounds for the Steering Committee to propose an
amendment subdividing the seat.

Two rules protect the balance the table is meant to create:

- **One seat per organization.** No two seated members may be employed by, or
  hold a consulting relationship with, the same organization or a group of
  organizations under common control.
- **Constituency, not employer.** Members serve in a personal capacity. A
  member occupies a seat because they can speak to that constituency's needs,
  not as a delegate of their employer, and is expected to act in the interest
  of the Consortium.

### 1.1 What the one-seat rule does and does not limit

The cap applies to **seats**, not to participation. A diversified organization
whose divisions span several constituencies — cloud, HPC hardware, and AI
models, say — may hold only one seat, but nothing limits it from:

- contributing to, and maintaining, as many CAMSAI projects as it invests in.
  **Maintainership is uncapped** (Charter §4), and technical direction is
  exercised there rather than in the Steering Committee, which does not direct
  projects' technical work (Charter §6);
- taking part in the **Advisory Council** (§5) through as many of its divisions
  as it wishes, with a standing channel to the Steering Committee;
- supporting the Consortium's operating costs, acknowledged publicly
  (Charter §9.4).

The rule is a deliberate choice to represent constituencies rather than to
weight votes by investment. An organization contributing at large scale holds
one seat, exactly as an independent practitioner does. The Consortium is worth
belonging to only because that is true, and the Steering Committee should
expect to explain it rather than apologise for it.

## 2. Chair

The Chair is elected by the Steering Committee from among its seated members,
for a term of one year, and may be re-elected. The Chair convenes meetings,
sets agendas, ensures decisions and their reasons are recorded, and is the
point of contact for the Consortium. The Chair has no additional vote and no
veto.

## 3. Founding period, terms, and appointment

### 3.1 The founding period

The **founding period** runs from the adoption of this document until all seven
seats are filled and a Chair has been elected, or until 31 December 2027,
whichever comes first.

The **Convener** is the participant who initiates the Consortium and is
recorded as such in [STEERING.md](STEERING.md). The Convener's role is to run
the founding period: to maintain a public call for candidates, to answer
expressions of interest on the record, and to bring appointments to a decision.
The Convener holds **no vote by virtue of the role** and the role ends when the
Chair is elected. The Convener may separately hold a seat if they qualify for a
constituency, in which case they vote in that capacity only.

The **founding participants** are the Convener together with the individuals
appointed to seats during the founding period. They are named in STEERING.md as
each appointment is made, and nowhere else — there is no separate, closed list.

**The founding cohort is open.** Every unfilled seat is open to candidates at
all times during the founding period, and being appointed late confers no
lesser standing: a member appointed in the last week of the founding period has
exactly the rights of the first. Any individual or organization may propose a
candidate, including themselves, by opening an issue in this repository. The
Convener must respond on the record and must not leave an expression of
interest unanswered.

During the founding period, appointments are made by consensus of the members
already seated. Where fewer than three seats are filled, the Convener may
appoint directly, recording the reasons. Every appointment is made in a pull
request against STEERING.md that records the candidate's constituency and how
they meet it.

**The Convener is accountable for progress.** At least once a quarter the
Convener publishes a short note in this repository recording which seats remain
open, what has been done to fill them, and every expression of interest received
and how it was answered. A founding period that stalls is visible in that record
rather than only in the silence.

**If seats remain unfilled at 31 December 2027**, the founding period ends
regardless: the Convener's power to appoint directly lapses, no further
appointment may be made under this subsection, and the members then seated
continue as caretakers under Charter §11.2 until successors are appointed under
§3.2. The Consortium is not left without a body, and the Convener does not
retain founding powers indefinitely by leaving seats empty.

### 3.2 Terms

- **Interim terms.** Members appointed during the founding period serve until
  the Consortium adopts a fiscal sponsor (Charter §11) or until 31 December
  2027, whichever comes first, and continue in a caretaker capacity thereafter
  until successors are appointed (Charter §11.2).
- **Regular terms.** Thereafter members serve two-year terms and may serve
  consecutive terms.
- **Starting the stagger.** A stagger has to be created once before it can
  sustain itself. At the first regular appointment round, seats 1 to 4 take
  full two-year terms and seats 5 to 7 take one-year terms; every term
  thereafter is two years. Roughly half the committee then turns over each
  year, so that the Consortium never loses its whole institutional memory in a
  single cycle.
- **Appointment.** Vacant seats are filled by recorded vote of the seated
  members, following a public call for candidates open for at least
  twenty-eight days.
- **Resignation and removal.** A member may resign in writing to the Chair. A
  member may be removed by a two-thirds vote of the other seated members for
  sustained failure to participate or for a Code of Conduct violation.
- **Vacancy.** A vacant seat reduces the number of seated members for quorum
  and majority purposes; it is not counted as an abstention.

### 3.3 When a member no longer fits their constituency

Constituency fit is assessed **at appointment**, and confirmed by each member in
a short annual attestation recorded in STEERING.md. Between those points, two
different things can happen, and they are treated differently:

- **The member moves.** A member who changes employer, or an independent member
  who takes a role at an organization already holding a seat, informs the
  Chair. They may continue to serve for up to ninety days while a successor is
  identified, and must recuse from any vote where the mismatch is material.
- **The organization changes around the member.** A company that grows past the
  hundred-employee threshold, a startup that is acquired into a larger group, or
  an institution that changes character does **not** cost the member their seat
  mid-term: the member serves out the term. The change is noted at the next
  annual attestation, and the seat returns to a qualifying candidate at the next
  appointment. A member in this position must still recuse where the mismatch
  is material to a decision.

The distinction is deliberate. Punishing a member for their employer's growth
would make the startup seat a liability to accept, and the Consortium wants
exactly the people who are building fast enough for it to become a question.
Where an acquisition results in two seated members falling under common
control, the one-seat rule in §1 governs and the more recently appointed member
transitions under the ninety-day rule.

## 4. Decision-making

### 4.1 Lazy consensus (the default)

Routine decisions carry by lazy consensus. A proposal is opened as a pull
request or issue in the relevant repository and left visible for a review
period of at least **seventy-two hours** — at least **fourteen days** for
amendments under Charter §12. If no Steering Committee member has objected by
the end of the period, the proposal carries. An objection must state a reason
and, where possible, what would resolve it. Any member may call for a recorded
vote instead of lazy consensus.

### 4.2 Recorded vote (required matters)

A recorded vote of the Steering Committee is required for:

- amending the Charter or this document (two-thirds of seated members);
- admitting a project, or archiving one (simple majority);
- approving an outbound license other than the Charter §3 defaults (simple
  majority);
- adopting a fiscal sponsor, or transferring assets to one (two-thirds);
- appointing or removing a Steering Committee member, or electing the Chair
  (§3, §2);
- entering a community affiliation (simple majority);
- admitting an organization to the Advisory Council (simple majority);
- dissolution (two-thirds, per Charter §13).

**Quorum** is **51% of the seats currently filled** — not of the seven seats in
total, so that vacancies never block the Consortium from acting. The thresholds
above are likewise fractions of the seats currently filled. Votes are conducted
in the open — in a pull request, an issue, or a meeting whose result is
posted — and the outcome is recorded with the tally and each member's position.
Voting is open for at least seven days unless every seated member has already
voted.

**What this means while few seats are filled.** Scaling to filled seats keeps
the Consortium operable from its first day, and it has a consequence worth
stating rather than leaving to be discovered: early in the founding period, when
only one or two seats are filled, that small number carries every threshold —
including amending this document and directing the marks. This is a deliberate
trade-off of concentration against paralysis, made with open eyes. Three things
constrain it in practice: every decision is recorded in public (§4.4), the
custodian's undertakings in TRADEMARKS.md §2 bind regardless of who votes, and
the fastest way to dilute the concentration is to fill the remaining seats,
which §3.1 makes anyone able to propose. A Steering Committee acting under this
paragraph while seats stand empty should weigh whether a decision can wait until
more constituencies are represented, and record that it considered the
question.

### 4.3 Conflicts of interest

A member with a material personal or organizational interest in a decision must
disclose it before the discussion and recuse from the vote. A recused member
does not count toward quorum for that decision. Where a decision would
predominantly benefit one organization, the Chair should say so plainly in the
record even if no formal conflict exists.

### 4.4 Meetings and records

The Steering Committee meets at least quarterly, and otherwise as the Chair
convenes it. Meetings are not required to make decisions: any decision that can
be made in a pull request or issue should be. Whatever the venue, the decision
and its reasons are recorded in the relevant repository, which is the
authoritative record.

## 5. Advisory Council

The Advisory Council is a standing forum through which organizations that
commit substantial resources to CAMSAI, and constituencies that do not hold a
seat, can reach the Steering Committee directly. It exists because a
contribution of engineering, compute, or funding often needs a governance-side
counterpart to be justifiable inside the contributing organization — and
because the alternative, selling seats, would destroy what makes the Consortium
worth supporting (Charter §9.4).

**Membership.** Open to any organization that either contributes substantial
engineering, compute, infrastructure, or funding to CAMSAI projects, or is
invited by the Steering Committee for the perspective it brings. Admission is
by recorded vote (§4.2). Members are listed in [SUPPORTERS.md](SUPPORTERS.md).
There is no fee, and a diversified organization may participate through more
than one of its divisions.

**What Council members get:**

- a joint meeting with the Steering Committee at least **twice a year**;
- the right to **place an item on the Steering Committee's agenda**, which must
  be taken up and answered on the record rather than merely received;
- **advance notice** of proposed amendments to the Charter or this document,
  and of project-intake proposals, before the decision period opens;
- the right to submit a **written position** on any matter before the Steering
  Committee, which is recorded alongside the decision;
- public acknowledgement of their support, on the terms in Charter §9.4.

**What Council members do not get:** a vote, a veto, a seat, a reserved path to
a seat, priority in any project's roadmap, or any right to direct the technical
work of a project. Council membership is not a qualification for appointment to
the Steering Committee and must not be treated as one.

**Antitrust.** The Council is a CAMSAI forum and Charter §7 applies to it in
full. Its meetings follow a published agenda, and a record is kept.

## 6. Escalation

Technical decisions belong to project maintainers (Charter §6). The Steering
Committee is not a court of appeal for them. It intervenes only where a project
is in breach of the Charter or of the intake requirements below, where the
CAMSAI name or marks are at stake, where a Code of Conduct matter cannot be
resolved within the project, or where a project has become unmaintained.

## 7. Project intake

A project may be admitted to CAMSAI when it meets all of the following. Intake
is by recorded vote (§4.2) on a pull request that records how each requirement
is met.

1. **Mission fit.** The project serves the mission and falls within the scope
   in Charter §§1-2.
2. **License.** The project is released under an OSI-approved license,
   defaulting to Apache-2.0 for code and CC BY 4.0 for documents, standards,
   and educational material (Charter §3).
3. **Provenance.** The project can account for the origin of the code and data
   it distributes: third-party components are identified with their licenses,
   redistribution of those components is permitted by them, and nothing is
   included that the project lacks the right to distribute. Contributions are
   accepted under the DCO, by `Signed-off-by` line, on the terms in Charter §5.
4. **Publishable.** Nothing in the project is classified, controlled, or
   otherwise unpublishable under Charter §8, and the contributing institutions
   have completed whatever release review applies to them.
5. **Named maintainers.** At least one named maintainer, recorded in the
   repository, who is responsible for review and releases. Projects with a
   single maintainer are admitted as **incubating**.
6. **Continuous integration.** Automated checks run on pull requests, and the
   project's build and test procedure is reproducible by an outside
   contributor.
7. **Documentation.** A README that states what the project does and how to
   install and run it, and a CONTRIBUTING file that states how to contribute.
8. **Code of Conduct.** The project adopts CAMSAI's
   [Code of Conduct](CODE_OF_CONDUCT.md) and names an enforcement contact.
9. **Security contact.** A documented way to report a vulnerability privately.

## 8. Project lifecycle

- **Incubating.** Admitted, and expected to meet the intake requirements, but
  not yet demonstrating a sustainable contributor base or a stable interface.
- **Active.** Meets the intake requirements, has more than one maintainer, and
  makes regular releases.
- **Archived.** No longer maintained. Archival is by recorded vote. An archived
  repository is marked read-only, its README states that it is unmaintained,
  and its published artifacts remain available under their existing licenses.

Status changes are made by recorded vote and reflected in the projects table in
[README.md](README.md).

### 8.1 Repositories that predate this framework

The `camsai` organization already holds repositories created before these
documents existed. None of them has been admitted by a vote, because there was
no body to take one, and none should be described as though it had been.

Until the Steering Committee decides otherwise, such repositories are listed as
**Proposed**: hosted in the organization, not yet admitted, and making no claim
to have met the intake requirements in §7. **Within 180 days of the adoption of
this document** (Charter §12.1), the Steering Committee must take up each of
them and decide, by recorded vote, to admit it as Incubating or Active, to
archive it, or to remove it from the organization. Where a repository is close
to the bar, the vote may admit it conditionally on named gaps being closed by a
stated date.

This is expected to be the first substantive work the Steering Committee does.
It is deliberately placed first: a consortium that will hold new projects to an
intake standard has to apply that standard to what it is already carrying.

## 9. Amendments

This document is amended by the process in Charter §12.
