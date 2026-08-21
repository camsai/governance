# Reporting a security issue

> This file covers the **governance repository**. To report a vulnerability in
> a CAMSAI project, use that project's own security contact — every CAMSAI
> project is required to publish one ([GOVERNANCE.md](GOVERNANCE.md) §7).

**Do not open a public issue for a security vulnerability.**

Report it through
[GitHub private vulnerability reporting](https://github.com/camsai/governance/security/advisories/new)
on this repository. If that is unavailable to you, contact any member of the
Steering Committee listed in [STEERING.md](STEERING.md).

## What is in scope here

This repository holds documents, one build script, and one GitHub Actions
workflow. The security-relevant surface is small but not empty:

- the release workflow and its permissions, including anything that could cause
  it to publish content that was not reviewed, or to leak a token;
- the pinned container image used to render the PDF, and its supply chain;
- repository or organization settings that would let an unauthorised person
  alter a ratified document or a published release.

A defect in the *substance* of a governance document is not a security issue.
Open a pull request or an issue for that.

## What to expect

A maintainer will acknowledge your report and work with you on a fix and a
disclosure timeline. We will credit you when the fix is published, unless you
prefer otherwise. Please give us a reasonable opportunity to release a fix
before disclosing publicly.

Coordinated-disclosure embargoes are the one case where CAMSAI business is
conducted privately rather than in the open (CHARTER.md §3), and the embargo
ends when the fix is published.
