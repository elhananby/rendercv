# EPFL — Postdoctoral Position, Image-Based Drug Screening Against Bacterial Pathogens

Persat lab (Microbial Mechanics Laboratory, Global Health Institute, EPFL School of Life
Sciences), Lausanne. Reference **2441**. Informal inquiries: `alexandre.persat@epfl.ch`.
Applications accepted **only through the EPFL careers portal**.

The posting asks for: cover letter (PDF, max 2 pages), CV with publication list, and contact
details for 3 referees.

## Files

- `cv.yaml` → `output/Buchsbaum_CV_EPFL_Persat.pdf` — research-facing CV, 3 pages, with full
  publication list and referees.
- `cover_letter.typ` → `output/Buchsbaum_CoverLetter_EPFL_Persat.pdf` — 2 pages, within the limit.

## Before submitting

1. **Fill in the three referee emails** in `cv.yaml` — they are currently `[add email]`
   placeholders and will render as such.
2. **Confirm Dr. Lightfoot as a referee** before listing him. He is on the CV specifically
   because the nematode imaging project is the strongest credential for this posting, so a
   reference from that host carries weight — but ask first.
3. **Resolve the descending-neuron method wording.** Your CV versions disagree: the master CV
   says "combined electrophysiology of an identified descending neuron", others say "two-photon
   calcium imaging of the neuron". This CV states only the result ("identifying a descending
   neuron that drives visually evoked flight saccades") and lists two-photon calcium imaging
   under skills, so nothing here is wrong — but fix the source CVs so two live versions do not
   describe the same experiment differently.

## Re-rendering

```bash
cd applications/epfl-persat-screening

uv run --frozen --all-extras rendercv render cv.yaml \
  --pdf-path output/Buchsbaum_CV_EPFL_Persat.pdf \
  --typst-path output/Buchsbaum_CV_EPFL_Persat.typ

uv run --frozen --all-extras python3 -c "
import typst
typst.compile('cover_letter.typ', output='output/Buchsbaum_CoverLetter_EPFL_Persat.pdf',
              font_paths=['../../.venv/lib/python3.12/site-packages/rendercv_fonts'])
"
```

Requires the Typst FontAwesome submodule: `git submodule update --init --depth 1`.

## Positioning

Deliberately different from the DHL/industry CVs in this repo. That version sells software and
project delivery; this one sells **instrument building and quantitative imaging**, because the
posting is a platform-build role.

What leads:

- **The nematode imaging project is first and most detailed.** Same problem shape as the
  posting — automated image-based scoring of a small organism, hardware through to a YOLO
  detection/classification model. It is the single best-matched thing on the CV, which is why
  the postdoc entry is fully restored here rather than folded away.
- **Measurement rigour.** The 0.5 px reprojection error against a pre-set accuracy target is
  framed as evidence of specifying and proving measurement quality, not as a trivia number.
- **Built for other users.** Documentation, self-service tooling, and the platform still being
  in daily use — the argument being that a screening platform only its author can run is not a
  platform.
- **Wet-lab and omics-scale credibility restored** — immunohistochemistry with nanobody
  staining, fluorescence microscopy and Fiji quantification, cell culture and qPCR, plus
  R/Bioconductor genome-wide methylation with FDR correction. Cut from the industry CVs, load-
  bearing here, because it counters the "pure computationalist" read.
- **Research rotations added back** (two-photon calcium imaging, Seelig and Kerr labs) as
  further quantitative microscopy evidence.

Honesty constraints held: the cover letter states plainly that bacterial pathogens, chemical
biology and target deconvolution are new, and that the nematode classifier reached notebook-stage
validation rather than a finished benchmarked classifier, within a three-month contract. No
claim of screening, organoid or microbiology experience anywhere.

## Also worth doing

Email Persat informally before applying — ask about the funding horizon behind the
1-year-renewable contract and where it sits in the NCCR AntiResist cycle, and whether an
imaging/instrumentation background rather than a microbiology one is in scope. His lab is
quantitative and biophysics-leaning, so the engineering is more likely to be valued there than
in a classical microbiology group.
