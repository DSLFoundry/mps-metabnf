package metabnf.usability;

import jetbrains.mps.smodel.CopyUtil;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HexFormat;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static metabnf.usability.ModelNodes.*;

public final class GrammarEnrichment {
    public static final String VERSION = "1";
    private static final String PREFIX = "metabnf-enrichment@1/";

    public record Candidate(String key, String annotationKind, String pattern, SNodeReference target,
                            String evidence, boolean mappingImpact) {}
    public record Preview(SNodeReference grammar, SNodeReference set, String fingerprint,
                          List<Candidate> candidates, List<Map<String, String>> diagnostics) {
        public Preview { candidates = List.copyOf(candidates); diagnostics = List.copyOf(diagnostics); }
        public String describe() {
            StringBuilder result = new StringBuilder("Enrichment v1 - metadata only; no AST or mapping rewrite\n");
            for (Candidate item : candidates) result.append(item.mappingImpact ? "SUGGEST " : "INFER ")
                    .append(item.pattern).append(": ").append(item.evidence).append('\n');
            for (var diagnostic : diagnostics) result.append(diagnostic).append('\n');
            return result.toString();
        }
    }
    public record Correspondence(SNodeReference annotation, SNodeReference replacement) {}
    public record ReimportPreview(SNodeReference oldSet, SNodeReference grammar, SNodeReference destinationSet,
                                 String fingerprint, List<Correspondence> correspondence,
                                 List<Map<String, String>> diagnostics) {
        public ReimportPreview { correspondence = List.copyOf(correspondence); diagnostics = List.copyOf(diagnostics); }
    }

    private GrammarEnrichment() {}

    public static Preview analyze(SNode grammar, SNode set) {
        validate(grammar, set);
        List<Candidate> candidates = new ArrayList<>();
        List<Map<String, String>> diagnostics = new ArrayList<>();
        Map<String, Long> names = ruleNames(grammar);
        for (SNode node : tree(grammar)) {
            String key = key(node, grammar, names);
            if (key == null) {
                if (node.getParent() != null && node.getParent().getConcept().getName().equals("RuleGroup")) {
                    diagnostics.add(diagnostic("MBNF_AMBIGUOUS_CORRESPONDENCE", node,
                            "Duplicate rule/dependency name prevents stable correspondence", "Rename the ambiguous rule before applying enrichment"));
                }
                continue;
            }
            if (is(node, "Flag")) {
                candidates.add(candidate(key, "FlagAnnotation", "Flag", node,
                        "Existing native Flag; boolean intent already explicit", false));
            } else if (is(node, "NonterminalReference")) {
                String card = enumeration(node, "card");
                if (Set.of("AtleastOne", "ZeroOrMore").contains(card)) {
                    candidates.add(candidate(key, "ListAnnotation", "List", node,
                            "Native repeated reference " + card + (get(node, "sep").isEmpty() ? "" : "; separator " + get(node, "sep")), false));
                    if (expandedSeparated(node)) candidates.add(candidate(key, "PatternAnnotation", "List", node,
                            "Exact head (separator head)* shape. Collapsing the helper repetition changes AST/mapping structure; approval records intent only", true));
                } else if (card.equals("AtMostOne")) {
                    SNode referenced = target(node, "rule");
                    String literal = literal(referenced, new java.util.HashSet<>());
                    if (literal != null && !literal.isEmpty()) {
                        candidates.add(candidate(key, "PatternAnnotation", "Flag", node,
                                "Optional reference resolves to one literal: " + literal
                                        + ". Replacing its node with a boolean requires a future mapping-aware transform", true));
                    } else if (finiteChoice(referenced)) {
                        candidates.add(candidate(key, "PatternAnnotation", "LiteralChoice", node,
                                "Optional finite literal choice: preserve exclusive alternatives and absence, not independent booleans", true));
                    } else if (keywordLed(referenced)) {
                        candidates.add(candidate(key, "PatternAnnotation", "OptionalGroup", node,
                                "Optional keyword-led group with payload; absence is distinct from present-empty. No group is flattened", true));
                    }
                }
            } else if (finiteChoice(node)) {
                candidates.add(candidate(key, "PatternAnnotation", "LiteralChoice", node,
                        "Finite exclusive literal alternatives; no independent flags or AST lowering", true));
            } else if (is(node, "ChoiceRule") && ambiguousLiterals(node)) {
                diagnostics.add(diagnostic("MBNF_AMBIGUOUS_PATTERN", node,
                        "Repeated literal alternatives do not identify a unique exclusive choice",
                        "Review the alternatives; no boolean/enum interpretation was inferred"));
            }
        }
        if (set != null) {
            Set<String> keys = candidates.stream().map(Candidate::key).collect(java.util.stream.Collectors.toSet());
            for (SNode annotation : children(set, "annotations")) {
                String owned = get(annotation, "recognitionKey");
                boolean wrongTarget = owned.startsWith(PREFIX) && candidates.stream().anyMatch(item ->
                        item.key.equals(owned) && !ref(target(annotation, "target")).equals(item.target.toString()));
                if (owned.startsWith(PREFIX) && (!keys.contains(owned) || wrongTarget)) {
                    diagnostics.add(diagnostic("MBNF_STALE_CORRESPONDENCE", annotation,
                            "Previously recognized location no longer has the same unambiguous structure",
                            "Review/remove this metadata explicitly; authored and suppressed decisions are never discarded"));
                }
            }
        }
        return new Preview(grammar.getReference(), set == null ? null : set.getReference(), state(grammar, set), candidates, diagnostics);
    }

    public static SNode apply(Preview preview, SModel model) {
        SNode grammar = preview.grammar.resolve(model.getRepository());
        SNode set = preview.set == null ? null : preview.set.resolve(model.getRepository());
        validate(grammar, set);
        if (!state(grammar, set).equals(preview.fingerprint) || (preview.set != null && set == null)
                || (set == null && findSet(model, grammar) != null)) throw stale(grammar);
        Preview actual = analyze(grammar, set);
        if (!actual.candidates.equals(preview.candidates) || !actual.diagnostics.equals(preview.diagnostics)) throw stale(grammar);
        if (model.isReadOnly() || model.getRepository() != grammar.getModel().getRepository()
                || (set != null && set.getModel() != model)) {
            throw failure("MBNF_INVALID_SET", grammar, "Choose the existing editable metadata model",
                    "Apply into the same metadata model used for analysis");
        }
        if (set != null) for (Candidate item : preview.candidates) {
            long matches = children(set, "annotations").stream().filter(annotation ->
                    get(annotation, "recognitionKey").equals(item.key)
                    || (is(annotation, item.annotationKind) && target(annotation, "target") == item.target.resolve(model.getRepository())
                        && (!is(annotation, "PatternAnnotation") || enumeration(annotation, "pattern").equals(item.pattern)))).count();
            if (matches > 1) throw failure("MBNF_DUPLICATE_ANNOTATION", set,
                    "Multiple annotations match " + item.key, "Remove the duplicate before applying");
            for (SNode annotation : children(set, "annotations")) {
                if (get(annotation, "recognitionKey").equals(item.key)
                        && target(annotation, "target") != item.target.resolve(model.getRepository())) {
                    throw failure("MBNF_STALE_CORRESPONDENCE", annotation,
                            "Stored annotation target differs from the recognized location",
                            "Review the stale reference or use explicit reimport metadata transfer");
                }
            }
        }
        if (set != null) for (SNode annotation : children(set, "annotations")) {
            String origin = enumeration(annotation, "origin");
            boolean suppressed = bool(annotation, "suppressed");
            if (!Set.of("Authored", "Inferred", "Suggested").contains(origin)
                    || (origin.equals("Authored") && suppressed)
                    || (!origin.equals("Authored") && get(annotation, "evidence").isBlank())) {
                throw failure("MBNF_INVALID_PROVENANCE", annotation, "Invalid annotation origin/evidence/suppression",
                        "Review existing annotation provenance before applying enrichment");
            }
        }
        if (set == null) {
            set = create(model, "UsabilityAnnotations");
            point(set, "grammar", grammar);
            imports(model, grammar);
            model.addRootNode(set);
        }
        for (Candidate item : preview.candidates) {
            SNode target = item.target.resolve(model.getRepository());
            List<SNode> matches = new ArrayList<>();
            for (SNode annotation : children(set, "annotations")) {
                if (get(annotation, "recognitionKey").equals(item.key)
                        || (is(annotation, item.annotationKind) && target(annotation, "target") == target
                            && (!is(annotation, "PatternAnnotation") || enumeration(annotation, "pattern").equals(item.pattern)))) {
                    matches.add(annotation);
                }
            }
            if (matches.size() > 1) throw failure("MBNF_DUPLICATE_ANNOTATION", set,
                    "Multiple annotations match " + item.key, "Remove the duplicate before applying");
            if (!matches.isEmpty()) {
                SNode existing = matches.get(0);
                if (!get(existing, "recognitionKey").startsWith(PREFIX)
                        || !enumeration(existing, "origin").equals("Inferred")
                        || bool(existing, "suppressed")) continue;
                // Only refresh state owned by this recognizer; author decisions and suggestions are immutable here.
                put(existing, "evidence", item.evidence);
                put(existing, "recognitionKey", item.key);
                continue;
            }
            SNode annotation = create(model, item.annotationKind);
            point(annotation, "target", target);
            if (is(annotation, "PatternAnnotation")) {
                enumeration(annotation, "pattern", item.pattern);
                put(annotation, "mappingImpact", Boolean.toString(item.mappingImpact));
            }
            enumeration(annotation, "origin", item.mappingImpact ? "Suggested" : "Inferred");
            put(annotation, "evidence", item.evidence);
            put(annotation, "recognitionKey", item.key);
            add(set, "annotations", annotation);
        }
        return set;
    }

    /** Conservative transfer to a separately imported grammar; never replaces grammar roots or mappings. */
    public static ReimportPreview previewReimport(SNode oldSet, SNode replacement, SNode destinationSet) {
        if (!is(oldSet, "UsabilityAnnotations")) throw failure("MBNF_INVALID_SET", oldSet, "Expected source metadata", "Select the old annotation set");
        SNode oldGrammar = target(oldSet, "grammar");
        validate(oldGrammar, oldSet);
        validate(replacement, destinationSet);
        if (oldGrammar == replacement || oldGrammar.getModel().getRepository() != replacement.getModel().getRepository()) {
            throw failure("MBNF_INVALID_REIMPORT", replacement, "Replacement must be a different grammar in this repository",
                    "Import into a fresh model before transferring metadata");
        }
        Map<String, List<SNode>> locations = new HashMap<>();
        Map<String, Long> newNames = ruleNames(replacement);
        for (SNode node : tree(replacement)) {
            String key = key(node, replacement, newNames);
            if (key != null) locations.computeIfAbsent(key, ignored -> new ArrayList<>()).add(node);
        }
        List<Correspondence> result = new ArrayList<>();
        List<Map<String, String>> diagnostics = new ArrayList<>();
        Map<String, Long> oldNames = ruleNames(oldGrammar);
        for (SNode annotation : children(oldSet, "annotations")) {
            if (is(annotation, "OptionalGroupAnnotation")) {
                diagnostics.add(diagnostic("MBNF_STALE_CORRESPONDENCE", annotation,
                        "Authored range transfer requires endpoint correspondence and is not automatic",
                        "Reauthor the range after comparing the two grammars"));
                continue;
            }
            SNode oldTarget = target(annotation, "target");
            String key = oldTarget == null ? null : key(oldTarget, oldGrammar, oldNames);
            List<SNode> matches = key == null ? List.of() : locations.getOrDefault(key, List.of());
            if (matches.size() != 1) {
                diagnostics.add(diagnostic(matches.isEmpty() ? "MBNF_STALE_CORRESPONDENCE" : "MBNF_AMBIGUOUS_CORRESPONDENCE",
                        annotation, "No unique structurally identical rule/location in replacement",
                        "Compare the source and replacement; never guess correspondence by similar names"));
            } else result.add(new Correspondence(annotation.getReference(), matches.get(0).getReference()));
        }
        return new ReimportPreview(oldSet.getReference(), replacement.getReference(),
                destinationSet == null ? null : destinationSet.getReference(),
                state(oldGrammar, oldSet) + state(replacement, destinationSet), result, diagnostics);
    }

    public static SNode applyReimport(ReimportPreview preview, SModel model) {
        SNode source = preview.oldSet.resolve(model.getRepository());
        SNode replacement = preview.grammar.resolve(model.getRepository());
        SNode destination = preview.destinationSet == null ? null : preview.destinationSet.resolve(model.getRepository());
        if (source == null || replacement == null || (preview.destinationSet != null && destination == null)) throw stale(replacement);
        var actual = previewReimport(source, replacement, destination);
        if (!actual.equals(preview) || (destination == null && findSet(model, replacement) != null)) throw stale(replacement);
        if (!preview.diagnostics.isEmpty()) {
            throw failure("MBNF_REIMPORT_REVIEW_REQUIRED", source,
                    "Unresolved correspondence: no metadata transferred", "Resolve every diagnostic before transfer; original metadata remains intact");
        }
        if (destination != null && !children(destination, "annotations").isEmpty()) {
            throw failure("MBNF_REIMPORT_CONFLICT", destination, "Destination already has metadata", "Transfer to an empty set; merge decisions explicitly");
        }
        if (model.isReadOnly() || model.getRepository() != replacement.getModel().getRepository()
                || (destination != null && destination.getModel() != model)) {
            throw failure("MBNF_INVALID_SET", replacement, "Invalid destination model", "Choose an editable metadata model in this repository");
        }
        if (destination == null) {
            destination = create(model, "UsabilityAnnotations");
            point(destination, "grammar", replacement);
            imports(model, replacement);
            model.addRootNode(destination);
        }
        Map<String, Long> names = ruleNames(replacement);
        for (Correspondence pair : preview.correspondence) {
            SNode original = pair.annotation.resolve(model.getRepository());
            SNode newTarget = pair.replacement.resolve(model.getRepository());
            SNode copy = CopyUtil.copy(original);
            point(copy, "target", newTarget);
            if (get(copy, "recognitionKey").startsWith(PREFIX)) {
                put(copy, "recognitionKey", key(newTarget, replacement, names) + "/" + copy.getConcept().getName()
                        + (is(copy, "PatternAnnotation") ? "/" + enumeration(copy, "pattern") : ""));
            }
            add(destination, "annotations", copy);
        }
        return destination;
    }

    public static SNode findSet(SModel model, SNode grammar) {
        List<SNode> matches = new ArrayList<>();
        for (SNode root : model.getRootNodes()) if (is(root, "UsabilityAnnotations") && target(root, "grammar") == grammar) matches.add(root);
        if (matches.size() > 1) throw failure("MBNF_DUPLICATE_SET", grammar, "Multiple annotation sets in model", "Keep one set");
        return matches.isEmpty() ? null : matches.get(0);
    }

    private static void validate(SNode grammar, SNode set) {
        attachedGrammar(grammar);
        if (set != null && (!is(set, "UsabilityAnnotations") || target(set, "grammar") != grammar
                || set.getModel() == null || set.getModel().getRepository() != grammar.getModel().getRepository())) {
            throw failure("MBNF_INVALID_SET", set, "Metadata must belong to this grammar/repository", "Select its annotation set");
        }
    }

    private static Candidate candidate(String key, String kind, String pattern, SNode node, String evidence, boolean impact) {
        return new Candidate(key + "/" + kind + (kind.equals("PatternAnnotation") ? "/" + pattern : ""),
                kind, pattern, node.getReference(), evidence, impact);
    }

    private static String state(SNode grammar, SNode set) {
        return VERSION + ":" + fingerprint(grammar) + ":" + digest(structure(grammar))
                + ":" + (set == null ? "-" : fingerprint(set));
    }

    private static Map<String, Long> ruleNames(SNode grammar) {
        Map<String, Long> result = new HashMap<>();
        for (SNode node : tree(grammar)) if (node.getParent() != null && is(node.getParent(), "RuleGroup")) {
            result.merge(get(node, "name"), 1L, Long::sum);
        }
        return result;
    }

    private static String key(SNode node, SNode grammar, Map<String, Long> names) {
        SNode rule = node;
        List<String> path = new ArrayList<>();
        while (rule != null && rule != grammar && !is(rule.getParent(), "RuleGroup")) {
            SNode parent = rule.getParent();
            if (parent == null) return null;
            String role = rule.getContainmentLink().getName();
            path.add(0, role + "[" + children(parent, role).indexOf(rule) + "]");
            rule = parent;
        }
        if (rule == null || rule == grammar || ambiguousDependencies(rule, names, new java.util.HashSet<>())) return null;
        return PREFIX + get(rule, "name") + "/" + digest(structure(rule)) + "/" + String.join("/", path);
    }

    private static boolean ambiguousDependencies(SNode rule, Map<String, Long> names, Set<SNode> visited) {
        if (!visited.add(rule)) return false;
        if (is(rule.getParent(), "RuleGroup") && names.getOrDefault(get(rule, "name"), 0L) != 1) return true;
        for (SNode node : tree(rule)) for (var reference : node.getReferences()) {
            SNode target = reference.getTargetNode();
            if (target != null && is(target.getParent(), "RuleGroup") && ambiguousDependencies(target, names, visited)) return true;
        }
        return false;
    }

    private static String structure(SNode node) {
        return structure(node, new java.util.HashSet<>());
    }

    private static String structure(SNode node, Set<SNode> visited) {
        if (!visited.add(node)) return "cycle:" + get(node, "name");
        StringBuilder result = new StringBuilder(node.getConcept().getQualifiedName()).append('{');
        List<org.jetbrains.mps.openapi.language.SProperty> properties = new ArrayList<>();
        node.getProperties().forEach(properties::add);
        properties.stream().sorted(java.util.Comparator.comparing(item -> item.getName()))
                .forEach(item -> result.append(item.getName()).append('=').append(encode(node.getProperty(item))));
        List<org.jetbrains.mps.openapi.model.SReference> references = new ArrayList<>();
        node.getReferences().forEach(references::add);
        references.sort(java.util.Comparator.comparing(item -> item.getLink().getName()));
        references.forEach(reference -> {
            SNode target = reference.getTargetNode();
            result.append(reference.getLink().getName()).append("->").append(encode(target == null ? null :
                    target.getConcept().getQualifiedName() + ":" + (target.getConcept().getProperties().stream()
                            .anyMatch(item -> item.getName().equals("name")) ? get(target, "name") : ref(target))));
            if (target != null && is(target.getParent(), "RuleGroup")) result.append(structure(target, visited));
        });
        for (SNode child : node.getChildren()) result.append(child.getContainmentLink().getName()).append(structure(child, visited));
        visited.remove(node);
        return result.append('}').toString();
    }

    private static String encode(String value) { return value == null ? "-:" : value.length() + ":" + value; }

    private static String digest(String text) {
        try { return HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest(text.getBytes(StandardCharsets.UTF_8))); }
        catch (NoSuchAlgorithmException impossible) { throw new IllegalStateException(impossible); }
    }

    private static String literal(SNode rule, Set<SNode> visited) {
        if (rule == null || !visited.add(rule)) return null;
        if (is(rule, "Keyword")) return get(rule, "name");
        if (is(rule, "NonterminalRule")) {
            List<SNode> terms = children(rule, "terms");
            return terms.size() == 1 ? literal(terms.get(0), visited) : null;
        }
        if (is(rule, "NonterminalReference") && enumeration(rule, "card").equals("ExactlyOne")) return literal(target(rule, "rule"), visited);
        if (is(rule, "TerminalReference")) return literal(target(rule, "rule"), visited);
        if (is(rule, "TerminalRule")) {
            List<SNode> expressions = children(rule, "regexp");
            if (expressions.size() != 1) return null;
            List<SNode> values = children(expressions.get(0), "regexp");
            if (values.size() == 1 && values.get(0).getConcept().getQualifiedName()
                    .equals("jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp")) return get(values.get(0), "text");
        }
        return null;
    }

    private static boolean finiteChoice(SNode node) {
        if (is(node, "EnumRule")) {
            List<SNode> values = children(node, "values");
            return values.size() >= 2 && values.stream().map(value -> get(value, "name")).allMatch(value -> !value.isEmpty())
                    && values.stream().map(value -> get(value, "name")).distinct().count() == values.size();
        }
        if (!is(node, "ChoiceRule")) return false;
        List<SNode> alternatives = children(node, "nonterminals");
        Set<String> values = new java.util.HashSet<>();
        for (SNode alternative : alternatives) {
            String value = literal(alternative, new java.util.HashSet<>());
            if (value == null || value.isEmpty() || !values.add(value)) return false;
        }
        return values.size() >= 2;
    }

    private static boolean ambiguousLiterals(SNode node) {
        Set<String> values = new java.util.HashSet<>();
        for (SNode alternative : children(node, "nonterminals")) {
            String value = literal(alternative, new java.util.HashSet<>());
            if (value != null && !values.add(value)) return true;
        }
        return false;
    }

    private static boolean keywordLed(SNode rule) {
        if (!is(rule, "NonterminalRule")) return false;
        List<SNode> terms = children(rule, "terms");
        String prefix = terms.isEmpty() ? null : literal(terms.get(0), new java.util.HashSet<>());
        return terms.size() > 1 && prefix != null && !prefix.isEmpty();
    }

    private static boolean expandedSeparated(SNode tail) {
        if (!enumeration(tail, "card").equals("ZeroOrMore") || !get(tail, "sep").isEmpty()
                || !is(tail.getParent(), "NonterminalRule")) return false;
        List<SNode> outer = children(tail.getParent(), "terms");
        int index = outer.indexOf(tail);
        if (index < 1) return false;
        SNode head = outer.get(index - 1);
        SNode helper = target(tail, "rule");
        if (!is(head, "NonterminalReference") || !enumeration(head, "card").equals("ExactlyOne")
                || !is(helper, "NonterminalRule")) return false;
        List<SNode> terms = children(helper, "terms");
        String separator = terms.isEmpty() ? null : literal(terms.get(0), new java.util.HashSet<>());
        return terms.size() == 2 && separator != null && !separator.isEmpty()
                && is(terms.get(1), "NonterminalReference") && enumeration(terms.get(1), "card").equals("ExactlyOne")
                && target(head, "rule") == target(terms.get(1), "rule");
    }

    private static Map<String, String> diagnostic(String code, SNode node, String message, String remedy) {
        return Map.of("code", code, "severity", "warning", "target", ref(node), "message", message, "remedy", remedy);
    }

    private static UsabilityException stale(SNode grammar) {
        return failure("MBNF_STALE_PREVIEW", grammar, "Grammar or metadata changed after preview", "Analyze again before applying");
    }
}
