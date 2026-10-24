import json
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

from mps_to_text import ExportError, serialize_model


class MpsToTextTest(unittest.TestCase):
    def test_serializes_lexical_self_property_without_serializing_its_regex(self):
        grammar = ET.fromstring(
            """<rascal-grammar format-version="1" module="Example">
              <starts><start name="Program"/></starts>
              <rules>
                <rule name="Program" kind="sort"><choice><production><sequence>
                  <literal value="number="/><lexical name="NUMBER"/>
                </sequence></production></choice></rule>
                <rule name="NUMBER" kind="lexical"><choice><production><sequence>
                  <character-class><range start="48" end="57"/></character-class>
                </sequence></production></choice></rule>
              </rules>
            </rascal-grammar>"""
        )
        mapping = {
            "rules": {
                "Program": {
                    "concept": "Example.structure.Program",
                    "children": {"NUMBER": "Number"},
                },
                "NUMBER": {
                    "concept": "Example.structure.Number",
                    "properties": {"text": {"self": True}},
                },
            }
        }
        model = ET.fromstring(
            """<model>
              <registry><language name="Example">
                <concept name="Example.structure.Program" index="program">
                  <child name="Number" index="number-child"/>
                </concept>
                <concept name="Example.structure.Number" index="number">
                  <property name="text" index="number-text"/>
                </concept>
              </language></registry>
              <node concept="program" id="root">
                <node concept="number" id="value" role="number-child">
                  <property role="number-text" value="2048"/>
                </node>
              </node>
            </model>"""
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            grammar_path = root / "grammar.xml"
            mapping_path = root / "mapping.json"
            model_path = root / "model.mps"
            ET.ElementTree(grammar).write(grammar_path, encoding="UTF-8")
            mapping_path.write_text(json.dumps(mapping), encoding="utf-8")
            ET.ElementTree(model).write(model_path, encoding="UTF-8")

            self.assertEqual(
                serialize_model(grammar_path, mapping_path, model_path),
                "number=2048",
            )

    def test_rejects_lexical_self_property_without_a_value(self):
        grammar = ET.fromstring(
            """<rascal-grammar format-version="1" module="Example">
              <starts><start name="Program"/></starts>
              <rules>
                <rule name="Program" kind="sort"><choice><production><sequence>
                  <lexical name="NUMBER"/>
                </sequence></production></choice></rule>
                <rule name="NUMBER" kind="lexical"><choice><production><sequence>
                  <character-class><range start="48" end="57"/></character-class>
                </sequence></production></choice></rule>
              </rules>
            </rascal-grammar>"""
        )
        mapping = {
            "rules": {
                "Program": {
                    "concept": "Example.structure.Program",
                    "children": {"NUMBER": "Number"},
                },
                "NUMBER": {
                    "concept": "Example.structure.Number",
                    "properties": {"text": {"self": True}},
                }
            }
        }
        model = ET.fromstring(
            """<model>
              <registry><language name="Example">
                <concept name="Example.structure.Program" index="program">
                  <child name="Number" index="number-child"/>
                </concept>
                <concept name="Example.structure.Number" index="number">
                  <property name="text" index="number-text"/>
                </concept>
              </language></registry>
              <node concept="program" id="root">
                <node concept="number" id="value" role="number-child"/>
              </node>
            </model>"""
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            grammar_path = root / "grammar.xml"
            mapping_path = root / "mapping.json"
            model_path = root / "model.mps"
            ET.ElementTree(grammar).write(grammar_path, encoding="UTF-8")
            mapping_path.write_text(json.dumps(mapping), encoding="utf-8")
            ET.ElementTree(model).write(model_path, encoding="utf-8")

            with self.assertRaisesRegex(ExportError, "text.*property"):
                serialize_model(grammar_path, mapping_path, model_path)


if __name__ == "__main__":
    unittest.main()
