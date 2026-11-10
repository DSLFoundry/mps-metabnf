from __future__ import annotations

import contextlib
import io
import os
import sys
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tests"))

from corpus_support import fetch_upstream_file
from import_rascal_file import RascalImportError, import_rascal_file
from import_to_mps import import_grammar
from mps_to_interchange import export_model
from run_parser import ParserRunError, parse_text

RASCAL_JAR = Path(os.environ.get("RASCAL_JAR", ROOT / "build" / "rascal" / "rascal-0.43.0.jar"))
RASCAL_REPO = "usethesource/rascal"
RASCAL_REV = "74ebe127af6db4b1204e0c46a5bcb755e3f204e6"


class RascalCorpusTest(unittest.TestCase):
    def setUp(self):
        self.work = ROOT / "build" / "corpus-validation" / "rascal"
        self.work.mkdir(parents=True, exist_ok=True)

    def fetch(self, path: str, digest: str) -> Path:
        return fetch_upstream_file(RASCAL_REPO, RASCAL_REV, path, digest)

    def test_upstream_rascal_modules_are_rejected_with_exporter_diagnostic(self):
        candidates = (
            (
                "src/org/rascalmpl/library/lang/json/syntax/JSON.rsc",
                "13730d6adab98ddc52035159fffbddfa0f151babfca0c0aa473a4e7042ee035f",
                "JSON",
            ),
            (
                "src/org/rascalmpl/library/lang/logic/syntax/Booleans.rsc",
                "ca95a8d9d3bd87c2067ac92a1dff174708dee8532b4f69ccd0f34260447ea6d2",
                "Booleans",
            ),
        )
        for path, digest, name in candidates:
            with self.subTest(module=name):
                source = self.fetch(path, digest)
                output = self.work / f"{name}.xml"
                output.unlink(missing_ok=True)
                diagnostics = io.StringIO()
                with contextlib.redirect_stdout(diagnostics):
                    with self.assertRaises(RascalImportError):
                        import_rascal_file(RASCAL_JAR, source, output)
                self.assertIn("RascalGrammarExport.rsc", diagnostics.getvalue())
                self.assertIn("Unsupported Rascal grammar symbol", diagnostics.getvalue())
                self.assertFalse(output.exists())

    def test_supported_rascal_control_round_trips_and_checks_source_shapes(self):
        source_module = ROOT / "tests" / "rascal-bridge" / "GrammarCoverage.rsc"
        interchange = self.work / "coverage.xml"
        imported_model = self.work / "coverage.mps"
        roundtrip = self.work / "coverage-roundtrip.xml"
        for path in (interchange, imported_model, roundtrip):
            path.unlink(missing_ok=True)

        with contextlib.redirect_stdout(io.StringIO()):
            import_rascal_file(RASCAL_JAR, source_module, interchange)
        grammar_xml = ET.parse(interchange).getroot()
        self.assertEqual("Program", grammar_xml.find("./starts/start").get("name"))
        self.assertEqual("layout", grammar_xml.find("./rules/rule[@name='WS']").get("kind"))

        import_grammar(interchange, imported_model, "RascalCorpusControl")
        export_model(imported_model, roundtrip, "RascalCorpusControl")
        self.assertEqual("Program", ET.parse(roundtrip).getroot().find("./starts/start").get("name"))

        valid = self.work / "valid.txt"
        valid.write_text("alpha, beta", encoding="utf-8", newline="\n")
        for grammar in (interchange, roundtrip):
            parse_tree = self.work / f"{grammar.stem}-valid.xml"
            parse_tree.unlink(missing_ok=True)
            parse_text(RASCAL_JAR, grammar, valid, parse_tree)
            tree = ET.parse(parse_tree).getroot()
            self.assertIsNotNone(tree.find("./node[@rule='Program']"))

        invalid = self.work / "invalid.txt"
        invalid.write_text("alpha,,beta", encoding="utf-8", newline="\n")
        invalid_tree = self.work / "invalid.xml"
        invalid_tree.unlink(missing_ok=True)
        with self.assertRaises(ParserRunError):
            parse_text(RASCAL_JAR, interchange, invalid, invalid_tree, report_output=False)
        self.assertFalse(invalid_tree.exists())


if __name__ == "__main__":
    unittest.main()
