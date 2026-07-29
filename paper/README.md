# Paper sources and readable copies

`main.tex` is the canonical build entry point for the full paper. It includes three review-sized source units in order:

1. `main.tex.part00` — front matter, setting, and kernel development;
2. `main.tex.part01` — zero fibre, relativity, refusal, and positioning;
3. `main.tex.part02` — related work, the two-level reader section, claim boundary, conclusion, and references.

`reader-two-levels.tex` is included from the third unit. It isolates the final clarification about accumulator state, unresolved verdicts, within-reading accumulation, pipeline sequencing, and contract-dependent finalisation.

Build both documents from the repository root:

```bash
make paper
```

The build runs the main paper twice with `-halt-on-error` and checks that `onepager.pdf` remains exactly one page when `pdfinfo` is installed.

The LaTeX files are canonical. `main.pdf` and `onepager.pdf` are tracked convenience copies for immediate reading and are refreshed automatically only after the complete verification workflow succeeds on `main`. Tagged releases also publish both PDFs with checksums.
