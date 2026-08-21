# CAMSAI Governance

> **Interim draft — pre-incorporation.** These documents have not been
> ratified; they are proposed here for review. A version date tag is applied
> when they are ratified. Last revised 2026-08-20.
>
> CAMSAI is not yet incorporated and has no separate legal personality; see
> [CHARTER.md](CHARTER.md) §11 and [TRADEMARKS.md](TRADEMARKS.md) for what that
> means in practice.

The **Consortium for the Advancement of Materials Science with AI (CAMSAI)** is
an open, vendor-neutral community devoted to **advancing materials science with
AI**. This repository is the canonical home of CAMSAI's constitutional
documents: what the consortium is for, who decides what, and on what terms its
projects are hosted.

## Documents

| Document | What it covers |
|:----------------------|:--------------------------------------------------|
| [CHARTER.md](CHARTER.md) | Mission, scope, principles, membership, contributor IP, projects, antitrust, export control, funding, affiliations, interim status, amendments |
| [GOVERNANCE.md](GOVERNANCE.md) | Steering Committee, founding period, decision rules, Advisory Council, project intake and lifecycle |
| [STEERING.md](STEERING.md) | Convener, Chair, and the roster of seats |
| [SUPPORTERS.md](SUPPORTERS.md) | Who bears the operating costs, who supports CAMSAI, and the Advisory Council roster |
| [TRADEMARKS.md](TRADEMARKS.md) | Custody of the CAMSAI name, marks, and domain, and permitted uses |
| [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) | Expected conduct, how to report a concern, and what happens when the report concerns whoever would normally handle it |
| [SECURITY.md](SECURITY.md) | Reporting a security issue in this repository |

## Projects

CAMSAI hosts open-source projects that serve its mission. Every project is
admitted under the intake requirements in [GOVERNANCE.md](GOVERNANCE.md) §7.

These repositories predate this framework, so none has been admitted by a vote —
there was no body to take one. They are listed as **Proposed** until the first
Steering Committee decides on each, which it must do within 180 days of
adoption ([GOVERNANCE.md](GOVERNANCE.md) §8.1). The status column says what is
true, not what is hoped.

| Project | Description | Status |
|:-----------------|:-------------------------------------------------|:----------|
| [standards](https://github.com/camsai/standards) | Schemas, validation tools, and data models for materials science and AI research | Proposed |
| [notebooks](https://github.com/camsai/notebooks) | Interactive notebooks demonstrating CAMSAI tools and workflows | Proposed |
| [jupyterlite](https://github.com/camsai/jupyterlite) | Browser-based environment for running CAMSAI notebooks without local setup | Proposed |
| [actions](https://github.com/camsai/actions) | Shared continuous-integration workflows for CAMSAI repositories | Proposed |
| q3 | An AI-native codebase for materials science. Apache-2.0 intended; public release targeted for late 2026 | Proposed |

## How decisions are made

Day-to-day work is decided in the open by the people doing it. Routine
decisions carry by **lazy consensus**: a proposal opened as a pull request or
issue, left visible for the review period, and merged if no Steering Committee
member objects. Constitutional changes, project intake, and project archival
require a **recorded vote** of the Steering Committee. The full rules, quorum,
and conflict-of-interest requirements are in [GOVERNANCE.md](GOVERNANCE.md) §4.

The Steering Committee has **seven seats, allocated by constituency** rather
than by employer, so that no single organization or sector can control the
consortium. Seats are open and the founding cohort is not closed — see
[STEERING.md](STEERING.md) for how to put yourself or someone else forward.

Organizations that commit substantial resources, and constituencies that do not
hold a seat, have a standing non-voting channel to the Steering Committee
through the **Advisory Council** ([GOVERNANCE.md](GOVERNANCE.md) §5). Support
is acknowledged publicly and confers no governance rights; that separation is
deliberate and is explained in [CHARTER.md](CHARTER.md) §9.4.

## For institutional reviewers

If you are reviewing CAMSAI on behalf of a laboratory, university, or company,
these are the sections your review will most likely turn on:

| Question | Where |
|:----------------------------------------|:-----------------------------|
| What are the inbound contribution terms? Is there a CLA? | [CHARTER.md](CHARTER.md) §5.1 — DCO, no CLA, no copyright assignment |
| What happens to our patents? | [CHARTER.md](CHARTER.md) §5.3 — the Apache-2.0 §3 grant and nothing beyond it |
| Can our students and postdocs contribute? | [CHARTER.md](CHARTER.md) §5.2 — institutional rights must be cleared first |
| Can our researchers still publish? | [CHARTER.md](CHARTER.md) §5.4 — no embargo, no pre-publication review |
| Is there antitrust exposure in a shared forum? | [CHARTER.md](CHARTER.md) §7 — prohibited topics and the duty to halt |
| Export control, ITAR/EAR, classified or CUI material? | [CHARTER.md](CHARTER.md) §8 — what CAMSAI will not accept, and whose review governs |
| What are we committing to financially? | [CHARTER.md](CHARTER.md) §9.2 — nothing; there are no dues |
| Who are we contracting with? | [CHARTER.md](CHARTER.md) §11 — no entity yet, and what may not be represented |
| What if the interim period runs out? | [CHARTER.md](CHARTER.md) §11.2 — the Charter continues; the question must be put by 30 September 2027 |
| Can we sponsor and get a seat? | [CHARTER.md](CHARTER.md) §9.4 — no, deliberately; see the Advisory Council instead |
| Can we ship a commercial product on this? | [TRADEMARKS.md](TRADEMARKS.md) §4.1 — yes, under your own name |

## Versioning and releases

Governance documents are versioned by **date tag**, not by semantic version:

```
YYYY.M.D-N
```

where `YYYY.M.D` is the date the version was ratified and `N` is a zero-based
ordinal distinguishing multiple ratifications on the same day — for example
`2026.8.20-0`. A date tag is applied only to a ratified state of these
documents; the tip of `main` between tags may contain drafts.

Pushing a date tag automatically builds a single consolidated PDF of the
governance documents and attaches it to a **GitHub Release** for that tag, so
that reviewers, counsel, and partner organizations can read and circulate a
fixed, citable snapshot without cloning the repository. Releases are listed at
[github.com/camsai/governance/releases](https://github.com/camsai/governance/releases).

To build the same PDF locally, with Docker installed:

```bash
scripts/build-pdf.sh
```

## Proposing a change

Open a pull request against this repository. Amendments to the Charter or to
GOVERNANCE.md follow the process in [CHARTER.md](CHARTER.md) §12: discussion in
the pull request, a recorded Steering Committee vote, then a new date tag and
release. Editorial corrections that do not change meaning may be merged by
lazy consensus and folded into the next tagged version.

## License

These documents are licensed under Creative Commons Attribution 4.0
International (CC BY 4.0). See [LICENSE](LICENSE).
