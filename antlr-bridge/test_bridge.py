import os
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

from bridge import AntlrError, import_antlr_grammar, import_antlr_text, run_antlr


ROOT = Path(__file__).resolve().parent.parent
FIXTURES = ROOT / "tests" / "antlr-bridge"
JAR = Path(os.environ.get("ANTLR_JAR", ROOT / "build" / "antlr" / "antlr4-4.13.2-complete.jar"))
TEMPLATE = ROOT / "languages" / "mbnf" / "sandbox" / "models" / "langtest.mps"


class AntlrBridgeTest(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="metabnf-antlr-test-")
        self.directory = Path(self.temporary.name)
        self.output = self.directory / "result.xml"

    def tearDown(self):
        self.temporary.cleanup()

    def grammar(self, rules):
        path = self.directory / "Sample.g4"
        path.write_text("grammar Sample;\n" + rules, encoding="utf-8")
        return path

    def source(self, text):
        path = self.directory / "source.txt"
        path.write_text(text, encoding="utf-8", newline="\n")
        return path

    def test_imports_grammar_with_alternatives_ranges_and_optional_sort(self):
        import_antlr_grammar(
            JAR, FIXTURES / "Mini.g4", "program", self.output, "AntlrGrammar"
        )
        model = ET.parse(self.output).getroot()
        self.assertIn("(mbnf.sandbox.AntlrGrammar)", model.get("ref"))
        concepts = {node.get("concept") for node in model.findall(".//node")}
        self.assertTrue({"3xJwxZ", "3xJKux", "3xJKsl", "1SSJmt", "1T8lYq"} <= concepts)
        names = {prop.get("value") for prop in model.findall(".//property[@role='TrG5h']")}
        self.assertIn("program", names)
        self.assertIn("Antlr", names)
        self.assertNotIn("Rascal", names)
        self.assertNotIn("WS", names)
        self.assertIn(
            "2b2ZYR3yDpL/AtMostOne",
            {prop.get("value") for prop in model.findall(".//property[@role='3xj4NX']")},
        )
        ids = {node.get("id") for node in model.findall(".//node")}
        self.assertTrue(all(ref.get("node") in ids for ref in model.findall(".//node/ref")))

    def test_imports_grouped_parser_and_compound_lexer_expressions(self):
        grammar = FIXTURES / "GrammarCoverage.g4"
        interchange = self.directory / "coverage.xml"
        run_antlr(JAR, grammar, "program", interchange)
        root = ET.parse(interchange).getroot()
        generated = [rule for rule in root.findall("./rules/rule")
                     if rule.get("name", "").startswith("_AntlrGroup")]
        self.assertGreaterEqual(len(generated), 2)
        identifier = root.find("./rules/rule[@name='ID']")
        self.assertIsNotNone(identifier.find("choice/production/sequence/sequence"))
        self.assertIsNotNone(identifier.find(".//one-or-more/character-class"))
        self.assertIsNotNone(identifier.find(".//zero-or-more/character-class"))

        model = self.directory / "GrammarCoverage.mps"
        import_antlr_grammar(JAR, grammar, "program", model, "GrammarCoverage")
        imported = ET.parse(model).getroot()
        concepts = {node.get("concept") for node in imported.findall(".//node")}
        self.assertTrue({"1OJ37Q", "1OCdqh", "1OClNT", "1OCmVF"} <= concepts)
        names = {prop.get("value") for prop in imported.findall(".//property[@role='TrG5h']")}
        self.assertTrue(any(name.startswith("_AntlrGroup") for name in names))

        for text in ("alpha+Beta", "true"):
            with self.subTest(text=text):
                run_antlr(JAR, grammar, "program", self.output, self.source(text))
                self.assertIsNotNone(ET.parse(self.output).find("./node[@rule='program']"))
        with self.assertRaises(AntlrError):
            run_antlr(JAR, grammar, "program", self.output, self.source("alpha+"))

    def test_rejects_skip_commands_for_meta_bnf_grammar_import(self):
        grammar = self.grammar(r"program : 'x' EOF; WS : [ \t\r\n]+ -> skip;")
        with self.assertRaisesRegex(AntlrError, "lexer commands, including skip"):
            import_antlr_grammar(JAR, grammar, "program", self.output, "UnsupportedSkip")
        self.assertFalse(self.output.exists())

    def test_parses_original_antlr_lexer_and_maps_empty_single_and_multiple_statements(self):
        cases = (
            ("program P {}", []),
            ("program PROG {\n X = 123;\n}", [("X", "123")]),
            ("program P { FIRST=1; SECOND=22; }", [("FIRST", "1"), ("SECOND", "22")]),
        )
        for text, assignments in cases:
            with self.subTest(text=text):
                import_antlr_text(
                    JAR, FIXTURES / "DemoText.g4", "program", self.source(text),
                    TEMPLATE, FIXTURES / "demo-mapping.json", self.output, "AntlrProgram",
                )
                model = ET.parse(self.output).getroot()
                registry = {
                    concept.get("name"): concept for concept in model.findall("registry/language/concept")
                }
                assignment = registry["Demo.structure.Assignment"]
                number = registry["Demo.structure.Number"]
                nodes = model.findall(f".//node[@concept='{assignment.get('index')}']")
                self.assertEqual(len(assignments), len(nodes))
                id_role = assignment.find("property[@name='Identifier']").get("index")
                value_role = number.find("property[@name='NumberValue']").get("index")
                for node, (identifier, value) in zip(nodes, assignments):
                    self.assertEqual(identifier, node.find(f"property[@role='{id_role}']").get("value"))
                    self.assertEqual(
                        value, node.find(f".//property[@role='{value_role}']").get("value")
                    )

    def test_parser_and_lexer_errors_and_unconsumed_input_preserve_output(self):
        for text in ("program P { X=; }", "program P {} @", "program P {} trailing"):
            with self.subTest(text=text):
                self.output.write_text("previous output", encoding="utf-8")
                with self.assertRaises(AntlrError):
                    run_antlr(
                        JAR, FIXTURES / "DemoText.g4", "program", self.output, self.source(text)
                    )
                self.assertEqual("previous output", self.output.read_text(encoding="utf-8"))

    def test_rejects_trailing_input_even_without_explicit_eof(self):
        grammar = self.grammar("program : 'x'; ID : [a-z];")
        with self.assertRaisesRegex(AntlrError, "Unconsumed"):
            run_antlr(JAR, grammar, "program", self.output, self.source("xy"))
        self.assertFalse(self.output.exists())

    def test_rejects_actions_and_predicates_instead_of_ignoring_them(self):
        for rules in (
            "program : 'x' {System.exit(0);};",
            "program : {false}? 'x';",
        ):
            with self.subTest(rules=rules):
                with self.assertRaisesRegex(AntlrError, "Unsupported ANTLR actions"):
                    run_antlr(JAR, self.grammar(rules), "program", self.output, self.source("x"))
                self.assertFalse(self.output.exists())

    def test_rejects_split_grammars_imports_and_token_vocab(self):
        grammars = (
            "parser grammar Sample; program : 'x';",
            "lexer grammar Sample; TOKEN : 'x';",
            "grammar Sample; import Shared; program : 'x';",
            "grammar Sample; options { tokenVocab=Shared; } program : TOKEN;",
        )
        for source in grammars:
            with self.subTest(source=source):
                grammar = self.directory / "Unsupported.g4"
                grammar.write_text(source, encoding="utf-8")
                with self.assertRaises((AntlrError, ValueError)):
                    import_antlr_grammar(JAR, grammar, "program", self.output, "Unsupported")
                self.assertFalse(self.output.exists())

    def test_rejects_unsupported_grammar_features_without_replacing_output(self):
        for rules in (
            "options { caseInsensitive=true; } program : 'x';",
            "program : ID; ID : 'x' -> channel(HIDDEN);",
            "program : ID; ID : CHAR; fragment CHAR : [a-z];",
            "program : ID; ID : 'x' | ' ' -> skip;",
        ):
            with self.subTest(rules=rules):
                self.output.write_text("previous output", encoding="utf-8")
                with self.assertRaises((AntlrError, ValueError)):
                    import_antlr_grammar(
                        JAR, self.grammar(rules), "program", self.output, "Unsupported"
                    )
                self.assertEqual("previous output", self.output.read_text(encoding="utf-8"))

    def test_rejects_xml_invalid_tokens_without_replacing_output(self):
        grammar = self.grammar("program : TEXT EOF; TEXT : .+;")
        self.output.write_text("previous output", encoding="utf-8")
        with self.assertRaisesRegex(AntlrError, "not representable in XML"):
            run_antlr(JAR, grammar, "program", self.output, self.source("\0"))
        self.assertEqual("previous output", self.output.read_text(encoding="utf-8"))

    def test_missing_mapping_rule_preserves_existing_model(self):
        mapping = self.directory / "mapping.json"
        mapping.write_text('{"rules": {}}', encoding="utf-8")
        self.output.write_text("previous output", encoding="utf-8")
        with self.assertRaises(ValueError):
            import_antlr_text(
                JAR, FIXTURES / "DemoText.g4", "program", self.source("program P {}"),
                TEMPLATE, mapping, self.output, "MissingMapping",
            )
        self.assertEqual("previous output", self.output.read_text(encoding="utf-8"))

    def test_refuses_to_overwrite_runtime_jar(self):
        jar = self.directory / "antlr.jar"
        jar.write_bytes(b"runtime sentinel")
        with self.assertRaisesRegex(AntlrError, "must not overwrite"):
            import_antlr_grammar(jar, FIXTURES / "Mini.g4", "program", jar, "Overwrite")
        self.assertEqual(b"runtime sentinel", jar.read_bytes())

    def test_rejects_unknown_start_and_invalid_grammar(self):
        for grammar, start in (
            (FIXTURES / "Mini.g4", "missing"),
            (self.grammar("program : missing;"), "program"),
        ):
            with self.subTest(grammar=grammar, start=start):
                with self.assertRaises(AntlrError):
                    run_antlr(JAR, grammar, start, self.output)
                self.assertFalse(self.output.exists())

    def test_rejects_lexer_rule_references_without_writing_model(self):
        grammar = self.grammar("program : NUMBER EOF; NUMBER : DIGIT+; DIGIT : [0-9];")
        with self.assertRaisesRegex(AntlrError, "lexer rule references/fragments"):
            import_antlr_grammar(JAR, grammar, "program", self.output, "Unsupported")
        self.assertFalse(self.output.exists())

    def test_rejects_left_recursion_for_grammar_import(self):
        grammar = self.grammar("program : program '+' program | 'x';")
        with self.assertRaisesRegex(AntlrError, "lose precedence"):
            run_antlr(JAR, grammar, "program", self.output)
        self.assertFalse(self.output.exists())

    def test_native_antlr_interpreter_handles_left_recursive_expression(self):
        grammar = self.grammar("program : expr EOF; expr : expr '+' expr | 'x';")
        run_antlr(JAR, grammar, "program", self.output, self.source("x+x"))
        root = ET.parse(self.output).getroot()
        self.assertEqual("program", root[0].get("rule"))
        self.assertEqual(2, len(root[0].find("node[@rule='expr']").findall("node")))

    def test_preserves_xml_attribute_characters_in_tokens(self):
        grammar = self.grammar("program : TEXT EOF; TEXT : .+;")
        run_antlr(JAR, grammar, "program", self.output, self.source('a&<"\tb\nc'))
        token = ET.parse(self.output).getroot().find(".//token")
        self.assertEqual('a&<"\tb\nc', token.get("value"))

    def test_rejects_missing_jar_without_writing_output(self):
        with self.assertRaisesRegex(AntlrError, "JAR does not exist"):
            run_antlr(self.directory / "missing.jar", FIXTURES / "Mini.g4", "program", self.output)
        self.assertFalse(self.output.exists())

    def test_refuses_to_overwrite_inputs(self):
        grammar = self.grammar("program : 'x';")
        original = grammar.read_bytes()
        with self.assertRaisesRegex(AntlrError, "must not overwrite"):
            import_antlr_grammar(JAR, grammar, "program", grammar, "Invalid")
        self.assertEqual(original, grammar.read_bytes())


if __name__ == "__main__":
    unittest.main()
