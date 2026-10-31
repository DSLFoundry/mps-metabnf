import json
import os
import subprocess
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

from bridge import BRIDGE
from mapping_suggestions import suggest
from parse_tree_to_mps import MpsNodeFactory, map_tree, read_concept_registry
from run_parser import java_executable

ROOT = BRIDGE.parent
FIXTURES = ROOT / "tests" / "mapping-suggestions"
JAR = Path(os.environ.get("ANTLR_JAR", ROOT / "build" / "antlr" / "antlr4-4.13.2-complete.jar"))


class AntlrMappingSuggestionsTest(unittest.TestCase):
    def test_native_antlr_interchange_and_partial_decisions_preserve_explicit_ast_shape(self):
        (ROOT / "build").mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(dir=ROOT / "build", prefix="antlr-mapping-") as directory:
            directory = Path(directory)
            grammar_xml = directory / "grammar.xml"
            parse_xml = directory / "parse.xml"
            source = directory / "source.txt"
            command = [java_executable(), "-Djava.io.tmpdir=" + str(directory), "--class-path", str(JAR),
                       str(BRIDGE / "src" / "AntlrBridge.java")]
            grammar = str(FIXTURES / "MappingSample.g4")
            result = subprocess.run(command + ["grammar", grammar, "program", str(grammar_xml)],
                                    capture_output=True, text=True)
            self.assertEqual(0, result.returncode, result.stderr)
            snapshot = json.loads((FIXTURES / "demo-metamodel.json").read_text())
            decisions = json.loads((FIXTURES / "antlr-decisions.json").read_text())
            report = suggest(ET.parse(grammar_xml).getroot(), snapshot, decisions)
            self.assertFalse(report["reviewRequired"], report["diagnostics"])
            explicit = json.loads((ROOT / "tests/antlr-bridge/demo-mapping.json").read_text())
            self.assertEqual(explicit, report["mapping"])
            registry = read_concept_registry(ET.parse(ROOT / "languages/mbnf/sandbox/models/langtest.mps").getroot())
            for text, count in (("program P { X=1; }", 1), ("program P { X=1; Y=2; }", 2)):
                source.write_text(text, encoding="utf-8")
                result = subprocess.run(command + ["parse", grammar, "program", str(parse_xml), str(source)],
                                        capture_output=True, text=True)
                self.assertEqual(0, result.returncode, result.stderr)
                tree = ET.parse(parse_xml).getroot()[0]
                actual = map_tree(tree, report["mapping"]["rules"], registry, MpsNodeFactory(), [])
                expected = map_tree(tree, explicit["rules"], registry, MpsNodeFactory(), [])
                self.assertEqual(ET.tostring(expected), ET.tostring(actual))
                self.assertEqual(count, len(actual.find("node").findall("node")))
            self.assertEqual({"program", "statements", "assignment"}, set(report["suggestions"]))


if __name__ == "__main__":
    unittest.main()
