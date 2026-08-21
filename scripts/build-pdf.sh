#!/usr/bin/env bash
# Render the CAMSAI governance documents into a single consolidated PDF.
#
#   scripts/build-pdf.sh [version]
#
# The version is normally a date tag such as 2026.8.20-0; it appears on the
# title page and in the output filename. With no argument the build is labelled
# "draft" and dated today. Rendering runs in the pinned pandoc container so the
# output is identical locally and in CI; Docker is the only prerequisite.
set -euo pipefail

cd "$(dirname "$0")/.."

VERSION="${1:-draft}"
IMAGE="pandoc/latex:3.10-ubuntu"
OUTPUT="CAMSAI-governance-${VERSION}.pdf"

# Order matters: the consolidated document reads as a single instrument.
DOCUMENTS=(CHARTER.md GOVERNANCE.md STEERING.md TRADEMARKS.md CODE_OF_CONDUCT.md)

# A date tag encodes the date it was ratified; anything else is dated today.
if [[ "$VERSION" =~ ^([0-9]{4})\.([0-9]{1,2})\.([0-9]{1,2})-[0-9]+$ ]]; then
    RATIFIED="$(printf '%04d-%02d-%02d' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" "${BASH_REMATCH[3]}")"
else
    RATIFIED="$(date -u +%Y-%m-%d)"
fi

FRONTMATTER=".frontmatter.generated.md"
trap 'rm -f "$FRONTMATTER"' EXIT

cat > "$FRONTMATTER" <<FRONT
# About this document

This is a consolidated copy of the governance documents of the Consortium for
the Advancement of Materials Science with AI (CAMSAI), as they stood at version
\`${VERSION}\`.

It contains, in order: the Charter, the Governance rules, the Steering
Committee roster, the statement on the CAMSAI name and marks, and the Code of
Conduct.

**CAMSAI is not incorporated.** It has no separate legal personality and cannot
enter contracts, hold property, employ anyone, or receive funds in its own
name. These documents describe how the Consortium intends to govern itself and
record undertakings made in the open; they are not a constitution of a legal
entity. See Charter section 8.

Governance documents are versioned by date tag in the form \`YYYY.M.D-N\`, where
the date is the date of ratification and \`N\` distinguishes multiple
ratifications on the same day. The authoritative source, including the history
of every change, is:

<https://github.com/camsai/governance>

These documents are licensed under Creative Commons Attribution 4.0
International (CC BY 4.0).
FRONT

docker run --rm \
    --user "$(id -u):$(id -g)" \
    --volume "$PWD:/data" \
    --workdir /data \
    "$IMAGE" \
    --from=markdown \
    --pdf-engine=xelatex \
    --toc --toc-depth=2 \
    --metadata title="CAMSAI Governance" \
    --metadata subtitle="Version ${VERSION}" \
    --metadata author="Consortium for the Advancement of Materials Science with AI" \
    --metadata date="Ratified ${RATIFIED}" \
    --variable documentclass=report \
    --variable geometry:margin=1in \
    --variable fontsize=11pt \
    --variable colorlinks=true \
    --variable linkcolor=NavyBlue \
    --variable urlcolor=NavyBlue \
    --variable toccolor=black \
    --output "$OUTPUT" \
    "$FRONTMATTER" "${DOCUMENTS[@]}"

echo "Wrote $OUTPUT"
