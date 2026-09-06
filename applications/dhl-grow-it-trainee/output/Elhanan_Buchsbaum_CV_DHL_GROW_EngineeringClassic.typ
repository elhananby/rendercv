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
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.5em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Raleway",
  typography-font-family-name: "Raleway",
  typography-font-family-headline: "Raleway",
  typography-font-family-connections: "Raleway",
  typography-font-family-section-titles: "Raleway",
  typography-font-size-body: 9.5pt,
  typography-font-size-name: 20pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: left,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.3cm,
  header-space-below-headline: 0.3cm,
  header-space-below-connections: 0.3cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.2cm,
  section-titles-space-below: 0.12cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.1cm,
  sections-space-between-regular-entries: 0.2cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.12cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.05cm,
  entries-highlights-space-between-items: 0.05cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 6,
  ),
)


= Elhanan Buchsbaum

  #headline([Software & Data Systems · Technical Project Delivery · AI-Assisted Development])

#connections(
  [#connection-with-icon("location-dot")[Bonn, Germany]],
  [#link("mailto:ebuchsbaum@protonmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[ebuchsbaum\@protonmail.com]]],
  [#link("tel:+49-1514-6269424", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[+49 1514 6269424]]],
  [#link("https://github.com/elhananby", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[elhananby]]],
  [#link("https://linkedin.com/in/elhanan-buchsbaum-2461a7429", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[elhanan-buchsbaum-2461a7429]]],
  [#link("https://orcid.org/0000-0003-3698-6345", icon: false, if-underline: false, if-color: false)[#connection-with-icon("orcid")[0000-0003-3698-6345]]],
  [#connection-with-icon("globe")[EU work authorization]],
)


== Summary

Computational scientist (PhD) who builds software and hardware systems end to end — defining requirements and acceptance criteria up front, implementing and validating the solution, then documenting and training others to run it independently. Nine years in Python and Rust across data pipelines, HPC infrastructure, computer vision, and AI-assisted development (Claude Code, MCP-based tool integrations). Modernised legacy tooling that was then adopted team-wide. Two first-author Current Biology papers. Native English speaker; German B1–B2.

== Experience

#regular-entry(
  [
    #strong[Postdoctoral Researcher], Max Planck Institute for Neurobiology of Behavior (caesar) -- Bonn, Germany

  ],
  [
    Jan 2025 – Jan 2026

  ],
  main-column-second-row: [
    - Built imaging hardware (camera acquisition, lighting control, custom mechanical mount) and a Python\/OpenCV\/FFmpeg pipeline with a YOLO model to automate live\/dead nematode scoring, replacing slow manual assessment — prototyped end to end within a short three-month contract; the classification model reached notebook-stage validation.

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
    - Designed and built a closed-loop measurement platform for freely flying Drosophila end to end; defined datasets, test setups, and acceptance criteria up front, then implemented multi-camera imaging, real-time 3D tracking, optogenetic control, and microcontroller triggering at 10 ms closed-loop latency.

    - Evaluated Python against the platform's timing requirements, found it insufficient, and rewrote the acquisition\/triggering layer in Rust; validated the multi-camera 3D calibration stack quantitatively (0.5 px reprojection error, 6 cameras at 100 fps).

    - Built reproducible Python pipelines processing hundreds of recordings (\~10 GB each) in HDF5\/Parquet, run in parallel locally and as Slurm batch jobs; open-sourced the platform as OptoFly (github.com\/mpinb\/optofly, GPL-3.0, 485 commits, live docs site).

    - Documented the system and shipped self-service tools so lab members without programming backgrounds could run analyses independently; trained and supported them; supervised one MSc student.

    - #strong[Result:] first-author paper in Current Biology (2025) on a descending neuron driving visually evoked flight saccades.

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
    - Built MATLAB signal-processing pipelines for in vivo electrophysiology and statistics over large multi-dimensional datasets (\~2,100 sorted units, 23 animals); modernised the lab's legacy analysis codebase, documented procedures, and trained incoming researchers — adopted lab-wide.

    - Co-first-author paper in Current Biology (2021) on head-direction coding in the avian hippocampal formation. Also taught Python, statistics, and ML fundamentals to medical students with no programming background (TA, Machine Learning in Medical Sciences).

  ],
)

== Skills

#strong[AI & automation:] Claude Code, MCP-based tool\/skill integration, agentic coding harnesses (opencode, pi), OpenAI-compatible APIs, OpenRouter

#strong[Software, data & infrastructure:] Python (primary), Rust, MATLAB, R, Bash, SQL, Git\/GitHub, NumPy\/pandas\/scikit-learn, HDF5\/Parquet, Linux, Docker, HPC (Slurm)

#strong[Computer vision & hardware:] OpenCV, FFmpeg, camera calibration, object detection (YOLO), markerless pose tracking (DeepLabCut, SLEAP), closed-loop real-time instrumentation

#strong[Working methods:] Translating requirements into acceptance criteria; iterative, incrementally validated development; technical documentation for non-technical audiences; training and onboarding

#strong[Languages:] English (native), Hebrew (native), German (B1–B2, actively studying)

#strong[Productivity tools:] Microsoft Office (Word, PowerPoint)

== Education

#education-entry(
  [
    #strong[University of Bonn \/ MPI for Neurobiology of Behavior (caesar)], PhD in Neuroscience (magna cum laude) -- Bonn, Germany

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
