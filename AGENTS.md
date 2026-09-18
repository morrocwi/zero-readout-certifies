<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# AGENTS.md - zero-readout-certifies

## What this repository is

"What a Zero Readout Certifies" is a machine-checked characterization of the zero fibre of a finite
retained-difference operator. The result is proved over the rationals; the audited theorems compile
under Coq 8.20 and Rocq 9.2. The repository makes a deliberately narrow contribution: the kernel
characterization is standard mathematics, familiar from Dirichlet energy and graph Laplacians. Not
claimed: a new arithmetic definition of zero, that every accumulator must begin from zero, absolute
indistinguishability, or novelty over spectral graph theory. The formal and interpretive scope is
frozen; the one intentionally open question is `N1`, a scholarly prior-art question, not a
machine-checkable theorem.

## Read first

1. `README.md` - the result, "Status and claim boundary", project status, repository map.
2. `REPRODUCE.md` - exact commands and the limits of what compilation establishes.
3. `docs/CLAIM_MATRIX.md` - the mapping from prose claims to formal results.
4. `docs/SCOPE.md` - limitations and falsifiers.
5. `CITATION.cff` - machine-readable citation metadata.

## Rules

- Verify with `make verify` (Coq 8.20 or Rocq 9.2), or with the Docker commands in `README.md`.
- Global `Axiom`, `Parameter`, `Conjecture`, and `Admitted` declarations are not accepted in the
  certified development (`CONTRIBUTING.md`, "Proof policy").
- Workflow per `CONTRIBUTING.md`: run `make verify`, `make paper` when changing LaTeX, and
  `make audit`. Editorial changes that alter meaning must update `docs/CLAIM_MATRIX.md`.
- Future changes are limited to error corrections, reproducibility fixes, compatibility maintenance,
  and prior-art updates (`README.md`, "Project status"); the full maintenance policy is in
  `docs/PROJECT_CLOSURE.md`.
- Licence split per `LICENSES.md`: formal code, scripts, workflows and build files are MIT; paper,
  documentation and README are CC BY 4.0. An explicit SPDX identifier in a file controls.
- AI output is not treated as mathematical evidence (`README.md`, "AI assistance disclosure").

## Programme map

This repository is one node of the Human-AI Readout Programme. Which repository answers which kind of
question, what to read first and which gate applies is kept in one place, the routing hub:
<https://github.com/morrocwi/main.hub> (start at its `AGENTS.md`, then `ROUTES.md`).
The hub holds pointers and pinned links only. It is a readout of one moment: when the hub and this
repository disagree, this repository wins.
