#!/usr/bin/env bash
# Render the CAMSAI governance documents into a single consolidated PDF.
#
#   scripts/build-pdf.sh [version]
#
# The version is normally a date tag such as 2026.8.20-0; it appears on the
# title page, in the page footer, and in the output filename. With no argument
# the build is labelled "draft" and dated today. Rendering runs in the pinned
# pandoc container so the output is identical locally and in CI; Docker is the
# only prerequisite.
set -euo pipefail

cd "$(dirname "$0")/.."

VERSION="${1:-draft}"

# Pinned by digest, not by tag: SECURITY.md names this image's supply chain as
# part of the repository's security surface, and a tag can be repointed. The
# tag is kept alongside for readability; the digest is what Docker resolves.
IMAGE="pandoc/latex:3.10-ubuntu@sha256:568ae5d3dc4cf9266753c9c78e7d073c1472f6540e0cf02de6a330143df8bdb7"

OUTPUT="CAMSAI-governance-${VERSION}.pdf"
REPOSITORY_URL="https://github.com/camsai/governance/blob/main"

# Order matters: the consolidated document reads as a single instrument.
DOCUMENTS=(CHARTER.md GOVERNANCE.md STEERING.md SUPPORTERS.md TRADEMARKS.md CODE_OF_CONDUCT.md)

# Only a date tag means the documents were ratified, so only a date tag may say
# so on the title page. Anything else is a draft, dated today and labelled as
# one — a draft that calls itself ratified would contradict the notice at the
# head of every document it contains.
if [[ "$VERSION" =~ ^([0-9]{4})\.([0-9]{1,2})\.([0-9]{1,2})-[0-9]+$ ]]; then
    DATE_LINE="Ratified $(printf '%04d-%02d-%02d' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" "${BASH_REMATCH[3]}")"
else
    DATE_LINE="Draft of $(date -u +%Y-%m-%d). Not ratified."
fi

FRONTMATTER=".frontmatter.generated.md"
LINK_FILTER=".links.generated.lua"
PAGE_STYLE=".pagestyle.generated.tex"
trap 'rm -f "$FRONTMATTER" "$LINK_FILTER" "$PAGE_STYLE"' EXIT

# The documents link to each other constantly. Inside a single PDF those
# relative links are dead ends -- the reader has no such files -- so rewrite
# them: to an internal anchor when the target is part of this bundle, and to
# the canonical repository URL when it is not.
{
    echo 'local anchors = {'
    for document in "${DOCUMENTS[@]}"; do
        # Pandoc derives a heading's id by lowercasing it, dropping punctuation,
        # and joining words with hyphens. Derive the same id from the first
        # heading so a retitled document does not silently break its links.
        heading="$(sed -n 's/^# //p' "$document" | head -1)"
        anchor="$(printf '%s' "$heading" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:] -' | tr ' ' '-')"
        printf '  ["%s"] = "#%s",\n' "$document" "$anchor"
    done
    echo '}'
    cat <<'LUA'
local repository = os.getenv("CAMSAI_REPOSITORY_URL")

function Link(element)
    local target = element.target
    -- Leave absolute URLs, mailto: links, and existing anchors alone.
    if target:match("^%a[%w+.-]*:") or target:match("^#") then
        return nil
    end
    if anchors[target] then
        element.target = anchors[target]
    else
        element.target = repository .. "/" .. target
    end
    return element
end
LUA
} > "$LINK_FILTER"

# A constitutional document that will be printed and circulated should identify
# its own version on every page, not only on the title page.
cat > "$PAGE_STYLE" <<STYLE
\\usepackage{fancyhdr}
\\pagestyle{fancy}
\\fancyhf{}
\\fancyfoot[L]{\\footnotesize CAMSAI Governance ${VERSION}}
\\fancyfoot[R]{\\footnotesize \\thepage}
\\renewcommand{\\headrulewidth}{0pt}
\\fancypagestyle{plain}{%
  \\fancyhf{}%
  \\fancyfoot[L]{\\footnotesize CAMSAI Governance ${VERSION}}%
  \\fancyfoot[R]{\\footnotesize \\thepage}%
  \\renewcommand{\\headrulewidth}{0pt}%
}
STYLE

cat > "$FRONTMATTER" <<FRONT
# About this document

This is a consolidated copy of the governance documents of the Consortium for
the Advancement of Materials Science with AI (CAMSAI), as they stood at version
\`${VERSION}\`.

It contains, in order: the Charter, the Governance rules, the Steering
Committee roster, the register of supporters and operating costs, the statement
on the CAMSAI name and marks, and the Code of Conduct.

**CAMSAI is not incorporated.** It has no separate legal personality and cannot
enter contracts, hold property, employ anyone, or receive funds in its own
name. These documents describe how the Consortium intends to govern itself and
record undertakings made in the open; they are not a constitution of a legal
entity. See Charter section 11, which also states what happens if no permanent
home is in place by 31 December 2027.

Governance documents are versioned by date tag in the form \`YYYY.M.D-N\`, where
the date is the date of ratification and \`N\` distinguishes multiple
ratifications on the same day. A version bearing no date tag has not been
ratified. The authoritative source, including the history of every change, is:

<https://github.com/camsai/governance>

These documents are licensed under Creative Commons Attribution 4.0
International (CC BY 4.0).
FRONT

docker run --rm \
    --user "$(id -u):$(id -g)" \
    --volume "$PWD:/data" \
    --workdir /data \
    --env "CAMSAI_REPOSITORY_URL=$REPOSITORY_URL" \
    "$IMAGE" \
    --from=markdown \
    --pdf-engine=xelatex \
    --toc --toc-depth=2 \
    --lua-filter="$LINK_FILTER" \
    --include-in-header="$PAGE_STYLE" \
    --metadata title="CAMSAI Governance" \
    --metadata subtitle="Version ${VERSION}" \
    --metadata author="Consortium for the Advancement of Materials Science with AI" \
    --metadata date="${DATE_LINE}" \
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
