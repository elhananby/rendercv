# DHL GROW IT Trainee — Application Materials

Source: DHL GROW CV brief (tailoring rationale and honesty constraints — no Agile/Scrum
claim, no cloud-platform claim, German kept at B1–B2). CV is a single page at normal
(10pt) type size — content was trimmed, not just typography, to keep it readable rather
than cramped.

## Files

- `cv.yaml` — RenderCV source, `engineeringresumes` theme by default, tuned to fit one
  page at normal font size.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf` — rendered with `cv.yaml`'s
  own design block.
- `output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf` — same content, rendered
  with the `engineeringclassic` theme and its own tighter margins/spacing (see command
  below) to also fit one page at normal font size.
- `cover_letter.md` — DHL GROW-tailored cover letter (plain text/Markdown, not rendered via
  RenderCV).

## Re-rendering

```bash
cd applications/dhl-grow-it-trainee

# engineeringresumes (uses cv.yaml's own design block — already 1 page)
uv run --frozen --all-extras rendercv render cv.yaml \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.typ

# engineeringclassic (theme override + its own margin/spacing tuning to fit 1 page)
uv run --frozen --all-extras rendercv render cv.yaml \
  --design.theme engineeringclassic \
  --design.page.top_margin 0.35in --design.page.bottom_margin 0.35in \
  --design.page.left_margin 0.6in --design.page.right_margin 0.6in \
  --design.page.show_footer false \
  --design.typography.font_size.name 22pt \
  --design.header.space_below_name 0.35cm \
  --design.header.space_below_headline 0.35cm \
  --design.header.space_below_connections 0.35cm \
  --design.section_titles.space_above 0.3cm \
  --design.section_titles.space_below 0.18cm \
  --design.sections.space_between_regular_entries 0.8em \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.typ
```

Requires the repo's Typst FontAwesome submodule to be initialized:
`git submodule update --init --depth 1`.

## What was cut for the single page

Two rounds of cuts:

**Round 1 (reorganized, nothing deleted):**
- "Selected Projects" (OptoFly) folded into a Doctoral Researcher bullet.
- "Publications" (full citations) replaced by "Two first-author Current Biology papers"
  in the Summary; the ORCID link in the header carries the full record.
- Teaching Assistant role folded into a clause on the MSc Researcher entry.
- Education dropped thesis titles/advisors/fellowship mentions; degree honors (magna/summa
  cum laude) kept inline.
- Languages moved into one line under Skills.

**Round 2 (actual content cuts, to de-densify rather than just shrink type):**
- Dropped the Postdoctoral Researcher entry entirely — a 3-month contract that only
  reached notebook-stage validation, and the weakest/least relevant entry for this role.
- Dropped precise research metrics ("0.5 px reprojection error, 6 cameras at 100 fps",
  "~2,100 sorted units, 23 animals", "~10 GB each", "485 commits") — academic precision
  that wasn't adding IT-relevant signal.
- Dropped DeepLabCut/SLEAP from Skills (neuroscience-specific tools, no signal for this
  audience); kept the transferable computer-vision skills (OpenCV, calibration, YOLO).
- Folded "Productivity tools" into the end of the Working methods line instead of its own
  row.
- MSc Researcher: 2 bullets merged into 1.

Type size is back to a normal 10pt on both themes (down from an earlier 9.5pt pass) —
margins and entry/section spacing absorb the rest of the fit-to-one-page work instead.

## Notes

- Phone is shown in international format (`design.header.connections.phone_number_format`)
  to match the format used across all of the source CVs.
- "EU work authorization" is a `custom_connections` entry (plain text, no link).
- Pick whichever theme reads better for you — both carry identical content.
