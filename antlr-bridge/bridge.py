#!/usr/bin/env python3
"""Import ANTLR 4 grammars and parse source into explicitly mapped MPS models."""

from __future__ import annotations

import argparse
import subprocess
import sys
import tempfile
import xml.etree.ElementTree as ET
from pathlib import Path


BRIDGE = Path(__file__).resolve().parent
sys.path.insert(0, str(BRIDGE.parent / "rascal-bridge"))

from import_to_mps import ImportError as GrammarImportError
from import_to_mps import REGEX_TEMPLATE, TEMPLATE, import_grammar
from parse_tree_to_mps import ImportError as MappingError
from parse_tree_to_mps import import_parse_tree
from run_parser import java_executable


class AntlrError(ValueError):
    """ANTLR could not import the grammar or parse the source."""


def run_antlr(
    jar: Path, grammar: Path, start: str, output: Path, source: Path | None = None
) -> None:
    if output.resolve() in {
        jar.resolve(), grammar.resolve(), source.resolve() if source is not None else None,
    }:
        raise AntlrError("Output must not overwrite the ANTLR JAR, grammar, or source")
    for path, label in ((jar, "ANTLR complete JAR"), (grammar, "ANTLR grammar")):
        if not path.is_file():
            raise AntlrError(f"{label} does not exist: {path}")
    if source is not None and not source.is_file():
        raise AntlrError(f"Source file does not exist: {source}")
    with tempfile.TemporaryDirectory(prefix="metabnf-antlr-") as directory:
        result_path = Path(directory) / "result.xml"
        command = [
            java_executable(), "--class-path", str(jar.resolve()),
            str(BRIDGE / "src" / "AntlrBridge.java"),
            "grammar" if source is None else "parse",
            str(grammar.resolve()), start, str(result_path),
        ]
        if source is not None:
            command.append(str(source.resolve()))
        result = subprocess.run(
            command, capture_output=True, text=True, encoding="utf-8", errors="replace",
            check=False, timeout=120,
        )
        if result.returncode != 0:
            raise AntlrError(
                f"ANTLR bridge exited with code {result.returncode}:\n"
                + result.stdout + result.stderr
            )
        if not result_path.is_file():
            raise AntlrError("ANTLR bridge did not produce its output")
        document = ET.parse(result_path)
        expected = "rascal-grammar" if source is None else "parse-result"
        if document.getroot().tag != expected:
            raise AntlrError(f"ANTLR bridge output is not a {expected} document")
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_bytes(result_path.read_bytes())


def import_antlr_grammar(
    jar: Path, grammar: Path, start: str, output: Path, model_name: str,
    template: Path = TEMPLATE, regex_template: Path = REGEX_TEMPLATE,
) -> None:
    if output.resolve() in {
        jar.resolve(), grammar.resolve(), template.resolve(), regex_template.resolve(),
    }:
        raise AntlrError("Output must not overwrite the ANTLR JAR, grammar, or a template")
    with tempfile.TemporaryDirectory(prefix="metabnf-antlr-grammar-") as directory:
        interchange = Path(directory) / "grammar.xml"
        run_antlr(jar, grammar, start, interchange)
        import_grammar(interchange, output, model_name, template, regex_template, origin="Antlr")


def parse_antlr_text(
    jar: Path, grammar: Path, start: str, source: Path, output: Path,
) -> None:
    run_antlr(jar, grammar, start, output, source)


def import_antlr_text(
    jar: Path, grammar: Path, start: str, source: Path, template: Path,
    mapping: Path, output: Path, model_name: str,
) -> None:
    if output.resolve() in {
        jar.resolve(), grammar.resolve(), source.resolve(), template.resolve(), mapping.resolve(),
    }:
        raise AntlrError("Output must not overwrite the ANTLR JAR, grammar, source, template, or mapping")
    with tempfile.TemporaryDirectory(prefix="metabnf-antlr-text-") as directory:
        tree = Path(directory) / "parse.xml"
        run_antlr(jar, grammar, start, tree, source)
        import_parse_tree(tree, template, mapping, output, model_name)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("operation", choices=("grammar", "text", "parse"))
    parser.add_argument("--antlr-jar", required=True, type=Path)
    parser.add_argument("--grammar", required=True, type=Path)
    parser.add_argument("--start", required=True, help="ANTLR parser start rule")
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--model-name")
    parser.add_argument("--template", type=Path, default=TEMPLATE)
    parser.add_argument("--regex-template", type=Path, default=REGEX_TEMPLATE)
    parser.add_argument("--input-text", type=Path)
    parser.add_argument("--mapping", type=Path)
    args = parser.parse_args()
    try:
        if args.operation == "parse":
            if args.input_text is None:
                parser.error("parse requires --input-text")
            parse_antlr_text(args.antlr_jar, args.grammar, args.start, args.input_text, args.output)
            print(f"Parsed ANTLR source {args.input_text} into {args.output}")
            return 0
        if args.operation == "grammar":
            if args.model_name is None:
                parser.error("grammar import requires --model-name")
            import_antlr_grammar(
                args.antlr_jar, args.grammar, args.start, args.output, args.model_name,
                args.template, args.regex_template,
            )
        else:
            if args.input_text is None or args.mapping is None or args.model_name is None:
                parser.error("text import requires --input-text, --mapping, and --model-name")
            import_antlr_text(
                args.antlr_jar, args.grammar, args.start, args.input_text, args.template,
                args.mapping, args.output, args.model_name,
            )
    except (
        AntlrError, GrammarImportError, MappingError, ET.ParseError, OSError,
        subprocess.TimeoutExpired,
    ) as error:
        parser.error(str(error))
    print(f"Imported ANTLR {args.operation} as MPS model {args.model_name} at {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
