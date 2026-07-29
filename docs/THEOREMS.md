# Formal result index

`coq/IDM_KeystoneKernel.v` contains 17 named mathematical results. `coq/Examples.v` adds five executable witnesses that exercise the principal boundary cases.

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

## Assumption audit

`coq/CheckAssumptions.v` names every audited result explicitly. The verification script derives the expected report count from that file and fails if the count differs or if an `Axioms:` block appears.
