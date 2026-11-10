package metabnf.rascal;

import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.language.ConceptRegistry;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SEnumeration;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilderFactory;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Converts tool interchange, never serialized MPS persistence, into native nodes. */
public final class GrammarModelImporter {
    private static final String MBNF = "metabnf.structure.";
    private static final String REGEX = "jetbrains.mps.baseLanguage.regexp.structure.";

    public record Symbol(String kind, String value, String cardinality, List<int[]> ranges,
                         List<Symbol> children) {}
    public record Rule(String name, String kind, List<List<Symbol>> alternatives) {
        boolean lexical() { return !kind.equals("sort"); }
    }
    public record Grammar(String start, List<Rule> rules) {}

    public static Grammar read(Path interchange) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
        factory.setFeature("http://xml.org/sax/features/external-general-entities", false);
        factory.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
        factory.setXIncludeAware(false);
        factory.setExpandEntityReferences(false);
        Element document = factory.newDocumentBuilder().parse(interchange.toFile()).getDocumentElement();
        require(document.getTagName().equals("rascal-grammar")
                && document.getAttribute("format-version").equals("1"), "Unsupported grammar interchange version");
        require(children(document).size() == 2
                && children(document).stream().allMatch(child -> List.of("starts", "rules").contains(child.getTagName())),
                "Unexpected grammar interchange content");
        Element startElement = only(only(document, "starts"), "start");
        require(children(startElement).isEmpty(), "Unexpected start-rule content");
        String start = name(startElement.getAttribute("name"));
        Map<String, Rule> rules = new LinkedHashMap<>();
        for (Element element : children(only(document, "rules"))) {
            require(element.getTagName().equals("rule"), "Unexpected element in grammar rules");
            String ruleName = name(element.getAttribute("name"));
            String kind = element.getAttribute("kind");
            require(children(element).stream().noneMatch(child ->
                            List.of("priority", "associativity").contains(child.getTagName())),
                    "Priority/associativity cannot be preserved: " + ruleName);
            require(List.of("sort", "lexical", "layout").contains(kind),
                    "Unsupported rule kind: " + kind + " in " + ruleName);
            List<List<Symbol>> alternatives = new ArrayList<>();
            for (Element production : children(only(element, "choice"))) {
                require(production.getTagName().equals("production"),
                        "Priority/associativity cannot be preserved: " + ruleName);
                List<Symbol> symbols = new ArrayList<>();
                for (Element symbol : children(only(production, "sequence"))) symbols.add(symbol(symbol));
                alternatives.add(List.copyOf(symbols));
            }
            require(!alternatives.isEmpty(), "No productions for " + ruleName);
            boolean lexical = !kind.equals("sort");
            if (lexical) {
                require(alternatives.size() == 1 && !alternatives.get(0).isEmpty(),
                        "Lexical/layout rule must contain one expression: " + ruleName);
                List<Symbol> components = alternatives.get(0);
                Symbol expression = components.size() == 1 ? components.get(0)
                        : new Symbol("sequence", "", "ExactlyOne", List.of(), components);
                alternatives.set(0, List.of(expression));
                validateRegex(expression, ruleName);
            }
            require(rules.putIfAbsent(ruleName, new Rule(ruleName, kind, List.copyOf(alternatives))) == null,
                    "Duplicate rule: " + ruleName);
        }
        require(rules.containsKey(start) && !rules.get(start).lexical(), "Start rule is not a declared sort: " + start);
        for (Rule rule : rules.values()) {
            for (List<Symbol> alternative : rule.alternatives()) {
                for (Symbol symbol : alternative) {
                    if (List.of("sort", "lexical", "layout").contains(symbol.kind())) {
                        Rule target = rules.get(symbol.value());
                        boolean targetKindMatches = target != null && target.lexical() == !symbol.kind().equals("sort")
                                && (!symbol.kind().equals("layout") || target.kind().equals("layout"))
                                && (!symbol.kind().equals("lexical") || target.kind().equals("lexical"));
                        require(targetKindMatches,
                                "Undefined or incorrectly typed reference: " + rule.name() + " -> " + symbol.value());
                    }
                    if (rule.lexical()) continue;
                    require(symbol.children().isEmpty(), "Grouped parser expressions are not supported in " + rule.name());
                    if (symbol.kind().equals("sort")) continue;
                    require(symbol.cardinality().equals("ExactlyOne"),
                            "Cardinality operators are supported only on sort references: " + rule.name());
                    require(List.of("literal", "empty", "lexical", "layout").contains(symbol.kind()),
                            "Unsupported parser symbol " + symbol.kind() + " in " + rule.name());
                }
            }
        }
        return new Grammar(start, List.copyOf(rules.values()));
    }

    private static Symbol symbol(Element element) {
        String cardinality = switch (element.getTagName()) {
            case "optional" -> "AtMostOne";
            case "one-or-more" -> "AtleastOne";
            case "zero-or-more" -> "ZeroOrMore";
            default -> "ExactlyOne";
        };
        if (!cardinality.equals("ExactlyOne")) {
            require(children(element).size() == 1, "Cardinality requires one symbol");
            Symbol nested = symbol(children(element).get(0));
            require(nested.cardinality().equals("ExactlyOne"), "Nested cardinality is not supported");
            return new Symbol(nested.kind(), nested.value(), cardinality, nested.ranges(), nested.children());
        }
        String kind = element.getTagName();
        require(List.of("literal", "empty", "sort", "lexical", "layout", "character-class",
                "sequence", "choice").contains(kind), "Unsupported grammar symbol: " + kind);
        String value = "";
        List<int[]> ranges = new ArrayList<>();
        List<Symbol> nested = new ArrayList<>();
        if (List.of("sort", "lexical", "layout").contains(kind)) value = name(element.getAttribute("name"));
        if (kind.equals("literal")) {
            require(element.hasAttribute("value"), "Literal has no value");
            value = element.getAttribute("value");
        }
        if (kind.equals("character-class")) {
            for (Element range : children(element)) {
                require(range.getTagName().equals("range"), "Unexpected character-class content");
                require(children(range).isEmpty(), "Unexpected nested character-range content");
                int first = Integer.parseInt(range.getAttribute("start"));
                int last = Integer.parseInt(range.getAttribute("end"));
                require(first >= 0 && last <= 0xffff && first <= last, "Character ranges must be ordered BMP values");
                ranges.add(new int[]{first, last});
            }
            require(!ranges.isEmpty(), "Empty character class");
        } else if (kind.equals("sequence") || kind.equals("choice")) {
            for (Element child : children(element)) nested.add(symbol(child));
            require(!nested.isEmpty(), "Empty lexical " + kind);
        } else require(children(element).isEmpty(), "Unexpected nested symbol: " + kind);
        return new Symbol(kind, value, cardinality, List.copyOf(ranges), List.copyOf(nested));
    }

    private static void validateRegex(Symbol symbol, String rule) {
        require(List.of("literal", "empty", "character-class", "sequence", "choice")
                        .contains(symbol.kind())
                        || List.of("AtMostOne", "AtleastOne", "ZeroOrMore").contains(symbol.cardinality()),
                "Unsupported lexical expression " + symbol.kind() + " in " + rule);
        if (symbol.kind().equals("sequence") || symbol.kind().equals("choice")) {
            for (Symbol child : symbol.children()) validateRegex(child, rule);
            return;
        }
        require(symbol.children().isEmpty(), "Unexpected children in lexical " + rule);
        if (symbol.kind().equals("character-class")) {
            require(!symbol.ranges().isEmpty(), "Empty character class in " + rule);
        }
        require(List.of("literal", "empty", "character-class").contains(symbol.kind()),
                "Unsupported lexical expression " + symbol.kind() + " in " + rule);
    }

    /** Caller supplies command access; validation/construction precede attachment. */
    public static SNode importInto(SModel model, Grammar grammar, String languageName, String origin) {
        name(languageName);
        require(List.of("ANTLR", "Rascal").contains(origin), "Unknown grammar origin");
        require(model instanceof EditableSModel && !model.isReadOnly() && model.getRepository() != null,
                "Choose an editable project model");
        for (SNode root : model.getRootNodes()) require(!root.getConcept().getQualifiedName().equals(MBNF + "grammar"),
                "Target already contains a grammar; import into a new model instead of replacing it");
        Map<String, SNode> rules = new LinkedHashMap<>();
        for (Rule rule : grammar.rules()) {
            rules.put(rule.name(), node(model, MBNF + (rule.lexical() ? "TerminalRule"
                    : rule.alternatives().size() > 1 ? "ChoiceRule" : "NonterminalRule"), rule.name()));
        }
        SNode group = node(model, MBNF + "RuleGroup", origin);
        for (Rule rule : grammar.rules()) {
            SNode nativeRule = rules.get(rule.name());
            add(group, "rules", nativeRule);
            if (rule.lexical()) {
                Symbol symbol = rule.alternatives().get(0).get(0);
                SNode expression = node(model, REGEX + "InlineRegexpExpression", null);
                add(expression, "regexp", regex(model, symbol));
                add(nativeRule, "regexp", expression);
            } else {
                int index = 0;
                for (List<Symbol> alternative : rule.alternatives()) {
                    SNode owner = nativeRule;
                    if (rule.alternatives().size() > 1) {
                        String synthetic = rule.name() + "__" + origin + "Alternative" + (++index);
                        require(!rules.containsKey(synthetic), "Synthetic alternative name collides with " + synthetic);
                        owner = node(model, MBNF + "NonterminalRule", synthetic);
                        add(group, "rules", owner);
                        SNode reference = node(model, MBNF + "NonterminalReference", null);
                        point(reference, "rule", owner);
                        add(nativeRule, "nonterminals", reference);
                    }
                    for (Symbol symbol : alternative) {
                        if (symbol.kind().equals("empty")) continue;
                        SNode term;
                        if (symbol.kind().equals("literal")) term = node(model, MBNF + "Keyword", symbol.value());
                        else {
                            term = node(model, MBNF + (symbol.kind().equals("sort")
                                    ? "NonterminalReference" : "TerminalReference"), null);
                            point(term, "rule", rules.get(symbol.value()));
                            if (symbol.kind().equals("sort")) {
                                SProperty card = property(term, "card");
                                SEnumeration type = (SEnumeration) card.getType();
                                term.setProperty(card, type.toString(type.getLiteral(symbol.cardinality())));
                            }
                        }
                        add(owner, "terms", term);
                    }
                }
            }
        }
        SNode result = node(model, MBNF + "grammar", languageName);
        point(result, "start", rules.get(grammar.start()));
        add(result, "rules", group);
        ModelImports imports = new ModelImports(model);
        imports.addUsedLanguage(result.getConcept().getLanguage());
        if (grammar.rules().stream().anyMatch(Rule::lexical)) {
            imports.addUsedLanguage(concept(REGEX + "InlineRegexpExpression").getLanguage());
        }
        model.addRootNode(result);
        ((EditableSModel) model).save();
        return result;
    }

    private static SNode regex(SModel model, Symbol symbol) {
        SNode result;
        switch (symbol.kind()) {
            case "literal", "empty" -> {
                result = node(model, REGEX + "StringLiteralRegexp", null);
                put(result, "text", symbol.kind().equals("empty") ? "" : symbol.value());
            }
            case "character-class" -> {
                result = node(model, REGEX + "PositiveSymbolClassRegexp", null);
                for (int[] range : symbol.ranges()) {
                    SNode part = node(model, REGEX + (range[0] == range[1]
                            ? "CharacterSymbolClassPart" : "IntervalSymbolClassPart"), null);
                    if (range[0] == range[1]) put(part, "character", Character.toString((char) range[0]));
                    else {
                        put(part, "start", Character.toString((char) range[0]));
                        put(part, "end", Character.toString((char) range[1]));
                    }
                    add(result, "part", part);
                }
            }
            case "sequence", "choice" -> {
                String binary = symbol.kind().equals("sequence") ? "SeqRegexp" : "OrRegexp";
                result = regex(model, symbol.children().get(0));
                for (int index = 1; index < symbol.children().size(); index++) {
                    SNode combined = node(model, REGEX + binary, null);
                    add(combined, "left", result);
                    add(combined, "right", regex(model, symbol.children().get(index)));
                    result = combined;
                }
            }
            default -> throw new IllegalArgumentException("Unsupported lexical expression: " + symbol.kind());
        }
        return switch (symbol.cardinality()) {
            case "ExactlyOne" -> result;
            case "AtMostOne" -> {
                SNode optional = node(model, REGEX + "OrRegexp", null);
                SNode empty = node(model, REGEX + "StringLiteralRegexp", null);
                put(empty, "text", "");
                add(optional, "left", empty);
                add(optional, "right", result);
                yield optional;
            }
            case "AtleastOne" -> {
                SNode plus = node(model, REGEX + "PlusRegexp", null);
                add(plus, "regexp", result);
                yield plus;
            }
            case "ZeroOrMore" -> {
                SNode star = node(model, REGEX + "StarRegexp", null);
                add(star, "regexp", result);
                yield star;
            }
            default -> throw new IllegalArgumentException("Unsupported lexical cardinality: " + symbol.cardinality());
        };
    }

    private static SConcept concept(String name) {
        var concept = ConceptRegistry.getInstance().getConceptByName(name);
        require(concept instanceof SConcept && concept.isValid(), "Build/load the required language: " + name);
        return (SConcept) concept;
    }

    private static SNode node(SModel model, String type, String name) {
        SNode node = model.createNode(concept(type));
        if (name != null) put(node, "name", name);
        return node;
    }

    private static SProperty property(SNode node, String name) {
        return node.getConcept().getProperties().stream().filter(item -> item.getName().equals(name))
                .findFirst().orElseThrow(() -> new IllegalStateException("Missing property " + name));
    }

    private static void put(SNode node, String name, String value) {
        node.setProperty(property(node, name), value);
    }

    private static void point(SNode node, String name, SNode target) {
        SReferenceLink link = node.getConcept().getReferenceLinks().stream().filter(item -> item.getName().equals(name))
                .findFirst().orElseThrow();
        node.setReferenceTarget(link, target);
    }

    private static void add(SNode node, String name, SNode child) {
        SContainmentLink link = node.getConcept().getContainmentLinks().stream().filter(item -> item.getName().equals(name))
                .findFirst().orElseThrow();
        node.addChild(link, child);
    }

    private static Element only(Element parent, String tag) {
        List<Element> found = children(parent).stream().filter(child -> child.getTagName().equals(tag)).toList();
        require(found.size() == 1 && (parent.getTagName().equals("rascal-grammar") || children(parent).size() == 1),
                "Expected exactly one " + tag + " inside " + parent.getTagName());
        return found.get(0);
    }

    private static List<Element> children(Element element) {
        List<Element> children = new ArrayList<>();
        for (var child = element.getFirstChild(); child != null; child = child.getNextSibling()) {
            if (child instanceof Element item) children.add(item);
            else if (child.getNodeType() == org.w3c.dom.Node.TEXT_NODE
                    || child.getNodeType() == org.w3c.dom.Node.CDATA_SECTION_NODE) {
                require(child.getTextContent().isBlank(), "Unexpected text in " + element.getTagName());
            }
        }
        return children;
    }

    private static String name(String name) {
        require(name.matches("[A-Za-z_][A-Za-z0-9_]*"), "Unsupported grammar/rule name: " + name);
        return name;
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new IllegalArgumentException(message);
    }
}
