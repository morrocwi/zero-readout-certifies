# Scope, hypotheses, and what would falsify the claim

This document states the boundaries separately so they can be reviewed before the interpretive argument.

## The hypotheses do work

**Strict positivity of the weights is necessary, not cosmetic.** An edge of weight zero contributes nothing to `I_g` regardless of the field, so a single such edge lets a difference sit inside the zero locus undetected. The theorem is false without the hypothesis, and the proof shows exactly where: the step `w * d^2 = 0 -> d^2 = 0` requires `w != 0`. `coq/Examples.v` contains a machine-checked witness.

**Connectedness is nowhere assumed.** The conclusion is correspondingly local to components. On a disconnected graph the zero locus genuinely contains globally nonconstant fields. This is not a gap in the theorem; it exposes the reach of the declared comparison structure. The artifact includes a witness.

**Nonnegativity suffices for termwise vanishing.** `I_form_zero_forall` assumes only `w >= 0`, weaker than the main theorems. Strict positivity is spent only when a zero edge contribution is converted into equality of endpoint values.

## What is not claimed

- **No novelty against spectral graph theory.** Over the reals, it is standard that Dirichlet energy vanishes exactly for functions constant on connected components. The mathematical kernel fact is prior art.
- **No priority over quotient mathematics.** The subspace and equivalence results instantiate standard zero-kernel and pseudometric-quotient constructions.
- **No ontological redefinition of arithmetic zero.** `0_Q` remains a rational number. The claim concerns what a zero-valued output from this declared operator certifies.
- **No absolute faithfulness.** The operator distinguishes only along paths supplied by the declared graph.
- **No machine-checked novelty or philosophy.** The prover checks mathematical statements, not literature completeness or interpretive adequacy.

## Comparison with the real-variable literature

The paper compares the result at the level of the standard general theorem rather than claiming a new spectral-graph theorem. Before journal submission, page-level and theorem-level references should be checked against the final editions cited. The contribution does not depend on priority over that literature.

## What would falsify or materially weaken the contribution

1. A counterexample to either main biconditional under its stated hypotheses.
2. A mismatch between a central prose claim and the formal definition or theorem cited for it.
3. Prior work that already states the same kernel characterization in substantially the same retained-difference or faithfulness role.
4. A demonstration that the interpretive conclusion is stronger than the biconditionals warrant.
5. A reproduction failure under a supported prover version that cannot be explained by documented environmental differences.

The likely scholarly pressure point is item 3 or 4, not the elementary kernel mathematics. The repository is structured to make those objections easy to state precisely rather than difficult to discover.

## Metatheory, declared

The development is checked in the Calculus of Inductive Constructions as implemented by Coq/Rocq and imports standard rational arithmetic and list libraries. `Closed under the global context` means that an audited constant reports no additional global assumptions; it does not mean that the prover, its kernel, or its metatheory has no assumptions.
