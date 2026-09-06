# DHL GROW IT Trainee — Application Materials

Source: `../../DHL GROW CV Brief.md`-equivalent brief (tailoring rationale and honesty
constraints — no Agile/Scrum claim, no cloud-platform claim, German kept at B1–B2).

## Files

- `cv.yaml` — RenderCV source, `engineeringresumes` theme by default.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf` — rendered with the base
  `cv.yaml` settings.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf` — same content, rendered
  with the `engineeringclassic` theme and tighter spacing (see command below) to keep it to
  2 pages.
- `cover_letter.md` — DHL GROW-tailored cover letter (plain text/Markdown, not rendered via
  RenderCV).

## Re-rendering

```bash
cd applications/dhl-grow-it-trainee

# engineeringresumes (uses cv.yaml's own design block)
uv run --frozen --all-extras rendercv render cv.yaml \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.typ

# engineeringclassic (theme override + tighter spacing so it still fits 2 pages)
uv run --frozen --all-extras rendercv render cv.yaml \
  --design.theme engineeringclassic \
  --design.page.top_margin 0.4in --design.page.bottom_margin 0.4in \
  --design.page.left_margin 0.5in --design.page.right_margin 0.5in \
  --design.sections.space_between_regular_entries 0.9em \
  --design.sections.space_between_text_based_entries 0.2em \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.typ
```

Requires the repo's Typst FontAwesome submodule to be initialized:
`git submodule update --init --depth 1`.

## Notes

- Phone is shown in international format (`design.header.connections.phone_number_format`)
  to match the format used across all of the source CVs.
- "EU work authorization" is a `custom_connections` entry (plain text, no link).
- Pick whichever theme reads better for you — both carry identical content.
