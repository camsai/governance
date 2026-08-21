# CAMSAI Governance

> **Interim draft — pre-incorporation.** Version `2026.8.20-0`, 20 August 2026.
> These documents describe how CAMSAI intends to govern itself. CAMSAI is not
> yet incorporated and has no separate legal personality; see
> [CHARTER.md](CHARTER.md) §8 and [TRADEMARKS.md](TRADEMARKS.md) for what that
> means in practice.

The **Consortium for the Advancement of Materials Science with AI (CAMSAI)** is
an open, vendor-neutral community devoted to **advancing materials science with
AI**. This repository is the canonical home of CAMSAI's constitutional
documents: what the consortium is for, who decides what, and on what terms its
projects are hosted.

## Documents

| Document | What it covers |
|:----------------------|:--------------------------------------------------|
| [CHARTER.md](CHARTER.md) | Mission, scope, principles, membership, projects, affiliations, amendment process |
| [GOVERNANCE.md](GOVERNANCE.md) | Steering Committee composition, decision rules, project intake and lifecycle |
| [STEERING.md](STEERING.md) | The current roster of Steering Committee seats |
| [TRADEMARKS.md](TRADEMARKS.md) | Custody of the CAMSAI name, marks, and domain, and permitted uses |
| [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) | Expected conduct in all CAMSAI spaces, and how to report a concern |

## Projects

CAMSAI hosts open-source projects that serve its mission. Every project is
admitted under the intake requirements in [GOVERNANCE.md](GOVERNANCE.md) §6.

| Project | Description | Status |
|:-----------------|:-------------------------------------------------|:----------|
| [standards](https://github.com/camsai/standards) | Schemas, validation tools, and data models for materials science and AI research | Active |
| [notebooks](https://github.com/camsai/notebooks) | Interactive notebooks demonstrating CAMSAI tools and workflows | Active |
| [jupyterlite](https://github.com/camsai/jupyterlite) | Browser-based environment for running CAMSAI notebooks without local setup | Active |
| [actions](https://github.com/camsai/actions) | Shared continuous-integration workflows for CAMSAI repositories | Active |
| q3 | An AI-native codebase for materials science. Apache-2.0 intended; public release targeted for late 2026 | Incubating |

## How decisions are made

Day-to-day work is decided in the open by the people doing it. Routine
decisions carry by **lazy consensus**: a proposal opened as a pull request or
issue, left visible for the review period, and merged if no Steering Committee
member objects. Constitutional changes, project intake, and project archival
require a **recorded vote** of the Steering Committee. The full rules, quorum,
and conflict-of-interest requirements are in [GOVERNANCE.md](GOVERNANCE.md) §4.

The Steering Committee has **seven seats, allocated by constituency** rather
than by employer, so that no single organization or sector can control the
consortium. See [STEERING.md](STEERING.md).

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

## Proposing a change

Open a pull request against this repository. Amendments to the Charter or to
GOVERNANCE.md follow the process in [CHARTER.md](CHARTER.md) §9: discussion in
the pull request, a recorded Steering Committee vote, then a new date tag and
release. Editorial corrections that do not change meaning may be merged by
lazy consensus and folded into the next tagged version.

## License

These documents are licensed under Creative Commons Attribution 4.0
International (CC BY 4.0). See [LICENSE](LICENSE).
