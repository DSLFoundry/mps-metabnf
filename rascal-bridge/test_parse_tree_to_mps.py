import importlib.util
import json
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("parse_tree_to_mps.py")
SPEC = importlib.util.spec_from_file_location("parse_tree_to_mps", MODULE_PATH)
importer = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(importer)


class ParseTreeToMpsTest(unittest.TestCase):
    def setUp(self):
        self.temporary_directory = tempfile.TemporaryDirectory()
        self.directory = Path(self.temporary_directory.name)
        self.template = self.directory / "TargetTemplate.mps"
        self.parse_tree = self.directory / "parse.xml"
        self.mapping = self.directory / "mapping.json"
        self.output = self.directory / "Parsed.mps"

        model = ET.Element(
            "model",
            {"ref": "r:11111111-1111-1111-1111-111111111111(example.target.Template)"},
        )
        registry = ET.SubElement(model, "registry")
        language = ET.SubElement(registry, "language", {"name": "example.target"})
        program = ET.SubElement(
            language,
            "concept",
            {"id": "100", "name": "example.target.Program", "index": "ProgramConcept"},
        )
        ET.SubElement(program, "property", {"id": "101", "name": "name", "index": "nameRole"})
        ET.SubElement(program, "child", {"id": "102", "name": "children", "index": "childrenRole"})
        child = ET.SubElement(
            language,
            "concept",
            {"id": "200", "name": "example.target.Child", "index": "ChildConcept"},
        )
        ET.SubElement(child, "property", {"id": "201", "name": "value", "index": "valueRole"})
        declaration = ET.SubElement(
            language,
            "concept",
            {"id": "300", "name": "example.target.Declaration", "index": "DeclarationConcept"},
        )
        ET.SubElement(declaration, "property", {"id": "301", "name": "name", "index": "declaredNameRole"})
        reference = ET.SubElement(
            language,
            "concept",
            {"id": "400", "name": "example.target.Reference", "index": "ReferenceConcept"},
        )
        ET.SubElement(reference, "reference", {"id": "401", "name": "target", "index": "targetRole"})
        ET.SubElement(model, "node", {"concept": "ProgramConcept", "id": "TemplateNode"})
        ET.ElementTree(model).write(self.template, encoding="UTF-8")

        parse_result = ET.Element("parse-result")
        root = ET.SubElement(parse_result, "node", {"rule": "Program"})
        ET.SubElement(root, "token", {"rule": "IDENTIFIER", "value": "alpha"})
        child_node = ET.SubElement(root, "node", {"rule": "Child"})
        ET.SubElement(child_node, "character", {"codepoint": "33"})
        ET.ElementTree(parse_result).write(self.parse_tree, encoding="UTF-8")
        self.mapping.write_text(
            json.dumps(
                {
                    "rules": {
                        "Program": {
                            "concept": "example.target.Program",
                            "properties": {"name": {"token": "IDENTIFIER"}},
                            "children": {
                                "Child": "children",
                                "Declaration": "children",
                                "Reference": "children",
                            },
                        },
                        "Child": {
                            "concept": "example.target.Child",
                            "properties": {"value": {"literal": "suffix"}},
                        },
                        "Declaration": {
                            "concept": "example.target.Declaration",
                            "properties": {"name": {"token": "IDENTIFIER"}},
                        },
                        "Reference": {
                            "concept": "example.target.Reference",
                            "references": {
                                "target": {
                                    "token": "IDENTIFIER",
                                    "targetConcept": "example.target.Declaration",
                                    "targetIdentifier": "name",
                                    "scope": "model",
                                }
                            },
                        },
                    }
                }
            ),
            encoding="utf-8",
        )

    def write_reference_parse(self, *items):
        parse_result = ET.Element("parse-result")
        root = ET.SubElement(parse_result, "node", {"rule": "Program"})
        ET.SubElement(root, "token", {"rule": "IDENTIFIER", "value": "main"})
        for rule, identifier in items:
            item = ET.SubElement(root, "node", {"rule": rule})
            ET.SubElement(item, "token", {"rule": "IDENTIFIER", "value": identifier})
        ET.ElementTree(parse_result).write(self.parse_tree, encoding="UTF-8")

    def tearDown(self):
        self.temporary_directory.cleanup()

    def test_maps_parse_tree_to_target_mps_model(self):
        importer.import_parse_tree(
            self.parse_tree, self.template, self.mapping, self.output, "Parsed"
        )
        model = ET.parse(self.output).getroot()
        self.assertIn("(example.target.Parsed)", model.get("ref"))
        self.assertEqual(len(model.findall("node")), 1)

        root = model.find("node")
        self.assertEqual(root.get("concept"), "ProgramConcept")
        self.assertEqual(root.find("property").attrib, {"role": "nameRole", "value": "alpha"})
        self.assertEqual(
            root.find("property[@role='TrG5h']").attrib,
            {"role": "TrG5h", "value": "Parsed"},
        )
        self.assertIsNotNone(
            model.find(
                "registry/language[@name='jetbrains.mps.lang.core']/"
                "concept[@name='jetbrains.mps.lang.core.structure.INamedConcept']/"
                "property[@index='TrG5h']"
            )
        )
        child = root.find("node")
        self.assertEqual(child.get("concept"), "ChildConcept")
        self.assertEqual(child.get("role"), "childrenRole")
        self.assertEqual(
            child.find("property").attrib,
            {"role": "valueRole", "value": "suffix"},
        )

    def test_resolves_previously_declared_and_forward_declared_symbols(self):
        self.write_reference_parse(
            ("Declaration", "before"),
            ("Reference", "before"),
            ("Reference", "forward"),
            ("Declaration", "forward"),
        )
        importer.import_parse_tree(
            self.parse_tree, self.template, self.mapping, self.output, "Parsed"
        )

        model = ET.parse(self.output).getroot()
        declarations = {
            declaration.find("property[@role='declaredNameRole']").get("value"): declaration
            for declaration in model.findall(".//node[@concept='DeclarationConcept']")
        }
        references = model.findall(".//node[@concept='ReferenceConcept']/ref[@role='targetRole']")
        self.assertEqual(len(references), 2)
        for reference in references:
            identifier = reference.get("resolve")
            self.assertEqual(reference.get("node"), declarations[identifier].get("id"))

    def test_unresolved_reference_does_not_publish_a_model(self):
        self.write_reference_parse(("Reference", "missing"))
        with self.assertRaisesRegex(importer.ImportError, "Unresolved reference.*model scope"):
            importer.import_parse_tree(
                self.parse_tree, self.template, self.mapping, self.output, "Parsed"
            )
        self.assertFalse(self.output.exists())

    def test_ambiguous_reference_does_not_replace_existing_output(self):
        self.write_reference_parse(
            ("Declaration", "same"), ("Declaration", "same"), ("Reference", "same")
        )
        self.output.write_bytes(b"previous model remains untouched")
        with self.assertRaisesRegex(importer.ImportError, "Ambiguous reference.*2 matching targets"):
            importer.import_parse_tree(
                self.parse_tree, self.template, self.mapping, self.output, "Parsed"
            )
        self.assertEqual(self.output.read_bytes(), b"previous model remains untouched")

    def test_requires_an_explicit_supported_scope(self):
        self.mapping.write_text(
            self.mapping.read_text(encoding="utf-8").replace('"scope": "model"', '"scope": "global"'),
            encoding="utf-8",
        )
        self.write_reference_parse(("Reference", "alpha"))
        with self.assertRaisesRegex(importer.ImportError, "Unsupported scope 'global'"):
            importer.import_parse_tree(
                self.parse_tree, self.template, self.mapping, self.output, "Parsed"
            )
        self.assertFalse(self.output.exists())

    def test_rejects_unmapped_ast_rule(self):
        self.mapping.write_text(json.dumps({"rules": {}}), encoding="utf-8")
        with self.assertRaisesRegex(importer.ImportError, "No AST mapping"):
            importer.import_parse_tree(
                self.parse_tree, self.template, self.mapping, self.output, "Parsed"
            )


if __name__ == "__main__":
    unittest.main()
