# Claim matrix

This document separates proved statements from interpretation and from open scholarly claims.

| ID | Informal statement | Formal support | Status |
|---|---|---|---|
| C1 | Every edge term is nonnegative when its weight is nonnegative. | `I_edge_nonneg` | Proved |
| C2 | A positive-weight edge contributes zero exactly when its endpoint values agree. | `I_edge_zero_iff` | Proved |
| C3 | A zero total forces every nonnegative edge term to vanish. | `I_form_zero_forall` | Proved |
| C4 | With strictly positive weights, `I_form phi g = 0` exactly when `phi` agrees on every edge. | `keystone_zero_iff_edge` | Main proved theorem |
| C5 | Under the same hypothesis, zero is equivalent to constancy on each connected component. | `keystone_zero_iff_component` | Main proved theorem |
| C6 | The zero locus is closed under zero, addition, and rational scaling. | `kernel_zero`, `kernel_add`, `kernel_scale` | Proved |
| C7 | `I_form (a-b) g = 0` defines an equivalence relation. | `indist_refl`, `indist_sym`, `indist_trans` | Proved |
| C8 | Strict positivity cannot simply be dropped. | `zero_weight_edge_has_zero_readout`, `zero_weight_edge_endpoints_differ` | Formally witnessed |
| C9 | Zero may occur on a field whose values are all nonzero. | `constant_nonzero_has_zero_readout` | Formally witnessed |
| C10 | On a disconnected declaration, zero does not imply global constancy. | `disconnected_readout_zero`, `disconnected_values_differ` | Formally witnessed |
| I1 | A zero returned by this operator classifies fields that the declared structure does not distinguish. | C4-C7 plus definitions | Interpretation constrained by theorem |
| I2 | This classification is relative to the declared graph, not absolute. | C5 and C10 | Interpretation strongly supported |
| I3 | Arithmetic zero and the zero fibre are different mathematical objects. | Type distinction between `0_Q` and `I_g^{-1}({0_Q})` | Mathematical clarification |
| N1 | The placement of the kernel theorem as a faithfulness condition is novel. | Literature argument in paper | Scholarly claim; not machine proved |

## Reading rule

A machine-checked theorem can establish a mathematical implication or equivalence. It cannot by itself establish novelty, philosophical adequacy, or that the formal definitions are the uniquely correct translation of the prose. Those questions remain open to review.
