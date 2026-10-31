"""Authored benchmark controls only; these tests do not operate either native editor."""
from __future__ import annotations

import json
import os
from pathlib import Path
import subprocess
import unittest
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2]
FIXTURES = Path(__file__).resolve().parent
WORK = ROOT / "build" / "comparative-editor"
JAR = Path(os.environ.get("ANTLR_JAR", ROOT / "build" / "antlr" / "antlr4-4.13.2-complete.jar"))


def load(name):
    return json.loads((FIXTURES / name).read_text(encoding="utf-8-sig"))


def normalize(node):
    rule = node.get("rule")
    children = list(node.findall("node"))
    if rule == "program":
        if len(children) != 1:
            raise AssertionError("Expected one program block")
        return normalize(children[0])
    if rule == "block":
        return {"block": [normalize(child) for child in children]}
    if rule == "statement":
        if not children:
            return {"return": None}
        if len(children) != 1:
            raise AssertionError("Unexpected statement shape")
        value = normalize(children[0])
        return value if children[0].get("rule") == "block" else {"return": value}
    if rule == "expression":
        values = [token.get("value") for token in node.findall("token[@rule='NUMBER']")]
        if not values:
            raise AssertionError("Missing numeric operand")
        expression = {"number": values[0]}
        for value in values[1:]:
            expression = {"add": [expression, {"number": value}]}
        return expression
    raise AssertionError(f"Unexpected parser rule: {rule}")


def expression_fact(node):
    if node is None:
        return "absent"
    if "number" in node:
        return f"number({node['number']})"
    left, right = node["add"]
    return f"add({expression_fact(left)},{expression_fact(right)})"


def reference_facts(node, path="$"):
    if "return" in node:
        return [f"{path}:return:{expression_fact(node['return'])}"]
    statements = node["block"]
    result = [f"{path}:block:{len(statements)}"]
    for index, child in enumerate(statements):
        result.extend(reference_facts(child, f"{path}.{index}"))
    return result


class ComparativeEditorFixtureTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.manifest = load("scenarios.json")
        cls.generated = load("generated-expectations.json")
        cls.reference = load("reference-expectations.json")
        WORK.mkdir(parents=True, exist_ok=True)
        classes = WORK / "classes"
        classes.mkdir(exist_ok=True)
        home = os.environ.get("JAVA_HOME")
        def java_tool(name):
            executable = name + (".exe" if os.name == "nt" else "")
            return str(Path(home) / "bin" / executable) if home else executable

        cls.java = java_tool("java")
        compilation = subprocess.run(
            [java_tool("javac"), "-cp", str(JAR), "-d", str(classes),
             str(ROOT / "antlr-bridge" / "src" / "AntlrBridge.java")],
            capture_output=True, text=True, timeout=120)
        if compilation.returncode:
            raise AssertionError(compilation.stdout + compilation.stderr)
        cls.classpath = os.pathsep.join((str(JAR), str(classes)))

    def bridge(self, operation, text=None, label="grammar"):
        output = WORK / f"{label}.xml"
        output.unlink(missing_ok=True)
        args = [self.java, "-cp", self.classpath, "AntlrBridge", operation,
                str(FIXTURES / "CSharpComparison.g4"), "program", str(output)]
        if text is not None:
            source = WORK / f"{label}.txt"
            source.write_text(text, encoding="utf-8", newline="\n")
            args.append(str(source))
        result = subprocess.run(args, capture_output=True, text=True, timeout=120)
        return result, output

    def test_scenario_inventory_and_independent_expectations(self):
        self.assertEqual(1, self.manifest["schema"])
        self.assertEqual("authored-parser-control-not-native-editor-results", self.manifest["scope"])
        self.assertEqual(set(self.manifest["syntax"]), set(self.generated))
        self.assertEqual(set(self.generated), set(self.reference))
        self.assertEqual({"empty-block-creation", "append-populated-block", "nested-block-boundary",
                          "optional-return-payload", "remove-and-undo", "expression-caret",
                          "export-and-reload"}, {s["id"] for s in self.manifest["scenarios"]})
        self.assertEqual(7, len(self.manifest["scenarios"]))
        for scenario in self.manifest["scenarios"]:
            with self.subTest(scenario=scenario["id"]):
                for field in ("before", "after", "reload"):
                    self.assertIn(scenario[field], self.generated)
                self.assertEqual(scenario["after"], scenario["reload"])
                self.assertTrue(scenario["actions"])
                self.assertTrue(scenario["focus"])
                self.assertTrue(scenario["initialFocus"])
                self.assertTrue(scenario["undo"])
        for state, expectation in self.generated.items():
            with self.subTest(state=state):
                self.assertEqual(self.reference[state], reference_facts(expectation))

    def test_authored_grammar_converts_to_interchange(self):
        result, output = self.bridge("grammar")
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        document = ET.parse(output).getroot()
        self.assertEqual("rascal-grammar", document.tag)
        names = {node.get("name") for node in document.findall(".//rule")}
        self.assertTrue({"program", "block", "statement", "expression"} <= names, names)

    def test_all_authored_states_match_semantic_expectations(self):
        for state, syntax in self.manifest["syntax"].items():
            with self.subTest(state=state):
                result, output = self.bridge("parse", syntax, state)
                self.assertEqual(0, result.returncode, result.stdout + result.stderr)
                actual = normalize(ET.parse(output).getroot().find("node"))
                self.assertEqual(self.generated[state], actual)
                self.assertEqual(self.reference[state], reference_facts(actual))

    def test_out_of_slice_and_malformed_sources_are_rejected(self):
        for index, syntax in enumerate(self.manifest["invalid"]):
            with self.subTest(syntax=syntax):
                result, output = self.bridge("parse", syntax, f"invalid-{index}")
                self.assertNotEqual(0, result.returncode)
                self.assertFalse(output.exists())

    def test_normalization_preserves_left_association_and_operand_order(self):
        result, output = self.bridge("parse", "{return 1+2+3;}", "left-association")
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertEqual({"block": [{"return": {"add": [
            {"add": [{"number": "1"}, {"number": "2"}]}, {"number": "3"}]}}]},
                         normalize(ET.parse(output).getroot().find("node")))


if __name__ == "__main__":
    unittest.main()
