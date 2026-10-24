#!/usr/bin/env python3
"""Map a Rascal parse-tree XML document into a configured MPS model."""

from __future__ import annotations

import argparse
import json
import re
import uuid
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Any


NAME_PATTERN = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")
MODEL_REF_PATTERN = re.compile(r"^r:[^(]+\(([^)]+)\)$")
MPS_CORE_LANGUAGE_ID = "ceab5195-25ea-4f22-9b92-103b95ca8c0c"
MPS_NAMED_CONCEPT_ID = "1169194658468"
MPS_NAME_PROPERTY_ID = "1169194664001"


class ImportError(ValueError):
    """The parse tree or mapping cannot be represented by the target MPS model."""


class MpsNodeFactory:
    def __init__(self) -> None:
        self.counter = 0

    def create(self, concept_index: str, role_index: str | None = None) -> ET.Element:
        self.counter += 1
        attributes = {"concept": concept_index, "id": f"Parsed{self.counter:06d}"}
        if role_index is not None:
            attributes["role"] = role_index
        return ET.Element("node", attributes)


def read_concept_registry(model: ET.Element) -> dict[str, ET.Element]:
    registry = model.find("registry")
    if registry is None:
        raise ImportError("MPS template is missing its concept registry")
    concepts: dict[str, ET.Element] = {}
    for concept in registry.findall("./language/concept"):
        name = concept.get("name")
        if name:
            concepts[name] = concept
    return concepts


def registry_role(concept: ET.Element, role_name: str, role_tag: str) -> str:
    roles = [
        role
        for role in concept.findall(role_tag)
        if role.get("name") == role_name
    ]
    if len(roles) != 1 or not roles[0].get("index"):
        raise ImportError(
            f"Concept {concept.get('name')} has no unique {role_tag} role {role_name!r}"
        )
    return roles[0].get("index", "")


def load_mapping(mapping_path: Path) -> dict[str, Any]:
    try:
        mapping = json.loads(mapping_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ImportError(f"Cannot read mapping file {mapping_path}: {error}") from error
    if not isinstance(mapping, dict) or not isinstance(mapping.get("rules"), dict):
        raise ImportError("Mapping must contain a rules object")
    return mapping


def ensure_named_concept_registry(model: ET.Element) -> None:
    languages = model.find("languages")
    if languages is None:
        languages = ET.Element("languages")
        insert_at = next(
            (
                index
                for index, child in enumerate(model)
                if child.tag in {"imports", "registry", "node"}
            ),
            len(model),
        )
        model.insert(insert_at, languages)
    if not any(
        language.get("name") == "jetbrains.mps.lang.core"
        for language in languages.findall("use")
    ):
        ET.SubElement(
            languages,
            "use",
            {"id": MPS_CORE_LANGUAGE_ID, "name": "jetbrains.mps.lang.core", "version": "0"},
        )

    registry = model.find("registry")
    if registry is None:
        registry = ET.Element("registry")
        model.append(registry)
    language = next(
        (
            candidate
            for candidate in registry.findall("language")
            if candidate.get("name") == "jetbrains.mps.lang.core"
        ),
        None,
    )
    if language is None:
        language = ET.SubElement(
            registry,
            "language",
            {"id": MPS_CORE_LANGUAGE_ID, "name": "jetbrains.mps.lang.core"},
        )
    concept = next(
        (
            candidate
            for candidate in language.findall("concept")
            if candidate.get("name") == "jetbrains.mps.lang.core.structure.INamedConcept"
        ),
        None,
    )
    if concept is None:
        concept = ET.SubElement(
            language,
            "concept",
            {
                "id": MPS_NAMED_CONCEPT_ID,
                "name": "jetbrains.mps.lang.core.structure.INamedConcept",
                "flags": "ngI",
                "index": "TrEIO",
            },
        )
    if concept.find("property[@index='TrG5h']") is None:
        ET.SubElement(
            concept,
            "property",
            {"id": MPS_NAME_PROPERTY_ID, "name": "name", "index": "TrG5h"},
        )


def map_tree(
    tree: ET.Element,
    rules: dict[str, Any],
    concepts: dict[str, ET.Element],
    factory: MpsNodeFactory,
    role_index: str | None = None,
) -> ET.Element:
    tag = tree.tag
    if tag not in {"node", "token"}:
        raise ImportError(f"Unsupported parse-tree element: {tag}")
    rule_name = tree.get("rule")
    if not rule_name:
        raise ImportError(f"Parse-tree {tag} is missing its rule name")
    rule_mapping = rules.get(rule_name)
    if not isinstance(rule_mapping, dict):
        raise ImportError(f"No AST mapping defined for grammar rule {rule_name!r}")

    concept_name = rule_mapping.get("concept")
    if not isinstance(concept_name, str) or concept_name not in concepts:
        raise ImportError(
            f"Mapping for rule {rule_name!r} names an unknown MPS concept: {concept_name!r}"
        )
    concept = concepts[concept_name]
    concept_index = concept.get("index")
    if not concept_index:
        raise ImportError(f"MPS concept {concept_name!r} has no registry index")
    node = factory.create(concept_index, role_index)

    property_mappings = rule_mapping.get("properties", {})
    child_mappings = rule_mapping.get("children", {})
    if not isinstance(property_mappings, dict) or not isinstance(child_mappings, dict):
        raise ImportError(f"Properties and children for rule {rule_name!r} must be objects")

    children = list(tree)
    consumed_tokens: set[int] = set()
    for property_name, source in property_mappings.items():
        if not isinstance(source, dict) or len(source) != 1:
            raise ImportError(
                f"Property mapping {rule_name}.{property_name} must select one value source"
            )
        if "token" in source:
            token_rule = source["token"]
            matching = [
                (index, child)
                for index, child in enumerate(children)
                if child.tag == "token" and child.get("rule") == token_rule
            ]
            if len(matching) != 1:
                raise ImportError(
                    f"Property {rule_name}.{property_name} requires exactly one "
                    f"{token_rule!r} token; found {len(matching)}"
                )
            token_index, token = matching[0]
            consumed_tokens.add(token_index)
            value = token.get("value")
            if value is None:
                raise ImportError(f"Token {token_rule!r} has no value")
        elif source.get("self") is True:
            if tag != "token":
                raise ImportError(f"Property {rule_name}.{property_name} uses self on a non-token")
            value = tree.get("value")
            if value is None:
                raise ImportError(f"Token {rule_name!r} has no value")
        elif "literal" in source and isinstance(source["literal"], str):
            value = source["literal"]
        else:
            raise ImportError(
                f"Property mapping {rule_name}.{property_name} must use token, self, or literal"
            )
        property_index = registry_role(concept, property_name, "property")
        ET.SubElement(node, "property", {"role": property_index, "value": value})

    for index, child in enumerate(children):
        child_rule = child.get("rule", "")
        if child.tag == "token" and index in consumed_tokens:
            continue
        if child.tag == "character":
            continue
        role_name = child_mappings.get(child_rule)
        if not isinstance(role_name, str):
            raise ImportError(
                f"Rule {rule_name!r} has no child role mapping for {child_rule!r}"
            )
        role_index = registry_role(concept, role_name, "child")
        node.append(map_tree(child, rules, concepts, factory, role_index))
    return node


def import_parse_tree(
    parse_tree_path: Path,
    template_path: Path,
    mapping_path: Path,
    output_path: Path,
    model_name: str,
) -> None:
    if not NAME_PATTERN.fullmatch(model_name):
        raise ImportError(f"Invalid MPS model name: {model_name!r}")
    if output_path.resolve() == template_path.resolve():
        raise ImportError("Output path must not overwrite the MPS template")

    try:
        parse_root = ET.parse(parse_tree_path).getroot()
        model_tree = ET.parse(template_path)
    except (ET.ParseError, OSError) as error:
        raise ImportError(str(error)) from error
    if parse_root.tag != "parse-result":
        raise ImportError("Parse-tree root element must be parse-result")
    if len(parse_root) != 1:
        raise ImportError("Parse result must contain exactly one root tree")

    model = model_tree.getroot()
    if model.tag != "model":
        raise ImportError("MPS template root element must be model")
    template_ref = model.get("ref", "")
    match = MODEL_REF_PATTERN.fullmatch(template_ref)
    if not match:
        raise ImportError(f"Invalid MPS template reference: {template_ref!r}")
    package = match.group(1).rsplit(".", 1)[0]
    model.set(
        "ref",
        f"r:{uuid.uuid5(uuid.NAMESPACE_URL, package + '.' + model_name)}"
        f"({package}.{model_name})",
    )
    mapping = load_mapping(mapping_path)
    concepts = read_concept_registry(model)
    root_node = map_tree(parse_root[0], mapping["rules"], concepts, MpsNodeFactory())
    if not any(item.get("role") == "TrG5h" for item in root_node.findall("property")):
        ensure_named_concept_registry(model)
        ET.SubElement(root_node, "property", {"role": "TrG5h", "value": model_name})
    for child in list(model):
        if child.tag == "node":
            model.remove(child)
    model.append(root_node)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    ET.indent(model_tree, space="  ")
    model_tree.write(output_path, encoding="UTF-8", xml_declaration=True)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parse-tree", required=True, type=Path, help="Rascal parse-result XML")
    parser.add_argument("--template", required=True, type=Path, help="target MPS model template")
    parser.add_argument("--mapping", required=True, type=Path, help="JSON AST-to-MPS mapping")
    parser.add_argument("--output", required=True, type=Path, help="output MPS .mps model")
    parser.add_argument("--model-name", required=True, help="simple MPS model name")
    args = parser.parse_args()
    try:
        import_parse_tree(
            args.parse_tree, args.template, args.mapping, args.output, args.model_name
        )
    except ImportError as error:
        parser.error(str(error))
    print(f"Imported parse tree as MPS model {args.model_name} at {args.output}")


if __name__ == "__main__":
    main()
