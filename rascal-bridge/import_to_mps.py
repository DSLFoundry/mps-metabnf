#!/usr/bin/env python3
"""Import a Rascal grammar interchange document as an MPS MetaBNF model."""

from __future__ import annotations

import argparse
import copy
import re
import uuid
import xml.etree.ElementTree as ET
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
TEMPLATE = ROOT / "languages" / "mbnf" / "sandbox" / "models" / "Demo.mps"
REGEX_TEMPLATE = ROOT / "languages" / "mbnf" / "sandbox" / "models" / "mbnf" / "python.mps"
MODEL_PACKAGE = "mbnf.sandbox"
NAME_PATTERN = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")


class ImportError(ValueError):
    """The interchange grammar is outside the importer-supported subset."""


class NodeFactory:
    def __init__(self) -> None:
        self.counter = 0

    def create(self, concept: str, role: str | None = None) -> ET.Element:
        self.counter += 1
        attributes = {"concept": concept, "id": f"Rascal{self.counter:06d}"}
        if role is not None:
            attributes["role"] = role
        return ET.Element("node", attributes)


def property_node(parent: ET.Element, role: str, value: str) -> None:
    ET.SubElement(parent, "property", {"role": role, "value": value})


def reference_node(parent: ET.Element, role: str, target: ET.Element, name: str) -> None:
    ET.SubElement(parent, "ref", {"role": role, "node": target.get("id", ""), "resolve": name})


def one_child(parent: ET.Element, tag: str, description: str) -> ET.Element:
    children = parent.findall(tag)
    if len(children) != 1:
        raise ImportError(f"Expected exactly one {description}; found {len(children)}")
    return children[0]


def productions(rule: ET.Element) -> list[ET.Element]:
    choice = one_child(rule, "choice", f"choice for rule {rule.get('name')}")
    result = list(choice)
    if not result or any(item.tag != "production" for item in result):
        raise ImportError(
            f"Rule {rule.get('name')} must contain plain productions; "
            "priority and associativity are not supported"
        )
    return result


def validate_interchange(document: ET.Element) -> tuple[str, list[ET.Element], dict[str, ET.Element]]:
    if document.tag != "rascal-grammar":
        raise ImportError("Root element must be rascal-grammar")
    if document.get("format-version") != "1":
        raise ImportError(f"Unsupported format version: {document.get('format-version')!r}")
    module_name = document.get("module")
    if not module_name:
        raise ImportError("The module attribute is required")

    starts_element = one_child(document, "starts", "starts section")
    start_symbols = list(starts_element)
    if len(start_symbols) != 1 or start_symbols[0].tag != "start":
        raise ImportError("MetaBNF requires exactly one start symbol")
    start_name = start_symbols[0].get("name")
    if not start_name or not NAME_PATTERN.fullmatch(start_name):
        raise ImportError(f"Unsupported start rule name: {start_name!r}")

    rules_element = one_child(document, "rules", "rules section")
    rule_elements = list(rules_element)
    rules: dict[str, ET.Element] = {}
    for rule in rule_elements:
        if rule.tag != "rule":
            raise ImportError(f"Unexpected element in rules section: {rule.tag}")
        name = rule.get("name")
        kind = rule.get("kind")
        if not name or not NAME_PATTERN.fullmatch(name):
            raise ImportError(f"Unsupported rule name: {name!r}")
        if name in rules:
            raise ImportError(f"Duplicate rule name: {name}")
        if kind not in {"sort", "lexical"}:
            raise ImportError(f"Unsupported rule kind for {name}: {kind!r}")
        rules[name] = rule
    if not rules:
        raise ImportError("Grammar has no rules")
    if start_name not in rules or rules[start_name].get("kind") != "sort":
        raise ImportError(f"Start sort {start_name!r} has no matching sort rule")

    for name, rule in rules.items():
        alternatives = productions(rule)
        if rule.get("kind") == "lexical" and len(alternatives) != 1:
            raise ImportError(f"Lexical rule {name} must have exactly one production")
        for alternative in alternatives:
            production = one_child(alternative, "sequence", f"sequence for rule {name}")
            if rule.get("kind") == "lexical":
                symbols = list(production)
                if len(symbols) != 1 or symbols[0].tag not in {"literal", "character-class"}:
                    raise ImportError(
                        f"Lexical rule {name} must contain one literal or character class"
                    )
                continue
            for symbol in list(production):
                base_symbol, _ = unwrap_cardinality(symbol)
                if base_symbol.tag in {"literal", "empty"}:
                    continue
                if base_symbol.tag not in {"sort", "lexical"}:
                    raise ImportError(
                        f"Unsupported symbol {base_symbol.tag!r} in sort rule {name}"
                    )
                target_name = base_symbol.get("name")
                target = rules.get(target_name or "")
                if target is None:
                    raise ImportError(f"Rule {name} references undefined rule {target_name!r}")
                if target.get("kind") != base_symbol.tag:
                    raise ImportError(
                        f"Rule {name} references {target_name!r} as {base_symbol.tag}, "
                        f"but that rule is {target.get('kind')}"
                    )
    return start_name, rule_elements, rules


def unwrap_cardinality(symbol: ET.Element) -> tuple[ET.Element, str]:
    cardinality = "ExactlyOne"
    current = symbol
    wrappers = {
        "optional": "AtMostOne",
        "one-or-more": "AtleastOne",
        "zero-or-more": "ZeroOrMore",
    }
    while current.tag in wrappers:
        if cardinality != "ExactlyOne":
            raise ImportError("Nested cardinality operators are not supported")
        cardinality = wrappers[current.tag]
        current = one_child(current, "*", f"symbol inside {symbol.tag}")
    return current, cardinality


def create_regex(
    factory: NodeFactory, symbol: ET.Element, parent: ET.Element, role: str
) -> ET.Element:
    if symbol.tag == "literal":
        text = symbol.get("value")
        if text is None:
            raise ImportError("Literal symbol is missing its value")
        regex = factory.create("1OC9wW", role)
        property_node(regex, "1OCb_u", text)
        parent.append(regex)
        return regex

    if symbol.tag != "character-class":
        raise ImportError(f"Unsupported lexical expression: {symbol.tag}")
    ranges = symbol.findall("range")
    if not ranges:
        raise ImportError("Empty character classes cannot be represented in MetaBNF")
    regex = factory.create("1SSJmt", role)
    for char_range in ranges:
        start = parse_codepoint(char_range.get("start"), "start")
        end = parse_codepoint(char_range.get("end"), "end")
        if start > end:
            raise ImportError(f"Invalid character range: {start}..{end}")
        if start == end:
            part = factory.create("1T6I$Y", "1T5LoC")
            property_node(part, "1T6KD9", chr(start))
        else:
            part = factory.create("1T8lYq", "1T5LoC")
            property_node(part, "1T8p8b", chr(start))
            property_node(part, "1T8pRJ", chr(end))
        regex.append(part)
    parent.append(regex)
    return regex


def parse_codepoint(value: str | None, bound: str) -> int:
    try:
        codepoint = int(value or "")
    except ValueError as error:
        raise ImportError(f"Character range has an invalid {bound}: {value!r}") from error
    if not 0 <= codepoint <= 0xFFFF:
        raise ImportError(f"Character range {bound} must be a BMP code point: {codepoint}")
    return codepoint


def import_grammar(
    xml_path: Path,
    output_path: Path,
    model_name: str,
    template_path: Path = TEMPLATE,
    regex_template_path: Path = REGEX_TEMPLATE,
) -> None:
    if not NAME_PATTERN.fullmatch(model_name):
        raise ImportError(f"Invalid MPS model name: {model_name!r}")
    document = ET.parse(xml_path).getroot()
    start_name, rule_elements, rules = validate_interchange(document)

    template_tree = ET.parse(template_path)
    model = template_tree.getroot()
    model.set("ref", f"r:{uuid.uuid5(uuid.NAMESPACE_URL, MODEL_PACKAGE + '.' + model_name)}"
                       f"({MODEL_PACKAGE}.{model_name})")
    merge_regex_registry(model, ET.parse(regex_template_path).getroot())
    for child in list(model):
        if child.tag == "node":
            model.remove(child)

    factory = NodeFactory()
    rule_nodes: dict[str, ET.Element] = {}
    alternatives_by_rule: dict[str, list[tuple[ET.Element, ET.Element]]] = {}
    all_rules: list[tuple[ET.Element, ET.Element]] = []
    for rule in rule_elements:
        kind = rule.get("kind")
        name = rule.get("name", "")
        rule_productions = productions(rule)
        if len(rule_productions) > 1:
            node = factory.create("3xJKux", "t8saQ")
            alternatives: list[tuple[ET.Element, ET.Element]] = []
            for index, production in enumerate(rule_productions, start=1):
                alternative_name = f"{name}__RascalAlternative{index}"
                if alternative_name in rules:
                    raise ImportError(f"Synthetic alternative name collides with rule {alternative_name}")
                alternative_node = factory.create("3xhzZY", "t8saQ")
                property_node(alternative_node, "TrG5h", alternative_name)
                alternatives.append((production, alternative_node))
                all_rules.append((production, alternative_node))
            alternatives_by_rule[name] = alternatives
        else:
            concept = "3xhzZY" if kind == "sort" else "3xJKsl"
            node = factory.create(concept, "t8saQ")
            all_rules.append((rule_productions[0], node))
        property_node(node, "TrG5h", rule.get("name", ""))
        rule_nodes[name] = node
        if len(rule_productions) > 1 and kind != "sort":
            raise ImportError(f"Multiple productions are supported only for sort rules: {name}")

    group = factory.create("t8saL", "3xJMYo")
    property_node(group, "TrG5h", "Rascal")
    for rule_node in rule_nodes.values():
        group.append(rule_node)
    for _, alternative_node in all_rules:
        if alternative_node not in rule_nodes.values():
            group.append(alternative_node)

    for rule in rule_elements:
        rule_node = rule_nodes[rule.get("name", "")]
        if rule.get("kind") == "sort":
            alternatives = alternatives_by_rule.get(rule.get("name", ""))
            if alternatives is None:
                production = productions(rule)[0]
                sequence = one_child(production, "sequence", "production sequence")
                for symbol in list(sequence):
                    add_term(factory, rule_node, symbol, rule_nodes)
            else:
                for production, alternative_node in alternatives:
                    reference = factory.create("3xiQg6", "3xJKtx")
                    reference_node(
                        reference,
                        "3xiQg3",
                        alternative_node,
                        alternative_node.find("property").get("value", ""),
                    )
                    rule_node.append(reference)
                    sequence = one_child(production, "sequence", "production sequence")
                    for symbol in list(sequence):
                        add_term(factory, alternative_node, symbol, rule_nodes)
        else:
            sequence = one_child(productions(rule)[0], "sequence", "production sequence")
            inline = factory.create("1Qi9sc", "q_eir")
            create_regex(factory, list(sequence)[0], inline, "1QigWp")
            rule_node.append(inline)

    grammar = factory.create("3xJwxZ")
    property_node(grammar, "TrG5h", model_name)
    reference_node(grammar, "3xJMYq", rule_nodes[start_name], start_name)
    grammar.append(group)
    model.append(grammar)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    ET.indent(template_tree, space="  ")
    template_tree.write(output_path, encoding="UTF-8", xml_declaration=True)


def add_term(
    factory: NodeFactory,
    parent: ET.Element,
    symbol: ET.Element,
    rules: dict[str, ET.Element],
) -> None:
    base, cardinality = unwrap_cardinality(symbol)
    if base.tag == "empty":
        if cardinality != "ExactlyOne":
            raise ImportError("Cardinality operators on empty symbols are unsupported")
        return
    if base.tag == "literal":
        if cardinality != "ExactlyOne":
            raise ImportError("Cardinality operators on literal keywords are unsupported")
        keyword = factory.create("3xhzXc", "3xhzZr")
        property_node(keyword, "TrG5h", base.get("value", ""))
        parent.append(keyword)
        return

    name = base.get("name", "")
    target = rules[name]
    if base.tag == "sort":
        reference = factory.create("3xiQg6", "3xhzZr")
        if cardinality != "ExactlyOne":
            cardinality_id = {
                "AtleastOne": "2b2ZYR3yDpO",
                "ZeroOrMore": "2b2ZYR3yDpK",
                "AtMostOne": "2b2ZYR3yDpL",
            }[cardinality]
            property_node(reference, "3xj4NX", f"{cardinality_id}/{cardinality}")
        reference_node(reference, "3xiQg3", target, name)
    else:
        if cardinality != "ExactlyOne":
            raise ImportError("Cardinality operators on lexical references are unsupported")
        reference = factory.create("2GSJ2k", "3xhzZr")
        reference_node(reference, "2GQAiS", target, name)
    parent.append(reference)


def merge_regex_registry(model: ET.Element, regex_template: ET.Element) -> None:
    registry = model.find("registry")
    source_registry = regex_template.find("registry")
    if registry is None or source_registry is None:
        raise ImportError("MPS template is missing its concept registry")
    target_language = next(
        (item for item in registry.findall("language")
         if item.get("name") == "jetbrains.mps.baseLanguage.regexp"),
        None,
    )
    source_language = next(
        (item for item in source_registry.findall("language")
         if item.get("name") == "jetbrains.mps.baseLanguage.regexp"),
        None,
    )
    if target_language is None or source_language is None:
        raise ImportError("MPS templates are missing the regular expression language registry")
    existing = {item.get("id") for item in target_language.findall("concept")}
    for concept in source_language.findall("concept"):
        if concept.get("id") not in existing:
            target_language.append(copy.deepcopy(concept))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", required=True, type=Path, help="rascal-grammar-v1 XML file")
    parser.add_argument("--output", required=True, type=Path, help="output MPS .mps model")
    parser.add_argument("--model-name", required=True, help="simple MPS model name")
    parser.add_argument("--template", type=Path, default=TEMPLATE, help="MetaBNF model template")
    parser.add_argument(
        "--regex-template",
        type=Path,
        default=REGEX_TEMPLATE,
        help="MPS regular-expression registry template",
    )
    args = parser.parse_args()
    try:
        import_grammar(
            args.input,
            args.output,
            args.model_name,
            args.template,
            args.regex_template,
        )
    except (ET.ParseError, OSError, ImportError) as error:
        parser.error(str(error))
    print(f"Imported {args.input} as {MODEL_PACKAGE}.{args.model_name} at {args.output}")


if __name__ == "__main__":
    main()
