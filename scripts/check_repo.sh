#!/bin/sh
set -eu

required='README.md REPRODUCE.md CITATION.cff LICENSE LICENSE-TEXT.md LICENSES.md CONTRIBUTING.md SECURITY.md SUPPORT.md CODE_OF_CONDUCT.md codemeta.json .zenodo.json coq/IDM_KeystoneKernel.v coq/Examples.v coq/CheckAssumptions.v paper/main.tex paper/main.tex.part00 paper/main.tex.part01 paper/main.tex.part02 paper/onepager.tex paper/README.md docs/THEOREMS.md docs/SCOPE.md docs/CLAIM_MATRIX.md docs/ARTIFACT_EVALUATION.md'
for path in $required; do
  test -f "$path" || { echo "missing required file: $path" >&2; exit 1; }
done

if find . -type f \( -name '*.vo' -o -name '*.vok' -o -name '*.vos' -o -name '*.glob' -o -name '*.aux' -o -name '*.log' \) | grep -q .; then
  echo "generated build files are present" >&2
  exit 1
fi

python3 - <<'PY'
import json
from pathlib import Path
for name in ('codemeta.json', '.zenodo.json'):
    with Path(name).open(encoding='utf-8') as f:
        json.load(f)
print('JSON metadata valid')
PY

echo "repository structure audit passed"
