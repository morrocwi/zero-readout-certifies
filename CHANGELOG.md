# Changelog

Corrections are recorded here rather than absorbed silently. A reader should be
able to see which claims moved, and why.

## 1.0.0 — 2026-07-29

First public release.

- `keystone_zero_iff_edge` and `keystone_zero_iff_component`, both
  biconditional, machine-checked axiom-free.
- Subspace and equivalence results (`kernel_zero`, `kernel_add`,
  `kernel_scale`, `indist_refl/sym/trans`) establishing that the zero locus
  classifies rather than merely collects.
- Paper (6pp) and one-page summary.

### Corrections made before release

Recorded because they changed the content, not only the wording.

- **The component form was initially a one-way implication** while being named
  as a biconditional. The converse was added and proved rather than the claim
  weakened; the corollary asserting *exactly* now stands on both directions.
- **An earlier statement asserted that a bound on an inexpressible target
  cannot hold.** That is false — a stability certificate mentioning no target
  can still bound one when the limit exists. The claim was rewritten as a
  statement about what is *derivable* rather than what is *true*.
- **Prior art was initially incomplete.** Spencer-Brown's unmarked state is the
  closest philosophical neighbour and was missing from the first draft; the
  pseudometric-quotient construction is the closest mathematical neighbour and
  was under-credited. Both are now addressed directly, and no priority is
  claimed over either.
- **An absence claim was stated at the wrong scope** — that no matching result
  appeared in a related corpus, on the evidence of a name search only. The
  claim was narrowed to what the search establishes.
- **The one-page source did not compile cleanly.** Its heading macro was
  malformed, so `pdflatex` emitted a PDF while returning failure and the
  intended headings were not defined. The macro and spacing were corrected,
  the summary was rebuilt as a genuine single page, and `make paper` now
  completes successfully.
