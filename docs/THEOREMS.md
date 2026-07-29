# Formal result index

`coq/IDM_KeystoneKernel.v` contains 17 named mathematical results. `coq/Examples.v` adds five executable witnesses that exercise the principal boundary cases. `coq/ReaderTwoLevels.v` adds a formal appendix separating within-reading accumulation, pipeline sequencing, process state, and verdict state.

## Core definitions

| Name | Meaning |
|---|---|
| `edge` | `(i,j,w)` with natural endpoints and rational weight |
| `Phi` | rational-valued field on natural-numbered vertices |
| `I_edge` | `w * (phi i - phi j)^2` |
| `I_form` | finite sum of edge contributions |
| `adj`, `reach` | undirected adjacency and reflexive-transitive reachability |
| `Fzero`, `Fadd`, `Fscale`, `Fsub` | pointwise field operations |
| `indist` | zero readout of a field difference |

## Arithmetic lemmas

| Result | Role |
|---|---|
| `Qsq_nonneg` | squares are nonnegative over `Q` |
| `Qadd_nonneg` | sums preserve nonnegativity |
| `Qsq_zero` | a rational square vanishes only at zero |
| `Qplus_nonneg_eq0` | a vanishing sum of two nonnegatives splits termwise |

## Edge and graph results

| Result | Role |
|---|---|
| `I_edge_nonneg` | each nonnegative-weight edge term is nonnegative |
| `I_edge_zero_iff` | positive-weight edge term vanishes iff endpoints agree |
| `I_form_zero_forall` | a zero sum forces every edge term to vanish |
| `keystone_zero_iff_edge` | main edgewise biconditional |
| `edge_gives_reach` | an edge produces a reachability witness |
| `keystone_zero_iff_component` | main connected-component biconditional |

## Zero-locus structure

| Result | Role |
|---|---|
| `I_form_ext` | extensionality under pointwise field equality |
| `kernel_zero` | zero field belongs to the zero locus |
| `kernel_add` | closure under addition |
| `kernel_scale` | closure under rational scaling |
| `indist_refl` | reflexivity |
| `indist_sym` | symmetry |
| `indist_trans` | transitivity |

## Executable witnesses

| Result | What it demonstrates |
|---|---|
| `constant_nonzero_has_zero_readout` | zero readout does not imply pointwise-zero values |
| `zero_weight_edge_has_zero_readout` | a zero-weight edge contributes zero |
| `zero_weight_edge_endpoints_differ` | that edge can connect unequal endpoint values |
| `disconnected_readout_zero` | disconnected self-loop components can yield zero |
| `disconnected_values_differ` | zero does not imply global constancy across components |

## Reader-level separation

### One operation versus two

| Result | Role |
|---|---|
| `rr_identity_and_absorbing_collapses` | one element cannot be both unit and absorber for one operation in a nontrivial carrier |
| `boundary_acc_left_unit`, `boundary_acc_right_unit` | the boundary element is neutral for the witness accumulation operation |
| `boundary_seq_left_absorbing`, `boundary_seq_right_absorbing` | the same boundary element is absorbing for the witness sequencing operation |
| `boundary_seq_associative` | the witness pipeline operation is associative |
| `boundary_two_roles_no_collapse` | the two roles coexist without collapsing the carrier because the operations differ |
| `recorded_zero_differs_from_boundary` | resolved zero is constructor-distinct from the boundary |
| `recorded_zero_allows_next_stage`, `boundary_blocks_next_stage` | their difference is visible in pipeline behaviour |

### Typed refinement

| Result | Role |
|---|---|
| `init_left_unit`, `init_right_unit` | `Init` is neutral for within-reading accumulation |
| `accumulator_failure_left_absorbing`, `accumulator_failure_right_absorbing` | accumulator failure is fail-closed |
| `accumulator_states_are_distinct` | `Init`, accumulator failure, and accumulated zero are distinct states |
| `pipeline_unresolved_left_absorbing`, `pipeline_unresolved_right_absorbing` | unresolved verdicts are fail-closed across stages |
| `pipeline_seq_associative` | pipeline sequencing is associative |
| `resolved_zero_is_not_unresolved` | legitimate zero and refusal are distinct verdicts |
| `resolved_zero_continues_pipeline`, `unresolved_stops_pipeline` | the distinction is operational, not merely nominal |
| `total_contract_empty_is_zero` | a total reading contract maps an empty successful accumulation to zero |
| `strict_contract_empty_is_unresolved` | a strict reading contract refuses the same empty case |
| `empty_case_depends_on_contract` | accumulation alone does not determine the empty verdict |
| `failed_accumulator_finalizes_unresolved` | an actual failed accumulation remains unresolved at finalisation |

## Assumption audit

`coq/CheckAssumptions.v` names every audited result explicitly. The verification script derives the expected report count from that file and fails if the count differs or if an `Axioms:` block appears.
