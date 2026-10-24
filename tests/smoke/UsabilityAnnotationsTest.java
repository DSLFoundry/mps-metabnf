package metabnf.smoketest;

import jetbrains.mps.smodel.CopyUtil;
import jetbrains.mps.smodel.ModelImports;
import metabnf.plugin.UsabilityAnnotations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

final class UsabilityAnnotationsTest {
    static void run(SModel model, SModel demo) {
        SNode set = root(model, "UsabilityAnnotations");
        SNode grammar = target(set, "grammar");
        SNode flagAnnotation = child(set, "FlagAnnotation");
        SNode listAnnotation = child(set, "ListAnnotation");
        SNode optionalAnnotation = child(set, "OptionalGroupAnnotation");
        SNode flag = target(flagAnnotation, "target");
        SNode list = target(listAnnotation, "target");
        SNode owner = target(optionalAnnotation, "owner");
        SNode first = target(optionalAnnotation, "first");
        SNode last = target(optionalAnnotation, "last");
        String grammarBefore = snapshot(grammar);

        Map<String, Object> inspection = UsabilityAnnotations.inspect(set);
        require(inspection.get("grammar").equals(grammar.getReference().toString()), "Grammar did not resolve");
        require(items(inspection).size() == 3 && diagnostics(inspection).isEmpty(), "Invalid authored fixture");
        require(origins(inspection).equals("authored,inferred,suggested"), "Lost provenance");
        require(Boolean.TRUE.equals(items(inspection).get(2).get("suppressed")), "Lost suppression");
        require(Boolean.TRUE.equals(items(inspection).get(2).get("distinguishEmpty")), "Lost empty-group intent");
        require(items(inspection).get(0).get("target").equals(flag.getReference().toString()),
                "Flag target did not resolve");

        String before = snapshot(set);
        rejected("MBNF_DUPLICATE_SET", () -> UsabilityAnnotations.createSet(model, grammar));
        rejected("MBNF_INVALID_GRAMMAR", () -> UsabilityAnnotations.createSet(model, null));
        rejected("MBNF_INVALID_SET", () -> UsabilityAnnotations.inspect(grammar));
        rejected("MBNF_INVALID_TARGET", () -> UsabilityAnnotations.addFlag(set, list, "authored", "", false));
        rejected("MBNF_INVALID_TARGET", () -> UsabilityAnnotations.addList(set, null, "authored", "", false));
        rejected("MBNF_INVALID_RANGE", () -> UsabilityAnnotations.addOptionalGroup(
                set, owner, last, first, false, "authored", "", false));
        rejected("MBNF_INVALID_RANGE", () -> UsabilityAnnotations.addOptionalGroup(
                set, owner, first, flag, false, "authored", "", false));
        rejected("MBNF_INVALID_ANNOTATION", () -> UsabilityAnnotations.remove(flag));
        rejected("MBNF_INVALID_ORIGIN", () -> UsabilityAnnotations.update(flagAnnotation, "guessed", "", false));
        rejected("MBNF_EVIDENCE_REQUIRED", () -> UsabilityAnnotations.update(flagAnnotation, "inferred", " ", false));
        rejected("MBNF_INVALID_SUPPRESSION", () -> UsabilityAnnotations.update(flagAnnotation, "authored", "", true));
        rejected("MBNF_DUPLICATE_ANNOTATION", () -> UsabilityAnnotations.addFlag(
                set, flag, "authored", "", false));
        rejected("MBNF_DUPLICATE_ANNOTATION", () -> UsabilityAnnotations.addList(
                set, list, "authored", "", false));
        rejected("MBNF_DUPLICATE_ANNOTATION", () -> UsabilityAnnotations.addOptionalGroup(
                set, owner, first, last, false, "authored", "", false));
        require(before.equals(snapshot(set)), "Rejected operations mutated the set");

        String card = get(list, "card");
        put(list, "card", null);
        rejected("MBNF_LIST_CARDINALITY", () -> UsabilityAnnotations.addList(set, list, "authored", "", false));
        require(diagnostics(UsabilityAnnotations.inspect(set)).get(0).get("code").equals("MBNF_LIST_CARDINALITY"),
                "Invalid edited cardinality was not diagnosed");
        put(list, "card", card);

        setTarget(flagAnnotation, "target", null);
        Map<String, String> broken = diagnostics(UsabilityAnnotations.inspect(set)).get(0);
        require("MBNF_INVALID_TARGET".equals(broken.get("code")) && !broken.get("target").isEmpty(),
                "Missing reference was not diagnosed at an attached node");
        setTarget(flagAnnotation, "target", flag);
        String origin = get(flagAnnotation, "origin");
        for (String invalid : List.of("invalid-enum-value", "999/Unknown")) {
            put(flagAnnotation, "origin", invalid);
            require(diagnostics(UsabilityAnnotations.inspect(set)).stream()
                            .anyMatch(item -> "MBNF_INVALID_ORIGIN".equals(item.get("code"))),
                    "Malformed persisted provenance was not diagnosed: " + invalid);
        }
        put(flagAnnotation, "origin", origin);
        put(flagAnnotation, "suppressed", "true");
        require(diagnostics(UsabilityAnnotations.inspect(set)).get(0).get("code").equals("MBNF_INVALID_SUPPRESSION"),
                "Suppressed authored intent was not diagnosed");
        put(flagAnnotation, "suppressed", "false");
        SNode duplicate = CopyUtil.copy(flagAnnotation);
        set.addChild(containment(set, "annotations"), duplicate);
        require(diagnostics(UsabilityAnnotations.inspect(set)).get(0).get("code")
                .equals("MBNF_DUPLICATE_ANNOTATION"), "Externally authored duplicate was not diagnosed");
        UsabilityAnnotations.remove(duplicate);

        SNode otherGrammar = CopyUtil.copy(grammar);
        model.addRootNode(otherGrammar);
        SNode foreignFlag = descendants(otherGrammar).stream()
                .filter(node -> kind(node, "Flag")).findFirst().orElseThrow(AssertionError::new);
        rejected("MBNF_INVALID_TARGET", () -> UsabilityAnnotations.addFlag(
                set, foreignFlag, "authored", "", false));
        SNode otherSet = UsabilityAnnotations.createSet(model, otherGrammar);
        require(UsabilityAnnotations.inspect(otherSet).get("grammar").equals(otherGrammar.getReference().toString()),
                "Cannot create a native set");
        UsabilityAnnotations.addFlag(otherSet, foreignFlag, "authored", "", false);
        model.removeRootNode(otherSet);
        model.removeRootNode(otherGrammar);

        UsabilityAnnotations.update(flagAnnotation, "inferred", "Recognized flag shape", true);
        require("inferred".equals(items(UsabilityAnnotations.inspect(set)).get(0).get("origin")),
                "Native enum update failed");
        require(Boolean.TRUE.equals(items(UsabilityAnnotations.inspect(set)).get(0).get("suppressed")),
                "Suppression update failed");
        UsabilityAnnotations.update(flagAnnotation, "authored", "", false);
        require("authored".equals(items(UsabilityAnnotations.inspect(set)).get(0).get("origin")),
                "Cannot accept inferred intent as authored");

        UsabilityAnnotations.remove(flagAnnotation);
        UsabilityAnnotations.remove(listAnnotation);
        UsabilityAnnotations.remove(optionalAnnotation);
        require(items(UsabilityAnnotations.inspect(set)).isEmpty(), "Remove left annotations behind");
        SNode createdFlag = UsabilityAnnotations.addFlag(set, flag, "authored", "Manual flag", false);
        UsabilityAnnotations.addList(set, list, "inferred", "One-or-more reference", false);
        UsabilityAnnotations.addOptionalGroup(set, owner, first, last, true,
                "suggested", "Keyword-led clause", true);
        require(grammarBefore.equals(snapshot(grammar)), "Metadata CRUD changed the grammar");

        SNodeReference savedSet = set.getReference();
        SNodeReference savedFlag = createdFlag.getReference();
        ((EditableSModel) model).save();
        ((EditableSModel) model).reloadFromSource();
        SNode restored = savedSet.resolve(model.getRepository());
        require(restored != null && savedFlag.resolve(model.getRepository()) != null, "Node identities did not persist");
        require(origins(UsabilityAnnotations.inspect(restored)).equals("authored,inferred,suggested"),
                "Provenance did not survive native reload");
        require(diagnostics(UsabilityAnnotations.inspect(restored)).isEmpty(), "Reloaded references did not resolve");
        require(grammarBefore.equals(snapshot(target(restored, "grammar"))), "Grammar changed on reload");

        // Generate Demo with an annotation-only root alongside its unchanged grammar.
        SNode demoGrammar = root(demo, "grammar");
        SNode demoSet = UsabilityAnnotations.createSet(demo, demoGrammar);
        SNode repeated = descendants(demoGrammar).stream()
                .filter(node -> kind(node, "NonterminalReference") && get(node, "card") != null
                        && get(node, "card").contains("AtleastOne"))
                .findFirst().orElseThrow(AssertionError::new);
        UsabilityAnnotations.addList(demoSet, repeated, "authored", "Metadata must not change generation", false);
        require(diagnostics(UsabilityAnnotations.inspect(demoSet)).isEmpty(), "Demo metadata is invalid");
        ((EditableSModel) demo).save();

        // A separate metadata model receives its native language and grammar-model imports.
        SNode crossModel = UsabilityAnnotations.createSet(demo, target(restored, "grammar"));
        require(new ModelImports(demo).getImportedModels().contains(model.getReference()), "Missing cross-model import");
        require(new ModelImports(demo).getUsedLanguages().contains(crossModel.getConcept().getLanguage()),
                "Missing used language");
        demo.removeRootNode(crossModel);
        new ModelImports(demo).removeModelImport(model.getReference());
        ((EditableSModel) demo).save();
    }

    @SuppressWarnings("unchecked")
    private static List<Map<String, Object>> items(Map<String, Object> value) {
        return (List<Map<String, Object>>) value.get("annotations");
    }

    @SuppressWarnings("unchecked")
    private static List<Map<String, String>> diagnostics(Map<String, Object> value) {
        return (List<Map<String, String>>) value.get("diagnostics");
    }

    private static String origins(Map<String, Object> value) {
        return items(value).stream().map(item -> (String) item.get("origin")).collect(Collectors.joining(","));
    }

    private static void rejected(String code, Runnable operation) {
        try {
            operation.run();
        } catch (UsabilityAnnotations.AnnotationException exception) {
            Map<String, String> diagnostic = exception.getDiagnostic();
            require(code.equals(diagnostic.get("code")), "Expected " + code + ", got " + diagnostic);
            require("error".equals(diagnostic.get("severity")), "Missing severity");
            require(diagnostic.keySet().containsAll(List.of("code", "severity", "target", "message", "remedy")),
                    "Incomplete diagnostic");
            require(!diagnostic.get("message").isEmpty() && !diagnostic.get("remedy").isEmpty(), "Unhelpful diagnostic");
            return;
        }
        throw new AssertionError("Operation did not reject " + code);
    }

    private static boolean kind(SNode node, String name) {
        return ("metabnf.structure." + name).equals(node.getConcept().getQualifiedName());
    }

    private static SNode root(SModel model, String name) {
        for (SNode root : model.getRootNodes()) if (kind(root, name)) return root;
        throw new AssertionError("Missing " + name + " in " + model.getName());
    }

    private static SNode child(SNode parent, String name) {
        for (SNode child : parent.getChildren()) if (kind(child, name)) return child;
        throw new AssertionError("Missing " + name);
    }

    private static List<SNode> descendants(SNode node) {
        List<SNode> result = new ArrayList<>();
        for (SNode child : node.getChildren()) {
            result.add(child);
            result.addAll(descendants(child));
        }
        return result;
    }

    private static SProperty property(SNode node, String name) {
        for (SProperty property : node.getConcept().getProperties()) if (property.getName().equals(name)) return property;
        throw new AssertionError("Missing property " + name);
    }

    private static String get(SNode node, String name) {
        return node.getProperty(property(node, name));
    }

    private static void put(SNode node, String name, String value) {
        node.setProperty(property(node, name), value);
    }

    private static SReferenceLink reference(SNode node, String name) {
        for (SReferenceLink link : node.getConcept().getReferenceLinks()) if (link.getName().equals(name)) return link;
        throw new AssertionError("Missing reference " + name);
    }

    private static SNode target(SNode node, String name) {
        return node.getReferenceTarget(reference(node, name));
    }

    private static void setTarget(SNode node, String name, SNode target) {
        node.setReferenceTarget(reference(node, name), target);
    }

    private static SContainmentLink containment(SNode node, String name) {
        for (SContainmentLink link : node.getConcept().getContainmentLinks()) if (link.getName().equals(name)) return link;
        throw new AssertionError("Missing containment " + name);
    }

    private static String snapshot(SNode node) {
        StringBuilder text = new StringBuilder(node.getReference().toString());
        text.append(node.getConcept().getQualifiedName());
        for (SProperty property : node.getProperties()) {
            text.append('|').append(property.getName()).append('=').append(node.getProperty(property));
        }
        node.getReferences().forEach(reference ->
                text.append('|').append(reference.getLink().getName()).append('=').append(reference.getTargetNodeReference()));
        for (SNode child : node.getChildren()) text.append('{').append(snapshot(child)).append('}');
        return text.toString();
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
