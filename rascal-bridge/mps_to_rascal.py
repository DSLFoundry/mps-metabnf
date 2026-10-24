#!/usr/bin/env python3
"""Export a MetaBNF grammar model as a Rascal syntax module."""

from __future__ import annotations

import argparse
import tempfile
from pathlib import Path

from generate_rascal_parser import ImportError as GrammarError
from generate_rascal_parser import generate_module
from mps_to_interchange import ExportError, export_model


def export_rascal_module(model: Path, output: Path, module_name: str) -> None:
    with tempfile.TemporaryDirectory(prefix="metabnf-rascal-export-") as directory:
        interchange = Path(directory) / "grammar.xml"
        export_model(model, interchange, module_name.split("::")[-1])
        source = generate_module(interchange, module_name, executable=False)
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(source, encoding="utf-8", newline="\n")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", required=True, type=Path, help="MetaBNF MPS grammar model")
    parser.add_argument("--output", required=True, type=Path, help="Rascal .rsc module")
    parser.add_argument("--module-name", required=True, help="qualified Rascal module name")
    args = parser.parse_args()
    try:
        export_rascal_module(args.input, args.output, args.module_name)
    except (ExportError, GrammarError, OSError) as error:
        parser.error(str(error))
    print(f"Exported MetaBNF model {args.input} as Rascal module {args.module_name}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
