module metabnf::RascalGrammarExport

import Grammar;
import lang::rascal::grammar::definition::Modules;
import lang::rascal::\syntax::Rascal;
import IO;
import String;

public void exportModules(str main, set[Module] modules, loc output) {
  writeFile(output, toXml(main, modules2grammar(main, modules)));
}

public str toXml(str main, Grammar g) {
  starts = sort([symbolXml(s) | s <- g.starts]);
  rules = sort([ruleXml(def, g.rules[def]) | def <- g.rules, isExportedRule(def)]);

  return "\<?xml version=\"1.0\" encoding=\"UTF-8\"?\>\n"
    + openTag("rascal-grammar", xmlAttribute("format-version", "1") + xmlAttribute("module", main)) + "\n"
    + "  " + openTag("starts", "") + concatXml(starts) + closeTag("starts") + "\n"
    + "  " + openTag("rules", "") + concatXml(rules) + closeTag("rules") + "\n"
    + closeTag("rascal-grammar") + "\n";
}

bool isExportedRule(Symbol::empty()) = false;
bool isExportedRule(Symbol::layouts("$default$")) = false;
bool isExportedRule(Symbol::\start(_)) = false;
bool isExportedRule(Symbol _) = true;

str ruleXml(Symbol def, Production production) =
  openTag("rule", xmlAttribute("name", symbolName(def)) + xmlAttribute("kind", ruleKind(def)))
  + productionXml(production)
  + closeTag("rule");

str ruleKind(Symbol::sort(str _)) = "sort";
str ruleKind(Symbol::lex(str _)) = "lexical";
str ruleKind(Symbol::layouts(str _)) = "layout";
str ruleKind(Symbol::keywords(str _)) = "keyword";
str ruleKind(Symbol::\parameterized-sort(str _, list[Symbol] _)) = "parameterized-sort";
str ruleKind(Symbol::\parameterized-lex(str _, list[Symbol] _)) = "parameterized-lexical";

default str ruleKind(Symbol symbol) {
  throw "Unsupported Rascal grammar rule kind: <symbol>";
}

str productionXml(Production::prod(Symbol _, list[Symbol] symbols, _)) =
  openTag("production", "")
  + openTag("sequence", "") + concatXml([symbolXml(s) | s <- symbols, !isDefaultLayout(s)]) + closeTag("sequence")
  + closeTag("production");

bool isDefaultLayout(Symbol::layouts("$default$")) = true;
bool isDefaultLayout(Symbol _) = false;

str productionXml(choice(Symbol _, set[Production] alternatives)) =
  openTag("choice", "") + concatXml(sort([productionXml(p) | p <- alternatives])) + closeTag("choice");

str productionXml(Production::\priority(Symbol _, list[Production] alternatives)) =
  openTag("priority", "") + concatXml([productionXml(p) | p <- alternatives]) + closeTag("priority");

str productionXml(Production::\associativity(Symbol _, Associativity kind, set[Production] alternatives)) =
  openTag("associativity", xmlAttribute("kind", associativityName(kind)))
  + concatXml(sort([productionXml(p) | p <- alternatives])) + closeTag("associativity");

str productionXml(Production::\reference(Symbol _, str constructor)) =
  emptyTag("reference", xmlAttribute("constructor", constructor));

default str productionXml(Production production) {
  throw "Unsupported Rascal grammar production in MetaBNF interchange";
}

str symbolName(Symbol::sort(str name)) = name;
str symbolName(Symbol::lex(str name)) = name;
str symbolName(Symbol::layouts(str name)) = name;
str symbolName(Symbol::keywords(str name)) = name;
str symbolName(Symbol::\start(Symbol symbol)) = symbolName(symbol);

default str symbolName(Symbol symbol) {
  throw "Unsupported Rascal start symbol: <symbol>";
}

str associativityName(Associativity::\left()) = "left";
str associativityName(Associativity::\right()) = "right";
str associativityName(Associativity::\non-assoc()) = "non-associative";

str symbolXml(Symbol::\start(Symbol symbol)) = emptyTag("start", xmlAttribute("name", symbolName(symbol)));
str symbolXml(Symbol::sort(str name)) = emptyTag("sort", xmlAttribute("name", name));
str symbolXml(Symbol::lex(str name)) = emptyTag("lexical", xmlAttribute("name", name));
str symbolXml(Symbol::layouts(str name)) = emptyTag("layout", xmlAttribute("name", name));
str symbolXml(Symbol::keywords(str name)) = emptyTag("keyword", xmlAttribute("name", name));
str symbolXml(Symbol::\lit(str text)) = emptyTag("literal", xmlAttribute("value", text));
str symbolXml(Symbol::\cilit(str text)) = emptyTag("case-insensitive-literal", xmlAttribute("value", text));
str symbolXml(Symbol::\empty()) = emptyTag("empty", "");
str symbolXml(Symbol::\opt(Symbol symbol)) =
  openTag("optional", "") + symbolXml(symbol) + closeTag("optional");
str symbolXml(Symbol::\iter(Symbol symbol)) =
  openTag("one-or-more", "") + symbolXml(symbol) + closeTag("one-or-more");
str symbolXml(Symbol::\iter-star(Symbol symbol)) =
  openTag("zero-or-more", "") + symbolXml(symbol) + closeTag("zero-or-more");
str symbolXml(Symbol::\seq(list[Symbol] symbols)) =
  openTag("sequence", "") + concatXml([symbolXml(s) | s <- symbols]) + closeTag("sequence");
str symbolXml(Symbol::\alt(set[Symbol] alternatives)) =
  openTag("choice", "") + concatXml(sort([symbolXml(s) | s <- alternatives])) + closeTag("choice");
str symbolXml(Symbol::\parameterized-sort(str name, list[Symbol] parameters)) =
  openTag("parameterized-sort", xmlAttribute("name", name))
  + concatXml([symbolXml(s) | s <- parameters]) + closeTag("parameterized-sort");
str symbolXml(Symbol::\parameterized-lex(str name, list[Symbol] parameters)) =
  openTag("parameterized-lexical", xmlAttribute("name", name))
  + concatXml([symbolXml(s) | s <- parameters]) + closeTag("parameterized-lexical");
str symbolXml(Symbol::\char-class(list[CharRange] ranges)) =
  openTag("character-class", "") + concatXml([rangeXml(r) | r <- ranges]) + closeTag("character-class");
str symbolXml(Symbol::\iter-seps(Symbol symbol, list[Symbol] separators)) =
  openTag("one-or-more-sep", "")
  + openTag("element", "") + symbolXml(symbol) + closeTag("element")
  + openTag("separators", "") + concatXml([symbolXml(s) | s <- separators]) + closeTag("separators")
  + closeTag("one-or-more-sep");
str symbolXml(Symbol::\iter-star-seps(Symbol symbol, list[Symbol] separators)) =
  openTag("zero-or-more-sep", "")
  + openTag("element", "") + symbolXml(symbol) + closeTag("element")
  + openTag("separators", "") + concatXml([symbolXml(s) | s <- separators]) + closeTag("separators")
  + closeTag("zero-or-more-sep");
str symbolXml(Symbol::\conditional(Symbol _, set[Condition] _)) {
  throw "Conditional Rascal grammar symbols are not supported in the MetaBNF interchange";
}

default str symbolXml(Symbol _) {
  throw "Unsupported Rascal grammar symbol in MetaBNF interchange";
}

str rangeXml(CharRange::range(int begin, int end)) =
  emptyTag("range", xmlAttribute("start", "<begin>") + xmlAttribute("end", "<end>"));

str openTag(str name, str attributes) = "\<" + name + attributes + "\>";
str closeTag(str name) = "\</" + name + "\>";
str emptyTag(str name, str attributes) = "\<" + name + attributes + "/\>";
str xmlAttribute(str name, str textValue) = " " + name + "=\"" + escapeXml(textValue) + "\"";

str concatXml(list[str] fragments) {
  str result = "";
  for (fragment <- fragments) {
    result += fragment;
  }
  return result;
}

str escapeXml(str textValue) {
  return replaceAll(
    replaceAll(
      replaceAll(textValue, "&", "&amp;"),
      "\<", "&lt;"),
    stringChar(34), "&quot;");
}
