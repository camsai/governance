# CAMSAI Charter

> **Interim draft — pre-incorporation.** This document has not been ratified; a
> version date tag is applied when it is. Last revised 2026-08-20.

## 1. Name and mission

The **Consortium for the Advancement of Materials Science with AI**
("**CAMSAI**", or "the Consortium") is an open, vendor-neutral community whose
mission is **advancing materials science with AI**.

CAMSAI pursues that mission by developing, hosting, and sustaining open-source
software, open data standards, and open educational material, and by convening
the people who build and use them across national laboratories, universities,
industry, and independent practice.

## 2. Scope

CAMSAI's work covers, and is limited to, the following areas:

1. **Simulation and modeling software** — open-source codes for materials
   simulation, including electronic-structure and atomistic methods, and the
   tooling that makes them usable in modern computational environments.
2. **Data standards** — schemas, vocabularies, formats, and validation tooling
   for materials data, developed in the open and designed to interoperate with
   existing community standards rather than to displace them.
3. **Notebooks and education** — runnable, tested teaching and demonstration
   material that lowers the barrier to using the above.
4. **Shared infrastructure** — the continuous integration, packaging,
   distribution, and documentation machinery that CAMSAI projects rely on.

Work outside this scope is out of scope for the Consortium, however
meritorious. Expanding the scope is an amendment to this Charter under §12.

## 3. Principles

CAMSAI is bound by the following principles. They constrain the Steering
Committee as much as they constrain contributors.

- **Open source.** CAMSAI software is released under an
  [OSI-approved](https://opensource.org/licenses) license. The default outbound
  license for code is Apache License 2.0; for documents, standards, and
  educational material it is CC BY 4.0. A project may use a different
  OSI-approved license only by recorded Steering Committee vote, with the
  reason stated in the record.
- **Vendor neutrality.** No organization, sector, or individual controls
  CAMSAI. Neutrality is enforced structurally, through the constituency-based
  composition of the Steering Committee (GOVERNANCE.md §1) and through §9 of
  this Charter, which separates support from governance — not by assurance.
- **Open governance.** Decisions, and the reasons for them, are made and
  recorded in public. Discussion may be private only where confidentiality is
  required, such as in Code of Conduct enforcement or a security embargo.
- **Provenance and scientific integrity.** CAMSAI projects must be able to
  account for the origin of the code and data they distribute. Contributions
  are made under the Developer Certificate of Origin (§5), and claims about
  scientific accuracy or performance must be reproducible from material the
  project publishes.
- **Interoperability over lock-in.** CAMSAI standards and formats are designed
  to work with what the community already uses.

## 4. Membership and roles

CAMSAI has no dues, no membership agreement, and no application process.
Participation is open to anyone who abides by the Code of Conduct.

- **Participants** are everyone taking part in CAMSAI spaces: repositories,
  issue trackers, discussions, and meetings.
- **Contributors** are participants who contribute code, documentation, data,
  review, triage, translation, or design to a CAMSAI project.
- **Maintainers** are contributors entrusted by a project with write access and
  responsibility for its day-to-day direction, review, and releases. Each
  project records its own maintainers. **Maintainership is not capped by
  organization**: an organization's practical influence on a project's
  technical direction is earned through sustained contribution, and that path
  is deliberately left open.
- The **Steering Committee** is the body responsible for the Consortium as a
  whole: its scope, its projects, its assets, and this Charter. Its composition
  and powers are defined in GOVERNANCE.md.
- The **Advisory Council** is a standing, non-voting forum for organizations
  that commit substantial resources and for constituencies not holding a seat
  (GOVERNANCE.md §5).

Organizations do not hold membership or votes. Individuals serve on the
Steering Committee in a personal capacity, representing a constituency rather
than an employer, and are expected to act in the interest of the Consortium.

## 5. Contributions, intellectual property, and publication

### 5.1 Inbound terms

Contributions are accepted under the
[Developer Certificate of Origin](https://developercertificate.org/) (DCO),
certified by a `Signed-off-by` line on each commit. **CAMSAI does not require a
contributor license agreement and does not accept assignment of copyright.**
Copyright in a contribution remains with its author or their employer, licensed
to the public under the project's outbound license (§3).

### 5.2 Rights you must have before contributing

Signing off is a representation that you have the right to submit the
contribution under the project's license. In practice that means:

- **Employer and institutional rights.** If your employer or institution owns
  or asserts rights in work you produce, obtain their clearance before
  contributing. Many organizations have a standing open-source policy or an
  open-source programme office that grants this in advance.
- **Students and postdoctoral researchers.** Many universities assert ownership
  of work created with institutional resources, and that ownership is not
  displaced by a personal sign-off. If you are a student or postdoc, check your
  institution's IP policy — or ask your supervisor or technology-transfer
  office — before contributing. Where an institution's policy is unclear, a
  maintainer should ask for written confirmation rather than proceed. This
  protects the contributor, not only the project.
- **Third-party material.** Do not contribute code, data, or text you do not
  have the right to distribute under the project's license. Third-party
  material must be identified with its origin and its license.
- **Confidential information.** CAMSAI conducts its business in the open. Do
  not contribute confidential or proprietary information belonging to any
  organization, including your own.

### 5.3 Patents

The outbound Apache License 2.0 includes an express patent license from each
contributor, in the terms of its section 3, covering that contributor's
contribution. **CAMSAI requires no patent commitment beyond that.** No
participant is required to license, disclose, or forbear from asserting patents
outside what the outbound license itself provides, and CAMSAI does not operate
a patent pool.

### 5.4 Publication

Nothing in CAMSAI's governance restricts any participant from publishing
research, including research derived from or conducted with CAMSAI projects.
There is no embargo, no pre-publication review, and no right of any CAMSAI body
to approve, delay, or edit a publication. Participants are asked, but not
required, to cite the projects they use through the citation metadata each
project publishes.

The one limit is the one that applies to everyone: do not publish another
party's confidential information, and observe any embargo agreed for a
coordinated security disclosure.

## 6. Projects

Projects are admitted to CAMSAI, and archived from it, by recorded Steering
Committee vote against the intake requirements in GOVERNANCE.md §7.

Each project governs its own technical decisions: its roadmap, its architecture,
its release schedule, and who its maintainers are. The Steering Committee does
not direct a project's technical work. Its authority over projects is limited
to admission, continued compliance with this Charter and the intake
requirements, use of the CAMSAI name and marks, and archival.

An intake decision is a decision about stewardship, not a transfer of
ownership: copyright in contributed code remains with its authors or their
employers, licensed to the public under the project's outbound license.

## 7. Antitrust and competition compliance

CAMSAI brings together participants who are, or may become, competitors.
Participation must therefore comply with all applicable antitrust and
competition laws, and CAMSAI's activities are confined to the technical work
described in §2.

**Participants must not use any CAMSAI forum** — meetings, calls, repositories,
issue trackers, mailing lists, chat, or side conversations conducted in
CAMSAI's name — **to discuss, agree, or exchange information on:**

- prices, pricing methods, margins, discounts, terms of sale, or costs;
- allocation of markets, customers, territories, or fields of use;
- restricting output, capacity, or the development of any product;
- refusing to deal with, or boycotting, any supplier, customer, or competitor;
- any non-public commercially sensitive information about a participant's
  business;
- excluding any person or organization from a market.

The Chair, or any participant, should halt a discussion that approaches these
topics and, where appropriate, ask participants to consult their own counsel.
Anyone may raise an antitrust concern with the Steering Committee, and it will
be recorded and answered on the record.

Nothing in CAMSAI's governance obliges any participant to purchase, license,
adopt, or deal with any other participant, or to refrain from developing,
marketing, or selling any product, including one that competes with a CAMSAI
project. Participants remain independent and are responsible for their own
compliance; each is encouraged to seek its own legal advice.

## 8. Export control and institutional review

CAMSAI projects are developed in the open and published publicly, without
restriction on who may obtain them. Information that is published and made
available to the public without restriction is generally outside the scope of
the United States Export Administration Regulations (see 15 CFR §734.7); the
Consortium relies on that character and intends to preserve it.

Consequently, **CAMSAI does not accept, host, or distribute**:

- classified information;
- controlled unclassified information (CUI), or its equivalent in any
  jurisdiction;
- technical data subject to the International Traffic in Arms Regulations
  (ITAR);
- anything whose export or publication would require a licence, authorisation,
  or other government approval;
- anything a contributor is not permitted to publish.

**Contributors are responsible for their own institutional review.** Publishing
to a public CAMSAI repository makes the material available worldwide, and it
cannot be recalled. Before contributing, satisfy any review that applies to
you — an export-control office, a security officer, a technology-transfer
office, an open-source programme office, or a laboratory's public-release
process. Participants at national laboratories and defence-adjacent
institutions in particular should assume that their own institution's release
process governs, and should complete it first. CAMSAI cannot make that
determination on a contributor's behalf and does not attempt to.

If material of a kind listed above reaches a CAMSAI repository, report it to
the maintainers or the Steering Committee immediately; the Consortium will
remove it and record what happened.

## 9. Assets, funding, and support

### 9.1 Assets

The CAMSAI name, logo, and the camsai.org domain are held in interim custody as
described in [TRADEMARKS.md](TRADEMARKS.md), because the Consortium cannot yet
hold property in its own name (§11).

### 9.2 No dues

There are no membership fees, dues, or required financial contributions of any
kind. Participation costs nothing.

### 9.3 Operating costs

CAMSAI's running costs — domain registration, trademark registrations where
they are obtained, continuous integration, hosting, and documentation
infrastructure — are presently borne by the custodian named in TRADEMARKS.md
and by in-kind contributions from participants. Until the Consortium has a
fiscal sponsor or a legal entity (§11), **it cannot receive or hold funds**;
support can only be given in kind, or by a supporter paying a vendor directly.

The Steering Committee publishes what the Consortium's operating costs are, and
who is bearing them, in [SUPPORTERS.md](SUPPORTERS.md), so that the burden is
visible and can be shared rather than resting silently on one participant.

### 9.4 Support, and what it does not buy

Financial and in-kind support — engineering time, compute, build and test
infrastructure, hosting, travel for community events, or direct payment of an
operating cost — is welcome from any organization, and is acknowledged
publicly in [SUPPORTERS.md](SUPPORTERS.md) with the form and scale of the
support given.

**Support confers no governance rights.** It does not create a seat, a vote, a
veto, priority in any project's roadmap, or any claim on the direction of the
Consortium. An organization contributing substantial resources holds the same
one seat, at most, as any other organization, and no seat at all by virtue of
its support.

This is deliberate, and it is the point rather than an oversight: what a
neutral consortium is worth to each of its participants depends entirely on the
fact that it cannot be bought. An organization seeking a closer working
relationship than contribution alone provides should look to the Advisory
Council (GOVERNANCE.md §5), which gives a standing, non-voting channel to the
Steering Committee — and to maintainership in the projects it invests in
(§4), where sustained technical contribution does translate into influence over
technical direction.

## 10. Affiliations

CAMSAI participates in the [AI Alliance](https://thealliance.ai) community.
This is a community affiliation only. It confers no authority over CAMSAI:
CAMSAI's scope, projects, governance, and decisions are determined solely by
this Charter and by GOVERNANCE.md. CAMSAI may enter further community
affiliations by recorded Steering Committee vote, on the same terms.

## 11. Interim status

CAMSAI is **not incorporated** and has no separate legal personality. It cannot
enter contracts, hold property, employ anyone, or receive funds in its own
name. Consequently:

1. Assets nominally associated with CAMSAI are held by the custodian named in
   TRADEMARKS.md, subject to the undertakings recorded there.
2. Copyright notices reading "CAMSAI.org and contributors" in project
   repositories are collective attribution to the body of contributors, in the
   customary open-source form; they are not an assertion that an entity holds
   those rights.
3. Neither the Steering Committee nor any participant may represent that CAMSAI
   is an incorporated entity, a charity, or a tax-exempt organization, or make
   commitments purporting to bind CAMSAI as such.

### 11.1 Path to a permanent home

The Steering Committee intends to establish a permanent home for the
Consortium, in stages: first an arrangement with an established fiscal sponsor
for scientific open-source software, and later, if the Consortium's activity
and funding warrant it, a dedicated legal entity. Adopting a fiscal sponsor,
and any transfer of assets to it, requires a recorded Steering Committee vote
and an amendment to this Charter recording the outcome.

### 11.2 If no permanent home is in place by 31 December 2027

The interim period is not open-ended, and its expiry is not a cliff. If no
fiscal sponsor has been adopted by **31 December 2027**:

1. **This Charter continues in force.** The Consortium does not dissolve, its
   projects are unaffected, and its licenses are unaffected.
2. **Seats do not lapse.** Members whose interim terms have expired continue to
   serve in a caretaker capacity until successors are appointed, so that the
   Consortium is never left without a body able to decide.
3. **The question must be put.** No later than **30 September 2027**, the
   Steering Committee must put to a recorded vote a decision on how to proceed,
   choosing among: adopting a fiscal sponsor; incorporating; extending the
   interim period for a stated further term; or dissolving under §13. The
   options considered and the reasons for the choice are recorded.
4. **The outcome is published** as an amendment to this Charter under §12, so
   that the Consortium's status can always be established from this document
   alone.

## 12. Amendments

This Charter and GOVERNANCE.md are amended as follows:

1. The proposed change is opened as a pull request against this repository.
2. It remains open for discussion for at least **fourteen days**.
3. It is adopted by a recorded vote of the Steering Committee under
   GOVERNANCE.md §4, requiring a two-thirds majority of seated members.
4. On adoption it is merged, tagged with a new date tag, and published as a
   release.

Editorial changes that do not alter meaning — typographical corrections, broken
links, formatting — may be merged by lazy consensus without a vote, and are
folded into the next tagged version.

### 12.1 Adoption of the first version

The procedure above amends a Charter that is already in force. It cannot bring
one into force: it requires a Steering Committee, and until this document takes
effect there is none. The first version is therefore adopted differently, once
only.

**This Charter and GOVERNANCE.md take effect when both of the following have
happened, and not before:**

1. **An adoption pull request is merged.** It must say on its face that it is
   the adoption record, name the version being adopted, carry the assent of
   whichever seats are filled at that time, and replace the unratified notice
   at the head of each document with that version. Its diff is therefore the
   visible difference between a draft and an instrument in force.
2. **The corresponding date tag is pushed** to the merged commit, under the
   scheme in README.md.

**No other merge to this repository effects adoption**, whatever it contains
and whoever opens it. A pull request that does not say it is the adoption
record is not one, and merging ordinary work — including the work that first
placed these documents in this repository — leaves their status untouched.
Which day a constitution came into force should be answerable from the
repository alone, by anyone, years later, without reconstructing what was
intended at the time.

From that moment §12 governs every further change, and this subsection is
spent.

Until both steps are complete, these documents are the Consortium's **declared
operating practice** rather than a ratified instrument: they state how CAMSAI
intends to conduct itself and may be relied on as a statement of intent, but no
version tag is applied and nothing in them has been voted on. Drafts are marked
as such on their face.

## 13. Dissolution

If the Steering Committee resolves by two-thirds vote to dissolve the
Consortium, its projects, documents, and marks are to be transferred to another
open-source organization capable of continuing them under equivalent open
licenses, or, failing that, released to the public under those licenses and
archived. No asset of the Consortium may be distributed to a private
beneficiary.
