#!/usr/bin/env python3
import re
import sys
from pathlib import Path

if len(sys.argv) != 2:
    raise SystemExit('usage: check_version.py vX.Y.Z')
tag = sys.argv[1]
match = re.fullmatch(r'v(\d+\.\d+\.\d+)', tag)
if not match:
    raise SystemExit(f'invalid release tag: {tag}')
version = match.group(1)
text = Path('CITATION.cff').read_text(encoding='utf-8')
if f"version: '{version}'" not in text and f'version: "{version}"' not in text:
    raise SystemExit(f'CITATION.cff version does not match {tag}')
print(f'version metadata matches {tag}')
