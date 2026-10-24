#!/usr/bin/env python3
"""Import a Rascal source module through the external Rascal runtime."""

from __future__ import annotations

import argparse
import subprocess
import uuid
from pathlib import Path

from run_parser import java_executable


RASCAL_MODULE_NAME = "metabnf::generated::RascalFileImporter"
BRIDGE = Path(__file__).resolve().parent


class RascalImportError(RuntimeError):
    """Rascal source could not be parsed and exported."""


def import_rascal_file(rascal_jar: Path, source: Path, output: Path) -> None:
    jar_path = rascal_jar.resolve()
    source_path = source.resolve()
    output_path = output.resolve()
    if not jar_path.is_file():
        raise RascalImportError(f"Rascal JAR does not exist: {jar_path}")
    if not source_path.is_file():
        raise RascalImportError(f"Rascal module does not exist: {source_path}")

    module_name = f"{RASCAL_MODULE_NAME}_{uuid.uuid4().hex}"
    parts = module_name.split("::")
    module_path = BRIDGE / "test" / Path(*parts[:-1]) / f"{parts[-1]}.rsc"
    module_path.parent.mkdir(parents=True, exist_ok=True)
    module_path.write_text(
        "\n".join(
            (
                f"module {module_name}",
                "",
                "import IO;",
                "import Grammar;",
                "import ParseTree;",
                "import String;",
                "import lang::rascal::\\syntax::Rascal;",
                "import lang::rascal::grammar::definition::Modules;",
                "import metabnf::RascalGrammarExport;",
                "",
                "public void main(list[str] args) {",
                '  if (size(args) != 2) throw "Expected input and output file URIs";',
                "  input = readFile(toLocation(args[0]));",
                "  parsed = parse(#Module, input);",
                "  <mainModule, _, _> = getModuleMetaInf(parsed);",
                "  exportModules(mainModule, {parsed}, toLocation(args[1]));",
                "}",
                "",
            )
        ),
        encoding="utf-8",
        newline="\n",
    )
    output_path.parent.mkdir(parents=True, exist_ok=True)
    try:
        result = subprocess.run(
            [
                java_executable(),
                "-jar",
                str(jar_path),
                module_name,
                source_path.as_uri(),
                output_path.as_uri(),
            ],
            cwd=BRIDGE,
            check=False,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        if result.stdout:
            print(result.stdout, end="" if result.stdout.endswith("\n") else "\n")
        if result.returncode != 0:
            raise RascalImportError(
                f"Rascal grammar export exited with code {result.returncode}"
            )
        if not output_path.is_file():
            raise RascalImportError(f"Rascal exporter did not create {output_path}")
    finally:
        module_path.unlink(missing_ok=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rascal-jar", required=True, type=Path)
    parser.add_argument("--input", required=True, type=Path, help="Rascal source module")
    parser.add_argument("--output", required=True, type=Path, help="MetaBNF model XML")
    args = parser.parse_args()
    try:
        import_rascal_file(args.rascal_jar, args.input, args.output)
    except (OSError, RascalImportError) as error:
        parser.error(str(error))
    print(f"Imported Rascal module {args.input} to {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
