import importlib.util
import tempfile
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("refresh_mps_registry.py")
SPEC = importlib.util.spec_from_file_location("refresh_mps_registry", MODULE_PATH)
refresher = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(refresher)


class RefreshMpsRegistryTest(unittest.TestCase):
    def setUp(self):
        self.temporary_directory = tempfile.TemporaryDirectory()
        self.directory = Path(self.temporary_directory.name)
        self.model = self.directory / "Parsed.mps"
        self.structure = self.directory / "structure.mps"
        self.model.write_text(
            """<model ref="r:11111111-1111-1111-1111-111111111111(example.Parsed)">
  <registry>
    <language name="Demo">
      <concept id="old-concept" name="Demo.structure.Program" index="program">
        <property id="old-property" name="name" index="name-role" />
        <child id="old-link" name="children" index="children-role" />
      </concept>
    </language>
  </registry>
  <node concept="program" id="Parsed1" />
</model>
""",
            encoding="utf-8",
        )
        self.structure.write_text(
            """<model ref="r:22222222-2222-2222-2222-222222222222(Demo.structure)">
  <registry>
    <language>
      <concept name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" index="concept-declaration">
        <property name="conceptId" index="concept-id-role" />
      </concept>
      <concept name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" index="property-declaration">
        <property name="name" index="name-role" />
        <property name="propertyId" index="property-id-role" />
      </concept>
      <concept name="jetbrains.mps.lang.structure.structure.LinkDeclaration" index="link-declaration">
        <property name="role" index="role-name-role" />
        <property name="linkId" index="link-id-role" />
      </concept>
    </language>
  </registry>
  <node concept="concept-declaration" id="Program1">
    <property role="concept-id-role" value="1001" />
    <property role="name-role" value="Program" />
    <node concept="property-declaration" id="Name1">
      <property role="name-role" value="name" />
      <property role="property-id-role" value="1002" />
    </node>
    <node concept="link-declaration" id="Children1">
      <property role="role-name-role" value="children" />
      <property role="link-id-role" value="1003" />
    </node>
  </node>
</model>
""",
            encoding="utf-8",
        )

    def tearDown(self):
        self.temporary_directory.cleanup()

    def test_refreshes_concept_and_member_ids(self):
        refresher.refresh_registry(self.model, self.structure)
        program = ET.parse(self.model).find("./registry/language/concept")
        self.assertEqual(program.get("id"), "1001")
        self.assertEqual(program.find("property").get("id"), "1002")
        self.assertEqual(program.find("child").get("id"), "1003")

    def test_rejects_missing_generated_concept(self):
        model_root = ET.parse(self.model).getroot()
        model_root.find("./registry/language/concept").set(
            "name", "Demo.structure.Missing"
        )
        ET.ElementTree(model_root).write(self.model, encoding="utf-8")
        with self.assertRaisesRegex(refresher.RegistryRefreshError, "no concept matching"):
            refresher.refresh_registry(self.model, self.structure)


if __name__ == "__main__":
    unittest.main()
