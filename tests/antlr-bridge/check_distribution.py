"""Exercise installed bridge resources, not the source checkout's imports."""

import argparse
import subprocess
import sys
import tempfile
import xml.etree.ElementTree as ET
import zipfile
from pathlib import Path


def check_distribution(archive: Path, jar: Path) -> None:
    root = Path(__file__).resolve().parents[2]
    fixtures = root / "tests" / "antlr-bridge"
    prefix = "metabnf/languages/mbnf/parser-bridge/"
    resources = (
        "antlr-bridge/bridge.py", "antlr-bridge/src/AntlrBridge.java",
        "antlr-bridge/README.md", "rascal-bridge/README.md", "rascal-bridge/import_to_mps.py",
        "rascal-bridge/parse_tree_to_mps.py", "templates/Demo.mps",
        "templates/python.mps", "lib/metabnf-rascal-bridge.jar",
    )
    with tempfile.TemporaryDirectory(prefix="metabnf-package-test-") as directory:
        with zipfile.ZipFile(archive) as bundle:
            names = set(bundle.namelist())
            for resource in resources:
                if prefix + resource not in names:
                    raise ValueError(f"Missing plugin resource: {resource}")
            if any(name.startswith(prefix + "rascal-bridge/antlr-bridge/") for name in names):
                raise ValueError("ANTLR resources must be siblings of the shared Rascal bridge")
            if any("/test_" in name for name in names):
                raise ValueError("Development test scripts must not be packaged")
            bundle.extractall(directory)
        plugin = Path(directory) / "metabnf" / "languages" / "mbnf" / "parser-bridge"
        command = [sys.executable, str(plugin / "antlr-bridge" / "bridge.py")]
        common = ["--antlr-jar", str(jar.resolve()), "--start", "program"]
        grammar_output = Path(directory) / "ImportedGrammar.mps"
        subprocess.run(
            command + ["grammar"] + common + [
                "--grammar", str(fixtures / "Mini.g4"),
                "--template", str(plugin / "templates" / "Demo.mps"),
                "--regex-template", str(plugin / "templates" / "python.mps"),
                "--model-name", "PackagedGrammar", "--output", str(grammar_output),
            ],
            cwd=directory, check=True,
        )
        grammar = ET.parse(grammar_output).getroot()
        if not any(p.get("value") == "Antlr" for p in grammar.findall(".//property")):
            raise ValueError("Packaged grammar import lost its ANTLR origin")
        text_output = Path(directory) / "ImportedProgram.mps"
        subprocess.run(
            command + ["text"] + common + [
                "--grammar", str(fixtures / "DemoText.g4"),
                "--input-text", str(fixtures / "program.txt"),
                "--template", str(root / "languages" / "mbnf" / "sandbox" / "models" / "langtest.mps"),
                "--mapping", str(fixtures / "demo-mapping.json"),
                "--model-name", "PackagedProgram", "--output", str(text_output),
            ],
            cwd=directory, check=True,
        )
        model = ET.parse(text_output).getroot()
        assignment = model.find("registry/language/concept[@name='Demo.structure.Assignment']")
        number = model.find("registry/language/concept[@name='Demo.structure.Number']")
        if assignment is None or number is None:
            raise ValueError("Packaged source import lost its target-language registry")
        assignments = model.findall(f".//node[@concept='{assignment.get('index')}']")
        numbers = model.findall(f".//node[@concept='{number.get('index')}']")
        if len(assignments) != 1 or len(numbers) != 1:
            raise ValueError("Packaged source import has the wrong AST shape")
        identifier = assignment.find("property[@name='Identifier']").get("index")
        number_value = number.find("property[@name='NumberValue']").get("index")
        if assignments[0].find(f"property[@role='{identifier}']").get("value") != "X":
            raise ValueError("Packaged source import lost the assignment identifier")
        if numbers[0].find(f"property[@role='{number_value}']").get("value") != "1":
            raise ValueError("Packaged source import lost the numeric value")
    print("Packaged ANTLR grammar and source imports passed outside the checkout.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path)
    parser.add_argument("antlr_jar", type=Path)
    args = parser.parse_args()
    check_distribution(args.archive, args.antlr_jar)
