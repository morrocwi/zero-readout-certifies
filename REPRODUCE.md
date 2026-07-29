# Reproducing the artifact

This repository separates four checks that are often conflated: proof compilation, assumption auditing, prose-to-formalization comparison, and paper generation.

## Supported provers

CI checks the development under:

- Coq 8.20, using `coqc`;
- Rocq 9.2, using `rocq compile`.

The source imports only the standard `List`, `QArith`, and `PeanoNat` libraries.

## One-command verification

```bash
make verify
```

The command compiles the core development, executable witnesses, and assumption audit. The audit count is derived from the number of `Print Assumptions` commands, so adding a theorem to the audit cannot silently leave the expected count stale.

A successful run ends with a message such as:

```text
verified 13 audited results with no additional global assumptions
```

## Docker verification

```bash
docker build -t zero-readout-certifies .
docker run --rm zero-readout-certifies
```

To test the latest supported Rocq line without building the repository image:

```bash
docker run --rm -v "$PWD:/src:ro" rocq/rocq-prover:9.2 \
  bash -lc 'cp -a /src /tmp/repo && cd /tmp/repo && make verify COQC="rocq compile"'
```

## Manual commands

```bash
cd coq
coqc -q IDM_KeystoneKernel.v
coqc -q Examples.v
coqc -q CheckAssumptions.v
```

For Rocq 9.2, replace `coqc` with `rocq compile`.

## Paper build

```bash
make paper
```

The build uses `-halt-on-error` and `-file-line-error`, runs the main paper twice for stable references, and checks that the summary remains one page when `pdfinfo` is available.

## Repository audit

```bash
make audit
```

This checks required files, rejects temporary split sources and generated compiler artifacts, and validates the JSON metadata syntactically. CI additionally validates `CITATION.cff` with `cffconvert`.

## What compilation establishes

A successful formal run establishes that the checked statements are accepted by the selected prover and that the audited constants report no additional global assumptions. It also confirms that the repository contains no forbidden global assumption declarations or admitted proofs in `coq/*.v`.

## What compilation does not establish

Compilation does not establish:

- novelty against the mathematical literature;
- truth of the philosophical interpretation;
- completeness of the literature review;
- that the formal definitions are the uniquely correct rendering of the prose;
- security or correctness of the prover implementation itself.

The prose/formalization comparison is therefore a required human review step. `docs/CLAIM_MATRIX.md` and `docs/ARTIFACT_EVALUATION.md` are designed to make that step short and explicit.
