# Reproducing the verification

Everything in this repository is checkable on your own machine in under a minute. Nothing depends on trusting the author, the paper, or a hosted service.

## What you are checking

Two things, and they are different:

1. **The proofs are correct.** `coqc` accepts the development. If a step were wrong, it would not compile.
2. **The proofs use no axioms.** `Print Assumptions` reports *Closed under the global context* for each main theorem. This is Coq stating that the result rests on nothing beyond the calculus itself — no `Reals`, no `classic`, no `functional_extensionality`, no admitted lemma.
The repository CI repeats this verification under both Coq 8.18 and Coq 8.20.

The second is the stronger claim and the one worth checking. A proof can be correct and still lean on a classical axiom; these do not.

## Requirements

- **Coq 8.18 or later.** Verified on 8.18 and expected to hold on 8.20.
- Nothing else. The development imports only `List`, `QArith` and `ListNotations` from the standard library.

Install on Debian/Ubuntu:

```bash
sudo apt-get install coq
```

Or via opam:

```bash
opam install coq
```

## Run it

```bash
make verify
```

Expected output: **five** lines, each reading

```
Closed under the global context
```

one for each of `keystone_zero_iff_edge`, `keystone_zero_iff_component`, `kernel_add`, `kernel_scale` and `indist_trans` — the two main theorems and the three results that make the zero locus classify. Any other output — an error, an `Axioms:` heading, a missing line — means something is wrong and should be reported.

## Run it by hand

If you would rather not trust the Makefile either:

```bash
cd coq
coqc -q IDM_KeystoneKernel.v
coqc -q -I . CheckAssumptions.v
```

To inspect a single result:

```bash
coqtop -q -I .
```

```coq
Require Import IDM_KeystoneKernel.
Check keystone_zero_iff_edge.
Print Assumptions keystone_zero_iff_edge.
```

## In Docker

If you would rather not install Coq at all:

```bash
docker run --rm -v "$PWD":/work -w /work/coq coqorg/coq:8.18 \
  bash -c "coqc -q IDM_KeystoneKernel.v && coqc -q -I . CheckAssumptions.v"
```

## Rebuilding the paper

```bash
make paper
```

Requires a TeX Live installation with `mathpazo`, `microtype`, `tcolorbox`, `booktabs`, `titlesec`, `fancyhdr` and `hyperref` — all present in a standard `texlive-full`. The PDFs are also committed, so this step is optional.

## What compiling does *not* establish

Worth stating, since the distinction is easy to lose.

- It does not establish that the theorem is **new**. It is not; the real-variable analogue is standard in spectral graph theory, and the paper says so.
- It does not establish that the **philosophical claim** is correct. That claim is argued in the paper and the argument is open to dispute; the theorem constrains it but does not settle it.
- It does not establish that the **formalisation matches the informal statement**. Read `coq/IDM_KeystoneKernel.v` and compare it against §3 of the paper. The definitions are short and deliberately unclever precisely so that this comparison is easy.

The last point is the one a careful reader should actually spend time on. A machine check is only as good as the statement it checks.
