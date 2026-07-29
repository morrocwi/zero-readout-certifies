# What a Zero Readout Certifies

**Zero as the failure locus of retained distinction.**
*Yaoharee Lahtee* — Open Civil Science Initiative, Pattani, Thailand

[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.21665100-blue)](https://doi.org/10.5281/zenodo.21665100)
[![verify](https://github.com/morrocwi/zero-readout-certifies/actions/workflows/verify.yml/badge.svg)](https://github.com/morrocwi/zero-readout-certifies/actions/workflows/verify.yml)
[![Coq](https://img.shields.io/badge/Coq-8.18%20%2F%208.20%20·%2017%20results%20·%20axiom--free-informational?logo=coq&logoColor=white)](coq/)
[![Paper](https://img.shields.io/badge/paper-6%20pages-lightgrey)](paper/)
[![Code license](https://img.shields.io/badge/code-MIT-green)](LICENSE)
[![Text license](https://img.shields.io/badge/text-CC%20BY%204.0-green)](LICENSE-TEXT.md)

---

Arithmetic supplies the symbol `0`. It does not, by itself, say what a measurement returning that symbol has established.

This repository contains a theorem answering that question, its complete machine-checked proof, and a paper arguing what the theorem does and does not license.

## The result in one screen

For a finite weighted graph `g` — a *declared structure of comparison* — and a field `Φ` assigning a rational to each vertex, the **retained information** of `Φ` is

```
I_g(Φ)  =  Σ_{(i,j,w) ∈ g}  w · (Φᵢ − Φⱼ)²   =   Φᵀ L_R Φ,     L_R = D_W − W
```

> **Theorem.** If every weight of `g` is **strictly positive**, then for every field `Φ`:
>
> `I_g(Φ) = 0` ⟺ `Φᵢ = Φⱼ` on every edge ⟺ `Φ` is constant on every connected component.

Both directions. Over ℚ. No limit, no completion, no real line.

**The proof, complete.** Each term is a nonnegative weight times a square, so it is `≥ 0`. A sum of nonnegatives vanishes only if every term does. `w·d² = 0` with `w > 0` forces `d² = 0`, and `d² = 0` forces `d = 0` because ℚ is an integral domain. Equality then propagates along paths; conversely a constant field kills every term.

Strict positivity is spent exactly once, at the third step. **One edge of weight zero breaks the theorem** — it contributes nothing while its endpoints differ.

## What the theorem is for

Two objects, kept apart, because conflating them is a category mistake:

| | |
|---|---|
| `0_ℚ` | the rational zero — a value in the **codomain** of the readout |
| `𝟎_g := I_g⁻¹({0_ℚ})` | its **fibre in the domain** |

**Claim.** The foundational content of a readout returning `0_ℚ` is membership in `𝟎_g`: *the class of fields across which the declared structure retains no difference.* Exact in both directions — by the theorem, not by definition.

Two examples fix the meaning and are worth more than the prose:

- **Zero on a field that is nowhere zero.** Let `Φᵢ = 17` at every vertex of a connected `g`. Then `I_g(Φ) = 0_ℚ`. Nothing is empty, no value is zero, nothing is absent. What is absent is any *difference* for the structure to retain. Any reading of `𝟎_g` as emptiness is thereby unavailable.
- **Zero across a gap in the declaration.** Let `g` have components `A`, `B` with `Φ = 0` on `A` and `Φ = 17` on `B`. Then `I_g(Φ) = 0_ℚ` although `Φ` is not constant. Where `g` supplies no path it supplies no comparison; the reader was never arranged to tell those apart. The operator is faithful **relative to the declared structure**, not absolutely.

## What is not claimed

- **Not** that `0_ℚ` fails to be a mathematical object. It is a rational, and in a generated number tower it is also the ground of ℕ.
- **Not** that this displaces any account of arithmetic zero. Frege, set theory and structuralism answer *what kind of thing the number is*; this answers *what a zero-valued reading certifies about the states read*. Different questions.
- **Not** that the operator is faithful absolutely. See the second example.
- **Not** novelty against spectral graph theory. Over ℝ it is standard that Dirichlet energy vanishes iff the function is constant on components (Chung; Godsil–Royle). What is offered is that result's **placement as a faithfulness condition**: over ℚ, with the hypothesis explicit, machine-checked without classical axioms, and shown to coincide in both directions with the failure locus of the primitive.

`0_ℚ` is also distinct from the unresolved element `⊥`. `0_ℚ` is a fact about the states — no difference is retained. `⊥` is a fact about the reader — it cannot tell. Only the first is determinate, which is why only the first admits a biconditional.

## Don't trust it. Compile it.

```bash
git clone https://github.com/morrocwi/zero-readout-certifies.git
cd zero-readout-certifies
make verify
```

Expected output: five lines reading `Closed under the global context`. GitHub Actions runs the same check under both Coq 8.18 and Coq 8.20. That is Coq reporting that the theorems depend on **no axiom whatsoever** — no `Reals`, no `classic`, no `functional_extensionality`.

Full instructions, including a Docker path and what each check establishes: [`REPRODUCE.md`](REPRODUCE.md).

## Contents

```
coq/IDM_KeystoneKernel.v   the development — 17 named results, axiom-free
coq/CheckAssumptions.v     prints the assumption set of each main theorem
paper/main.tex             the paper (6pp, two-column)
paper/onepager.tex         one-page summary card
docs/THEOREMS.md           index of every result, with its role
docs/SCOPE.md              hypotheses, limitations, and what would falsify the claim
REPRODUCE.md               verification instructions
CITATION.cff               machine-readable citation metadata
```

## Citing

Archived at Zenodo: **[10.5281/zenodo.21665100](https://doi.org/10.5281/zenodo.21665100)**

```bibtex
@misc{lahtee2026zero,
  author       = {Lahtee, Yaoharee},
  title        = {What a Zero Readout Certifies:
                  Zero as the Failure Locus of Retained Distinction},
  year         = {2026},
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.21665100},
  url          = {https://github.com/morrocwi/zero-readout-certifies},
  note         = {Preprint, with accompanying Coq development}
}
```

See also [`CITATION.cff`](CITATION.cff), which GitHub and Zenodo read directly.

## Licence

- **Code** (`coq/`, build files) — [MIT](LICENSE)
- **Text** (`paper/`, `docs/`, this README) — [CC BY 4.0](LICENSE-TEXT.md)

Both permit reuse with attribution. If you build on the theorem, a citation is the whole of what is asked.

## Corrections

Errors in the mathematics, the proofs, or the prior-art attribution are the most useful thing anyone can send. Open an issue, or write to the address on the paper. Corrections are recorded in [`CHANGELOG.md`](CHANGELOG.md) rather than absorbed silently.

---

*Acknowledgements: Walancha Supantarika. Prepared with AI assistance; the stance, the selection of results, and any errors are the author's.*
