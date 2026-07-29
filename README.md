# What a Zero Readout Certifies

**A machine-checked characterization of the zero fibre of a finite retained-difference operator.**

[![formal verification](https://github.com/morrocwi/zero-readout-certifies/actions/workflows/verify.yml/badge.svg?branch=main)](https://github.com/morrocwi/zero-readout-certifies/actions/workflows/verify.yml)
[![Rocq 9.2 compatible](https://img.shields.io/badge/Rocq-9.2%20verified-5A3E85)](https://github.com/morrocwi/zero-readout-certifies/actions/workflows/322807319)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.21665100-blue)](https://doi.org/10.5281/zenodo.21665100)
[![Coq](https://img.shields.io/badge/Coq-8.20%20compatible-6D4AFF)](https://coq.inria.fr/)
[![code license](https://img.shields.io/badge/code-MIT-green)](LICENSE)
[![text license](https://img.shields.io/badge/text-CC%20BY%204.0-green)](LICENSE-TEXT.md)

## Result

For a finite weighted comparison graph `g` and a rational-valued field `Phi`, define

```text
I_g(Phi) = sum_(i,j,w in g) w (Phi_i - Phi_j)^2.
```

When every edge weight is strictly positive,

```text
I_g(Phi) = 0
  iff Phi_i = Phi_j on every edge
  iff Phi is constant on every connected component.
```

The result is proved over the rationals. The audited theorems compile under Coq 8.20 and Rocq 9.2, and `Print Assumptions` reports `Closed under the global context` for each audited result.

## Status and claim boundary

This repository makes a deliberately narrow contribution:

- **Standard mathematics:** the kernel characterization is familiar from Dirichlet energy and graph Laplacians.
- **Formal contribution:** the exact hypotheses, both directions, subspace closure, equivalence relation, and boundary examples are machine checked over `Q`.
- **Interpretive contribution:** for this declared comparison operator, a zero readout classifies states that the operator does not distinguish.
- **Not claimed:** a new arithmetic definition of zero, absolute indistinguishability, or novelty over spectral graph theory.

The precise mapping from prose claims to formal results is in [`docs/CLAIM_MATRIX.md`](docs/CLAIM_MATRIX.md). Limitations and falsifiers are in [`docs/SCOPE.md`](docs/SCOPE.md).

## Verify in under a minute

### Native installation

With Coq 8.20 or Rocq 9.2 available:

```bash
git clone https://github.com/morrocwi/zero-readout-certifies.git
cd zero-readout-certifies
make verify
```

### Docker

```bash
docker build -t zero-readout-certifies .
docker run --rm zero-readout-certifies
```

The verification gate checks all of the following:

1. every `.v` file compiles;
2. no `Axiom`, `Parameter`, `Conjecture`, or `Admitted` declaration appears in the formal sources;
3. the number of `Closed under the global context` reports equals the number of audited theorems;
4. no audited theorem prints an `Axioms:` block.

See [`REPRODUCE.md`](REPRODUCE.md) for exact commands and the limits of what compilation establishes.

## Repository map

| Path | Purpose |
|---|---|
| [`coq/IDM_KeystoneKernel.v`](coq/IDM_KeystoneKernel.v) | Core definitions and 17 named mathematical results |
| [`coq/Examples.v`](coq/Examples.v) | Executable witnesses for the nonzero-constant, zero-weight, and disconnected cases |
| [`coq/CheckAssumptions.v`](coq/CheckAssumptions.v) | Audited theorem list |
| [`docs/THEOREMS.md`](docs/THEOREMS.md) | Result index and dependency roles |
| [`docs/CLAIM_MATRIX.md`](docs/CLAIM_MATRIX.md) | Informal claim to theorem correspondence |
| [`docs/ARTIFACT_EVALUATION.md`](docs/ARTIFACT_EVALUATION.md) | Reviewer-oriented evaluation protocol |
| [`paper/main.tex`](paper/main.tex) | Full paper source |
| [`paper/onepager.tex`](paper/onepager.tex) | One-page technical summary source |
| [`CITATION.cff`](CITATION.cff) | Machine-readable citation metadata |

PDFs are built in CI and attached to tagged GitHub releases; generated PDFs are not treated as source files.

## Reproduce the paper

```bash
make paper
```

This builds `paper/main.pdf` and `paper/onepager.pdf` with hard failure on any LaTeX error. The CI checks that the main paper and one-page summary have the expected page counts.

## Citation

Use GitHub's **Cite this repository** control or cite the archived record:

```bibtex
@software{lahtee_zero_readout_2026,
  author    = {Yaoharee Lahtee},
  title     = {What a Zero Readout Certifies: Zero as the Failure Locus of Retained Distinction},
  year      = {2026},
  version   = {1.0.0},
  publisher = {Zenodo},
  doi       = {10.5281/zenodo.21665100},
  url       = {https://github.com/morrocwi/zero-readout-certifies}
}
```

## Contributing and review

Mathematical counterexamples, mismatches between prose and formalization, prior-art corrections, and reproducibility failures are especially welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md), [`SECURITY.md`](SECURITY.md), and [`SUPPORT.md`](SUPPORT.md).

## Licensing

- Formal code, scripts, workflows, and build files: [MIT](LICENSE)
- Paper, documentation, and README: [CC BY 4.0](LICENSE-TEXT.md)
- File-by-file policy: [`LICENSES.md`](LICENSES.md)

## AI assistance disclosure

Generative AI assisted with editorial drafting, repository scaffolding, and review suggestions. AI output is not treated as mathematical evidence. Formal claims are accepted only when they match the stated prose and pass the machine-checkable verification gates described above.
