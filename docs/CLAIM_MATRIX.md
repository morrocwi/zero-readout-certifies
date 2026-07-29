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
| C11 | One element cannot be both a two-sided unit and a two-sided absorber for the same operation unless the carrier collapses. | `rr_identity_and_absorbing_collapses` | Proved |
| C12 | One carrier element can be a unit for one operation and an absorber for another without collapse. | `boundary_two_roles_no_collapse` | Formally witnessed |
| C13 | A resolved zero and an unresolved boundary behave differently under pipeline composition. | `recorded_zero_differs_from_boundary`, `recorded_zero_allows_next_stage`, `boundary_blocks_next_stage` | Proved |
| C14 | A typed reader can distinguish an initial accumulator, accumulator failure, resolved zero, and unresolved verdict. | `accumulator_states_are_distinct`, `resolved_zero_is_not_unresolved` | Proved |
| C15 | Failure remains absorbing within accumulation and across pipeline sequencing in the typed refinement. | `accumulator_failure_left_absorbing`, `accumulator_failure_right_absorbing`, `pipeline_unresolved_left_absorbing`, `pipeline_unresolved_right_absorbing` | Proved |
| C16 | The empty accumulator may finalise either as resolved zero or as unresolved, depending on the declared reading contract. | `total_contract_empty_is_zero`, `strict_contract_empty_is_unresolved`, `empty_case_depends_on_contract` | Proved by two explicit contracts |
| I1 | A zero returned by this operator classifies fields that the declared structure does not distinguish. | C4-C7 plus definitions | Interpretation constrained by theorem |
| I2 | This classification is relative to the declared graph, not absolute. | C5 and C10 | Interpretation strongly supported |
| I3 | Arithmetic zero and the zero fibre are different mathematical objects. | Type distinction between `0_Q` and `I_g^{-1}({0_Q})` | Mathematical clarification |
| I4 | Accumulation does not by itself force arithmetic zero; zero appears in the empty case only after a finalisation contract totalises the process into the quantitative codomain. | C14-C16 | Interpretation constrained by the typed model |
| I5 | Within-reading accumulation and between-stage sequencing are different compositional levels and may assign different algebraic roles to their boundary states. | C11-C15 | Interpretation with formal witnesses |
| N1 | The placement of the kernel theorem as a faithfulness condition is novel. | Literature argument in paper | Scholarly claim; not machine proved |

## Reading rule

A machine-checked theorem can establish a mathematical implication, equivalence, separation, or explicit model. It cannot by itself establish novelty, philosophical adequacy, or that the formal definitions are the uniquely correct translation of the prose. In particular, C12 proves algebraic compatibility of two roles; it does not by itself identify the boundary element semantically with unresolved failure. Those questions remain open to review.
