# Scope, hypotheses, and what would falsify the claim

A statement of the boundaries, kept separate from the argument so that it can be
read first.

## The hypotheses do work

**Strict positivity of the weights is necessary, not cosmetic.** An edge of
weight zero contributes nothing to `I_g` regardless of the field, so a single
such edge lets a genuine distinction sit inside the zero locus undetected. The
theorem is false without it, and the proof shows exactly where: the step
`w · d² = 0 ⟹ d² = 0` requires `w ≠ 0`.

**Connectedness is nowhere assumed**, and the conclusion is correspondingly
local to components. On a disconnected graph the zero locus genuinely contains
non-constant fields. This is not a gap in the theorem; §5 of the paper argues it
is the content — the reach of the declared structure is visible in the class.

**Nonnegativity suffices for the termwise lemma.** `I_form_zero_forall` assumes
only `w ≥ 0`, weaker than the theorems that use it. The separation is
deliberate: it makes visible that strict positivity is spent at exactly one
place.

## What is not claimed

- **No novelty against spectral graph theory.** Over ℝ it is standard that the
  Dirichlet energy of a function on a weighted graph vanishes iff the function
  is constant on components, and that this underlies the zero eigenvalue's
  multiplicity counting components (Chung; Godsil–Royle). What is offered is the
  placement of that result as a faithfulness condition — over ℚ, with the
  hypothesis explicit, machine-checked without classical axioms, and shown to
  coincide in both directions with the failure locus of the primitive.
- **No priority over quotient mathematics.** The subspace and equivalence
  results are the standard construction: identifying points at pseudometric
  distance zero. The addition is a theorem about what that zero *means* here,
  not the construction.
- **No ontological claim about the number zero.** `0_ℚ` remains a rational and,
  in a generated tower, the ground of ℕ. The claim concerns the semantics of a
  zero-valued *reading*.
- **No absolute faithfulness.** The operator is faithful relative to the
  declared structure `g`. See the two-component example.

## Comparison with the real-variable literature

The comparison is made at the level of the general result, which is standard,
rather than against a specific numbered statement in the cited works. A
page-level check should be made before journal submission. The claim of this
work does not rest on the outcome, since no priority over that literature is
asserted.

## What would falsify the claim

Stated positively, since a claim that nothing could refute is not a claim.

1. **A counterexample to either main theorem under its stated hypotheses.** This
   would show in the Coq development, which anyone can compile.
2. **A prior statement of the same characterisation *as a faithfulness
   condition on a distinction-based foundation*** — not merely the
   real-variable kernel result, which is granted, but the placement. This would
   remove what the work claims.
3. **A demonstration that the interpretive step is unsupported** — that the
   theorem constrains the meaning of a zero readout less than the paper says.
   This is the most likely line of objection and the one the paper's §4 and §5
   are written to be attacked on.
4. **A defect in the formalisation** — a definition in `coq/` that does not say
   what §3 of the paper says. The definitions are short and deliberately
   unclever so that this comparison is cheap to make.

Item 4 deserves emphasis. A machine check is only as good as the statement it
checks, and no amount of axiom-freedom substitutes for reading the statement.

## Metatheory, declared

The development assumes the Calculus of Inductive Constructions as realised in
Coq, together with ordinary finitary logic as its meta-language. This is
declared rather than claimed away. *Closed under the global context* means the
theorem uses no axiom beyond that — not that it uses nothing at all. Every
formal system rests on assumptions it does not prove; the difference claimed
here is not fewer assumptions but that each result reports its own.
