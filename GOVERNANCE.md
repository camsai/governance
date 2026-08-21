# CAMSAI Governance

> **Interim draft — pre-incorporation.** Version `2026.8.20-0`, 20 August 2026.
> This document defines how CAMSAI decides things. It operates together with
> the [Charter](CHARTER.md), which defines what CAMSAI is for. Where the two
> conflict, the Charter prevails.

## 1. Steering Committee

The Steering Committee is the body responsible for the Consortium as a whole.
It has **seven seats**, each allocated to a **constituency** rather than to an
organization:

| # | Constituency | Drawn from |
|:---|:-------------------|:--------------------------------------------------------|
| 1 | Government laboratory | A federal or national laboratory, including United States Department of Energy laboratories |
| 2 | Academic | A university or other degree-granting research institution |
| 3 | Startup / small enterprise | A company of fewer than 100 employees building in this field |
| 4 | Cloud infrastructure provider | An organization providing compute or platform infrastructure at scale |
| 5 | HPC hardware provider | An organization producing high-performance computing hardware or its systems software |
| 6 | AI models provider | An organization developing or serving foundation models or other AI systems |
| 7 | Independent | A practitioner with no employment or consulting relationship to an organization already holding a seat |

The current holders of these seats are recorded in [STEERING.md](STEERING.md).

Two rules protect the balance the table is meant to create:

- **One seat per organization.** No two seated members may be employed by, or
  hold a consulting relationship with, the same organization or a group of
  organizations under common control.
- **Constituency, not employer.** Members serve in a personal capacity. A
  member occupies a seat because they can speak to that constituency's needs,
  not as a delegate of their employer, and is expected to act in the interest
  of the Consortium.

A member whose circumstances change so that they no longer match their
constituency — a change of employer, or an independent member taking a role at
a seated organization — informs the Chair. The member may continue to serve for
up to ninety days while a successor is identified, and must recuse from any
vote where the mismatch is material.

## 2. Chair

The Chair is elected by the Steering Committee from among its seated members,
for a term of one year, and may be re-elected. The Chair convenes meetings,
sets agendas, ensures decisions and their reasons are recorded, and is the
point of contact for the Consortium. The Chair has no additional vote and no
veto.

## 3. Terms, appointment, and vacancy

- **Interim seats.** Until the first regular appointment cycle, seats are
  filled by the founding participants, who serve until the Consortium adopts a
  fiscal sponsor (Charter §8) or until 31 December 2027, whichever comes first.
- **Terms.** Thereafter members serve two-year terms, staggered so that
  roughly half the seats turn over each year, and may serve consecutive terms.
- **Appointment.** Vacant seats are filled by recorded vote of the seated
  members, following a public call for candidates open for at least
  twenty-eight days.
- **Resignation and removal.** A member may resign in writing to the Chair. A
  member may be removed by a two-thirds vote of the other seated members for
  sustained failure to participate or for a Code of Conduct violation.
- **Vacancy.** A vacant seat reduces the number of seated members for quorum
  and majority purposes; it is not counted as an abstention.

## 4. Decision-making

### 4.1 Lazy consensus (the default)

Routine decisions carry by lazy consensus. A proposal is opened as a pull
request or issue in the relevant repository and left visible for a review
period of at least **seventy-two hours** — at least **fourteen days** for
amendments under Charter §9. If no Steering Committee member has objected by
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
- dissolution (two-thirds, per Charter §10).

**Quorum** is a majority of seated members. Votes are conducted in the open —
in a pull request, an issue, or a meeting whose result is posted — and the
outcome is recorded with the tally and each member's position. Voting is open
for at least seven days unless every seated member has already voted.

### 4.3 Conflicts of interest

A member with a material personal or organizational interest in a decision
must disclose it before the discussion and recuse from the vote. A recused
member does not count toward quorum for that decision. Where a decision would
predominantly benefit one organization, the Chair should say so plainly in the
record even if no formal conflict exists.

### 4.4 Meetings and records

The Steering Committee meets at least quarterly, and otherwise as the Chair
convenes it. Meetings are not required to make decisions: any decision that can
be made in a pull request or issue should be. Whatever the venue, the decision
and its reasons are recorded in the relevant repository, which is the
authoritative record.

## 5. Escalation

Technical decisions belong to project maintainers (Charter §5). The Steering
Committee is not a court of appeal for them. It intervenes only where a project
is in breach of the Charter or of the intake requirements below, where the
CAMSAI name or marks are at stake, where a Code of Conduct matter cannot be
resolved within the project, or where a project has become unmaintained.

## 6. Project intake

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
   accepted under the
   [Developer Certificate of Origin](https://developercertificate.org/), by
   `Signed-off-by` line. CAMSAI does not require a contributor license
   agreement.
4. **Named maintainers.** At least one named maintainer, recorded in the
   repository, who is responsible for review and releases. Projects with a
   single maintainer are admitted as **incubating**.
5. **Continuous integration.** Automated checks run on pull requests, and the
   project's build and test procedure is reproducible by an outside
   contributor.
6. **Documentation.** A README that states what the project does and how to
   install and run it, and a CONTRIBUTING file that states how to contribute.
7. **Code of Conduct.** The project adopts CAMSAI's
   [Code of Conduct](CODE_OF_CONDUCT.md) and names an enforcement contact.
8. **Security contact.** A documented way to report a vulnerability privately.

## 7. Project lifecycle

- **Incubating.** Admitted, and expected to meet the intake requirements, but
  not yet demonstrating a sustainable contributor base or a stable interface.
- **Active.** Meets the intake requirements, has more than one maintainer, and
  makes regular releases.
- **Archived.** No longer maintained. Archival is by recorded vote. An archived
  repository is marked read-only, its README states that it is unmaintained,
  and its published artifacts remain available under their existing licenses.

Status changes are made by recorded vote and reflected in the projects table in
[README.md](README.md).

## 8. Amendments

This document is amended by the process in Charter §9.
