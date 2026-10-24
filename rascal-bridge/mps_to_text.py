#!/usr/bin/env python3
"""Serialize a mapped MPS AST to source text using its Rascal grammar."""

from __future__ import annotations

import argparse
import json
import xml.etree.ElementTree as ET
from collections import defaultdict
from pathlib import Path
from typing import Any

from import_to_mps import ImportError as GrammarImportError
from import_to_mps import validate_interchange


class ExportError(ValueError):
    """The MPS model does not match the supplied grammar-to-AST mapping."""


def _read_xml(path: Path, description: str) -> ET.Element:
    try:
        return ET.parse(path).getroot()
    except (ET.ParseError, OSError) as error:
        raise ExportError(f"Cannot read {description} {path}: {error}") from error


def _load_mapping(path: Path) -> dict[str, Any]:
    try:
        mapping = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ExportError(f"Cannot read AST mapping {path}: {error}") from error
    if not isinstance(mapping, dict) or not isinstance(mapping.get("rules"), dict):
        raise ExportError("Mapping must contain a rules object")
    return mapping["rules"]


class MpsTextSerializer:
    def __init__(self, grammar: ET.Element, mapping: dict[str, Any], model: ET.Element):
        try:
            _, rules, _ = validate_interchange(grammar)
        except GrammarImportError as error:
            raise ExportError(str(error)) from error
        self.grammar_rules = {rule.get("name", ""): rule for rule in rules}
        self.mappings = mapping
        registry = model.find("registry")
        if registry is None:
            raise ExportError("MPS model is missing its concept registry")
        self.concepts: dict[str, ET.Element] = {}
        self.concept_names: dict[str, str] = {}
        for concept in registry.findall("./language/concept"):
            name, index = concept.get("name"), concept.get("index")
            if name and index:
                self.concepts[name] = concept
                self.concept_names[index] = name
        self.rule_by_concept: dict[str, str] = {}
        for rule_name, rule_mapping in mapping.items():
            if not isinstance(rule_mapping, dict):
                raise ExportError(f"Mapping for rule {rule_name!r} must be an object")
            concept_name = rule_mapping.get("concept")
            if not isinstance(concept_name, str) or concept_name not in self.concepts:
                raise ExportError(
                    f"Mapping for rule {rule_name!r} names an unavailable MPS concept"
                )
            if concept_name in self.rule_by_concept:
                raise ExportError(f"Multiple grammar rules map to concept {concept_name!r}")
            self.rule_by_concept[concept_name] = rule_name

    def serialize(self, model: ET.Element) -> str:
        if model.tag != "model":
            raise ExportError("MPS model root element must be model")
        roots = model.findall("node")
        if len(roots) != 1:
            raise ExportError("MPS model must contain exactly one AST root")
        rule_name = self._rule_for_node(roots[0])
        return self._serialize_rule(rule_name, roots[0])

    def _rule_for_node(self, node: ET.Element) -> str:
        concept_name = self.concept_names.get(node.get("concept", ""))
        if concept_name is None:
            raise ExportError(f"Unknown MPS concept index {node.get('concept')!r}")
        rule_name = self.rule_by_concept.get(concept_name)
        if rule_name is None:
            raise ExportError(f"No grammar rule maps MPS concept {concept_name!r}")
        return rule_name

    def _serialize_rule(self, rule_name: str, node: ET.Element) -> str:
        grammar_rule = self.grammar_rules.get(rule_name)
        rule_mapping = self.mappings.get(rule_name)
        if grammar_rule is None or not isinstance(rule_mapping, dict):
            raise ExportError(f"No grammar and AST mapping for rule {rule_name!r}")
        concept_name = rule_mapping["concept"]
        if self.concept_names.get(node.get("concept", "")) != concept_name:
            raise ExportError(
                f"Rule {rule_name!r} cannot serialize node concept "
                f"{self.concept_names.get(node.get('concept', ''), '<unknown>')!r}"
            )
        property_roles = {
            item.get("name"): item.get("index")
            for item in self.concepts[concept_name].findall("property")
            if item.get("name") and item.get("index")
        }
        child_roles = {
            item.get("name"): item.get("index")
            for item in self.concepts[concept_name].findall("child")
            if item.get("name") and item.get("index")
        }
        properties: dict[str, str] = {}
        for property_name in rule_mapping.get("properties", {}):
            role = property_roles.get(property_name)
            values = [
                item.get("value")
                for item in node.findall("property")
                if item.get("role") == role
            ]
            if role is None or len(values) != 1 or values[0] is None:
                raise ExportError(
                    f"Node for rule {rule_name!r} must have exactly one "
                    f"{property_name!r} property"
                )
            properties[property_name] = values[0]

        children_by_role: dict[str, list[ET.Element]] = defaultdict(list)
        for child in node.findall("node"):
            children_by_role[child.get("role", "")].append(child)
        if grammar_rule.get("kind") == "lexical":
            self_properties = [
                name
                for name, source in rule_mapping.get("properties", {}).items()
                if isinstance(source, dict) and source.get("self") is True
            ]
            if len(self_properties) == 1 and len(properties) == 1:
                if children_by_role:
                    raise ExportError(
                        f"Lexical rule {rule_name!r} cannot serialize child nodes"
                    )
                return properties[self_properties[0]]

        choices = grammar_rule.findall("choice")
        if len(choices) != 1:
            raise ExportError(f"Rule {rule_name!r} must contain one choice")
        productions = choices[0].findall("production")
        candidates: set[str] = set()
        failures: list[str] = []
        for production in productions:
            sequence = production.find("sequence")
            if sequence is None:
                continue
            candidate_properties: set[str] = set()
            candidate_children: set[int] = set()
            try:
                text = self._serialize_symbols(
                    list(sequence),
                    node,
                    rule_mapping,
                    properties,
                    property_roles,
                    child_roles,
                    children_by_role,
                    candidate_properties,
                    candidate_children,
                )
                expected_children = {
                    id(child)
                    for children in children_by_role.values()
                    for child in children
                }
                if candidate_children != expected_children:
                    raise ExportError("AST contains child nodes not represented by this production")
                candidates.add(text)
            except ExportError as error:
                failures.append(str(error))
        if not candidates:
            detail = failures[0] if failures else "no supported production"
            raise ExportError(f"Cannot serialize rule {rule_name!r}: {detail}")
        if len(candidates) != 1:
            raise ExportError(f"Rule {rule_name!r} has ambiguous Rascal productions for this AST")
        return next(iter(candidates))

    def _serialize_symbols(
        self,
        symbols: list[ET.Element],
        node: ET.Element,
        rule_mapping: dict[str, Any],
        properties: dict[str, str],
        property_roles: dict[str, str],
        child_roles: dict[str, str],
        children_by_role: dict[str, list[ET.Element]],
        used_properties: set[str],
        used_children: set[int],
    ) -> str:
        output: list[str] = []
        for symbol in symbols:
            if symbol.tag == "literal":
                value = symbol.get("value")
                if value is None:
                    raise ExportError("Grammar literal is missing its value")
                output.append(value)
            elif symbol.tag in {"sort", "lexical"}:
                rule = symbol.get("name", "")
                property_name = self._property_for_token(rule_mapping, rule)
                if property_name is not None:
                    used_properties.add(property_name)
                    output.append(properties[property_name])
                    continue
                role_name = rule_mapping.get("children", {}).get(rule)
                role = child_roles.get(role_name)
                if not isinstance(role_name, str) or role is None:
                    raise ExportError(f"No child role mapping for grammar rule {rule!r}")
                mapped_concept = self.mappings.get(rule, {}).get("concept")
                candidates = [
                    child
                    for child in children_by_role.get(role, [])
                    if id(child) not in used_children
                    and self.concept_names.get(child.get("concept", "")) == mapped_concept
                ]
                if not candidates:
                    raise ExportError(f"AST has no child for grammar rule {rule!r}")
                child = candidates[0]
                used_children.add(id(child))
                output.append(self._serialize_rule(rule, child))
            elif symbol.tag in {"optional", "one-or-more", "zero-or-more"}:
                nested = list(symbol)
                if len(nested) != 1 or nested[0].tag not in {"sort", "lexical"}:
                    raise ExportError(f"Unsupported repeated grammar symbol {symbol.tag!r}")
                rule = nested[0].get("name", "")
                property_name = self._property_for_token(rule_mapping, rule)
                if property_name is not None:
                    raise ExportError("Cardinality on mapped token properties is unsupported")
                role_name = rule_mapping.get("children", {}).get(rule)
                role = child_roles.get(role_name)
                if not isinstance(role_name, str) or role is None:
                    raise ExportError(f"No child role mapping for repeated rule {rule!r}")
                mapped_concept = self.mappings.get(rule, {}).get("concept")
                children = [
                    child
                    for child in children_by_role.get(role, [])
                    if id(child) not in used_children
                    and self.concept_names.get(child.get("concept", "")) == mapped_concept
                ]
                if symbol.tag == "optional" and len(children) > 1:
                    raise ExportError(f"Optional rule {rule!r} has multiple AST children")
                if symbol.tag == "one-or-more" and not children:
                    raise ExportError(f"Required repeated rule {rule!r} has no AST children")
                for child in children:
                    used_children.add(id(child))
                    output.append(self._serialize_rule(rule, child))
            elif symbol.tag == "empty":
                continue
            else:
                raise ExportError(f"Unsupported grammar symbol {symbol.tag!r}")

        property_mappings = rule_mapping.get("properties", {})
        for name, source in property_mappings.items():
            if isinstance(source, dict) and "literal" in source:
                if properties[name] != source["literal"]:
                    raise ExportError(f"Mapped constant property {name!r} was changed")
            elif name not in used_properties:
                raise ExportError(f"Mapped property {name!r} is not represented in this production")
        return "".join(output)

    @staticmethod
    def _property_for_token(rule_mapping: dict[str, Any], token_rule: str) -> str | None:
        for name, source in rule_mapping.get("properties", {}).items():
            if isinstance(source, dict) and source.get("token") == token_rule:
                return name
        return None


def serialize_model(grammar_path: Path, mapping_path: Path, model_path: Path) -> str:
    grammar = _read_xml(grammar_path, "grammar")
    model = _read_xml(model_path, "MPS model")
    serializer = MpsTextSerializer(grammar, _load_mapping(mapping_path), model)
    return serializer.serialize(model)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--grammar", required=True, type=Path)
    parser.add_argument("--mapping", required=True, type=Path)
    parser.add_argument("--model", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    try:
        text = serialize_model(args.grammar, args.mapping, args.model)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding="utf-8", newline="\n")
    except (ExportError, OSError) as error:
        parser.error(str(error))
    print(f"Exported MPS model {args.model} as source text at {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
