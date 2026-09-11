#set page(paper: "a4", margin: (x: 2.2cm, y: 2.0cm))
#set text(font: ("XCharter", "New Computer Modern", "Libertinus Serif"), size: 10.5pt, lang: "en")
#set par(justify: true, leading: 0.62em, spacing: 1.15em)
#show link: set text(fill: rgb("#1a4f8a"))

#text(size: 17pt, weight: "bold")[Elhanan Buchsbaum, PhD]

#v(-0.4em)
#text(size: 9.5pt, fill: rgb("#444444"))[
  Bonn, Germany #h(0.4em) | #h(0.4em) ebuchsbaum\@protonmail.com #h(0.4em) | #h(0.4em) +49 151 4626 9424
  #h(0.4em) | #h(0.4em) #link("https://github.com/elhananby")[github.com/elhananby]
]

#v(1.2em)

11 September 2026

#v(0.6em)

Prof. Alexandre Persat \
Microbial Mechanics Laboratory \
Global Health Institute, EPFL School of Life Sciences \
Lausanne, Switzerland

#v(0.8em)

*Re: Postdoctoral Position — Image-Based Drug Screening Against Bacterial Pathogens (ref. 2441)*

#v(0.8em)

Dear Prof. Persat,

I build imaging systems end to end — the optics and acquisition hardware, the software that runs
them, and the analysis pipelines that turn the resulting images into numbers other people can
act on. Your posting describes building a phenotypic screening platform from the ground up, with
ownership over the pipeline design. That is the work I most want to do, and it is close to what I
was doing most recently.

In my postdoc at the Max Planck Institute for Neurobiology of Behavior, I was asked to replace a
manual, slow, and subjective scoring step: a researcher counting live versus dead nematodes on
6 cm plates by eye. I built the imaging setup — camera acquisition, lighting control, and a custom
mechanical mount — and wrote the software around it: live and offline capture scripts, an
OpenCV/FFmpeg processing pipeline, blob extraction, and a YOLO detection and classification model
operating on 5064 × 5064 images. Hardware, acquisition, and detection ran end to end; the
classification model reached notebook-stage validation rather than a finished, benchmarked
classifier, because the contract was three months. I mention the limit deliberately — what I can
demonstrate is that I take a manual assay to a working automated imaging pipeline quickly, not
that I have shipped a validated screen.

The deeper evidence is my doctoral work, where I designed and built a closed-loop measurement
platform end to end: multi-camera high-speed imaging, real-time 3D tracking at 100 Hz,
microcontroller triggering and optogenetic control, synchronised at 10 ms closed-loop latency. Two
aspects of that project seem relevant to a screening platform. First, I treat measurement quality
as something to be specified and then proven — I set an accuracy target for the multi-camera 3D
stack up front and validated the calibration quantitatively at 0.5 px reprojection error, rather
than assuming it worked. Second, I built for other people: I documented the rig and shipped
self-service analysis tools so lab members without programming backgrounds could run standardised
experiments unsupervised. The platform is still in daily use as one of the group's standard tools.
A screening platform that only its author can operate is not a platform, and that is the failure
mode I have already learned to design against.

On scale and reproducibility: my analysis pipelines processed hundreds of recordings of roughly
10 GB each in HDF5/Parquet, parallelised locally and run as Slurm batch jobs, with markerless pose
estimation and downstream clustering to classify behaviour. I write Python for everything except
timing-critical code, where I taught myself Rust because a Python implementation could not meet the
platform's latency requirements. I also use LLM-assisted development daily — Claude Code and
MCP-based tool integrations — directed and reviewed rather than accepted one-shot, which is how I
would approach the AI-supported image analysis the position describes.

I should be equally clear about what I do not bring. I have not worked with bacterial pathogens,
and I have no experience in chemical biology or target deconvolution; the mechanism-of-action side
of the project would be genuinely new to me, and I would be relying on the lab's expertise there.
What I am not is new to the bench or to large-scale biological data: I have done
immunohistochemistry, including nanobody-based staining, with fluorescence microscopy and Fiji
quantification across several hundred animals, alongside microsurgery and standard molecular work
(DNA/RNA extraction, qPCR, cell culture). My earlier research was genome-wide differential
methylation analysis in R/Bioconductor with FDR-corrected workflows and pathway enrichment, so
screen-scale statistics and multiple-testing discipline are familiar ground.

What attracts me specifically to your lab is that it approaches bacteria quantitatively and
physically rather than only genetically, which suggests the imaging and engineering side would be
treated as real intellectual work rather than a service function. The chance to build the platform
rather than inherit one, and to have it feed into the NCCR AntiResist network and the lab's
tissue-engineered infection models, is exactly the position I am looking for. I am a German
citizen, available immediately, and happy to relocate to Lausanne.

I would welcome the chance to discuss the project with you.

#v(1.0em)

Yours sincerely, \
Elhanan Buchsbaum
