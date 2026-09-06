# DHL GROW IT Trainee — Application Materials

Source: DHL GROW CV brief (tailoring rationale and honesty constraints — no Agile/Scrum
claim, no cloud-platform claim, German kept at B1–B2). CV is compressed to a single page,
content-only (no commentary on fit or career level).

## Files

- `cv.yaml` — RenderCV source, `engineeringresumes` theme by default, tuned to fit one page.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf` — rendered with `cv.yaml`'s
  own design block.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf` — same content, rendered
  with the `engineeringclassic` theme and tighter spacing/margins (see command below) to
  also fit one page.
- `cover_letter.md` — DHL GROW-tailored cover letter (plain text/Markdown, not rendered via
  RenderCV).

## Re-rendering

```bash
cd applications/dhl-grow-it-trainee

# engineeringresumes (uses cv.yaml's own design block — already 1 page)
uv run --frozen --all-extras rendercv render cv.yaml \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.typ

# engineeringclassic (theme override + tighter spacing/margins/footer to fit 1 page)
uv run --frozen --all-extras rendercv render cv.yaml \
  --design.theme engineeringclassic \
  --design.page.top_margin 0.35in --design.page.bottom_margin 0.35in \
  --design.page.left_margin 0.5in --design.page.right_margin 0.5in \
  --design.page.show_footer false \
  --design.typography.line_spacing 0.5em \
  --design.typography.font_size.body 9.5pt \
  --design.typography.font_size.name 20pt \
  --design.header.space_below_name 0.3cm \
  --design.header.space_below_headline 0.3cm \
  --design.header.space_below_connections 0.3cm \
  --design.section_titles.space_above 0.2cm \
  --design.section_titles.space_below 0.12cm \
  --design.sections.space_between_regular_entries 0.2cm \
  --design.sections.space_between_text_based_entries 0.1cm \
  --design.entries.highlights.space_above 0.05cm \
  --design.entries.highlights.space_between_items 0.05cm \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.typ
```

Requires the repo's Typst FontAwesome submodule to be initialized:
`git submodule update --init --depth 1`.

## What was cut to fit one page

Nothing was dropped outright — content was folded together rather than deleted:

- The dedicated "Selected Projects" section (OptoFly) is now one clause inside the
  Doctoral Researcher bullets.
- The "Publications" section (full citations) was replaced by "Two first-author Current
  Biology papers" in the Summary and inline mentions in Experience; the ORCID link in the
  header carries the full record for anyone who wants it.
- The Teaching Assistant role is now a clause appended to the MSc Researcher entry instead
  of its own entry.
- Education dropped thesis titles/advisors/fellowship mentions; degree honors (magna/summa
  cum laude) are kept inline.
- Languages moved from their own section into one line under Skills.
- Font size, margins, and section/entry spacing were tightened (documented in the render
  commands above) rather than cutting more content.

## Notes

- Phone is shown in international format (`design.header.connections.phone_number_format`)
  to match the format used across all of the source CVs.
- "EU work authorization" is a `custom_connections` entry (plain text, no link).
- Pick whichever theme reads better for you — both carry identical content.
