# Artifact evaluation guide

This guide is written for a reviewer who has not previously used the repository.

## Expected time

- Formal verification with a local prover: under one minute after installation.
- Docker verification: image download dominates the first run.
- Paper build: usually under one minute after TeX dependencies are installed.

## Evaluation sequence

### 1. Inspect the claim boundary

Read `README.md`, `docs/CLAIM_MATRIX.md`, and `docs/SCOPE.md`. Confirm that standard graph-Laplacian mathematics is not presented as a new theorem.

### 2. Verify the formal development

```bash
make verify
```

Pass conditions:

- all formal files compile;
- every audited `Print Assumptions` command reports `Closed under the global context`;
- no audited result prints an `Axioms:` section;
- no forbidden global assumption or admitted proof appears in `coq/*.v`.

### 3. Compare prose with code

Check the following correspondences directly:

| Paper object | Formal object |
|---|---|
| weighted edge `(i,j,w)` | `edge` |
| rational field `Phi` | `Phi` |
| edge contribution | `I_edge` |
| total retained information | `I_form` |
| graph reachability | `reach` |
| zero-locus equivalence | `indist` |

The definitions are deliberately explicit rather than abstracted behind a library API, so this comparison remains short.

### 4. Test the boundary examples

Read `coq/Examples.v`. The examples certify three important limits:

- a constant field may be nowhere zero while the readout is zero;
- a zero-weight edge may hide a difference;
- disconnected components may carry different values while the readout remains zero.

### 5. Build the paper

```bash
make paper
```

Confirm that `paper/onepager.pdf` has exactly one page and visually inspect both PDFs.

### 6. Audit repository metadata

```bash
make audit
```

CI additionally validates `CITATION.cff` with `cffconvert` and parses the JSON metadata files.

## What a passing evaluation does not show

A passing build does not establish novelty, philosophical truth, completeness of the literature review, or identity between the formalization and every possible reading of the prose. It establishes that the checked formal statements follow in the prover and that the repository's declared artifact contract is internally consistent.
