#!/usr/bin/env python3
"""Refresh a serialized MPS model's language IDs from its generated structure model."""

from __future__ import annotations

import argparse
import re
import xml.etree.ElementTree as ET
from pathlib import Path


MODEL_REF_PATTERN = re.compile(r"^r:[^(]+\(([^)]+)\)$")
STRUCTURE_CONCEPTS = {
    "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
    "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration",
}


class RegistryRefreshError(ValueError):
    """The target model and generated structure model cannot be reconciled."""


def model_name(model: ET.Element) -> str:
    reference = model.get("ref", "")
    match = MODEL_REF_PATTERN.match(reference)
    if not match:
        raise RegistryRefreshError(f"Invalid MPS model reference: {reference!r}")
    return match.group(1)


def registry_members(registry: ET.Element) -> dict[str, str]:
    members: dict[str, str] = {}
    for concept in registry.findall("./language/concept"):
        for tag in ("property", "child", "reference"):
            for member in concept.findall(tag):
                index = member.get("index")
                name = member.get("name")
                if index and name:
                    members[index] = name
    return members


def read_property(node: ET.Element, property_name: str, members: dict[str, str]) -> str | None:
    return next(
        (
            prop.get("value")
            for prop in node.findall("property")
            if members.get(prop.get("role", "")) == property_name
        ),
        None,
    )


def generated_concepts(structure: ET.Element) -> dict[str, tuple[str, dict[str, str], dict[str, str]]]:
    registry = structure.find("registry")
    if registry is None:
        raise RegistryRefreshError("Generated structure model is missing its concept registry")
    concepts_by_index = {
        concept.get("index"): concept.get("name")
        for concept in registry.findall("./language/concept")
    }
    members = registry_members(registry)
    generated: dict[str, tuple[str, dict[str, str], dict[str, str]]] = {}
    for node in structure.findall("node"):
        concept_name = concepts_by_index.get(node.get("concept", ""))
        if concept_name not in STRUCTURE_CONCEPTS:
            continue
        name = read_property(node, "name", members)
        concept_id = read_property(node, "conceptId", members)
        if not name or not concept_id:
            raise RegistryRefreshError("Generated concept declaration is missing its name or ID")
        properties: dict[str, str] = {}
        links: dict[str, str] = {}
        for child in node.findall("node"):
            child_kind = concepts_by_index.get(child.get("concept", ""))
            if child_kind == "jetbrains.mps.lang.structure.structure.PropertyDeclaration":
                member_name = read_property(child, "name", members)
                member_id = read_property(child, "propertyId", members)
                if member_name and member_id:
                    properties[member_name] = member_id
            elif child_kind == "jetbrains.mps.lang.structure.structure.LinkDeclaration":
                member_name = read_property(child, "role", members)
                member_id = read_property(child, "linkId", members)
                if member_name and member_id:
                    links[member_name] = member_id
        if name in generated:
            raise RegistryRefreshError(f"Generated structure contains duplicate concept {name!r}")
        generated[name] = (concept_id, properties, links)
    return generated


def refresh_registry(model_path: Path, structure_path: Path) -> None:
    try:
        model_tree = ET.parse(model_path)
        structure = ET.parse(structure_path).getroot()
    except (OSError, ET.ParseError) as error:
        raise RegistryRefreshError(f"Cannot read MPS model: {error}") from error
    model = model_tree.getroot()
    namespace = model_name(structure)
    if not namespace.endswith(".structure"):
        raise RegistryRefreshError(
            f"Generated model {namespace!r} is not a language structure model"
        )
    language_name = namespace.removesuffix(".structure")
    registry = model.find("registry")
    if registry is None:
        raise RegistryRefreshError("Target MPS model is missing its concept registry")
    language = next(
        (
            candidate
            for candidate in registry.findall("language")
            if candidate.get("name") == language_name
        ),
        None,
    )
    if language is None:
        raise RegistryRefreshError(
            f"Target model has no registry for generated language {language_name!r}"
        )

    generated = generated_concepts(structure)
    for concept in language.findall("concept"):
        name = concept.get("name", "")
        if not name.startswith(f"{language_name}.structure."):
            continue
        short_name = name.rsplit(".", 1)[-1]
        details = generated.get(short_name)
        if details is None:
            raise RegistryRefreshError(
                f"Generated structure has no concept matching {name!r}"
            )
        concept_id, properties, links = details
        concept.set("id", concept_id)
        for property_node in concept.findall("property"):
            member_name = property_node.get("name", "")
            member_id = properties.get(member_name)
            if member_id is None:
                raise RegistryRefreshError(
                    f"Generated concept {short_name!r} has no property {member_name!r}"
                )
            property_node.set("id", member_id)
        for tag in ("child", "reference"):
            for link_node in concept.findall(tag):
                member_name = link_node.get("name", "")
                member_id = links.get(member_name)
                if member_id is None:
                    raise RegistryRefreshError(
                        f"Generated concept {short_name!r} has no role {member_name!r}"
                    )
                link_node.set("id", member_id)

    ET.indent(model_tree, space="  ")
    model_tree.write(model_path, encoding="UTF-8", xml_declaration=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--model", type=Path, required=True, help="MPS model to refresh")
    parser.add_argument(
        "--structure-model",
        type=Path,
        required=True,
        help="Generated MPS language structure model",
    )
    args = parser.parse_args()
    refresh_registry(args.model, args.structure_model)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
