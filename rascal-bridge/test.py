#!/usr/bin/env python3
"""Run portable unit and Rascal integration tests for the bridge."""

from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
import tempfile
import xml.etree.ElementTree as ET
from pathlib import Path

from import_to_mps import ImportError as GrammarImportError
from import_to_mps import import_grammar
from import_rascal_file import RascalImportError, import_rascal_file
from import_text_to_mps import TextImportError, import_text
from parse_tree_to_mps import import_parse_tree
from export_mps_to_text import SourceExportError, export_source
from mps_to_interchange import ExportError, export_model
from mps_to_rascal import export_rascal_module
from mps_to_text import ExportError as TextExportError
from mps_to_text import serialize_model
from refresh_mps_registry import RegistryRefreshError, refresh_registry
from run_parser import ParserRunError, java_executable, parse_text


ROOT = Path(__file__).resolve().parent.parent
BRIDGE = ROOT / "rascal-bridge"
FIXTURES = ROOT / "tests" / "rascal-bridge"
RASCAL_EXPORTER = "metabnf::RascalGrammarExportTest"
PROGRAM_CONCEPTS = {
    "Program": "Demo.structure.Program",
    "Statements": "Demo.structure.Statements",
    "Assignment": "Demo.structure.Assignment",
    "Number": "Demo.structure.Number",
}


def run_python_tests() -> None:
    subprocess.run(
        [
            sys.executable,
            "-m",
            "unittest",
            "discover",
            "-s",
            str(BRIDGE),
            "-p",
            "test_*.py",
            "-v",
        ],
        cwd=ROOT,
        check=True,
    )


def run_rascal_exporter(rascal_jar: Path, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    result = subprocess.run(
        [java_executable(), "-jar", str(rascal_jar.resolve()), RASCAL_EXPORTER],
        cwd=BRIDGE,
        check=False,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    if result.stdout:
        print(result.stdout, end="" if result.stdout.endswith("\n") else "\n")
    if result.returncode != 0:
        raise RuntimeError(f"Rascal grammar exporter exited with code {result.returncode}")
    generated = BRIDGE / "build" / "simple-grammar.xml"
    if not generated.is_file():
        raise RuntimeError(f"Rascal exporter did not create {generated}")
    if generated.resolve() != output.resolve():
        shutil.copyfile(generated, output)


def assert_simple_parse(parse_tree: Path) -> None:
    root = ET.parse(parse_tree).getroot()
    program = root.find("./node[@rule='Program']")
    identifier = root.find(".//token[@rule='IDENTIFIER']")
    if program is None or identifier is None or identifier.get("value") != "A":
        raise AssertionError("Expected Program and IDENTIFIER=A in the Rascal parse tree")


def assert_parse_rule(parse_tree: Path, rule_name: str) -> None:
    root = ET.parse(parse_tree).getroot()
    if root.find(f"./node[@rule='{rule_name}']") is None:
        raise AssertionError(f"Expected {rule_name} in the Rascal parse tree")


def registered_concepts(model: ET.Element) -> dict[str, str]:
    registry = model.find("registry")
    if registry is None:
        raise AssertionError("Generated MPS model is missing its concept registry")
    return {
        concept.get("name", ""): concept.get("index", "")
        for language in registry.findall("language")
        for concept in language.findall("concept")
    }


def role_index(model: ET.Element, concept_name: str, role_name: str, tag: str) -> str:
    registry = model.find("registry")
    if registry is None:
        raise AssertionError("Generated MPS model is missing its concept registry")
    for language in registry.findall("language"):
        for concept in language.findall("concept"):
            if concept.get("name") != concept_name:
                continue
            for role in concept.findall(tag):
                if role.get("name") == role_name:
                    return role.get("index", "")
    raise AssertionError(f"Missing {tag} {role_name!r} on concept {concept_name!r}")


def assert_program_model(model_path: Path, expected_assignments: list[tuple[str, str]]) -> None:
    model = ET.parse(model_path).getroot()
    concepts = registered_concepts(model)
    indices = {name: concepts[qualified] for name, qualified in PROGRAM_CONCEPTS.items()}
    root = model.find(f"./node[@concept='{indices['Program']}']")
    if root is None:
        raise AssertionError(f"{model_path.name}: expected one Program root")
    program_id_role = role_index(model, PROGRAM_CONCEPTS["Program"], "Identifier", "property")
    program_id = root.find(f"property[@role='{program_id_role}']")
    if program_id is None or program_id.get("value") != "P":
        raise AssertionError(f"{model_path.name}: Program identifier was not mapped")
    statements_role = role_index(model, PROGRAM_CONCEPTS["Program"], "Statements", "child")
    statements = root.find(f"node[@role='{statements_role}']")
    if statements is None:
        raise AssertionError(f"{model_path.name}: Program has no Statements node")
    assignment_role = role_index(model, PROGRAM_CONCEPTS["Statements"], "Statement", "child")
    assignments = statements.findall(f"node[@concept='{indices['Assignment']}'][@role='{assignment_role}']")
    if len(assignments) != len(expected_assignments):
        raise AssertionError(
            f"{model_path.name}: expected {len(expected_assignments)} assignments, found {len(assignments)}"
        )
    assignment_id_role = role_index(
        model, PROGRAM_CONCEPTS["Assignment"], "Identifier", "property"
    )
    number_child_role = role_index(
        model, PROGRAM_CONCEPTS["Assignment"], "Expression", "child"
    )
    number_value_role = role_index(
        model, PROGRAM_CONCEPTS["Number"], "NumberValue", "property"
    )
    for assignment, (identifier_value, number_value) in zip(assignments, expected_assignments):
        identifier = assignment.find(f"property[@role='{assignment_id_role}']")
        number = assignment.find(
            f"node[@concept='{indices['Number']}'][@role='{number_child_role}']"
        )
        value = number.find(f"property[@role='{number_value_role}']") if number is not None else None
        if identifier is None or identifier.get("value") != identifier_value:
            raise AssertionError(f"{model_path.name}: assignment identifier was not mapped")
        if value is None or value.get("value") != number_value:
            raise AssertionError(f"{model_path.name}: numeric value was not mapped")


def run_integration_tests(rascal_jar: Path) -> None:
    build = BRIDGE / "build"
    build.mkdir(parents=True, exist_ok=True)
    interchange = build / "simple-grammar.xml"
    run_rascal_exporter(rascal_jar, interchange)

    with tempfile.TemporaryDirectory(prefix="metabnf-rascal-source-") as directory:
        temporary = Path(directory)
        imported_xml = temporary / "hello-grammar.xml"
        import_rascal_file(
            rascal_jar,
            FIXTURES / "hello-grammar.rsc",
            imported_xml,
        )
        imported_model = temporary / "HelloGrammar.mps"
        import_grammar(imported_xml, imported_model, "HelloGrammar")
        exported_xml = temporary / "HelloGrammar-roundtrip.xml"
        export_model(imported_model, exported_xml, "HelloGrammar")
        input_path = temporary / "hello.txt"
        input_path.write_text("e+e", encoding="utf-8")
        for grammar in (imported_xml, exported_xml):
            parse_tree = temporary / f"{grammar.stem}-parse-tree.xml"
            parse_text(rascal_jar, grammar, input_path, parse_tree)
            assert_parse_rule(parse_tree, "Exp")

        expression_input = temporary / "expression.txt"
        expression_input.write_text("e+e", encoding="utf-8")
        expression_model = temporary / "Expression.mps"
        expression_template = FIXTURES / "exp-ast-template.mps"
        expression_mapping = FIXTURES / "exp-ast-mapping.json"
        import_text(
            rascal_jar,
            FIXTURES / "hello-grammar.rsc",
            expression_input,
            expression_template,
            expression_mapping,
            expression_model,
            "Expression",
        )
        expression_root = ET.parse(expression_model).getroot().find("node")
        if expression_root is None or len(expression_root.findall("node")) != 2:
            raise AssertionError("Expected two mapped expression operands")
        expression_source = temporary / "Expression-roundtrip.txt"
        export_source(
            FIXTURES / "hello-grammar.rsc",
            expression_model,
            expression_mapping,
            expression_source,
            rascal_jar,
        )
        if expression_source.read_text(encoding="utf-8") != "e+e":
            raise AssertionError("Rascal source to MPS and back did not preserve expression text")

    imported_grammar = (
        ROOT / "languages" / "mbnf" / "sandbox" / "models" / "RascalImportFixture.mps"
    )
    import_grammar(interchange, imported_grammar, "RascalImportFixture")
    round_trip = build / "roundtrip-grammar.xml"
    export_model(imported_grammar, round_trip, "RascalImportFixture")

    with tempfile.TemporaryDirectory(prefix="metabnf-rtest-") as directory:
        temporary = Path(directory)
        input_path = temporary / "hello.txt"
        input_path.write_text("helloA!", encoding="utf-8")
        for grammar in (interchange, round_trip):
            parse_tree = temporary / f"{grammar.stem}-parse-tree.xml"
            parse_text(rascal_jar, grammar, input_path, parse_tree)
            assert_simple_parse(parse_tree)

        exported_module_name = "metabnf::generated::ExportedDemoGrammar"
        exported_module = (
            BRIDGE / "test" / "metabnf" / "generated" / "ExportedDemoGrammar.rsc"
        )
        exported_test = BRIDGE / "test" / "metabnf" / "ExportedGrammarSmoke.rsc"
        exported_output = temporary / "exported-grammar-parse.txt"
        try:
            export_rascal_module(
                ROOT / "languages" / "mbnf" / "sandbox" / "models" / "RascalImportFixture.mps",
                exported_module,
                exported_module_name,
            )
            exported_test.write_text(
                "\n".join(
                    (
                        "module metabnf::ExportedGrammarSmoke",
                        "",
                        "import Grammar;",
                        "import IO;",
                        "import ParseTree;",
                        f"import {exported_module_name};",
                        "",
                        "public void main(list[str] args) {",
                        '  parsed = parse(#Program, "helloA!");',
                        "  println(parsed);",
                        "}",
                        "",
                    )
                ),
                encoding="utf-8",
                newline="\n",
            )
            result = subprocess.run(
                [
                    java_executable(),
                    "-jar",
                    str(rascal_jar.resolve()),
                    "metabnf::ExportedGrammarSmoke",
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
                raise RuntimeError("Exported Rascal grammar module did not compile and parse")
        finally:
            exported_test.unlink(missing_ok=True)
            exported_module.unlink(missing_ok=True)

        demo_grammar = FIXTURES / "demo-language-grammar.xml"
        template = ROOT / "languages" / "mbnf" / "sandbox" / "models" / "langtest.mps"
        mapping = FIXTURES / "demo-ast-mapping.json"
        structure = ROOT / "languages" / "Demo" / "models" / "structure.mps"
        generated_grammar = temporary / "DemoTextGrammar.mps"
        import_grammar(demo_grammar, generated_grammar, "DemoTextGrammar")
        demo_roundtrip_grammar = temporary / "DemoTextGrammar.xml"
        export_model(generated_grammar, demo_roundtrip_grammar, "DemoTextGrammar")
        cases = (
            ("program-empty.txt", []),
            ("program-single.txt", [("X", "1")]),
            ("program-multiple.txt", [("X", "1"), ("Y", "2")]),
        )
        for filename, expected in cases:
            input_path = temporary / filename
            input_path.write_text(
                (FIXTURES / filename).read_text(encoding="utf-8").rstrip("\r\n"),
                encoding="utf-8",
            )
            output = (
                ROOT
                / "languages"
                / "mbnf"
                / "sandbox"
                / "models"
                / "RascalTextImportFixture.mps"
                if filename == "program-single.txt"
                else temporary / f"{Path(filename).stem}.mps"
            )
            import_text(
                rascal_jar,
                generated_grammar,
                input_path,
                template,
                mapping,
                output,
                "RascalTextImportFixture"
                if filename == "program-single.txt"
                else Path(filename).stem.replace("-", "_"),
            )
            refresh_registry(output, structure)
            assert_program_model(output, expected)
            roundtrip_text = serialize_model(demo_roundtrip_grammar, mapping, output)
            roundtrip_input = temporary / f"{Path(filename).stem}-roundtrip.txt"
            roundtrip_input.write_text(roundtrip_text, encoding="utf-8")
            roundtrip_tree = temporary / f"{Path(filename).stem}-roundtrip.xml"
            parse_text(rascal_jar, demo_roundtrip_grammar, roundtrip_input, roundtrip_tree)
            roundtrip_model = temporary / f"{Path(filename).stem}-roundtrip.mps"
            import_parse_tree(
                roundtrip_tree,
                template,
                mapping,
                roundtrip_model,
                f"{Path(filename).stem.replace('-', '_')}_roundtrip",
            )
            refresh_registry(roundtrip_model, structure)
            assert_program_model(roundtrip_model, expected)

        invalid_output = temporary / "invalid.xml"
        invalid_input = temporary / "program-invalid.txt"
        invalid_input.write_text(
            (FIXTURES / "program-invalid.txt").read_text(encoding="utf-8").rstrip("\r\n"),
            encoding="utf-8",
        )
        try:
            parse_text(
                rascal_jar,
                demo_grammar,
                invalid_input,
                invalid_output,
                report_output=False,
            )
        except ParserRunError:
            if invalid_output.exists():
                raise AssertionError("A rejected source file left a parse-tree artifact")
        else:
            raise AssertionError("Rascal parser accepted an invalid program")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rascal-jar", required=True, type=Path)
    parser.add_argument(
        "--skip-unit-tests",
        action="store_true",
        help="run only the Rascal-to-MPS integration examples",
    )
    args = parser.parse_args()
    try:
        if not args.skip_unit_tests:
            run_python_tests()
        run_integration_tests(args.rascal_jar)
    except (
        AssertionError,
        ET.ParseError,
        ExportError,
        GrammarImportError,
        KeyError,
        OSError,
        RascalImportError,
        RegistryRefreshError,
        RuntimeError,
        TextExportError,
        SourceExportError,
        TextImportError,
        subprocess.CalledProcessError,
    ) as error:
        parser.error(str(error))
    print("Rascal grammar round trips and three bidirectional source/model examples passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
