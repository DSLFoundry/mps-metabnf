package metabnf.usability;

import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.language.ConceptRegistry;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SEnumeration;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HexFormat;
import java.util.List;

public final class ModelNodes {
    private ModelNodes() {}

    public static boolean is(SNode node, String kind) {
        return node != null && node.getConcept().getQualifiedName().equals("metabnf.structure." + kind);
    }

    public static SProperty property(SNode node, String name) {
        return node.getConcept().getProperties().stream().filter(item -> item.getName().equals(name))
                .findFirst().orElseThrow(() -> new IllegalArgumentException("Missing property " + name));
    }

    public static String get(SNode node, String name) {
        String value = node.getProperty(property(node, name));
        return value == null ? "" : value;
    }

    public static void put(SNode node, String name, String value) {
        node.setProperty(property(node, name), value);
    }

    public static boolean bool(SNode node, String name) {
        String value = get(node, name);
        if (!value.isEmpty() && !value.equals("true") && !value.equals("false")) {
            throw failure("MBNF_INVALID_BOOLEAN", node, "Invalid boolean property: " + name, "Choose true or false");
        }
        return value.equals("true");
    }

    public static String enumeration(SNode node, String name) {
        var type = property(node, name).getType();
        Object value = type.fromString(node.getProperty(property(node, name)));
        if (!type.isInstanceOf(value) || !(value instanceof SEnumerationLiteral literal)) {
            throw failure("MBNF_INVALID_ENUM", node, "Invalid " + name, "Choose a supported native enum value");
        }
        return literal.getName();
    }

    public static void enumeration(SNode node, String name, String value) {
        var type = (SEnumeration) property(node, name).getType();
        var literal = type.getLiteral(value);
        if (literal == null || !type.isInstanceOf(literal)) {
            throw failure("MBNF_INVALID_ENUM", node, "Unknown " + name + ": " + value, "Choose a supported enum value");
        }
        put(node, name, type.toString(literal));
    }

    public static SNode target(SNode node, String role) {
        return node.getReferenceTarget(node.getConcept().getReferenceLinks().stream()
                .filter(item -> item.getName().equals(role)).findFirst().orElseThrow());
    }

    public static void point(SNode node, String role, SNode target) {
        node.setReferenceTarget(node.getConcept().getReferenceLinks().stream()
                .filter(item -> item.getName().equals(role)).findFirst().orElseThrow(), target);
    }

    public static void add(SNode node, String role, SNode child) {
        node.addChild(node.getConcept().getContainmentLinks().stream()
                .filter(item -> item.getName().equals(role)).findFirst().orElseThrow(), child);
    }

    public static List<SNode> children(SNode node, String role) {
        List<SNode> result = new ArrayList<>();
        for (SNode child : node.getChildren()) if (child.getContainmentLink().getName().equals(role)) result.add(child);
        return result;
    }

    public static List<SNode> tree(SNode root) {
        List<SNode> result = new ArrayList<>();
        result.add(root);
        for (SNode child : root.getChildren()) result.addAll(tree(child));
        return result;
    }

    public static boolean within(SNode node, SNode root) {
        for (SNode current = node; current != null; current = current.getParent()) if (current == root) return true;
        return false;
    }

    public static SNode grammar(SNode node) {
        for (SNode current = node; current != null; current = current.getParent()) if (is(current, "grammar")) return current;
        return null;
    }

    public static String ref(SNode node) { return node == null ? "" : node.getReference().toString(); }

    public static SNode create(SModel model, String kind) {
        var concept = ConceptRegistry.getInstance().getConceptByName("metabnf.structure." + kind);
        if (!(concept instanceof SConcept concrete) || !concept.isValid()) {
            throw new IllegalStateException("Build/load MetaBNF before creating " + kind);
        }
        return model.createNode(concrete);
    }

    public static void imports(SModel model, SNode grammar) {
        var imports = new ModelImports(model);
        imports.addUsedLanguage(grammar.getConcept().getLanguage());
        if (model != grammar.getModel()) imports.addModelImport(grammar.getModel().getReference());
    }

    public static void attachedGrammar(SNode grammar) {
        if (!is(grammar, "grammar") || grammar.getModel() == null || grammar.getModel().getRepository() == null) {
            throw failure("MBNF_INVALID_GRAMMAR", grammar, "Expected an attached grammar", "Select a grammar in this project");
        }
    }

    public static String fingerprint(SNode root) {
        StringBuilder value = new StringBuilder();
        snapshot(root, value);
        try {
            return HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256")
                    .digest(value.toString().getBytes(StandardCharsets.UTF_8)));
        } catch (NoSuchAlgorithmException impossible) { throw new IllegalStateException(impossible); }
    }

    private static void snapshot(SNode node, StringBuilder value) {
        append(value, node.getConcept().getQualifiedName());
        append(value, ref(node));
        List<SProperty> properties = new ArrayList<>();
        node.getProperties().forEach(properties::add);
        properties.sort(Comparator.comparing(SProperty::getName));
        for (var property : properties) {
            append(value, property.getName());
            append(value, node.getProperty(property));
        }
        var references = new ArrayList<org.jetbrains.mps.openapi.model.SReference>();
        node.getReferences().forEach(references::add);
        references.sort(Comparator.comparing(item -> item.getLink().getName()));
        for (var reference : references) {
            append(value, reference.getLink().getName());
            append(value, reference.getTargetNodeReference() == null ? "" : reference.getTargetNodeReference().toString());
        }
        for (SNode child : node.getChildren()) {
            append(value, child.getContainmentLink().getName());
            snapshot(child, value);
        }
        append(value, "/");
    }

    private static void append(StringBuilder result, String value) {
        String text = value == null ? "" : value;
        result.append(text.length()).append(':').append(text);
    }

    public static UsabilityException failure(String code, SNode node, String message, String remedy) {
        return new UsabilityException(code, ref(node), message, remedy);
    }
}
