import importlib.util
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("mps_to_interchange.py")
SPEC = importlib.util.spec_from_file_location("mps_to_interchange", MODULE_PATH)
exporter = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(exporter)


class MpsToInterchangeTest(unittest.TestCase):
    def test_exports_imported_model_for_parser_generation(self):
        source = (
            Path(__file__).parents[1]
            / "languages"
            / "mbnf"
            / "sandbox"
            / "models"
            / "RascalImportFixture.mps"
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "roundtrip.xml"
            exporter.export_model(source, output, "Roundtrip")
            grammar = ET.parse(output).getroot()

        self.assertEqual(grammar.find("./starts/start").get("name"), "Program")
        program = grammar.find("./rules/rule[@name='Program']")
        self.assertEqual(len(program.findall("choice/production")), 2)
        optional = program.find("choice/production/sequence/optional")
        self.assertIsNotNone(optional)
        self.assertEqual(optional.find("sort").get("name"), "Suffix")
        identifier = grammar.find("./rules/rule[@name='IDENTIFIER']")
        self.assertEqual(
            identifier.find("choice/production/sequence/character-class/range").attrib,
            {"start": "65", "end": "90"},
        )

    def test_rejects_models_without_meta_bnf_grammar_root(self):
        source = (
            Path(__file__).parents[1]
            / "languages"
            / "mbnf"
            / "sandbox"
            / "models"
            / "langtest.mps"
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            with self.assertRaisesRegex(exporter.ExportError, "grammar root"):
                exporter.export_model(
                    source, Path(temporary_directory) / "invalid.xml", "Invalid"
                )


if __name__ == "__main__":
    unittest.main()
