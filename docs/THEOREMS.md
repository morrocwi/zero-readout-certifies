# Index of results

Every named result in `coq/IDM_KeystoneKernel.v`, in dependency order, with the
role it plays. Seventeen results in total; the two marked **main** are what the
paper rests on.

## Definitions

| name | meaning |
|---|---|
| `edge` | a triple `(i, j, w)` in `nat × nat × Q` |
| `Phi` | a field: `nat -> Q` |
| `I_edge` | `w · (Φᵢ − Φⱼ)²` — the retained information of one edge |
| `I_form` | the fold of `I_edge` over the edge list |
| `adj` | some edge joins `i` and `j`, in either orientation |
| `reach` | reflexive–transitive closure of `adj`, defined inductively |
| `Fzero`, `Fadd`, `Fscale`, `Fsub` | pointwise operations on fields |
| `indist` | `I_form (Fsub a b) g == 0` — indistinguishability under the readout |

## Arithmetic groundwork over ℚ

| result | statement | why it is needed |
|---|---|---|
| `Qsq_nonneg` | `0 ≤ x · x` | every edge term is nonnegative |
| `Qadd_nonneg` | nonnegatives sum to a nonnegative | the fold stays nonnegative |
| `Qsq_zero` | `x · x == 0 → x == 0` | ℚ is an integral domain; the disjunction collapses |
| `Qplus_nonneg_eq0` | `a,b ≥ 0` and `a + b == 0` → both vanish | splits a vanishing sum at the head |

## Edge level

| result | statement |
|---|---|
| `I_edge_nonneg` | with `w ≥ 0`, the edge term is nonnegative |
| `I_edge_zero_iff` | with `w > 0`, the edge term vanishes **iff** `Φᵢ = Φⱼ` |

`I_edge_zero_iff` is the single point at which strict positivity is spent.

## Graph level

| result | statement |
|---|---|
| `I_form_zero_forall` | with all `w ≥ 0`, a vanishing total forces every edge term to vanish |
| **`keystone_zero_iff_edge`** | **main** — with all `w > 0`: `I_form Φ g == 0` **iff** `Φᵢ = Φⱼ` on every edge |
| `edge_gives_reach` | an edge makes its endpoints reachable in one step |
| **`keystone_zero_iff_component`** | **main** — with all `w > 0`: `I_form Φ g == 0` **iff** `Φᵢ = Φⱼ` whenever `reach g i j` |

## The zero locus classifies

These are what license speaking of an equivalence *class* rather than a fibre.
Without closure under addition, `indist` would fail transitivity and the zero
locus would classify nothing.

| result | statement |
|---|---|
| `I_form_ext` | `I_form` depends on the field only up to pointwise equality |
| `kernel_zero` | the zero field lies in the zero locus |
| `kernel_add` | the zero locus is closed under pointwise addition |
| `kernel_scale` | the zero locus is closed under scaling by any `c : Q` |
| `indist_refl` | `indist` is reflexive |
| `indist_sym` | `indist` is symmetric |
| `indist_trans` | `indist` is transitive |

## Assumption set

`coq/CheckAssumptions.v` reports the dependency set of five results: the two
main theorems, plus `kernel_add`, `kernel_scale` and `indist_trans`. All five
return *Closed under the global context*: no `Reals`, no `classic`, no
`functional_extensionality`, no admitted lemma.

Verify with `make verify`, or by hand as described in `REPRODUCE.md`.
