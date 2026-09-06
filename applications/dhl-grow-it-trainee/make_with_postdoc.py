"""Generate the with-postdoc variant from cv.yaml (single source of truth for shared content)."""

PROJECT_BLOCK = """    selected_projects:
      - name: Automated visual inspection pipeline — MPI for Neurobiology of Behavior
        start_date: 2025
        end_date: 2026
        location: Bonn, Germany
        highlights:
          - Built imaging hardware and an OpenCV/FFmpeg + YOLO pipeline to replace a manual visual scoring
            process; hardware, acquisition and detection ran end to end within a three-month contract,
            classification validated at notebook stage.
"""


def main() -> None:
    src = open("cv.yaml", encoding="utf-8").read()
    assert "    skills:\n" in src
    out = src.replace("    skills:\n", PROJECT_BLOCK + "    skills:\n", 1)
    # This variant carries one extra section, so it needs slightly tighter layout
    # to stay on one page. Font size stays at the theme default (10pt) in both.
    out = out.replace("    top_margin: 0.4in", "    top_margin: 0.35in")
    out = out.replace("    left_margin: 0.5in", "    left_margin: 0.45in")
    out = out.replace("    right_margin: 0.5in", "    right_margin: 0.45in")
    out = out.replace("    bottom_margin: 0.4in", "    bottom_margin: 0.35in")
    out = out.replace("    space_above: 0.35cm", "    space_above: 0.22cm")
    out = out.replace("    space_below: 0.2cm", "    space_below: 0.15cm")
    out = out.replace(
        "    space_between_regular_entries: 0.26cm",
        "    space_between_regular_entries: 0.18cm",
    )
    out = out.replace(
        "    space_between_text_based_entries: 0.12cm",
        "    space_between_text_based_entries: 0.08cm",
    )
    open("cv_with_postdoc.yaml", "w", encoding="utf-8").write(out)


if __name__ == "__main__":
    main()
