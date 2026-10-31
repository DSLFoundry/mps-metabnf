import importlib.util
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("import_to_mps.py")
SPEC = importlib.util.spec_from_file_location("import_to_mps", MODULE_PATH)
importer = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(importer)


class ImportToMpsTest(unittest.TestCase):
    def test_imports_sort_lexical_rule_and_start(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "Imported.mps"
            importer.import_grammar(source, output, "Imported")

            model = ET.parse(output).getroot()
            self.assertEqual(
                model.get("ref").split("(")[1].rstrip(")"),
                "mbnf.sandbox.Imported",
            )
            nodes = model.findall(".//node")
            concepts = [node.get("concept") for node in nodes]
            self.assertIn("3xJwxZ", concepts)
            self.assertIn("3xJKsl", concepts)
            self.assertIn("3xhzZY", concepts)
            self.assertIn("1SSJmt", concepts)
            self.assertIn("1T8lYq", concepts)
            self.assertIn("2GSJ2k", concepts)
            self.assertIn("3xhzXc", concepts)
            self.assertEqual(len(model.findall(".//node[@concept='3xJKsl']")), 1)
            self.assertEqual(len(model.findall(".//node[@concept='3xhzZY']")), 2)
            cardinalities = [
                prop.get("value")
                for prop in model.findall(".//node[@concept='3xiQg6']/property[@role='3xj4NX']")
            ]
            self.assertIn("2b2ZYR3yDpL/AtMostOne", cardinalities)

    def test_imports_layout_and_compound_lexical_expressions(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "GrammarCoverage.xml"
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "Coverage.mps"
            importer.import_grammar(source, output, "Coverage")
            model = ET.parse(output).getroot()
        concepts = {node.get("concept") for node in model.findall(".//node")}
        self.assertTrue({"1OJ37Q", "1OCmVF", "1OClNT", "1SSJmt"} <= concepts)
        references = model.findall(".//node/ref")
        self.assertTrue(any(ref.get("resolve") == "WS" for ref in references))
        self.assertTrue(any(ref.get("resolve") == "Identifier" for ref in references))

    def test_rejects_priority_and_associativity_explicitly(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        for tag in ("priority", "associativity"):
            with self.subTest(tag=tag), tempfile.TemporaryDirectory() as temporary_directory:
                grammar = ET.parse(source).getroot()
                grammar.find("./rules/rule[@name='Program']/choice").tag = tag
                invalid = Path(temporary_directory) / "invalid.xml"
                ET.ElementTree(grammar).write(invalid, encoding="UTF-8")
                with self.assertRaisesRegex(importer.ImportError, "(?i)priority and associativity are not supported"):
                    importer.import_grammar(invalid, Path(temporary_directory) / "out.mps", "Invalid")

    def test_rejects_case_insensitive_symbols_explicitly(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        grammar = ET.parse(source).getroot()
        grammar.find("./rules/rule[@name='Program']/choice/production/sequence").append(
            ET.Element("case-insensitive-literal", {"value": "x"}))
        with tempfile.TemporaryDirectory() as temporary_directory:
            invalid = Path(temporary_directory) / "invalid.xml"
            ET.ElementTree(grammar).write(invalid, encoding="UTF-8")
            with self.assertRaisesRegex(importer.ImportError, "Unsupported symbol"):
                importer.import_grammar(invalid, Path(temporary_directory) / "out.mps", "Invalid")

    def test_rejects_undefined_reference(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        grammar = ET.parse(source).getroot()
        grammar.find(".//lexical[@name='IDENTIFIER']").set("name", "Missing")
        with tempfile.TemporaryDirectory() as temporary_directory:
            invalid = Path(temporary_directory) / "invalid.xml"
            invalid.write_bytes(ET.tostring(grammar))
            with self.assertRaisesRegex(importer.ImportError, "undefined rule"):
                importer.import_grammar(
                    invalid, Path(temporary_directory) / "Imported.mps", "Imported"
                )

    def test_maps_sort_alternatives_to_choice_rule(self):
        source = Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        grammar = ET.parse(source).getroot()
        production = grammar.find(".//rule[@name='Program']/choice/production")
        grammar.find(".//rule[@name='Program']/choice").append(
            ET.fromstring(ET.tostring(production))
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            invalid = Path(temporary_directory) / "invalid.xml"
            invalid.write_bytes(ET.tostring(grammar))
            output = Path(temporary_directory) / "Imported.mps"
            importer.import_grammar(invalid, output, "Imported")
            concepts = [
                node.get("concept") for node in ET.parse(output).findall(".//node")
            ]
            self.assertIn("3xJKux", concepts)
            self.assertEqual(concepts.count("3xhzZY"), 3)


if __name__ == "__main__":
    unittest.main()
