# Contributing

Contributions are welcome when they improve correctness, reproducibility, attribution, or clarity.

## High-value contributions

- a counterexample under the stated hypotheses;
- a mismatch between an informal claim and its Rocq/Coq statement;
- a missing or mischaracterized prior result;
- a build failure on a documented platform;
- a smaller proof, stronger theorem, or weaker sufficient hypothesis;
- a correction to citation or licensing metadata.

## Development workflow

1. Fork the repository and create a focused branch.
2. Run `make verify`.
3. Run `make paper` when changing LaTeX.
4. Run `make audit`.
5. Open a pull request using the repository template.

A pull request should state which claim or artifact it changes and how the change was checked. Mathematical changes should identify the affected theorem names. Editorial changes that alter meaning must update `docs/CLAIM_MATRIX.md`.

## Proof policy

Global `Axiom`, `Parameter`, `Conjecture`, and `Admitted` declarations are not accepted in the certified development. A proposed extension that needs additional assumptions must isolate them in a clearly named experimental file and may not weaken the main verification badge.

## Attribution

Contributors retain copyright in their contributions and agree that merged code is distributed under MIT and merged text under CC BY 4.0, according to `LICENSES.md`.
