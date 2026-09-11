// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Elhanan Buchsbaum",
  title: "Elhanan Buchsbaum - CV",
  footer: context { [#emph[Elhanan Buchsbaum -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.55in,
  page-right-margin: 0.55in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.35cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.12cm,
  sections-space-between-regular-entries: 0.28cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 11,
  ),
)


= Elhanan Buchsbaum

  #headline([Quantitative Imaging · Image Analysis & Computer Vision · Research Instrumentation])

#connections(
  [Bonn, Germany],
  [#link("mailto:ebuchsbaum@protonmail.com", icon: false, if-underline: false, if-color: false)[ebuchsbaum\@protonmail.com]],
  [#link("tel:+49-1514-6269424", icon: false, if-underline: false, if-color: false)[+49 1514 6269424]],
  [#link("https://github.com/elhananby", icon: false, if-underline: false, if-color: false)[github.com\/elhananby]],
  [#link("https://orcid.org/0000-0003-3698-6345", icon: false, if-underline: false, if-color: false)[orcid.org\/0000-0003-3698-6345]],
  [#link("https://linkedin.com/in/elhanan-buchsbaum-2461a7429", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/elhanan-buchsbaum-2461a7429]],
  [German \/ EU citizen],
)


== Research Profile

Experimental scientist (PhD) who builds imaging systems end to end — hardware and acquisition through to the analysis pipelines that turn images into numbers. Most recently built an automated imaging setup and an OpenCV\/FFmpeg pipeline with a YOLO detection model to replace manual live\/dead scoring of nematodes on 6 cm plates. Earlier, designed and quantitatively validated a six-camera 3D measurement platform (0.5 px reprojection error) with a real-time acquisition layer in Rust, and reproducible analysis pipelines over hundreds of multi-gigabyte recordings on HPC. Comfortable at the bench as well as at the keyboard — immunohistochemistry, fluorescence microscopy and Fiji quantification, plus earlier genome-wide methylation analysis in R\/Bioconductor. Two first-author Current Biology papers.

== Experience

#regular-entry(
  [
    #strong[Postdoctoral Researcher], Max Planck Institute for Neurobiology of Behavior (caesar) -- Bonn, Germany

  ],
  [
    2025 – 2026

  ],
  main-column-second-row: [
    - Built an automated imaging setup for live\/dead scoring of nematodes (Lightfoot lab) — camera acquisition, lighting control and a custom mechanical mount — to replace slow manual assessment of 6 cm plates.

    - Wrote the acquisition and analysis software — live and offline capture scripts, an OpenCV\/FFmpeg processing pipeline, blob extraction, and a YOLO detection and classification model on 5064 × 5064 images. Hardware, acquisition and detection ran end to end within a three-month contract; the classification model reached notebook-stage validation.

    - Extended the free-flight imaging platform (Schnell lab) for a forthcoming publication — added optogenetic silencing, improved high-speed acquisition throughput, characterised additional genotypes.

  ],
)

#regular-entry(
  [
    #strong[Doctoral Researcher], MPI for Neurobiology of Behavior (caesar) \/ University of Bonn -- Bonn, Germany

  ],
  [
    2019 – 2025

  ],
  main-column-second-row: [
    - Designed and built a closed-loop measurement platform end to end — multi-camera high-speed imaging, real-time 3D tracking at 100 Hz, optogenetic light control, visual displays and microcontroller triggering, synchronised at 10 ms closed-loop latency.

    - Built and validated the multi-camera 3D measurement stack — intrinsic and extrinsic calibration across six cameras at 100 fps, triangulation, and calibration validated quantitatively at 0.5 px reprojection error against a defined accuracy target.

    - Wrote the timing-critical acquisition and triggering layer in Rust after a Python implementation could not meet latency requirements; Python for all surrounding tooling and analysis.

    - Developed reproducible Python pipelines processing hundreds of recordings of \~10 GB each in HDF5\/Parquet, parallelised locally and run as Slurm batch jobs.

    - Applied markerless pose estimation (DeepLabCut, SLEAP) to high-speed, high-resolution video, then segmented and classified trajectories using clustering and mixture models.

    - Verified GAL4 driver-line expression and confirmed the identity of individual neurons by immunohistochemistry on dissected brains — primary\/secondary and nanobody-based antibody staining, fluorescence microscopy, and quantification in ImageJ\/Fiji across several hundred animals.

    - Documented the rig and shipped self-service analysis tools so lab members without programming backgrounds could run standardised experiments and analyses unsupervised; trained and supported them, and supervised one MSc student.

    - #strong[Result:] first-author paper in Current Biology (2025) identifying a descending neuron that drives visually evoked flight saccades. The platform remains in daily use as one of the group's standard experimental tools.

  ],
)

#regular-entry(
  [
    #strong[Research Rotations], caesar -- Bonn, Germany

  ],
  [
    2018 – 2019

  ],
  main-column-second-row: [
    - Two-photon calcium imaging in behaving Drosophila (Seelig lab); analysis of two- and three-photon imaging data in rodents (Kerr lab).

  ],
)

#regular-entry(
  [
    #strong[MSc Researcher], Technion – Israel Institute of Technology, Faculty of Medicine -- Haifa, Israel

  ],
  [
    2016 – 2018

  ],
  main-column-second-row: [
    - Built MATLAB signal-processing and analysis pipelines for in vivo tetrode electrophysiology — spike sorting, single-unit and spatial-tuning analysis, and statistics over large multi-dimensional time-series (\~2,100 sorted units across 23 animals).

    - Modernised and extended the lab's legacy analysis codebase, documented the procedures and trained incoming researchers; the tooling was adopted lab-wide.

    - Performed the experimental work hands-on — microsurgery, tetrode and microdrive construction, stereotactic implantation — adapting recording hardware designed for rodents to an avian species. Co-first-author paper in Current Biology (2021).

  ],
)

#regular-entry(
  [
    #strong[Research Assistant — Bioinformatics and Behavioural Neuroscience], University of Haifa -- Haifa, Israel

  ],
  [
    2014 – 2016

  ],
  main-column-second-row: [
    - Genome-wide differential methylation analysis in R\/Bioconductor — FDR-corrected workflows to identify differentially methylated regions and candidate genes, pathway enrichment (Ingenuity Pathway Analysis) and qPCR validation. Wet-lab molecular work — DNA\/RNA extraction, qPCR, cell culture, gene-expression analysis.

    - Histological characterisation of a rat model of PTSD (Richter-Levin lab) — cryosectioning, immunohistochemical staining, microscopy and manual quantification of labelled cells. Co-authored paper in Molecular and Cellular Neuroscience (2021).

  ],
)

== Selected Projects

#regular-entry(
  [
    #strong[#link("https://github.com/mpinb/optofly")[OptoFly] — closed-loop tracking and optogenetic stimulation platform] -- #strong[public, GPL-3.0]

  ],
  [
    2020 – 2026

  ],
  main-column-second-row: [
    - Integrates multi-camera 3D tracking with triggered recording, optogenetic stimulation, dynamic autofocus and configurable visual stimuli; Rust acquisition layer with Python bindings. 485 commits, documented via a live docs site.

  ],
)

== Technical Skills

#strong[Imaging & microscopy:] High-resolution plate and live imaging, multi-camera acquisition, intrinsic\/extrinsic camera calibration and validation, machine-vision cameras (Basler\/Pylon), lens selection, LED\/IR illumination, two-photon calcium imaging, fluorescence microscopy, ImageJ\/Fiji

#strong[Image analysis & ML:] OpenCV, scikit-image, FFmpeg, object detection (YOLO), markerless pose tracking (DeepLabCut, SLEAP), scikit-learn, clustering and mixture models, statistical modelling

#strong[Programming:] Python (primary), Rust (real-time acquisition), MATLAB, R, Bash, Arduino\/C, Git\/GitHub

#strong[Data & infrastructure:] HDF5, Parquet, Linux, Docker, HPC (Slurm), reproducible parallel\/batch pipelines, large-scale image and video datasets

#strong[Instrumentation:] Closed-loop real-time control, hardware triggering and synchronisation, microcontrollers, custom rig design, experimental design with defined acceptance criteria

#strong[Wet lab & molecular:] Immunohistochemistry (primary\/secondary and nanobody staining), cryosectioning, microsurgery, DNA\/RNA extraction, qPCR, cell culture, R\/Bioconductor differential methylation and pathway enrichment

#strong[AI-assisted development:] LLM-assisted development (Claude Code), MCP-based tool integration, agentic coding harnesses, OpenAI-compatible APIs

== Education

#education-entry(
  [
    #strong[University of Bonn \/ MPI for Neurobiology of Behavior (caesar)], PhD in Neuroscience -- Bonn, Germany

  ],
  [
    2019 – 2025

  ],
  main-column-second-row: [
    - magna cum laude. IMPRS for Brain and Behavior.

    - Thesis: #emph[Neural Control of Flight Maneuvers in Freely Flying Drosophila melanogaster] (advisor: Dr. Bettina Schnell).

  ],
)

#education-entry(
  [
    #strong[Technion – Israel Institute of Technology], MSc in Neuroscience -- Haifa, Israel

  ],
  [
    2016 – 2018

  ],
  main-column-second-row: [
    - summa cum laude.

    - Thesis: #emph[Space Coding in the Japanese Quail Hippocampal Formation] (advisor: Prof. Yoram Gutfreund).

  ],
)

#education-entry(
  [
    #strong[University of Haifa], BSc in Biology and Psychology -- Haifa, Israel

  ],
  [
    2013 – 2016

  ],
  main-column-second-row: [
    - Bioinformatics research focus. Thesis: #emph[Epigenetic Modulation of Autism Occurrence in 15q11.2 Deletion Carriers] (advisor: Prof. Gil Atzmon).

  ],
)

== Publications

#regular-entry(
  [
    #strong[Activity of a descending neuron associated with visually elicited flight saccades in Drosophila]

  ],
  [
    2025

  ],
  main-column-second-row: [
    #strong[Elhanan Buchsbaum], Bettina Schnell

    #link("https://doi.org/10.1016/j.cub.2024.12.001")[10.1016\/j.cub.2024.12.001] (Current Biology 35(3), 665–671)

  ],
)

#regular-entry(
  [
    #strong[Directional tuning in the hippocampal formation of birds]

  ],
  [
    2021

  ],
  main-column-second-row: [
    #summary[Co-first author (with K. Krivoruchko).]

    #strong[Elhanan Ben-Yishay], K. Krivoruchko, S. Ron, N. Ulanovsky, D. Derdikman, Y. Gutfreund

    #link("https://doi.org/10.1016/j.cub.2021.04.029")[10.1016\/j.cub.2021.04.029] (Current Biology 31(12), 2592–2602)

  ],
)

#regular-entry(
  [
    #strong[Behavioral profiling reveals an enhancement of dentate gyrus paired pulse inhibition in a rat model of PTSD]

  ],
  [
    2021

  ],
  main-column-second-row: [
    #summary[Work published before 2022 appears under the former surname Ben-Yishay.]

    A. Albrecht, #strong[Elhanan Ben-Yishay], G. Richter-Levin

    #link("https://doi.org/10.1016/j.mcn.2021.103601")[10.1016\/j.mcn.2021.103601] (Molecular and Cellular Neuroscience 111, 103601)

  ],
)

== Fellowships & Training

- Max Planck Minerva Fellowship (2021); IMPRS Fellowship, doctoral selection (2019).

- Janelia Mechanistic Cognition Junior Scientist Workshop (2025); FENS-Hertie Winter School, Neural Control of Behavior (2017).

== Referees

- Dr. Bettina Schnell — Max Planck Institute for Neurobiology of Behavior (caesar), Bonn. Doctoral advisor. \[add email\]

- Dr. James Lightfoot — Max Planck Institute for Neurobiology of Behavior (caesar), Bonn. Host for the nematode imaging project. \[add email\]

- Prof. Yoram Gutfreund — Technion – Israel Institute of Technology, Haifa. MSc advisor. \[add email\]
