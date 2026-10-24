#!/usr/bin/env python3
"""Export a mapped MPS model as source text using a Rascal or MetaBNF grammar."""

from __future__ import annotations

import argparse
import tempfile
from pathlib import Path

from import_rascal_file import RascalImportError, import_rascal_file
from mps_to_interchange import ExportError, export_model
from mps_to_text import ExportError as TextExportError
from mps_to_text import serialize_model


class SourceExportError(RuntimeError):
    """The grammar or MPS model could not be serialized as source."""


def export_source(
    grammar: Path,
    model: Path,
    mapping: Path,
    output: Path,
    rascal_jar: Path | None = None,
) -> None:
    grammar_path = grammar.resolve()
    try:
        with tempfile.TemporaryDirectory(prefix="metabnf-source-export-") as directory:
            interchange = Path(directory) / "grammar.xml"
            if grammar_path.suffix.lower() == ".rsc":
                if rascal_jar is None:
                    raise SourceExportError(
                        "A Rascal runtime JAR is required to import a .rsc grammar"
                    )
                import_rascal_file(rascal_jar, grammar_path, interchange)
            elif grammar_path.suffix.lower() == ".mps":
                export_model(grammar_path, interchange, grammar_path.stem)
            else:
                interchange = grammar_path
            source = serialize_model(interchange, mapping, model)
            output.parent.mkdir(parents=True, exist_ok=True)
            output.write_text(source, encoding="utf-8", newline="\n")
    except (
        OSError,
        RascalImportError,
        ExportError,
        TextExportError,
    ) as error:
        raise SourceExportError(str(error)) from error


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--grammar", required=True, type=Path)
    parser.add_argument("--model", required=True, type=Path)
    parser.add_argument("--mapping", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--rascal-jar", type=Path)
    args = parser.parse_args()
    try:
        export_source(
            args.grammar,
            args.model,
            args.mapping,
            args.output,
            args.rascal_jar,
        )
    except SourceExportError as error:
        parser.error(str(error))
    print(f"Exported MPS model {args.model} as source text at {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
