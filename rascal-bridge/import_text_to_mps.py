#!/usr/bin/env python3
"""Parse source text with a Rascal grammar and serialize its mapped MPS model."""

from __future__ import annotations

import argparse
import tempfile
from pathlib import Path

from generate_rascal_parser import ImportError as GrammarError
from mps_to_interchange import ExportError, export_model
from import_rascal_file import RascalImportError, import_rascal_file
from parse_tree_to_mps import ImportError, import_parse_tree
from run_parser import ParserRunError, parse_text


class TextImportError(RuntimeError):
    """The grammar, parser, or mapping could not produce an MPS model."""


def parse_text_to_tree(
    rascal_jar: Path, grammar: Path, input_text: Path, parse_tree_output: Path
) -> None:
    grammar_path = grammar.resolve()
    try:
        if grammar_path.suffix.lower() == ".mps":
            with tempfile.TemporaryDirectory(prefix="metabnf-grammar-") as temporary_directory:
                interchange = Path(temporary_directory) / "grammar.xml"
                export_model(grammar_path, interchange, grammar_path.stem)
                parse_text(rascal_jar, interchange, input_text, parse_tree_output)
        elif grammar_path.suffix.lower() == ".rsc":
            with tempfile.TemporaryDirectory(prefix="metabnf-grammar-") as temporary_directory:
                interchange = Path(temporary_directory) / "grammar.xml"
                import_rascal_file(rascal_jar, grammar_path, interchange)
                parse_text(rascal_jar, interchange, input_text, parse_tree_output)
        else:
            parse_text(rascal_jar, grammar_path, input_text, parse_tree_output)
    except (ExportError, GrammarError, OSError, ParserRunError, RascalImportError) as error:
        raise TextImportError(str(error)) from error


def import_text(
    rascal_jar: Path,
    grammar: Path,
    input_text: Path,
    template: Path,
    mapping: Path,
    output: Path,
    model_name: str,
) -> None:
    grammar_path = grammar.resolve()
    if grammar_path.suffix.lower() == ".mps":
        with tempfile.TemporaryDirectory(prefix="metabnf-grammar-") as temporary_directory:
            interchange = Path(temporary_directory) / "grammar.xml"
            try:
                export_model(
                    grammar_path,
                    interchange,
                    grammar_path.stem,
                )
                _import_interchange(
                    rascal_jar, interchange, input_text, template, mapping, output, model_name
                )
            except (
                ExportError,
                GrammarError,
                ImportError,
                OSError,
                ParserRunError,
                RascalImportError,
            ) as error:
                raise TextImportError(str(error)) from error
    elif grammar_path.suffix.lower() == ".rsc":
        with tempfile.TemporaryDirectory(prefix="metabnf-grammar-") as temporary_directory:
            interchange = Path(temporary_directory) / "grammar.xml"
            try:
                import_rascal_file(rascal_jar, grammar_path, interchange)
                _import_interchange(
                    rascal_jar, interchange, input_text, template, mapping, output, model_name
                )
            except (
                GrammarError,
                ImportError,
                OSError,
                ParserRunError,
                RascalImportError,
            ) as error:
                raise TextImportError(str(error)) from error
    else:
        _import_interchange(
            rascal_jar,
            grammar_path,
            input_text,
            template,
            mapping,
            output,
            model_name,
        )


def _import_interchange(
    rascal_jar: Path,
    grammar: Path,
    input_text: Path,
    template: Path,
    mapping: Path,
    output: Path,
    model_name: str,
) -> None:
    try:
        with tempfile.TemporaryDirectory(prefix="rascal-parse-") as temporary_directory:
            parse_tree = Path(temporary_directory) / "parse-tree.xml"
            parse_text(rascal_jar, grammar, input_text, parse_tree)
            import_parse_tree(parse_tree, template, mapping, output, model_name)
    except (GrammarError, ImportError, OSError, ParserRunError) as error:
        raise TextImportError(str(error)) from error


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rascal-jar", required=True, type=Path)
    parser.add_argument("--grammar", required=True, type=Path)
    parser.add_argument("--input-text", required=True, type=Path)
    parser.add_argument("--template", type=Path)
    parser.add_argument("--mapping", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--model-name")
    parser.add_argument("--parse-tree-output", type=Path)
    args = parser.parse_args()
    try:
        if args.parse_tree_output is not None:
            parse_text_to_tree(args.rascal_jar, args.grammar, args.input_text, args.parse_tree_output)
            print(f"Parsed {args.input_text} into {args.parse_tree_output}")
            return 0
        if args.template is None or args.mapping is None or args.output is None or args.model_name is None:
            parser.error("model import requires --template, --mapping, --output, and --model-name")
        import_text(
            args.rascal_jar,
            args.grammar,
            args.input_text,
            args.template,
            args.mapping,
            args.output,
            args.model_name,
        )
    except TextImportError as error:
        parser.error(str(error))
    print(f"Imported {args.input_text} as MPS model {args.model_name} at {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
