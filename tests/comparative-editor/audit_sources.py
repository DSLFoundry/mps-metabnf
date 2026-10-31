"""Verify pinned source evidence, without importing or modifying either language."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path
import urllib.request

ROOT = Path(__file__).resolve().parents[2]
FIXTURES = Path(__file__).resolve().parent
WORK = ROOT / "build" / "comparative-editor" / "source-audit"


def main():
    lock = json.loads((FIXTURES / "source-lock.json").read_text(encoding="utf-8"))
    evidence = []
    for source in lock["sources"]:
        destination = WORK / source["repository"].replace("/", "-") / source["path"]
        destination.parent.mkdir(parents=True, exist_ok=True)
        url = (f"https://raw.githubusercontent.com/{source['repository']}/"
               f"{source['revision']}/{source['path']}")
        if not destination.exists():
            with urllib.request.urlopen(url, timeout=60) as response:
                content = response.read()
        else:
            content = destination.read_bytes()
        actual = hashlib.sha256(content).hexdigest()
        if actual != source["sha256"]:
            raise AssertionError(f"Source checksum mismatch: {url}: {actual}")
        destination.write_bytes(content)
        evidence.append({**source, "url": url, "verifiedSha256": actual})
    grammar = (WORK / "antlr-grammars-v4" / "csharp" / "v7" / "CSharpParser.g4").read_text()
    for marker in ("MIT License", "Eclipse Public License - v 1.0", "parser grammar CSharpParser",
                   "tokenVocab = CSharpLexer", "superClass = CSharpParserBase"):
        assert marker in grammar, marker
    reference = WORK / "DSLFoundry-mps-dflat"
    build = (reference / "build.gradle").read_text()
    for marker in ('com.jetbrains:mps:2025.1.+', 'com.mbeddr:mbeddr:2025.1.+'):
        assert marker in build, marker
    for domain, names in (("expression", ("PlusToMinus", "SplitNumber", "Addition")),
                          ("statement", ("Block", "Return"))):
        name = f"com.dslfoundry.dflat.{domain}.test.editor"
        model = (reference / "solutions" / name / "models" / f"{name}.base@tests.mps").read_text()
        for test in names:
            assert f'value="{test}"' in model, test
    result = {
        "schema": 1,
        "sources": evidence,
        "upstream-grammar": {
            "availability": "pass", "redistribution": "blocked",
            "importer": "blocked",
            "reason": "Split parser grammar, tokenVocab and custom superclass are outside the importer contract; license terms require review."
        },
        "reference-language": {
            "availability": "pass", "nativeExecution": "blocked",
            "reason": "Pinned source requests floating MPS and mbeddr 2025.1 dependencies; no compatible resolved reference runtime/adapter is supplied. Source presence is not a build or test pass."
        }
    }
    output = WORK / "result.json"
    output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(f"Pinned source audit passed: {len(evidence)} checksums; native reference remains blocked. {output}")


if __name__ == "__main__":
    main()
