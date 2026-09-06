// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Elhanan Buchsbaum",
  title: "Elhanan Buchsbaum - CV - DHL GROW IT Trainee",
  footer: context { [#emph[Elhanan Buchsbaum -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.35in,
  page-bottom-margin: 0.35in,
  page-left-margin: 0.45in,
  page-right-margin: 0.45in,
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
  section-titles-space-above: 0.22cm,
  section-titles-space-below: 0.15cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.08cm,
  sections-space-between-regular-entries: 0.18cm,
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
    day: 6,
  ),
)


= Elhanan Buchsbaum

  #headline([Software & Data Systems · Technical Project Delivery · AI & Automation])

#connections(
  [Bonn, Germany],
  [#link("mailto:ebuchsbaum@protonmail.com", icon: false, if-underline: false, if-color: false)[ebuchsbaum\@protonmail.com]],
  [#link("tel:+49-1514-6269424", icon: false, if-underline: false, if-color: false)[+49 1514 6269424]],
  [#link("https://github.com/elhananby", icon: false, if-underline: false, if-color: false)[github.com\/elhananby]],
  [#link("https://linkedin.com/in/elhanan-buchsbaum-2461a7429", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/elhanan-buchsbaum-2461a7429]],
  [#link("https://orcid.org/0000-0003-3698-6345", icon: false, if-underline: false, if-color: false)[orcid.org\/0000-0003-3698-6345]],
  [EU work authorization],
)


== Summary

Computational scientist (PhD) who builds software and hardware systems end to end — defining requirements and acceptance criteria up front, implementing and validating the solution, then documenting and training non-technical users to run it independently. Nine years building research software in Python, with Rust for real-time components, across data pipelines, HPC infrastructure, computer vision and applied AI. Native English speaker; German B1–B2.

== Experience

#regular-entry(
  [
    #strong[Doctoral Researcher — Research Software & Systems Engineering], MPI for Neurobiology of Behavior \/ University of Bonn -- Bonn, Germany

  ],
  [
    2019 – 2025

  ],
  main-column-second-row: [
    - Designed and built a real-time distributed measurement system end to end — defined datasets, test setups and acceptance criteria, then implemented multi-camera acquisition, real-time 3D tracking and hardware triggering at 10 ms closed-loop latency (applied to freely flying insects).

    - Ran the technology evaluation for the timing-critical layer: benchmarked the Python implementation against the latency requirements, found it insufficient, and rewrote acquisition and triggering in Rust; kept Python for surrounding tooling and analysis.

    - Built reproducible data pipelines processing hundreds of recordings in HDF5\/Parquet, run in parallel locally and as Slurm batch jobs on HPC; open-sourced the system as OptoFly (github.com\/mpinb\/optofly, GPL-3.0).

    - Owned the full lifecycle — requirements, build, validation, documentation, handover and support — as the interface between non-technical users and the implementation; trained colleagues to run it unsupervised; supervised one MSc student.

    - #strong[Result:] first-author paper in Current Biology (2025); the system remains in daily use as one of the lab's standard tools.

  ],
)

#regular-entry(
  [
    #strong[MSc Researcher — Scientific Software & Data Analysis], Technion – Israel Institute of Technology -- Haifa, Israel

  ],
  [
    2016 – 2018

  ],
  main-column-second-row: [
    - Built MATLAB signal-processing and statistics pipelines for large datasets; modernised and documented the lab's legacy analysis codebase, which was then adopted lab-wide, and trained incoming researchers on it. Also taught Python, statistics and ML to non-programmer medical students (teaching assistant). Co-first-author paper in Current Biology (2021).

  ],
)

== Selected Projects

#regular-entry(
  [
    #strong[Automated visual inspection pipeline — MPI for Neurobiology of Behavior] -- #strong[Bonn, Germany]

  ],
  [
    2025 – 2026

  ],
  main-column-second-row: [
    - Built imaging hardware and an OpenCV\/FFmpeg + YOLO pipeline to replace a manual visual scoring process; hardware, acquisition and detection ran end to end within a three-month contract, classification validated at notebook stage.

  ],
)

== Skills

#strong[AI & automation:] Claude Code, MCP-based tool\/skill integration, agentic coding harnesses (opencode, pi), OpenAI-compatible APIs, OpenRouter; computer-vision models for automating manual processes

#strong[Software, data & infrastructure:] Python (primary), Rust, MATLAB, R, Bash, SQL, Git\/GitHub, NumPy\/pandas\/scikit-learn, HDF5\/Parquet, Linux, Docker, HPC (Slurm)

#strong[Computer vision & hardware:] OpenCV, FFmpeg, camera calibration, object detection (YOLO), closed-loop real-time instrumentation

#strong[Working methods & tools:] Requirements analysis and acceptance criteria; full software lifecycle from build to handover and support; iterative, incrementally validated development; structured written analyses and recommendations; Microsoft 365

#strong[Languages:] English (native), Hebrew (native), German (B1–B2, actively studying)

== Education

#education-entry(
  [
    #strong[University of Bonn \/ MPI for Neurobiology of Behavior], PhD in Neuroscience — computational (magna cum laude) -- Bonn, Germany

  ],
  [
    2019 – 2025

  ],
  main-column-second-row: [
  ],
)

#education-entry(
  [
    #strong[Technion – Israel Institute of Technology], MSc in Neuroscience (summa cum laude) -- Haifa, Israel

  ],
  [
    2016 – 2018

  ],
  main-column-second-row: [
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
  ],
)
