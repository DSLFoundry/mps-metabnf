#!/usr/bin/env python3
"""Export the supported MetaBNF MPS model subset to grammar interchange XML."""

from __future__ import annotations

import argparse
import re
import xml.etree.ElementTree as ET
from pathlib import Path


NAME_PATTERN = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")
CONCEPTS = {
    "metabnf.structure.grammar": "grammar",
    "metabnf.structure.RuleGroup": "rule-group",
    "metabnf.structure.NonterminalRule": "sort-rule",
    "metabnf.structure.TerminalRule": "lexical-rule",
    "metabnf.structure.ChoiceRule": "choice-rule",
    "metabnf.structure.Keyword": "keyword",
    "metabnf.structure.NonterminalReference": "sort-reference",
    "metabnf.structure.TerminalReference": "lexical-reference",
    "jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression": "inline-regexp",
    "jetbrains.mps.baseLanguage.regexp.structure.StringRegexp": "string-regexp",
    "jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp": "character-class",
    "jetbrains.mps.baseLanguage.regexp.structure.SingleSymbolClassPart": "character",
    "jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart": "range",
}


class ExportError(ValueError):
    """The MPS model is outside the exporter-supported subset."""


def concept_names(model: ET.Element) -> dict[str, str]:
    registry = model.find("registry")
    if registry is None:
        raise ExportError("MPS model is missing its concept registry")
    result = {}
    for concept in registry.findall("./language/concept"):
        index = concept.get("index")
        name = concept.get("name")
        if index and name:
            result[index] = name
    return result


def concept(node: ET.Element, names: dict[str, str]) -> str:
    index = node.get("concept", "")
    name = names.get(index)
    if name is None:
        raise ExportError(f"Unknown MPS concept index {index!r}")
    return name


def node_property(node: ET.Element, role: str, description: str) -> str:
    values = [
        item.get("value")
        for item in node.findall("property")
        if item.get("role") == role
    ]
    if len(values) != 1 or values[0] is None:
        raise ExportError(f"Expected one {description}; found {len(values)}")
    return values[0]


def node_reference(node: ET.Element, role: str, description: str) -> ET.Element:
    refs = [item for item in node.findall("ref") if item.get("role") == role]
    if len(refs) != 1 or not refs[0].get("resolve"):
        raise ExportError(f"Expected one {description}; found {len(refs)}")
    return refs[0]


def cardinality_wrapper(xml_term: ET.Element, source_term: ET.Element) -> ET.Element:
    cardinality = next(
        (item.get("value", "") for item in source_term.findall("property")
         if item.get("role") == "3xj4NX"),
        "",
    )
    wrapper_by_name = {
        "AtMostOne": "optional",
        "AtleastOne": "one-or-more",
        "ZeroOrMore": "zero-or-more",
    }
    if not cardinality:
        return xml_term
    _, _, name = cardinality.partition("/")
    wrapper = wrapper_by_name.get(name)
    if wrapper is None:
        raise ExportError(f"Unsupported MetaBNF cardinality: {cardinality!r}")
    result = ET.Element(wrapper)
    result.append(xml_term)
    return result


def term_xml(term: ET.Element, names: dict[str, str]) -> ET.Element:
    term_concept = concept(term, names)
    if term_concept == "metabnf.structure.Keyword":
        return ET.Element("literal", {"value": node_property(term, "TrG5h", "keyword value")})
    if term_concept == "metabnf.structure.NonterminalReference":
        target = node_reference(term, "3xiQg3", "nonterminal reference").get("resolve", "")
        return cardinality_wrapper(ET.Element("sort", {"name": target}), term)
    if term_concept == "metabnf.structure.TerminalReference":
        target = node_reference(term, "2GQAiS", "terminal reference").get("resolve", "")
        return ET.Element("lexical", {"name": target})
    raise ExportError(f"Unsupported MetaBNF term concept: {term_concept}")


def production_xml(terms: list[ET.Element], names: dict[str, str]) -> ET.Element:
    production = ET.Element("production")
    sequence = ET.SubElement(production, "sequence")
    for term in terms:
        sequence.append(term_xml(term, names))
    return production


def regex_xml(rule: ET.Element, names: dict[str, str]) -> ET.Element:
    inline = [child for child in rule.findall("node") if concept(child, names) ==
              "jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression"]
    if len(inline) != 1:
        raise ExportError("Lexical rule must contain exactly one inline regular expression")
    expressions = inline[0].findall("node")
    if len(expressions) != 1:
        raise ExportError("Inline regular expression must contain exactly one expression")
    expression = expressions[0]
    expression_concept = concept(expression, names)
    if expression_concept == "jetbrains.mps.baseLanguage.regexp.structure.StringRegexp":
        return ET.Element("literal", {"value": node_property(expression, "1OCb_u", "regexp literal")})
    if expression_concept != "jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp":
        raise ExportError(f"Unsupported lexical expression concept: {expression_concept}")

    character_class = ET.Element("character-class")
    for part in expression.findall("node"):
        part_concept = concept(part, names)
        if part_concept == "jetbrains.mps.baseLanguage.regexp.structure.SingleSymbolClassPart":
            value = node_property(part, "1T6KD9", "character class character")
            if len(value) != 1:
                raise ExportError("Character class member must be exactly one BMP character")
            codepoint = ord(value)
            ET.SubElement(character_class, "range", {"start": str(codepoint), "end": str(codepoint)})
        elif part_concept == "jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart":
            start = node_property(part, "1T8p8b", "character range start")
            end = node_property(part, "1T8pRJ", "character range end")
            if len(start) != 1 or len(end) != 1:
                raise ExportError("Character class range bounds must be single BMP characters")
            ET.SubElement(
                character_class,
                "range",
                {"start": str(ord(start)), "end": str(ord(end))},
            )
        else:
            raise ExportError(f"Unsupported character class part: {part_concept}")
    return character_class


def export_model(model_path: Path, output_path: Path, module_name: str) -> None:
    try:
        model = ET.parse(model_path).getroot()
    except (ET.ParseError, OSError) as error:
        raise ExportError(str(error)) from error
    if model.tag != "model":
        raise ExportError("MPS model root element must be model")

    names = concept_names(model)
    roots = model.findall("node")
    if len(roots) != 1 or concept(roots[0], names) != "metabnf.structure.grammar":
        raise ExportError("MPS model must contain exactly one MetaBNF grammar root")
    grammar = roots[0]
    start_name = node_reference(grammar, "3xJMYq", "grammar start reference").get("resolve", "")
    if not NAME_PATTERN.fullmatch(start_name):
        raise ExportError(f"Unsupported start rule name: {start_name!r}")

    groups = [child for child in grammar.findall("node") if concept(child, names) ==
              "metabnf.structure.RuleGroup"]
    if not groups:
        raise ExportError("MetaBNF grammar contains no rule group")
    rule_nodes = [
        child
        for group in groups
        for child in group.findall("node")
        if concept(child, names) in {
            "metabnf.structure.NonterminalRule",
            "metabnf.structure.TerminalRule",
            "metabnf.structure.ChoiceRule",
        }
    ]
    rule_by_id = {node.get("id"): node for node in rule_nodes}
    choice_nodes = [
        node for node in rule_nodes
        if concept(node, names) == "metabnf.structure.ChoiceRule"
    ]
    alternative_nodes: set[str] = set()
    for choice in choice_nodes:
        for reference in choice.findall("node"):
            if concept(reference, names) != "metabnf.structure.NonterminalReference":
                raise ExportError("ChoiceRule alternatives must be nonterminal references")
            target = node_reference(reference, "3xiQg3", "choice alternative reference").get("node")
            if not target or target not in rule_by_id:
                raise ExportError("ChoiceRule refers to an unavailable alternative rule")
            alternative_nodes.add(target)

    rules_element = ET.Element("rules")
    for rule in sorted(rule_nodes, key=lambda item: node_property(item, "TrG5h", "rule name")):
        rule_id = rule.get("id", "")
        if rule_id in alternative_nodes:
            continue
        name = node_property(rule, "TrG5h", "rule name")
        if not NAME_PATTERN.fullmatch(name):
            raise ExportError(f"Unsupported rule name: {name!r}")
        rule_concept = concept(rule, names)
        kind = "lexical" if rule_concept == "metabnf.structure.TerminalRule" else "sort"
        rule_element = ET.SubElement(rules_element, "rule", {"name": name, "kind": kind})
        choice = ET.SubElement(rule_element, "choice")
        if rule_concept == "metabnf.structure.TerminalRule":
            production = ET.SubElement(choice, "production")
            sequence = ET.SubElement(production, "sequence")
            sequence.append(regex_xml(rule, names))
        elif rule_concept == "metabnf.structure.ChoiceRule":
            for reference in rule.findall("node"):
                target = node_reference(reference, "3xiQg3", "choice alternative reference").get("node", "")
                alternative = rule_by_id[target]
                choice.append(production_xml(alternative.findall("node"), names))
        elif rule_concept == "metabnf.structure.NonterminalRule":
            choice.append(production_xml(rule.findall("node"), names))
        else:
            raise ExportError(f"Unsupported rule concept: {rule_concept}")

    root = ET.Element("rascal-grammar", {"format-version": "1", "module": module_name})
    starts = ET.SubElement(root, "starts")
    ET.SubElement(starts, "start", {"name": start_name})
    root.append(rules_element)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    ET.indent(root, space="  ")
    ET.ElementTree(root).write(output_path, encoding="UTF-8", xml_declaration=True)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", required=True, type=Path, help="MetaBNF MPS .mps model")
    parser.add_argument("--output", required=True, type=Path, help="grammar interchange XML")
    parser.add_argument("--module", required=True, help="module name for interchange metadata")
    args = parser.parse_args()
    try:
        export_model(args.input, args.output, args.module)
    except ExportError as error:
        parser.error(str(error))
    print(f"Exported MetaBNF model {args.input} to {args.output}")


if __name__ == "__main__":
    main()
