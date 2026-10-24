#!/usr/bin/env python3
"""Generate an executable Rascal parser module from grammar interchange XML."""

from __future__ import annotations

import argparse
import re
import xml.etree.ElementTree as ET
from pathlib import Path

from import_to_mps import ImportError, validate_interchange


MODULE_PATTERN = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*(::[A-Za-z_][A-Za-z0-9_]*)*$")


def rascal_string(value: str) -> str:
    escapes = {
        "\\": "\\\\",
        '"': '\\"',
        "\n": "\\n",
        "\r": "\\r",
        "\t": "\\t",
        "<": "\\<",
    }
    return '"' + "".join(escapes.get(char, char) for char in value) + '"'


def character_class(symbol: ET.Element) -> str:
    ranges = symbol.findall("range")
    if not ranges:
        raise ImportError("Empty character classes cannot be generated in Rascal")
    parts: list[str] = []
    for char_range in ranges:
        start = parse_codepoint(char_range.get("start"), "start")
        end = parse_codepoint(char_range.get("end"), "end")
        if start > end:
            raise ImportError(f"Invalid character range: {start}..{end}")
        parts.append(rascal_character(start))
        if start != end:
            parts.extend(("-", rascal_character(end)))
    return "[" + "".join(parts) + "]"


def parse_codepoint(value: str | None, bound: str) -> int:
    try:
        codepoint = int(value or "")
    except ValueError as error:
        raise ImportError(f"Character range has an invalid {bound}: {value!r}") from error
    if not 0 <= codepoint <= 0xFFFF:
        raise ImportError(f"Character range {bound} must be a BMP code point: {codepoint}")
    return codepoint


def rascal_character(codepoint: int) -> str:
    char = chr(codepoint)
    if char in {"\\", "]", "-", "^"}:
        return "\\" + char
    if char in "\n\r\t":
        return {"\n": "\\n", "\r": "\\r", "\t": "\\t"}[char]
    return char


def symbol_expression(symbol: ET.Element) -> str:
    tag = symbol.tag
    if tag in {"literal", "keyword"}:
        value = symbol.get("value")
        if value is None:
            raise ImportError(f"{tag} symbol is missing its value")
        return rascal_string(value)
    if tag in {"sort", "lexical", "layout"}:
        name = symbol.get("name")
        if not name or not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", name):
            raise ImportError(f"Unsupported Rascal symbol name: {name!r}")
        return name
    if tag == "empty":
        return '""'
    if tag == "character-class":
        return character_class(symbol)
    if tag in {"optional", "one-or-more", "zero-or-more"}:
        nested = list(symbol)
        if len(nested) != 1:
            raise ImportError(f"{tag} must contain exactly one symbol")
        operator = {"optional": "?", "one-or-more": "+", "zero-or-more": "*"}[tag]
        expression = symbol_expression(nested[0])
        if nested[0].tag in {"sequence", "choice"}:
            expression = f"({expression})"
        return expression + operator
    if tag in {"sequence", "choice"}:
        parts = [symbol_expression(child) for child in symbol]
        separator = " " if tag == "sequence" else " | "
        if not parts:
            return '""'
        return "(" + separator.join(parts) + ")"
    raise ImportError(f"Unsupported symbol for Rascal parser generation: {tag}")


def production_expression(production: ET.Element) -> str:
    if production.tag != "production":
        raise ImportError(
            f"Unsupported production construct for Rascal parser generation: {production.tag}"
        )
    sequence = production.find("sequence")
    if sequence is None:
        raise ImportError("Production is missing its sequence")
    return " ".join(symbol_expression(symbol) for symbol in sequence) or '""'


def generate_module(grammar_path: Path, module_name: str, executable: bool = True) -> str:
    if not MODULE_PATTERN.fullmatch(module_name):
        raise ImportError(f"Invalid Rascal module name: {module_name!r}")

    document = ET.parse(grammar_path).getroot()
    start_name, rule_elements, _ = validate_interchange(document)
    declarations: list[str] = []
    for rule in rule_elements:
        name = rule.get("name", "")
        kind = rule.get("kind")
        productions = list(rule)
        if len(productions) != 1 or productions[0].tag != "choice":
            raise ImportError(f"Rule {name} must contain one plain choice")
        alternatives = list(productions[0])
        expressions = [production_expression(item) for item in alternatives]
        if not expressions:
            raise ImportError(f"Rule {name} has no productions")
        declaration_kind = "lexical" if kind == "lexical" else "syntax"
        separator = " | " if declaration_kind == "syntax" else " "
        if declaration_kind == "lexical" and len(expressions) != 1:
            raise ImportError(f"Lexical rule {name} must have exactly one production")
        declarations.append(
            f"{declaration_kind} {name} = {separator.join(expressions)};"
        )

    source = [
        f"module {module_name}",
        "",
        *declarations,
        "",
    ]
    if not executable:
        return "\n".join(source)

    return "\n".join(
        [
            *source[:2],
            "import IO;",
            "import ParseTree;",
            "import Grammar;",
            "import String;",
            "",
            *source[2:],
            "public void main(list[str] args) {",
            '  if (size(args) != 2) throw "Expected input and output file URIs";',
            "  inputUri = args[0];",
            "  outputUri = args[1];",
            "  input = readFile(toLocation(inputUri));",
            f"  parsed = parse(#{start_name}, input);",
            '  writeFile(toLocation(outputUri), "\\<parse-result\\>" + treeXml(parsed) + "\\</parse-result\\>");',
            "}",
            "",
            "str treeXml(Tree::appl(Production::prod(Symbol::sort(name), _, _), args)) =",
            '  "\\<node rule=\\"" + escapeXml(name) + "\\"\\>"',
            "  + concatXml([treeXml(child) | child <- args])",
            '  + "\\</node\\>";',
            "",
            "str treeXml(Tree::appl(Production::prod(Symbol::lex(name), symbols, attributes), args)) =",
            '  "\\<token rule=\\"" + escapeXml(name) + "\\" value=\\""',
            "  + escapeXml(unparse(Tree::appl(Production::prod(Symbol::lex(name), symbols, attributes), args)))",
            '  + "\\"/\\>";',
            "",
            "str treeXml(Tree::appl(_, args)) = concatXml([treeXml(child) | child <- args]);",
            'str treeXml(Tree::char(codepoint)) = "\\<character codepoint=\\"<codepoint>\\"/\\>";',
            'str treeXml(Tree::cycle(_, length)) = "\\<cycle length=\\"<length>\\"/\\>";',
            'str treeXml(Tree::amb(alternatives)) = "\\<ambiguity\\>"',
            "  + concatXml([treeXml(alternative) | alternative <- alternatives])",
            '  + "\\</ambiguity\\>";',
            "",
            "str concatXml(list[str] fragments) {",
            '  str result = "";',
            "  for (fragment <- fragments) result += fragment;",
            "  return result;",
            "}",
            "",
            "str escapeXml(str textValue) {",
            r'  return replaceAll(replaceAll(replaceAll(textValue, "&", "&amp;"), "\<", "&lt;"), "\"", "&quot;");',
            "}",
            "",
        ]
    )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--grammar", required=True, type=Path, help="rascal-grammar-v1 XML file")
    parser.add_argument("--output", required=True, type=Path, help="generated Rascal .rsc module")
    parser.add_argument(
        "--module-name",
        default="metabnf::generated::GrammarParser",
        help="qualified Rascal module name",
    )
    args = parser.parse_args()
    try:
        source = generate_module(args.grammar, args.module_name)
    except (ET.ParseError, OSError, ImportError) as error:
        parser.error(str(error))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(source, encoding="utf-8", newline="\n")
    print(f"Generated Rascal parser module {args.module_name} at {args.output}")


if __name__ == "__main__":
    main()
