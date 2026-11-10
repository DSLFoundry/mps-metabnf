#!/usr/bin/env python3
"""Suggest, but never apply, grammar-to-MPS AST mappings from metamodel snapshots."""

from __future__ import annotations

import argparse
import copy
import hashlib
import json
import xml.etree.ElementTree as ET
from collections import Counter
from pathlib import Path


class Decision(ValueError):
    """The grammar needs a user decision rather than structural inference."""


def fingerprint(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def grammar_value(node):
    return [node.tag, dict(sorted(node.attrib.items())), [grammar_value(c) for c in node]]


def unique(items, label):
    result = {}
    for item in items:
        if not isinstance(item, (dict, ET.Element)):
            raise ValueError(f"Each {label} must be an object")
        name = item.get("name")
        if not isinstance(name, str) or not name or name in result:
            raise ValueError(f"Missing or duplicate {label} name: {name!r}")
        result[name] = item
    return result


def metamodel_concepts(snapshot):
    if not isinstance(snapshot, dict) or snapshot.get("formatVersion") != 1 or not isinstance(snapshot.get("concepts"), list):
        raise ValueError("Metamodel must contain formatVersion 1 and a concepts array")
    concepts = unique(snapshot["concepts"], "concept")
    for name, c in concepts.items():
        if not c.get("id") or any(type(c.get(k)) is not bool for k in ("abstract", "rootable")):
            raise ValueError(f"Missing concept identity/flags: {name}")
        if not isinstance(c.get("assignableTo"), list) or name not in c["assignableTo"]:
            raise ValueError(f"Missing assignability information: {name}")
        for kind in ("properties", "children", "references"):
            if not isinstance(c.get(kind), list):
                raise ValueError(f"Missing {kind} metadata: {name}")
            for member in unique(c[kind], f"{name} {kind}").values():
                if not member.get("id"):
                    raise ValueError(f"Missing member identity: {name}.{member['name']}")
                if kind == "properties":
                    if not member.get("type") or type(member.get("declared")) is not bool:
                        raise ValueError(f"Missing property type/owner: {name}.{member['name']}")
                elif not member.get("target") or type(member.get("optional")) is not bool:
                    raise ValueError(f"Missing link target/cardinality: {name}.{member['name']}")
                elif kind == "children" and type(member.get("multiple")) is not bool:
                    raise ValueError(f"Missing link multiplicity: {name}.{member['name']}")
    return concepts


def occurrences(rule):
    """Return (source name, kind, minimum, maximum); None means unbounded."""
    def walk(node, minimum=1, maximum=1):
        if node.tag in {"sort", "lexical"}:
            return [(node.attrib["name"], node.tag, minimum, maximum)]
        if node.tag in {"literal", "empty", "layout"}:
            return []
        if node.tag in {"production", "sequence", "choice"}:
            if node.tag == "choice" and len(node) != 1:
                raise Decision("Alternatives require an explicit AST-shape decision")
            return [value for child in node for value in walk(child, minimum, maximum)]
        if node.tag in {"one-or-more-sep", "zero-or-more-sep"}:
            element, separators = node.find("element"), node.find("separators")
            if (minimum, maximum) != (1, 1) or element is None or len(element) != 1 or separators is None:
                raise Decision("Malformed or nested separated repetition requires review")
            if any(s.tag != "layout" for s in separators):
                raise Decision("Non-layout separators require an explicit mapping decision")
            return walk(element[0], 0 if node.tag == "zero-or-more-sep" else 1, None)
        if node.tag in {"optional", "zero-or-more", "one-or-more"} and len(node) == 1:
            if minimum != 1 or maximum != 1:
                raise Decision("Nested cardinalities require review")
            return walk(node[0], 0 if node.tag != "one-or-more" else 1,
                        1 if node.tag == "optional" else None)
        raise Decision(f"Unsupported grammar construct {node.tag!r}; no inference")

    if rule.get("kind") == "lexical":
        return []
    if rule.get("kind") != "sort" or len(rule) != 1:
        raise Decision("Only a single sort production can be inferred")
    return walk(rule[0])


def suggest(grammar, metamodel, explicit=None, previous=None):
    """Return a review report. Explicit fields survive even when invalid or stale."""
    if grammar.tag != "rascal-grammar" or grammar.get("format-version") != "1":
        raise ValueError("Expected rascal-grammar format-version 1 interchange")
    rules = unique(grammar.findall("./rules/rule"), "grammar rule")
    starts = [s.get("name") for s in grammar.findall("./starts/*")]
    if not starts or any(s not in rules for s in starts):
        raise ValueError("Grammar must declare existing start rules")
    concepts = metamodel_concepts(metamodel)
    if previous is not None and (not isinstance(previous, dict) or previous.get("formatVersion") != 1 or
                                 not isinstance(previous.get("provenance"), dict)):
        raise ValueError("Previous review must be a formatVersion 1 report")
    explicit = copy.deepcopy(explicit if explicit is not None else {"rules": {}})
    if not isinstance(explicit, dict) or not isinstance(explicit.get("rules"), dict):
        raise ValueError("Explicit mapping must contain a rules object")
    for name, mapping in explicit["rules"].items():
        if not isinstance(mapping, dict) or any(
            not isinstance(mapping.get(k, {}), dict) for k in ("properties", "children")
        ):
            raise ValueError(f"Invalid explicit mapping object: {name}")
    effective = copy.deepcopy(explicit)
    additions, diagnostics = {}, []
    provenance = {"grammar": fingerprint(grammar_value(grammar)), "metamodel": fingerprint(metamodel)}

    def diagnose(code, rule, message):
        entry = {"code": code, "rule": rule, "message": message}
        if entry not in diagnostics:
            diagnostics.append(entry)

    if previous is not None:
        for key in provenance:
            if previous.get("provenance", {}).get(key) != provenance[key]:
                diagnose("stale-input", "", f"{key} snapshot changed; re-review mappings, do not auto-retarget")

    selected = {}

    def select(name):
        if name in selected:
            return selected[name]
        mapping = effective["rules"].get(name, {})
        if "concept" in mapping:
            c = concepts.get(mapping["concept"])
            if c is None:
                diagnose("stale-concept", name, f"Unknown target concept {mapping['concept']!r}")
        else:
            candidates = [c for c in concepts.values() if not c["abstract"] and
                          c["name"].rsplit(".", 1)[-1].casefold() == name.casefold()]
            c = candidates[0] if len(candidates) == 1 else None
            if c is None:
                diagnose("concept-decision", name, f"Expected one name-matching concrete concept; found "
                         f"{[v['name'] for v in candidates]}")
        if c and c["abstract"]:
            diagnose("abstract-target", name, f"Cannot instantiate {c['name']}")
            c = None
        selected[name] = c
        return c

    def add(name, field, key, value):
        mapping = effective["rules"].setdefault(name, {})
        delta = additions.setdefault(name, {})
        if field == "concept":
            if field not in mapping:
                mapping[field] = value
                delta[field] = value
        elif key not in mapping.get(field, {}):
            mapping.setdefault(field, {})[key] = value
            delta.setdefault(field, {})[key] = value

    pending = set(starts) | set(explicit["rules"])
    visited = set()
    while pending:
        name = min(pending)
        pending.remove(name)
        if name in visited:
            continue
        visited.add(name)
        if name not in rules:
            diagnose("stale-rule", name, "Mapping names a removed or renamed grammar rule")
            continue
        c = select(name)
        if c is None:
            continue
        add(name, "concept", None, c["name"])
        if name in starts and not c["rootable"]:
            diagnose("non-rootable", name, f"Start target {c['name']} is not rootable")
        mapping = effective["rules"][name]
        for role in mapping.get("children", {}).values():
            if role not in [link["name"] for link in c["children"]]:
                diagnose("stale-role", name, f"Unknown containment role {role!r}")
        properties = unique(c["properties"], "property")
        links = unique(c["children"], "containment")
        for prop in mapping.get("properties", {}):
            if prop not in properties:
                diagnose("stale-property", name, f"Unknown property {prop!r}")
        try:
            sources = occurrences(rules[name])
        except Decision as error:
            diagnose("grammar-decision", name, str(error))
            continue
        counts = Counter(s[0] for s in sources)
        source_by_name = {s[0]: s for s in sources}
        consumed = set()
        for prop, selector in mapping.get("properties", {}).items():
            if prop not in properties:
                diagnose("stale-property", name, f"Unknown property {prop!r}")
            if not isinstance(selector, dict) or len(selector) != 1:
                diagnose("property-source", name, f"{prop}: select exactly one token, self, or literal")
                continue
            if "token" in selector:
                token = selector["token"]
                source = source_by_name.get(token)
                if not source or source[1] != "lexical":
                    diagnose("stale-source", name, f"{prop}: unknown lexical source {token!r}")
                elif counts[token] != 1 or source[2:] != (1, 1):
                    diagnose("property-cardinality", name, f"{prop}: token {token} is not exactly one")
                if token in consumed:
                    diagnose("duplicate-source", name, f"Token {token!r} feeds multiple properties")
                consumed.add(token)
            elif selector == {"self": True}:
                if rules[name].get("kind") != "lexical":
                    diagnose("property-source", name, f"{prop}: self requires a lexical rule")
            elif "literal" not in selector or not isinstance(selector["literal"], str):
                diagnose("property-source", name, f"{prop}: unsupported value source")
        if rules[name].get("kind") == "lexical" and not mapping.get("properties"):
            candidates = [p for p in properties.values() if p["declared"] and p["type"] == "string"]
            if len(candidates) == 1:
                add(name, "properties", candidates[0]["name"], {"self": True})
            else:
                diagnose("property-decision", name, "Token self needs one declared unconstrained string property")
        for source_name, kind, minimum, maximum in sources:
            if counts[source_name] != 1:
                diagnose("duplicate-source", name, f"Repeated {source_name!r} cannot select distinct occurrences")
                continue
            if source_name in consumed:
                if source_name in mapping.get("children", {}):
                    diagnose("duplicate-source", name, f"{source_name!r} is both property and child")
                continue
            if kind == "lexical" and source_name not in mapping.get("children", {}):
                candidates = [p for p in properties.values() if p["type"] == "string" and
                              p["name"].casefold() == source_name.casefold() and
                              p["name"] not in mapping.get("properties", {})]
                node_candidates = [t for t in concepts.values() if not t["abstract"] and
                                   t["name"].rsplit(".", 1)[-1].casefold() == source_name.casefold()]
                if "concept" in effective["rules"].get(source_name, {}):
                    node_target = select(source_name)
                    node_candidates = [node_target] if node_target else []
                node_route = any(l["target"] in t["assignableTo"] and
                                 l["multiple"] == (maximum is None) and l["optional"] == (minimum == 0)
                                 for t in node_candidates for l in links.values())
                if candidates and (minimum, maximum) == (1, 1) and (len(candidates) != 1 or node_route):
                    diagnose("token-target-decision", name, f"{source_name}: property/node alternatives require review")
                    continue
                if len(candidates) == 1 and (minimum, maximum) == (1, 1):
                    add(name, "properties", candidates[0]["name"], {"token": source_name})
                    consumed.add(source_name)
                    continue
            target = select(source_name) if source_name in rules else None
            if target is None:
                diagnose("source-decision", name, f"No safe property or node target for {source_name!r}")
                continue
            pending.add(source_name)
            role = mapping.get("children", {}).get(source_name)
            compatible = [l for l in links.values() if l["target"] in target["assignableTo"] and
                          l["multiple"] == (maximum is None) and l["optional"] == (minimum == 0)]
            if role is None:
                if len(compatible) != 1:
                    diagnose("containment-decision", name, f"{source_name}: expected one type/cardinality-compatible "
                             f"containment; found {[l['name'] for l in compatible]}")
                    continue
                role = compatible[0]["name"]
                add(name, "children", source_name, role)
            if role not in links:
                diagnose("stale-role", name, f"Unknown containment role {role!r}")
            elif role not in [l["name"] for l in compatible]:
                diagnose("incompatible-containment", name, f"{source_name} -> {role}: target type or cardinality differs")
        child_roles = list(mapping.get("children", {}).values())
        for source_name, role in list(mapping.get("children", {}).items()):
            if source_name not in source_by_name:
                diagnose("stale-source", name, f"Unknown child source {source_name!r}")
            if child_roles.count(role) > 1:
                diagnose("shared-containment", name, f"Multiple sources feed {role!r}; ordering/cardinality needs review")
                if source_name in additions.get(name, {}).get("children", {}):
                    del additions[name]["children"][source_name]
                    del mapping["children"][source_name]
        if additions.get(name, {}).get("children") == {}:
            del additions[name]["children"]
        if mapping.get("children") == {} and "children" not in explicit["rules"].get(name, {}):
            del mapping["children"]
        child_roles = list(mapping.get("children", {}).values())
        for link in links.values():
            if not link["optional"] and link["name"] not in child_roles:
                diagnose("required-containment", name, f"Required containment {link['name']!r} is unmapped")
        if mapping.get("references") or any(not r["optional"] for r in c["references"]):
            diagnose("reference-decision", name, "Reference resolution requires a separate explicit policy")
    return {"formatVersion": 1, "provenance": provenance, "mapping": effective,
            "suggestions": {k: v for k, v in sorted(additions.items()) if v},
            "diagnostics": sorted(diagnostics, key=lambda d: (d["rule"], d["code"], d["message"])),
            "reviewRequired": bool(diagnostics)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--grammar", required=True, type=Path, help="shared grammar XML interchange")
    parser.add_argument("--metamodel", required=True, type=Path, help="Code Mode target snapshot JSON")
    parser.add_argument("--explicit", type=Path, help="authoritative mapping JSON, including partial mappings")
    parser.add_argument("--previous", type=Path, help="review report to check for input drift")
    parser.add_argument("--output", required=True, type=Path, help="review report JSON (not an importer mapping)")
    args = parser.parse_args()
    try:
        if args.output.suffix.lower() == ".mps" or args.output.resolve() in {
            p.resolve() for p in (args.grammar, args.metamodel, args.explicit, args.previous) if p
        }:
            raise ValueError("Report output must not overwrite an input or an MPS model")
        read = lambda p: json.loads(p.read_text(encoding="utf-8-sig")) if p else None
        report = suggest(ET.parse(args.grammar).getroot(), read(args.metamodel),
                         read(args.explicit), read(args.previous))
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    except (ValueError, KeyError, TypeError, OSError, ET.ParseError) as error:
        parser.error(str(error))
    print(f"{len(report['suggestions'])} rule suggestions, {len(report['diagnostics'])} review diagnostics: {args.output}")
    return 2 if report["reviewRequired"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
