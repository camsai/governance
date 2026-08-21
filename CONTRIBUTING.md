# Contributing to the CAMSAI governance documents

> **Interim draft — pre-incorporation.** This document has not been ratified; a
> version date tag is applied when it is. Last revised 2026-08-20.

This repository holds CAMSAI's constitutional documents. Changing them is a
governance act, not a routine edit, so the process is deliberately heavier than
in a code repository. It is set out in [CHARTER.md](CHARTER.md) §12; this file
says how to carry it out in practice.

## Sign off your commits

Every commit must carry a `Signed-off-by` trailer, certifying the
[Developer Certificate of Origin](https://developercertificate.org/):

```bash
git commit -s
```

There is no contributor license agreement and no copyright assignment
([CHARTER.md](CHARTER.md) §5.1). A pull request whose commits lack the trailer
fails CI. To fix a branch you have already written:

```bash
git rebase --signoff main
```

## Which process applies

| Change | Process |
|:---------------------------|:-------------------------------------------|
| Typographical fixes, broken links, formatting — anything that does not alter meaning | Lazy consensus. Open a pull request; it may be merged after the review period with no vote, and is folded into the next tagged version. |
| Any change to the meaning of CHARTER.md or GOVERNANCE.md | Amendment under [CHARTER.md](CHARTER.md) §12: at least fourteen days open for discussion, then a recorded two-thirds vote of the Steering Committee, then merge, tag, and release. |
| Appointments, resignations, removals, annual attestations | A pull request against [STEERING.md](STEERING.md) linking to the decision record ([GOVERNANCE.md](GOVERNANCE.md) §3). |
| Supporters, operating costs, Advisory Council admissions | A pull request against [SUPPORTERS.md](SUPPORTERS.md); Council admission additionally requires a recorded vote. |

If you are unsure which applies, open the pull request and say so — deciding
which process governs is itself something to settle in the open.

## Writing an amendment

State in the pull request description **what** changes, **why**, and **what
becomes possible or impossible** as a result. An amendment that cannot be
explained in those terms usually is not ready.

Amendments are drafted against the documents' existing structure. If a change
renumbers sections, update every cross-reference to them; the documents refer to
each other constantly, and a stale reference in a constitutional document is
worse than an ugly one.

## Building the PDF

Each ratified version is published as a single consolidated PDF. To build it
locally you need only Docker:

```bash
scripts/build-pdf.sh
```

The same script runs in CI, in a container pinned by digest, so a local build
and a released build are the same document.

## Conduct

All CAMSAI spaces are governed by the [Code of Conduct](CODE_OF_CONDUCT.md).
To report a security issue in this repository, see [SECURITY.md](SECURITY.md).
