# DHL GROW IT Trainee — Application Materials

Tailored to the posting "Trainee IT National — Project Experts & Young Professionals",
Deutsche Post AG, Bonn (ref. AV-374332). Honesty constraints held throughout: no Agile/Scrum
claim, no cloud-platform claim, German stays at B1–B2, no commentary on fit or career level.

Two content variants, both single-page at 10pt:

| Variant | Source | Postdoc work shown? |
| --- | --- | --- |
| Base | `cv.yaml` | No |
| With postdoc | `cv_with_postdoc.yaml` | Yes, as a "Selected Projects" entry |

`cv.yaml` is the single source of truth for shared content. **Edit `cv.yaml`, then run
`python3 make_with_postdoc.py`** to regenerate the variant — do not hand-edit
`cv_with_postdoc.yaml`, it is overwritten. The script inserts the project entry and applies
slightly tighter spacing, since that variant carries one extra section.

## Files

- `cv.yaml`, `cv_with_postdoc.yaml` — RenderCV sources.
- `make_with_postdoc.py` — generates the variant from `cv.yaml`.
- `output/*_EngineeringResumes.pdf` — primary renders (both variants, 10pt, one page).
- `output/*_EngineeringClassic.pdf` — same content in the alternative theme.
- `cover_letter.md` — cover letter (plain Markdown, not rendered via RenderCV).

## Re-rendering

```bash
cd applications/dhl-grow-it-trainee
python3 make_with_postdoc.py   # after any edit to cv.yaml

# engineeringresumes — both variants use their own design blocks, no overrides needed
uv run --frozen --all-extras rendercv render cv.yaml \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringResumes.typ
uv run --frozen --all-extras rendercv render cv_with_postdoc.yaml \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_withPostdoc_EngineeringResumes.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_withPostdoc_EngineeringResumes.typ

# engineeringclassic — needs overrides; add --design.typography.font_size.body 9.5pt
# for the with-postdoc variant, which will not fit one page at 10pt in this theme.
uv run --frozen --all-extras rendercv render cv.yaml \
  --design.theme engineeringclassic \
  --design.page.top_margin 0.35in --design.page.bottom_margin 0.35in \
  --design.page.left_margin 0.5in --design.page.right_margin 0.5in \
  --design.page.show_footer false \
  --design.typography.font_size.name 22pt \
  --design.header.space_below_name 0.3cm \
  --design.header.space_below_headline 0.3cm \
  --design.header.space_below_connections 0.3cm \
  --design.section_titles.space_above 0.25cm \
  --design.section_titles.space_below 0.15cm \
  --design.sections.space_between_regular_entries 0.6em \
  --pdf-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.pdf \
  --typst-path output/Elhanan_Buchsbaum_CV_DHL_GROW_EngineeringClassic.typ
```

Requires the repo's Typst FontAwesome submodule: `git submodule update --init --depth 1`.

## Tailoring decisions

Aimed at the fact that an HR screener reads this as an IT application, not a research one:

- **Bullets inverted** so the system is the subject and the biology is trailing context
  ("real-time distributed measurement system … applied to freely flying insects"), instead
  of leading with domain jargon.
- **Functional job-title descriptors** — "Doctoral Researcher — Research Software & Systems
  Engineering", "MSc Researcher — Scientific Software & Data Analysis".
- **JD vocabulary used where it is genuinely earned**: "technology evaluation" for the
  Python-vs-Rust decision, "full lifecycle … requirements, build, validation, documentation,
  handover and support", "interface between non-technical users and the implementation".
- **Headline** broadened from "AI-Assisted Development" to "AI & Automation", covering both
  the LLM tooling and the computer-vision/ML work.
- **Microsoft 365 / structured analyses** promoted into the Working methods line. Phrased as
  "structured written analyses and recommendations" rather than the JD's "decision
  templates", which would overclaim — no management decision templates were produced.
- **Accuracy fix**: "Nine years in Python and Rust" → "Nine years building research software
  in Python, with Rust for real-time components". Rust is not nine years.
- **Education** carries a "computational" qualifier on the PhD so the degree reads clearly
  against the JD's "natural sciences / comparable" allowance.
- **Adoption evidence** added: the doctoral system "remains in daily use as one of the lab's
  standard tools".
- **Not claimed**: cloud platforms, Agile/Scrum, IT security, external-partner management —
  no supporting evidence, despite the JD naming them.

Earlier compression decisions (still in force): Publications collapsed into inline mentions
with ORCID in the header for the full record; Teaching Assistant folded into the MSc entry;
OptoFly folded into a doctoral bullet; Languages folded into Skills.

## Note on the two variants

Without the postdoc entry there is a visible gap between the doctoral work ending in 2025 and
this CV's date. The with-postdoc variant partially fills it and also supplies the strongest
evidence for the JD's central framing of AI as "a concrete lever for better processes, higher
quality and more efficient operations" — a computer-vision model replacing a manual process.
The cost is that it surfaces a short contract whose classification model only reached
notebook stage, which the entry states plainly.
