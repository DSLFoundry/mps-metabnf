#!/usr/bin/env python3
"""Generate a temporary Rascal parser module and parse one text file."""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
import uuid
import xml.etree.ElementTree as ET
from pathlib import Path

from generate_rascal_parser import ImportError as GrammarError
from generate_rascal_parser import generate_module


MODULE_PATTERN = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*(::[A-Za-z_][A-Za-z0-9_]*)*$")
PROJECT_DIRECTORY = Path(__file__).resolve().parent


class ParserRunError(RuntimeError):
    """The Rascal runtime could not parse the supplied text."""


def java_executable() -> str:
    java_home = os.environ.get("JAVA_HOME")
    if java_home:
        executable = "java.exe" if os.name == "nt" else "java"
        return str(Path(java_home) / "bin" / executable)
    return "java"


def parse_text(
    rascal_jar: Path,
    grammar: Path,
    input_text: Path,
    parse_tree: Path,
    module_name: str | None = None,
    report_output: bool = True,
) -> None:
    jar_path = rascal_jar.resolve()
    grammar_path = grammar.resolve()
    input_path = input_text.resolve()
    output_path = parse_tree.resolve()
    for path, label in (
        (jar_path, "Rascal JAR"),
        (grammar_path, "Grammar"),
        (input_path, "Input text"),
    ):
        if not path.is_file():
            raise ParserRunError(f"{label} does not exist: {path}")

    name = module_name or f"metabnf::generated::GrammarParser_{uuid.uuid4().hex}"
    if not MODULE_PATTERN.fullmatch(name):
        raise ParserRunError(f"Invalid Rascal module name: {name!r}")
    module_parts = name.split("::")
    module_path = PROJECT_DIRECTORY / "test" / Path(*module_parts[:-1]) / f"{module_parts[-1]}.rsc"
    if module_path.exists():
        raise ParserRunError(f"Refusing to overwrite existing Rascal module: {module_path}")

    output_path.parent.mkdir(parents=True, exist_ok=True)
    module_path.parent.mkdir(parents=True, exist_ok=True)
    try:
        module_path.write_text(
            generate_module(grammar_path, name), encoding="utf-8", newline="\n"
        )
        result = subprocess.run(
            [
                java_executable(),
                "-jar",
                str(jar_path),
                name,
                input_path.as_uri(),
                output_path.as_uri(),
            ],
            cwd=PROJECT_DIRECTORY,
            check=False,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        if result.stdout and report_output:
            stream = sys.stdout if result.returncode == 0 else sys.stderr
            print(result.stdout, end="" if result.stdout.endswith("\n") else "\n", file=stream)
        if result.returncode != 0:
            raise ParserRunError(f"Rascal parser exited with code {result.returncode}")
        if not output_path.is_file():
            raise ParserRunError(f"Rascal parser completed without writing {output_path}")
        try:
            root = ET.parse(output_path).getroot()
        except ET.ParseError as error:
            raise ParserRunError(f"Rascal parser wrote invalid XML: {error}") from error
        if root.tag != "parse-result":
            raise ParserRunError("Rascal parser output is not a parse-result document")
    finally:
        module_path.unlink(missing_ok=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rascal-jar", required=True, type=Path)
    parser.add_argument("--grammar", required=True, type=Path)
    parser.add_argument("--input-text", required=True, type=Path)
    parser.add_argument("--parse-tree", required=True, type=Path)
    parser.add_argument("--module-name")
    args = parser.parse_args()
    try:
        parse_text(
            args.rascal_jar,
            args.grammar,
            args.input_text,
            args.parse_tree,
            args.module_name,
        )
    except (GrammarError, OSError, ParserRunError, ET.ParseError) as error:
        parser.error(str(error))
    print(f"Parsed {args.input_text} into {args.parse_tree}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
