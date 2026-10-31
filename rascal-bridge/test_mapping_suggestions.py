import copy
import json
import subprocess
import sys
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

from mapping_suggestions import metamodel_concepts, suggest
from parse_tree_to_mps import MpsNodeFactory, map_tree, read_concept_registry

ROOT = Path(__file__).resolve().parent.parent
FIXTURES = ROOT / "tests" / "mapping-suggestions"


def load(name):
    return json.loads((FIXTURES / name).read_text(encoding="utf-8"))


def concept(name, *, root=False, properties=(), children=(), abstract=False, assignable=()):
    return {"name": name, "id": name + ":id", "abstract": abstract, "rootable": root,
            "assignableTo": [name, *assignable],
            "properties": [{"name": p, "id": p + ":id", "type": "string", "declared": True}
                           for p in properties],
            "children": [{"name": r, "id": r + ":id", "target": t, "optional": o, "multiple": m}
                         for r, t, o, m in children], "references": []}


def sample_grammar(body='<lexical name="ID"/>'):
    return ET.fromstring(f'''<rascal-grammar format-version="1" module="Sample">
      <starts><start name="Program"/></starts><rules>
      <rule name="Program" kind="sort"><production><sequence>{body}</sequence></production></rule>
      <rule name="ID" kind="lexical"><production><sequence><literal value="x"/></sequence></production></rule>
      </rules></rascal-grammar>''')


class MappingSuggestionsTest(unittest.TestCase):
    def setUp(self):
        self.grammar = sample_grammar()
        self.metamodel = {"formatVersion": 1, "concepts": [concept("target.Program", root=True, properties=["ID"])]}

    def codes(self, report):
        return {d["code"] for d in report["diagnostics"]}

    def test_exact_string_property_and_concept_suggestions(self):
        report = suggest(self.grammar, self.metamodel)
        self.assertFalse(report["reviewRequired"])
        self.assertEqual({"concept": "target.Program", "properties": {"ID": {"token": "ID"}}},
                         report["mapping"]["rules"]["Program"])
        self.assertEqual(report, suggest(self.grammar, self.metamodel))

    def test_explicit_fields_are_authoritative_and_input_is_not_mutated(self):
        self.metamodel["concepts"].append(concept("other.Root", root=True, properties=["name"]))
        explicit = {"customMetadata": {"keep": True}, "rules": {
            "Program": {"concept": "other.Root", "properties": {"name": {"token": "ID"}}}}}
        before = copy.deepcopy(explicit)
        report = suggest(self.grammar, self.metamodel, explicit)
        self.assertFalse(report["reviewRequired"])
        self.assertEqual(before, report["mapping"])
        self.assertEqual(before, explicit)
        self.assertEqual({}, report["suggestions"])

    def test_same_short_name_concepts_require_decision_not_first_match(self):
        self.metamodel["concepts"].append(concept("other.Program", root=True, properties=["ID"]))
        report = suggest(self.grammar, self.metamodel)
        self.assertIn("concept-decision", self.codes(report))
        self.assertNotIn("Program", report["mapping"]["rules"])

    def test_abstract_and_nonrootable_targets_are_not_safe(self):
        self.metamodel["concepts"][0]["abstract"] = True
        self.assertIn("concept-decision", self.codes(suggest(self.grammar, self.metamodel)))
        report = suggest(self.grammar, self.metamodel, {"rules": {"Program": {"concept": "target.Program"}}})
        self.assertIn("abstract-target", self.codes(report))
        self.metamodel["concepts"][0].update(abstract=False, rootable=False)
        self.assertIn("non-rootable", self.codes(suggest(self.grammar, self.metamodel)))

    def test_alternatives_and_unknown_constructs_never_silently_flatten(self):
        for body in ('<choice><literal value="a"/><literal value="b"/></choice>',
                     '<keyword name="ID"/>', '<one-or-more><optional><lexical name="ID"/></optional></one-or-more>'):
            with self.subTest(body=body):
                report = suggest(sample_grammar(body), self.metamodel)
                self.assertIn("grammar-decision", self.codes(report))
                self.assertNotIn("properties", report["mapping"]["rules"]["Program"])

    def test_repeated_and_optional_token_properties_need_decisions(self):
        for body, code in (('<lexical name="ID"/><lexical name="ID"/>', "duplicate-source"),
                           ('<optional><lexical name="ID"/></optional>', "property-cardinality")):
            explicit = {"rules": {"Program": {"properties": {"ID": {"token": "ID"}}}}}
            report = suggest(sample_grammar(body), self.metamodel, explicit)
            self.assertIn(code, self.codes(report))
            self.assertEqual(explicit["rules"]["Program"]["properties"],
                             report["mapping"]["rules"]["Program"]["properties"])

    def test_constrained_properties_need_user_mapping(self):
        self.metamodel["concepts"][0]["properties"][0]["type"] = "constrained"
        report = suggest(self.grammar, self.metamodel)
        self.assertIn("source-decision", self.codes(report))
        self.assertNotIn("properties", report["mapping"]["rules"]["Program"])
        explicit = {"rules": {"Program": {"properties": {"ID": {"token": "ID"}}}}}
        self.assertFalse(suggest(self.grammar, self.metamodel, explicit)["reviewRequired"])

    def test_token_property_vs_token_node_is_an_explicit_decision(self):
        self.metamodel["concepts"].append(concept("target.ID", properties=["text"]))
        self.metamodel["concepts"][0]["children"] = concept(
            "unused", children=[("identifier", "target.ID", False, False)])["children"]
        report = suggest(self.grammar, self.metamodel)
        self.assertIn("token-target-decision", self.codes(report))
        self.assertNotIn("properties", report["mapping"]["rules"]["Program"])
        self.assertNotIn("children", report["mapping"]["rules"]["Program"])

    def test_explicit_token_concept_override_participates_in_target_ambiguity(self):
        self.metamodel["concepts"].append(concept("other.Atom", properties=["text"]))
        self.metamodel["concepts"][0]["children"] = concept(
            "unused", children=[("identifier", "other.Atom", False, False)])["children"]
        explicit = {"rules": {"ID": {"concept": "other.Atom"}}}
        report = suggest(self.grammar, self.metamodel, explicit)
        self.assertIn("token-target-decision", self.codes(report))
        self.assertNotIn("properties", report["mapping"]["rules"]["Program"])
        self.assertEqual("other.Atom", report["mapping"]["rules"]["ID"]["concept"])

    def test_token_self_only_uses_unique_declared_string_property(self):
        self.metamodel["concepts"] = [concept("target.Program", root=True, children=[("id", "target.ID", False, False)]),
                                      concept("target.ID", properties=["text"])]
        report = suggest(self.grammar, self.metamodel)
        self.assertFalse(report["reviewRequired"])
        self.assertEqual({"text": {"self": True}}, report["mapping"]["rules"]["ID"]["properties"])
        self.metamodel["concepts"][1]["properties"].append(
            {"name": "second", "id": "second", "type": "string", "declared": True})
        self.assertIn("property-decision", self.codes(suggest(self.grammar, self.metamodel)))

    def test_child_target_cardinalities_and_ambiguity(self):
        for wrapper, optional, multiple in ((None, False, False), ("optional", True, False),
                                           ("one-or-more", False, True), ("zero-or-more", True, True)):
            body = '<lexical name="ID"/>'
            if wrapper:
                body = f'<{wrapper}>{body}</{wrapper}>'
            mm = {"formatVersion": 1, "concepts": [
                concept("target.Program", root=True, children=[("id", "target.ID", optional, multiple)]),
                concept("target.ID", properties=["text"])]}
            report = suggest(sample_grammar(body), mm)
            self.assertFalse(report["reviewRequired"], report["diagnostics"])
            self.assertEqual({"ID": "id"}, report["mapping"]["rules"]["Program"]["children"])
            mm["concepts"][0]["children"][0]["multiple"] = not multiple
            self.assertIn("containment-decision", self.codes(suggest(sample_grammar(body), mm)))
        mm["concepts"][0]["children"][0]["multiple"] = multiple
        second = copy.deepcopy(mm["concepts"][0]["children"][0])
        second.update(name="other", id="other:id")
        mm["concepts"][0]["children"].append(second)
        self.assertIn("containment-decision", self.codes(suggest(sample_grammar(body), mm)))

    def test_layout_only_separators_are_structural_but_punctuation_requires_review(self):
        body = ('<one-or-more-sep><element><lexical name="ID"/></element>'
                '<separators><layout name="$default$"/></separators></one-or-more-sep>')
        mm = {"formatVersion": 1, "concepts": [
            concept("target.Program", root=True, children=[("ids", "target.ID", False, True)]),
            concept("target.ID", properties=["text"])]}
        self.assertFalse(suggest(sample_grammar(body), mm)["reviewRequired"])
        body = body.replace('<layout name="$default$"/>', '<literal value=","/>')
        self.assertIn("grammar-decision", self.codes(suggest(sample_grammar(body), mm)))

    def test_shared_containment_does_not_infer_arbitrary_source_order(self):
        grammar = sample_grammar('<lexical name="ID"/><sort name="Other"/>')
        rule = ET.SubElement(grammar.find("rules"), "rule", name="Other", kind="sort")
        ET.SubElement(ET.SubElement(rule, "production"), "sequence")
        mm = {"formatVersion": 1, "concepts": [
            concept("target.Program", root=True, children=[("expression", "target.Expression", False, False)]),
            concept("target.ID", properties=["text"], assignable=["target.Expression"]),
            concept("target.Other", assignable=["target.Expression"])]}
        report = suggest(grammar, mm)
        self.assertIn("shared-containment", self.codes(report))
        self.assertNotIn("children", report["mapping"]["rules"]["Program"])
        explicit = {"rules": {"Program": {"children": {"ID": "expression"}}}}
        report = suggest(grammar, mm, explicit)
        self.assertIn("shared-containment", self.codes(report))
        self.assertEqual({"ID": "expression"}, report["mapping"]["rules"]["Program"]["children"])

    def test_inheritance_is_used_for_child_target_compatibility(self):
        self.metamodel["concepts"] = [
            concept("target.Program", root=True, children=[("id", "target.Expression", False, False)]),
            concept("target.ID", properties=["text"], assignable=["target.Expression"])]
        self.assertFalse(suggest(self.grammar, self.metamodel)["reviewRequired"])

    def test_stale_rules_concepts_properties_sources_and_roles_are_preserved(self):
        explicit = {"rules": {
            "Gone": {"concept": "target.Program"}, "ID": {"concept": "missing.Concept"},
            "Program": {"concept": "target.Program", "properties": {"old": {"token": "REMOVED"}},
                        "children": {"removed": "oldRole"}}}}
        report = suggest(self.grammar, self.metamodel, explicit)
        self.assertTrue({"stale-rule", "stale-concept", "stale-property", "stale-source", "stale-role"}
                        <= self.codes(report))
        for rule, value in explicit["rules"].items():
            for field, mapping in value.items():
                actual = report["mapping"]["rules"][rule][field]
                if isinstance(mapping, dict):
                    for key, value in mapping.items():
                        self.assertEqual(value, actual[key])
                else:
                    self.assertEqual(mapping, actual)

    def test_fingerprints_detect_same_name_identity_and_grammar_changes(self):
        report = suggest(self.grammar, self.metamodel)
        self.assertNotIn("stale-input", self.codes(suggest(self.grammar, self.metamodel, previous=report)))
        mm = copy.deepcopy(self.metamodel)
        mm["concepts"][0]["properties"][0]["id"] = "replacement-identity"
        changed = suggest(self.grammar, mm, previous=report)
        self.assertIn("stale-input", self.codes(changed))
        self.grammar.set("module", "Different")
        self.assertIn("stale-input", self.codes(suggest(self.grammar, self.metamodel, previous=report)))
        formatted = ET.fromstring(ET.tostring(sample_grammar()).decode().replace("><", ">\n  <"))
        self.assertEqual(report["provenance"]["grammar"], suggest(formatted, self.metamodel)["provenance"]["grammar"])

    def test_missing_metadata_duplicate_names_and_bad_inputs_fail_closed(self):
        for key in ("children", "rootable", "assignableTo", "id"):
            mm = copy.deepcopy(self.metamodel)
            del mm["concepts"][0][key]
            with self.subTest(key=key), self.assertRaises(ValueError):
                metamodel_concepts(mm)
        self.metamodel["concepts"].append(copy.deepcopy(self.metamodel["concepts"][0]))
        with self.assertRaisesRegex(ValueError, "duplicate"):
            suggest(self.grammar, self.metamodel)

    def test_mandatory_references_are_decisions_not_guessed(self):
        self.metamodel["concepts"][0]["references"].append(
            {"name": "referent", "id": "ref:id", "target": "target.Program", "optional": False})
        self.assertIn("reference-decision", self.codes(suggest(self.grammar, self.metamodel)))

    def test_demo_rascal_partial_decisions_complete_to_existing_explicit_ast_shape(self):
        grammar = ET.parse(FIXTURES / "sample-rascal.xml").getroot()
        explicit = load("rascal-decisions.json")
        report = suggest(grammar, load("demo-metamodel.json"), explicit)
        self.assertFalse(report["reviewRequired"], report["diagnostics"])
        expected = json.loads((ROOT / "tests/rascal-bridge/demo-ast-mapping.json").read_text())
        self.assertEqual(expected, report["mapping"])
        self.assertEqual({"Program", "Statements", "Assignment"}, set(report["suggestions"]))
        registry = read_concept_registry(ET.parse(ROOT / "languages/mbnf/sandbox/models/langtest.mps").getroot())
        for count in (1, 3):
            tree = ET.Element("node", rule="Program")
            ET.SubElement(tree, "token", rule="IDENTIFIER", value="P")
            statements = ET.SubElement(tree, "node", rule="Statements")
            for i in range(count):
                assignment = ET.SubElement(statements, "node", rule="Assignment")
                ET.SubElement(assignment, "token", rule="IDENTIFIER", value="X")
                ET.SubElement(assignment, "token", rule="NUMBER", value=str(i))
            actual = map_tree(tree, report["mapping"]["rules"], registry, MpsNodeFactory())
            baseline = map_tree(tree, expected["rules"], registry, MpsNodeFactory())
            self.assertEqual(ET.tostring(baseline), ET.tostring(actual))
            self.assertEqual(count, len(actual.find("node").findall("node")))

    def test_demo_zero_or_more_vs_required_target_list_is_diagnosed_without_rewriting(self):
        grammar = ET.parse(ROOT / "tests/rascal-bridge/demo-language-grammar.xml").getroot()
        explicit = json.loads((ROOT / "tests/rascal-bridge/demo-ast-mapping.json").read_text())
        report = suggest(grammar, load("demo-metamodel.json"), explicit)
        self.assertIn("incompatible-containment", self.codes(report))
        self.assertEqual(explicit, report["mapping"])

    def test_cli_writes_review_report_and_refuses_input_or_model_overwrite(self):
        (ROOT / "build").mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(dir=ROOT / "build", prefix="mapping-test-") as directory:
            output = Path(directory) / "report.json"
            command = [sys.executable, str(ROOT / "rascal-bridge/mapping_suggestions.py"),
                       "--grammar", str(FIXTURES / "sample-rascal.xml"), "--metamodel",
                       str(FIXTURES / "demo-metamodel.json"), "--output", str(output)]
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(2, result.returncode, result.stderr)
            self.assertTrue(json.loads(output.read_text())["reviewRequired"])
            result = subprocess.run(command + ["--explicit", str(FIXTURES / "rascal-decisions.json")],
                                    capture_output=True, text=True)
            self.assertEqual(0, result.returncode, result.stderr)
            previous = output.read_bytes()
            result = subprocess.run(command + ["--previous", str(output)], capture_output=True, text=True)
            self.assertEqual(2, result.returncode)
            self.assertEqual(previous, output.read_bytes())
            model = output.with_suffix(".mps")
            command[-1] = str(model)
            result = subprocess.run(command, capture_output=True, text=True)
            self.assertEqual(2, result.returncode)
            self.assertFalse(model.exists())


if __name__ == "__main__":
    unittest.main()
