# Project closure record

## Scope status

The research artifact is considered **scope-complete** when the closure pull request passes the repository's full verification gate and is merged to `main`.

The frozen scope consists of:

1. the finite rational retained-difference operator;
2. the positive-weight kernel characterisation in edge and component form;
3. the zero-locus subspace and induced indistinguishability relation;
4. executable witnesses for the nonzero-constant, zero-weight, and disconnected boundaries;
5. the distinction between arithmetic zero, its zero fibre, an unresolved verdict, and an accumulator's initial process state;
6. the two compositional levels: accumulation within one reading and sequencing across reading stages;
7. the explicit fact that the empty-input verdict is determined by a reading contract, not by accumulation alone;
8. the final diagnosis that practical contamination arises from an untagged representation that reuses one value for distinct states, not from arithmetic zero itself.

## Final claims

The project closes on the following bounded claim:

> For the declared finite rational operator with strictly positive weights, a legitimate zero readout certifies exactly that no difference is retained along the declared comparison structure; equivalently, the field is constant on each connected component.

The associated design conclusion is:

> A successful zero, unresolved failure, and uninitialised process state must not share one untagged representation. The repair is type separation, not removal of arithmetic zero.

The project does **not** claim:

- a new arithmetic definition of zero;
- that zero is unavoidable in every accumulation architecture;
- that zero itself causes representation contamination;
- that an initial accumulator, unresolved failure, and resolved zero are one state;
- absolute faithfulness beyond the declared graph;
- graph-theoretic novelty for the kernel theorem;
- machine-checked proof of philosophical novelty.

## Maintenance policy

After closure, changes are limited to:

- correction of mathematical or formal errors;
- reproducibility and compatibility fixes;
- prior-art corrections and citation improvements;
- editorial clarifications that do not expand the formal claim;
- security or dependency maintenance.

New philosophical systems, new operators, or broader claims should be developed in a separate repository or a clearly versioned successor project.

## External question left open

`N1` in `docs/CLAIM_MATRIX.md` remains a scholarly question: whether placing the standard kernel result as a faithfulness condition for a retained-difference account is novel. No prover can settle that question. It requires external literature review and independent scholarly assessment.

## Reproducibility closure criteria

Closure requires all of the following on the same commit:

- Coq 8.20 compilation and assumption audit;
- Rocq 9.2 compilation and assumption audit;
- no forbidden global assumptions or admitted proofs;
- successful full-paper and one-page builds;
- metadata validation;
- repository structure audit;
- refreshed readable PDFs built from the verified source commit.
