import tempfile
import unittest
from pathlib import Path

from mps_to_rascal import export_rascal_module


class MpsToRascalTest(unittest.TestCase):
    def test_exports_meta_bnf_model_as_rascal_source(self):
        source = (
            Path(__file__).parents[1]
            / "languages"
            / "mbnf"
            / "sandbox"
            / "models"
            / "RascalImportFixture.mps"
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "ExportedGrammar.rsc"
            export_rascal_module(source, output, "test::ExportedGrammar")
            generated = output.read_text(encoding="utf-8")

        self.assertIn("module test::ExportedGrammar", generated)
        self.assertIn("syntax Program =", generated)
        self.assertIn("lexical IDENTIFIER = [A-Z];", generated)
        self.assertNotIn("public void main", generated)
        self.assertNotIn("writeFile(", generated)

    def test_rejects_invalid_module_names(self):
        source = (
            Path(__file__).parents[1]
            / "languages"
            / "mbnf"
            / "sandbox"
            / "models"
            / "RascalImportFixture.mps"
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            with self.assertRaisesRegex(ValueError, "Invalid Rascal module name"):
                export_rascal_module(
                    source, Path(temporary_directory) / "invalid.rsc", "bad-name"
                )


if __name__ == "__main__":
    unittest.main()
