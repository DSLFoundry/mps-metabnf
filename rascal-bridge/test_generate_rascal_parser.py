import importlib.util
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("generate_rascal_parser.py")
SPEC = importlib.util.spec_from_file_location("generate_rascal_parser", MODULE_PATH)
generator = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(generator)


class GenerateRascalParserTest(unittest.TestCase):
    def setUp(self):
        self.grammar = (
            Path(__file__).parents[1] / "tests" / "rascal-bridge" / "simple-grammar.xml"
        )

    def test_generates_parser_with_start_rule_and_symbol_forms(self):
        source = generator.generate_module(self.grammar, "test::GrammarParser")

        self.assertIn("syntax Program =", source)
        self.assertIn('lexical IDENTIFIER = [A-Z];', source)
        self.assertIn("parse(#Program, input)", source)
        self.assertIn('writeFile(toLocation(outputUri)', source)
        self.assertIn("treeXml(parsed)", source)

    def test_rejects_invalid_module_name(self):
        with self.assertRaisesRegex(generator.ImportError, "Invalid Rascal module name"):
            generator.generate_module(self.grammar, "bad-name")

    def test_rejects_priority_production(self):
        import xml.etree.ElementTree as ET

        grammar = ET.parse(self.grammar).getroot()
        choice = grammar.find(".//rule[@name='Program']/choice")
        choice.tag = "priority"
        with tempfile.TemporaryDirectory() as temporary_directory:
            unsupported = Path(temporary_directory) / "priority.xml"
            ET.ElementTree(grammar).write(unsupported, encoding="UTF-8")
            with self.assertRaisesRegex(generator.ImportError, "exactly one choice"):
                generator.generate_module(unsupported, "test::GrammarParser")


if __name__ == "__main__":
    unittest.main()
