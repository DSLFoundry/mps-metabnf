package metabnf.smoketest;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell_Label;
import jetbrains.mps.smodel.CopyUtil;
import metabnf.plugin.UsabilityAnnotations;
import metabnf.rascal.GrammarModelImporter;
import metabnf.usability.GenerationProfiles;
import metabnf.usability.GrammarEnrichment;
import metabnf.usability.UsabilityException;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static metabnf.usability.ModelNodes.*;

final class ProfilesEnrichmentTest {
    static void run(SModel model, SModel demo) {
        SNode grammar = roots(model).stream().filter(node -> is(node, "grammar")).findFirst().orElseThrow();
        profiles(model, grammar);
        roots(model).forEach(model::removeRootNode);
        grammar = GrammarModelImporter.importInto(model, fixture(), "Patterns", "ANTLR");
        SNode nativeEnum = create(model, "EnumRule");
        put(nativeEnum, "name", "nativeChoice");
        for (String value : List.of("yes", "no")) {
            SNode member = create(model, "EnumValue");
            put(member, "name", value);
            add(nativeEnum, "values", member);
        }
        add(rule(grammar, "program").getParent(), "rules", nativeEnum);
        String syntax = fingerprint(grammar);
        var preview = GrammarEnrichment.analyze(grammar, null);
        require(preview.equals(GrammarEnrichment.analyze(grammar, null)), "Analysis is not deterministic");
        require(preview.diagnostics().stream().allMatch(item -> item.get("code").equals("MBNF_AMBIGUOUS_PATTERN"))
                && preview.diagnostics().size() == 1, "Ambiguous literals not reported precisely: " + preview.diagnostics());
        require(preview.candidates().stream().anyMatch(item -> item.target().equals(nativeEnum.getReference())
                && item.pattern().equals("LiteralChoice")), "Native enum was not recognized");
        require(preview.candidates().stream().anyMatch(item -> item.pattern().equals("Flag") && item.mappingImpact()),
                "Optional literal reference was not recognized");
        require(preview.candidates().stream().anyMatch(item -> item.pattern().equals("OptionalGroup")),
                "Keyword-led group was not recognized");
        require(preview.candidates().stream().anyMatch(item -> item.pattern().equals("List") && item.mappingImpact()),
                "Exact expanded separated repetition was not recognized");
        require(preview.candidates().stream().anyMatch(item -> item.pattern().equals("LiteralChoice")
                && item.evidence().contains("absence")), "Optional access modifiers lost exclusivity/absence");
        SNode program = rule(grammar, "program");
        SNode repeatedModifiers = children(program, "terms").get(3);
        require(preview.candidates().stream().noneMatch(item -> item.target().equals(repeatedModifiers.getReference())
                && item.pattern().equals("Flag")), "Repeated modifiers were flattened to booleans");
        SNode nonmatch = children(program, "terms").get(6);
        require(preview.candidates().stream().noneMatch(item -> item.target().equals(nonmatch.getReference())
                && item.mappingImpact()), "Similar-looking nonmatching tail was interpreted as separated list");
        for (int index : List.of(8, 9, 10)) {
            var reference = children(program, "terms").get(index).getReference();
            require(preview.candidates().stream().noneMatch(item -> item.target().equals(reference)),
                    "Cyclic/ambiguous/nonliteral optional reference received a pattern interpretation");
        }
        var lexical = children(program, "terms").get(11).getReference();
        require(preview.candidates().stream().anyMatch(item -> item.target().equals(lexical) && item.pattern().equals("Flag")),
                "Reference to a single lexical literal was not recognized");
        var forged = new GrammarEnrichment.Preview(preview.grammar(), preview.set(), preview.fingerprint(), List.of(), preview.diagnostics());
        rejected("MBNF_STALE_PREVIEW", () -> GrammarEnrichment.apply(forged, model));

        SNode set = GrammarEnrichment.apply(preview, model);
        require(diagnostics(set).isEmpty(), "Enriched annotations violate native validation: " + diagnostics(set));
        require(fingerprint(grammar).equals(syntax), "Enrichment rewrote grammar syntax/AST");
        String once = fingerprint(set);
        GrammarEnrichment.apply(GrammarEnrichment.analyze(grammar, set), model);
        require(once.equals(fingerprint(set)), "Second apply changed metadata");
        rejected("MBNF_STALE_PREVIEW", () -> GrammarEnrichment.apply(preview, model));
        var stale = GrammarEnrichment.analyze(grammar, set);
        SNode annotation = children(set, "annotations").get(0);
        put(annotation, "evidence", "Author changed evidence after preview");
        rejected("MBNF_STALE_PREVIEW", () -> GrammarEnrichment.apply(stale, model));
        var staleGrammar = GrammarEnrichment.analyze(grammar, set);
        SNode itemLiteral = children(rule(grammar, "item"), "terms").get(0);
        put(itemLiteral, "name", "changed");
        rejected("MBNF_STALE_PREVIEW", () -> GrammarEnrichment.apply(staleGrammar, model));
        put(itemLiteral, "name", "item");
        SNode inferred = children(set, "annotations").stream().filter(node -> enumeration(node, "origin").equals("Inferred")).findFirst().orElseThrow();
        UsabilityAnnotations.update(inferred, "authored", "Explicit author override", false);
        SNode suppressed = children(set, "annotations").stream().filter(node -> enumeration(node, "origin").equals("Suggested")).findFirst().orElseThrow();
        UsabilityAnnotations.update(suppressed, "suggested", "Author rejects this suggestion", true);
        String decisions = fingerprint(set);
        GrammarEnrichment.apply(GrammarEnrichment.analyze(grammar, set), model);
        require(decisions.equals(fingerprint(set)), "Reanalysis overwrote authored/suppressed decisions");
        SNode refreshed = children(set, "annotations").stream()
                .filter(node -> enumeration(node, "origin").equals("Inferred")).findFirst().orElseThrow();
        SNode refreshedTarget = target(refreshed, "target");
        String originalCard = get(refreshedTarget, "card");
        enumeration(refreshedTarget, "card", "AtleastOne");
        GrammarEnrichment.apply(GrammarEnrichment.analyze(grammar, set), model);
        require(get(refreshed, "evidence").contains("AtleastOne"), "Owned inferred state was not refreshed after a native shape change");
        require(get(inferred, "evidence").equals("Explicit author override") && bool(suppressed, "suppressed"),
                "Refreshing inferred state overwrote author decisions");
        put(refreshedTarget, "card", originalCard);
        GrammarEnrichment.apply(GrammarEnrichment.analyze(grammar, set), model);
        suggestionEditor(model, suppressed);
        SNode profile = GenerationProfiles.createProfile(model, grammar, "vanilla");
        rejected("MBNF_UNAPPROVED_PATTERN", () -> GenerationProfiles.resolveAnnotation(profile, suppressed, "Form"));
        SNode approved = children(set, "annotations").stream().filter(node -> is(node, "PatternAnnotation")
                && enumeration(node, "pattern").equals("OptionalGroup")).findFirst().orElseThrow();
        UsabilityAnnotations.update(approved, "authored", "Approve group intent, not an AST rewrite", false);
        require(GenerationProfiles.resolveAnnotation(profile, approved, "Form").get("implementation").equals("vanilla.form-group"),
                "Approved enrichment intent did not reach profile resolution");
        require(GenerationProfiles.inspector(profile).contains("vanilla.form-group"),
                "Approved annotation did not reach computed profile inspection");
        model.removeRootNode(profile);

        // Equivalent manual grammar: native copy, fresh identities, unchanged structure/references.
        SNode manual = CopyUtil.copy(grammar);
        model.addRootNode(manual);
        var manualPreview = GrammarEnrichment.analyze(manual, null);
        require(semantics(preview).equals(semantics(manualPreview)), "Imported/manual structures receive different semantics");
        var transfer = GrammarEnrichment.previewReimport(set, manual, null);
        require(transfer.diagnostics().isEmpty(), "Exact reimport correspondence failed: " + transfer.diagnostics());
        put(inferred, "evidence", "Changed after transfer preview");
        rejected("MBNF_STALE_PREVIEW", () -> GrammarEnrichment.applyReimport(transfer, model));
        put(inferred, "evidence", "Explicit author override");
        SNode transferred = GrammarEnrichment.applyReimport(transfer, model);
        require(children(transferred, "annotations").stream().anyMatch(node -> get(node, "evidence").equals("Explicit author override")
                && enumeration(node, "origin").equals("Authored")), "Reimport lost explicit override");
        require(children(transferred, "annotations").stream().anyMatch(node -> get(node, "suppressed").equals("true")
                && get(node, "evidence").equals("Author rejects this suggestion")), "Reimport lost suppression");
        String preserved = fingerprint(transferred);
        GrammarEnrichment.apply(GrammarEnrichment.analyze(manual, transferred), model);
        require(preserved.equals(fingerprint(transferred)), "Enrichment after transfer changed author decisions");
        require(diagnostics(transferred).isEmpty(), "Transferred metadata invalid");

        put(rule(manual, "enabled").getChildren().iterator().next(), "name", "disabled");
        var changed = GrammarEnrichment.previewReimport(set, manual, transferred);
        require(!changed.diagnostics().isEmpty(), "Changed dependency structure was guessed as identical correspondence");
        rejected("MBNF_REIMPORT_REVIEW_REQUIRED", () -> GrammarEnrichment.applyReimport(changed, model));
        require(GrammarEnrichment.analyze(manual, transferred).diagnostics().stream()
                .anyMatch(item -> item.get("code").equals("MBNF_STALE_CORRESPONDENCE")), "Stale metadata was not diagnosed");
        SNode duplicateRule = CopyUtil.copy(rule(manual, "enabled"));
        add(rule(manual, "enabled").getParent(), "rules", duplicateRule);
        require(GrammarEnrichment.analyze(manual, transferred).diagnostics().stream()
                .anyMatch(item -> item.get("code").equals("MBNF_AMBIGUOUS_CORRESPONDENCE")), "Ambiguous correspondence was not diagnosed");
        duplicateRule.getParent().removeChild(duplicateRule);
        model.removeRootNode(manual);
        model.removeRootNode(transferred);

        var grammarReference = grammar.getReference();
        var setReference = set.getReference();
        ((EditableSModel) model).save();
        ((EditableSModel) model).reloadFromSource();
        require(grammarReference.resolve(model.getRepository()) != null, "Grammar did not persist");
        require(diagnostics(setReference.resolve(model.getRepository())).isEmpty(), "Metadata references did not persist");
        SNode demoGrammar = roots(demo).stream().filter(node -> is(node, "grammar")).findFirst().orElseThrow();
        String demoBefore = fingerprint(demoGrammar);
        GenerationProfiles.createProfile(demo, demoGrammar, "vanilla");
        SNode demoSet = GrammarEnrichment.findSet(demo, demoGrammar);
        GrammarEnrichment.apply(GrammarEnrichment.analyze(demoGrammar, demoSet), demo);
        require(demoBefore.equals(fingerprint(demoGrammar)), "Enrichment/profile changed Demo generation input");
        ((EditableSModel) demo).save();
    }

    private static void profiles(SModel model, SNode grammar) {
        SNode flag = tree(grammar).stream().filter(node -> is(node, "Flag")).findFirst().orElseThrow();
        SNode owner = flag.getParent();
        SNode profile = GenerationProfiles.createProfile(model, grammar, "vanilla");
        String syntax = fingerprint(grammar);
        Map<String, Object> textual = GenerationProfiles.resolve(profile, flag, "Flag", "Textual");
        Map<String, Object> form = GenerationProfiles.resolve(profile, flag, "Flag", "Form");
        require(textual.get("implementation").equals("vanilla.keyword") && textual.get("origin").equals("profile-default"),
                "Textual default did not resolve");
        require(form.get("implementation").equals("vanilla.checkbox") && form.get("origin").equals("contextual-policy"),
                "Form contextual policy did not resolve");
        require(GenerationProfiles.resolve(profile, flag, "Flag", "Table").get("implementation").equals("vanilla.checkbox"),
                "Table contextual policy did not resolve");
        GenerationProfiles.select(profile, "Pattern", null, "Flag", "Form", "vanilla.keyword");
        require(GenerationProfiles.resolve(profile, flag, "Flag", "Form").get("origin").equals("pattern-override"), "Pattern tier missing");
        GenerationProfiles.select(profile, "Rule", owner, "Flag", "Form", "vanilla.checkbox");
        require(GenerationProfiles.resolve(profile, flag, "Flag", "Form").get("origin").equals("rule-override"), "Rule tier missing");
        SNode choice = GenerationProfiles.select(profile, "Occurrence", flag, "Flag", "Form", "vanilla.keyword");
        var explicit = GenerationProfiles.resolve(profile, flag, "Flag", "Form");
        require(explicit.get("origin").equals("occurrence-override") && explicit.get("implementation").equals("vanilla.keyword"), "Occurrence tier missing");
        GenerationProfiles.select(profile, "Pattern", null, "Flag", "Form", "vanilla.checkbox");
        require(explicit.equals(GenerationProfiles.resolve(profile, flag, "Flag", "Form")), "Explicit changed with lower-priority context");
        GenerationProfiles.select(profile, "Occurrence", flag, "Flag", "Form", "auto");
        require(GenerationProfiles.resolve(profile, flag, "Flag", "Form").get("origin").equals("rule-override"), "Auto did not release occurrence override");
        GenerationProfiles.select(profile, "Rule", owner, "Flag", "Form", "auto");
        GenerationProfiles.select(profile, "Pattern", null, "Flag", "Form", "auto");
        require(form.equals(GenerationProfiles.resolve(profile, flag, "Flag", "Form")), "Auto did not restore contextual policy");
        require(textual.equals(GenerationProfiles.resolve(profile, flag, "Flag", "Textual")), "Form selection changed textual projection");
        require(fingerprint(grammar).equals(syntax), "Profile selection changed exported syntax");
        require(form.get("generationMetadata").toString().contains("2026.1") && form.get("generationMetadata").toString().contains("version=1"),
                "Generation metadata lacks toolchain/profile versions");
        require(form.get("generationMetadata") instanceof Map<?, ?> metadata
                && metadata.get("mpsBuild").equals("261.25134.877"), "Generation metadata lacks the pinned MPS build");
        GenerationProfiles.select(profile, "Occurrence", flag, "Flag", "Form", "grammar-cells.flag");
        rejected("MBNF_INCOMPATIBLE_SELECTION", () -> GenerationProfiles.resolve(profile, flag, "Flag", "Form"));
        GenerationProfiles.select(profile, "Occurrence", flag, "Flag", "Form", "auto");
        EditorComponent editor = new EditorComponent(model.getRepository()) {};
        InspectorEditorComponent inspector = new InspectorEditorComponent(model.getRepository());
        try {
            editor.editNode(profile);
            String fields = text(editor.getRootCell());
            require(fields.contains("generation profile:") && fields.contains("implementation (auto"), "Dedicated profile/selection editor missing");
            inspector.editNode(choice);
            String report = text(inspector.getRootCell());
            for (String field : List.of("implementation:", "origin:", "reason:", "alternatives:", "requirements:", "generationMetadata:", "diagnostics:")) {
                require(report.contains(field), "Native inspector omits " + field + ": " + report);
            }
            require(report.contains("vanilla.checkbox") && report.contains("contextual-policy"), "Native inspector did not resolve effective selection");
        } finally { inspector.dispose(); editor.dispose(); }
        put(profile, "version", "999");
        rejected("MBNF_PROFILE_VERSION", () -> GenerationProfiles.resolve(profile, flag, "Flag", "Form"));
        put(profile, "version", "1");
        put(profile, "profileId", "grammar-cells");
        rejected("MBNF_BACKEND_UNAVAILABLE", () -> GenerationProfiles.resolve(profile, flag, "Flag", "Textual"));
        put(profile, "profileId", "vanilla");
        put(choice, "projection", "999/Unknown");
        require(GenerationProfiles.inspector(choice).contains("MBNF_INVALID_ENUM"), "Invalid persisted selection enum not diagnosed");
        enumeration(choice, "projection", "Form");
        require(((List<?>) GenerationProfiles.inspect(profile).get("diagnostics")).isEmpty(), "Clean profile has diagnostics");
        model.removeRootNode(profile);
    }

    private static void suggestionEditor(SModel model, SNode suggestion) {
        EditorComponent editor = new EditorComponent(model.getRepository()) {};
        try {
            editor.editNode(suggestion);
            String text = text(editor.getRootCell());
            require(text.contains("pattern suggestion:") && text.contains("origin:") && text.contains("suppressed:")
                    && text.contains("source correspondence:"), "Suggestion has no authoring/review fields");
        } finally { editor.dispose(); }
    }

    private static List<String> semantics(GrammarEnrichment.Preview preview) {
        return preview.candidates().stream().map(item -> item.annotationKind() + ":" + item.pattern() + ":" + item.evidence() + ":" + item.mappingImpact())
                .sorted().collect(Collectors.toList());
    }

    private static GrammarModelImporter.Grammar fixture() {
        return new GrammarModelImporter.Grammar("program", List.of(
                rule("program", seq(ref("enabled", "AtMostOne"), ref("group", "AtMostOne"), ref("access", "AtMostOne"),
                        ref("modifiers", "ZeroOrMore"), ref("item", "ExactlyOne"), ref("tail", "ZeroOrMore"),
                        ref("wrongTail", "ZeroOrMore"), ref("item", "AtleastOne"),
                        ref("cyclic", "AtMostOne"), ref("duplicateChoice", "AtMostOne"), ref("nonliteralChoice", "AtMostOne"),
                        ref("lexicalLiteral", "AtMostOne"))),
                rule("enabled", seq(literal("enabled"))),
                rule("group", seq(literal("with"), ref("item", "ExactlyOne"))),
                new GrammarModelImporter.Rule("access", false, List.of(seq(literal("public")), seq(literal("private")), seq(literal("protected")))),
                new GrammarModelImporter.Rule("modifiers", false, List.of(seq(literal("static")), seq(literal("final")))),
                rule("item", seq(literal("item"))),
                rule("tail", seq(literal(","), ref("item", "ExactlyOne"))),
                rule("wrongTail", seq(literal(","), ref("group", "ExactlyOne"))),
                rule("cyclic", seq(ref("cyclic", "ExactlyOne"))),
                new GrammarModelImporter.Rule("duplicateChoice", false, List.of(seq(literal("same")), seq(literal("same")))),
                new GrammarModelImporter.Rule("nonliteralChoice", false, List.of(seq(literal("one"), literal("two")), seq(literal("three")))),
                rule("lexicalLiteral", seq(new GrammarModelImporter.Symbol("lexical", "TOKEN", "ExactlyOne", List.of()))),
                new GrammarModelImporter.Rule("TOKEN", true, List.of(seq(literal("token"))))));
    }

    private static GrammarModelImporter.Rule rule(String name, List<GrammarModelImporter.Symbol> symbols) {
        return new GrammarModelImporter.Rule(name, false, List.of(symbols));
    }
    private static List<GrammarModelImporter.Symbol> seq(GrammarModelImporter.Symbol... symbols) { return List.of(symbols); }
    private static GrammarModelImporter.Symbol literal(String value) { return new GrammarModelImporter.Symbol("literal", value, "ExactlyOne", List.of()); }
    private static GrammarModelImporter.Symbol ref(String name, String card) { return new GrammarModelImporter.Symbol("sort", name, card, List.of()); }
    private static SNode rule(SNode grammar, String name) {
        return tree(grammar).stream().filter(node -> is(node.getParent(), "RuleGroup") && get(node, "name").equals(name)).findFirst().orElseThrow();
    }
    private static List<SNode> roots(SModel model) { List<SNode> nodes = new ArrayList<>(); model.getRootNodes().forEach(nodes::add); return nodes; }
    private static List<?> diagnostics(SNode set) { return (List<?>) UsabilityAnnotations.inspect(set).get("diagnostics"); }
    private static String text(EditorCell cell) {
        StringBuilder text = new StringBuilder();
        if (cell instanceof EditorCell_Label label) text.append(label.getText()).append('\n');
        if (cell instanceof EditorCell_Collection collection) for (EditorCell child : collection) text.append(text(child));
        return text.toString();
    }
    private static void rejected(String code, Runnable operation) {
        try { operation.run(); throw new AssertionError("Expected " + code); }
        catch (UsabilityException failure) { require(failure.getDiagnostic().get("code").equals(code), "Wrong diagnostic: " + failure); }
    }
    private static void require(boolean condition, String message) { if (!condition) throw new AssertionError(message); }
}
