#!/bin/sh
set -eu

: "${COQC:=coqc}"

case "$COQC" in
  *[!A-Za-z0-9_./\ -]*)
    echo "unsupported COQC command: $COQC" >&2
    exit 2
    ;;
esac

if grep -RInE '^[[:space:]]*(Axiom|Axioms|Parameter|Parameters|Conjecture|Conjectures|Admitted|admit)[[:space:].]' coq/*.v; then
  echo "forbidden global assumption or admitted proof found" >&2
  exit 1
fi

cd coq
# COQC may contain two words, for example: "rocq compile".
# shellcheck disable=SC2086
$COQC -q IDM_KeystoneKernel.v
# shellcheck disable=SC2086
$COQC -q Examples.v
# shellcheck disable=SC2086
$COQC -q ReaderTwoLevels.v
# shellcheck disable=SC2086
$COQC -q CheckAssumptions.v | tee assumptions.txt

expected=$(grep -c '^[[:space:]]*Print Assumptions ' CheckAssumptions.v)
actual=$(grep -c 'Closed under the global context' assumptions.txt || true)

if [ "$actual" -ne "$expected" ]; then
  echo "expected $expected closed-context reports, got $actual" >&2
  cat assumptions.txt >&2
  exit 1
fi

if grep -q '^Axioms:' assumptions.txt; then
  echo "an audited theorem depends on an additional axiom" >&2
  cat assumptions.txt >&2
  exit 1
fi

echo "verified $actual audited results with no additional global assumptions"
