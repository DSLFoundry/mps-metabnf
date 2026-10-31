from __future__ import annotations

import os
import sys
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tests"))

from corpus_support import fetch_upstream_file
from bridge import AntlrError, import_antlr_grammar, run_antlr

ANTLR_JAR = Path(os.environ.get("ANTLR_JAR", ROOT / "build" / "antlr" / "antlr4-4.13.2-complete.jar"))
GRAMMARS_V4 = "antlr/grammars-v4"
ROMAN_REV = "753536777d827ccc0c9b108531ea67375c2039ac"
MUDDB_REV = "b96e04db9d54bb313e542cc3e6ee913900a21520"
DOT_REV = "3e371d221c783c8e4b143409695da137d538521f"


class UpstreamAntlrCorpusTest(unittest.TestCase):
    def setUp(self):
        self.work = ROOT / "build" / "corpus-validation" / "antlr"
        self.work.mkdir(parents=True, exist_ok=True)

    def fetch(self, revision: str, path: str, digest: str) -> Path:
        return fetch_upstream_file(GRAMMARS_V4, revision, path, digest)

    def assert_conversion_rejected(self, grammar: Path, start: str, diagnostic: str) -> None:
        output = self.work / f"{grammar.stem}-rejected.mps"
        output.unlink(missing_ok=True)
        with self.assertRaisesRegex(AntlrError, diagnostic):
            import_antlr_grammar(ANTLR_JAR, grammar, start, output, "RejectedCorpus")
        self.assertFalse(output.exists())

    def parse_source(self, grammar: Path, start: str, text: str, name: str) -> ET.Element:
        source = self.work / f"{name}.txt"
        output = self.work / f"{name}.xml"
        source.write_text(text, encoding="utf-8", newline="\n")
        output.unlink(missing_ok=True)
        run_antlr(ANTLR_JAR, grammar, start, output, source)
        return ET.parse(output).getroot()

    def assert_source_rejected(self, grammar: Path, start: str, text: str, name: str) -> None:
        source = self.work / f"{name}.txt"
        output = self.work / f"{name}.xml"
        source.write_text(text, encoding="utf-8", newline="\n")
        output.unlink(missing_ok=True)
        with self.assertRaises(AntlrError):
            run_antlr(ANTLR_JAR, grammar, start, output, source)
        self.assertFalse(output.exists())

    def test_muddb_converts_and_parses_real_upstream_data(self):
        grammar = ROOT / "tests" / "corpus" / "antlr" / "muddb.g4"
        model = self.work / "muddb.mps"
        import_antlr_grammar(ANTLR_JAR, grammar, "db", model, "MudDbCorpus")
        imported = ET.parse(model).getroot()
        rule_names = {
            prop.get("value")
            for prop in imported.findall(".//property[@role='TrG5h']")
        }
        self.assertTrue({"db", "room", "roomno"} <= rule_names)

        sample = self.fetch(
            MUDDB_REV,
            "muddb/examples/minimal.db",
            "d63b6845d91a930b6c453b7f16050b8fccc65cca89c74a471a6ad71413dd6563",
        )
        source_text = sample.read_text(encoding="utf-8")
        tree = self.parse_source(grammar, "db", source_text, "muddb-valid")
        self.assertEqual("db", tree.find("./node").get("rule"))
        self.assertEqual(2, len(tree.findall(".//node[@rule='room']")))

        self.assertIn("***END OF DUMP***", source_text)
        self.assert_source_rejected(
            grammar,
            "db",
            source_text.replace("***END OF DUMP***", ""),
            "muddb-invalid",
        )

    def test_real_upstream_grammars_separate_conversion_from_source_parsing(self):
        roman = self.fetch(
            ROMAN_REV,
            "romannumerals/romannumerals.g4",
            "2e14d619c2f7bebad278675eb8dd1f382b085c81798550dd0191368e47504356",
        )
        self.assert_conversion_rejected(roman, "expression", "Left-recursive grammar import would lose precedence")
        roman_tree = self.parse_source(roman, "expression", "XIV", "roman-valid")
        self.assertEqual("expression", roman_tree.find("./node").get("rule"))
        self.assertIsNotNone(roman_tree.find(".//node[@rule='thousands']"))
        self.assert_source_rejected(roman, "expression", "A", "roman-invalid")

        morse = self.fetch(
            ROMAN_REV,
            "morsecode/morsecode.g4",
            "afe0e5e93284979aec62afca8f11839bd441e658f71b36da00fde0008b4a67ba",
        )
        self.assert_conversion_rejected(morse, "morsecode", "lexer commands, including skip")
        morse_tree = self.parse_source(morse, "morsecode", ".- -...", "morse-valid")
        self.assertEqual("morsecode", morse_tree.find("./node").get("rule"))
        self.assertEqual(2, len(morse_tree.findall(".//node[@rule='letter']")))
        self.assert_source_rejected(morse, "morsecode", ".-", "morse-invalid")

        sexpression = self.fetch(
            ROMAN_REV,
            "sexpression/sexpression.g4",
            "ec80f6db4f969613308c9e878d193da7a171b3dc1bb466ee7fb5f53d4b7fa77c",
        )
        self.assert_conversion_rejected(sexpression, "sexpr", "Unsupported ANTLR grammar construct")
        sexp_tree = self.parse_source(sexpression, "sexpr", "(+ 1 2)", "sexp-valid")
        self.assertEqual("sexpr", sexp_tree.find("./node").get("rule"))
        self.assertIsNotNone(sexp_tree.find(".//node[@rule='list_']"))
        self.assert_source_rejected(sexpression, "sexpr", "(+ 1 2", "sexp-invalid")

    def test_dot_options_and_split_xml_grammars_are_explicitly_rejected(self):
        dot = self.fetch(
            DOT_REV,
            "dot/DOT.g4",
            "8af8ff4af7cdd70213bbb9031b3729fccc36963b88ea4762df37f1655ce19c8b",
        )
        self.assert_conversion_rejected(dot, "graph", "options")

        xml_parser = self.fetch(
            ROMAN_REV,
            "xml/XMLParser.g4",
            "3ad2a88464138a73e821b47bfd6236f456e090e8961b5a91014b4cf31410b5f7",
        )
        xml_lexer = self.fetch(
            ROMAN_REV,
            "xml/XMLLexer.g4",
            "2d14f11025d66bec1d881caa5a3b15fde81bd35846c05c306694f742897b8762",
        )
        self.assertIn("tokenVocab = XMLLexer", xml_parser.read_text(encoding="utf-8"))
        self.assertIn("lexer grammar XMLLexer", xml_lexer.read_text(encoding="utf-8"))
        self.assert_conversion_rejected(xml_parser, "document", "self-contained combined ANTLR 4 grammars")


if __name__ == "__main__":
    unittest.main()
