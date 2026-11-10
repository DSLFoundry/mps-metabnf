package metabnf.rascal;

import com.google.gson.Gson;
import jetbrains.mps.smodel.language.ConceptRegistry;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SScope;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.w3c.dom.Element;

import javax.xml.parsers.DocumentBuilderFactory;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Maps interchange parse trees into a live target language, then resolves native references. */
public final class SourceModelImporter {
    private static final Gson JSON = new Gson();

    public record Result(List<SNodeReference> roots, int references) {}
    private record ReferenceBinding(
            SNode source, SReferenceLink link, String identifier,
            SConcept targetConcept, SProperty identifierProperty, String description) {}

    private SourceModelImporter() {}

    public static Result importInto(SModel model, Path parseTreePath, Path mappingPath) throws Exception {
        require(model instanceof EditableSModel && !model.isReadOnly() && model.getRepository() != null,
                "Choose an editable MPS target model");
        Element parseResult = parse(parseTreePath);
        Map<String, Object> mapping = readMapping(mappingPath);
        Map<String, Object> rules = object(mapping.get("rules"), "mapping rules");
        List<SNode> roots = new ArrayList<>();
        List<ReferenceBinding> references = new ArrayList<>();
        for (Element tree : elements(parseResult)) {
            require(tree.getTagName().equals("node"), "Parse-result roots must be AST nodes");
            roots.add(mapTree(model, tree, rules, references));
        }
        require(!roots.isEmpty(), "Parse result contains no AST roots");

        try {
            for (SNode root : roots) model.addRootNode(root);
            Map<ReferenceBinding, SNode> targets = resolveReferences(model, references);
            targets.forEach((binding, target) -> binding.source().setReferenceTarget(binding.link(), target));
            ((EditableSModel) model).save();
            return new Result(roots.stream().map(SNode::getReference).toList(), references.size());
        } catch (Exception failure) {
            for (SNode root : roots) {
                if (root.getModel() == model) model.removeRootNode(root);
            }
            try {
                ((EditableSModel) model).save();
            } catch (Exception rollbackFailure) {
                failure.addSuppressed(rollbackFailure);
            }
            throw failure;
        }
    }

    private static Map<ReferenceBinding, SNode> resolveReferences(
            SModel model, List<ReferenceBinding> references) {
        Map<ReferenceBinding, SNode> targets = new LinkedHashMap<>();
        for (ReferenceBinding binding : references) {
            SScope scope = binding.link().getScope(binding.source());
            require(scope != null, "Native scope unavailable for " + binding.description());
            Set<SNode> unique = Collections.newSetFromMap(new IdentityHashMap<>());
            List<SNode> matches = new ArrayList<>();
            Iterable<SNode> available = scope.getAvailableElements(binding.identifier());
            require(available != null, "Native scope returned no candidate collection for " + binding.description());
            for (SNode candidate : available) {
                if (candidate == null || candidate.getModel() != model || !unique.add(candidate)) continue;
                SConcept actual = candidate.getConcept();
                if (actual == null || !actual.isValid()
                        || !actual.isSubConceptOf(binding.targetConcept())) continue;
                if (binding.identifier().equals(candidate.getProperty(binding.identifierProperty()))) {
                    matches.add(candidate);
                }
            }
            require(!matches.isEmpty(), "Unresolved reference " + binding.description()
                    + " to " + quote(binding.identifier()) + " in native scope " + binding.link().getName());
            require(matches.size() == 1, "Ambiguous reference " + binding.description()
                    + " to " + quote(binding.identifier()) + " in native scope " + binding.link().getName()
                    + " (" + matches.size() + " targets)");
            targets.put(binding, matches.get(0));
        }
        return targets;
    }

    private static SNode mapTree(
            SModel model, Element tree, Map<String, Object> rules, List<ReferenceBinding> references) {
        require(List.of("node", "token").contains(tree.getTagName()),
                "Unsupported parse-tree element: " + tree.getTagName());
        String ruleName = attribute(tree, "rule");
        Map<String, Object> rule = object(rules.get(ruleName), "AST mapping for rule " + ruleName);
        String conceptName = string(rule.get("concept"), "MPS concept for rule " + ruleName);
        SConcept concept = concept(conceptName);
        SNode node = model.createNode(concept);
        List<Element> children = elements(tree);
        Set<Element> consumed = Collections.newSetFromMap(new IdentityHashMap<>());

        Map<String, Object> propertyMappings = objectOrEmpty(rule.get("properties"), "properties for " + ruleName);
        for (var entry : propertyMappings.entrySet()) {
            Map<String, Object> source = object(entry.getValue(), "property mapping " + ruleName + "." + entry.getKey());
            require(source.size() == 1, "Property mapping " + ruleName + "." + entry.getKey()
                    + " must select exactly one value source");
            String value;
            if (source.containsKey("token")) {
                Element token = oneToken(children, string(source.get("token"), "token rule"), ruleName + "." + entry.getKey());
                consumed.add(token);
                value = attribute(token, "value");
            } else if (Boolean.TRUE.equals(source.get("self"))) {
                require(tree.getTagName().equals("token"), "Property " + ruleName + "." + entry.getKey()
                        + " uses self on a non-token");
                value = attribute(tree, "value");
            } else if (source.get("literal") instanceof String literal) {
                value = literal;
            } else {
                throw new IllegalArgumentException("Property mapping " + ruleName + "." + entry.getKey()
                        + " must use token, self, or literal");
            }
            node.setProperty(property(concept, entry.getKey()), value);
        }

        Map<String, Object> referenceMappings = objectOrEmpty(rule.get("references"), "references for " + ruleName);
        for (var entry : referenceMappings.entrySet()) {
            Map<String, Object> specification = object(entry.getValue(),
                    "reference mapping " + ruleName + "." + entry.getKey());
            String tokenRule = string(specification.get("token"), "reference token rule");
            String targetConceptName = string(specification.get("targetConcept"), "reference target concept");
            String targetIdentifierName = string(specification.get("targetIdentifier"), "target identifier property");
            require("native".equals(specification.get("scope")), "Reference mapping " + ruleName + "."
                    + entry.getKey() + " must use scope 'native' to invoke the MPS reference scope");
            Element token = oneToken(children, tokenRule, ruleName + "." + entry.getKey());
            consumed.add(token);
            String identifier = attribute(token, "value");
            require(!identifier.isEmpty(), "Reference token " + tokenRule + " has no identifier value");
            SReferenceLink link = referenceLink(concept, entry.getKey());
            SConcept targetConcept = concept(targetConceptName);
            SAbstractConcept linkTarget = link.getTargetConcept();
            require(linkTarget != null && targetConcept.isSubConceptOf(linkTarget),
                    "Mapped target concept " + targetConceptName + " is incompatible with native reference "
                            + conceptName + "." + entry.getKey());
            references.add(new ReferenceBinding(node, link, identifier, targetConcept,
                    property(targetConcept, targetIdentifierName), ruleName + "." + entry.getKey()));
        }

        Map<String, Object> childMappings = objectOrEmpty(rule.get("children"), "children for " + ruleName);
        for (Element childTree : children) {
            if (childTree.getTagName().equals("token") && consumed.contains(childTree)) continue;
            if (childTree.getTagName().equals("character")) continue;
            String childRule = childTree.getAttribute("rule");
            Object mappedRole = childMappings.get(childRule);
            if (!(mappedRole instanceof String childRole)) {
                throw new IllegalArgumentException("Rule " + ruleName + " has no child role mapping for "
                        + quote(childRule));
            }
            SContainmentLink link = containmentLink(concept, childRole);
            node.addChild(link, mapTree(model, childTree, rules, references));
        }
        return node;
    }

    private static Element parse(Path parseTreePath) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
        factory.setFeature("http://xml.org/sax/features/external-general-entities", false);
        factory.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
        factory.setXIncludeAware(false);
        factory.setExpandEntityReferences(false);
        Element root = factory.newDocumentBuilder().parse(parseTreePath.toFile()).getDocumentElement();
        require(root.getTagName().equals("parse-result"), "Parse-tree root element must be parse-result");
        return root;
    }

    private static Map<String, Object> readMapping(Path mappingPath) throws Exception {
        try (Reader reader = Files.newBufferedReader(mappingPath)) {
            return object(JSON.fromJson(reader, Map.class), "AST mapping");
        }
    }

    private static SConcept concept(String qualifiedName) {
        Object resolved = ConceptRegistry.getInstance().getConceptByName(qualifiedName);
        require(resolved instanceof SConcept concept && concept.isValid(),
                "Target language concept is not loaded: " + qualifiedName);
        return (SConcept) resolved;
    }

    private static SProperty property(SConcept concept, String name) {
        return concept.getProperties().stream().filter(item -> item.getName().equals(name)).findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Native concept " + concept.getQualifiedName()
                        + " has no property " + name));
    }

    private static SContainmentLink containmentLink(SConcept concept, String name) {
        return concept.getContainmentLinks().stream().filter(item -> item.getName().equals(name)).findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Native concept " + concept.getQualifiedName()
                        + " has no child link " + name));
    }

    private static SReferenceLink referenceLink(SConcept concept, String name) {
        return concept.getReferenceLinks().stream().filter(item -> item.getName().equals(name)).findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Native concept " + concept.getQualifiedName()
                        + " has no reference link " + name));
    }

    private static Element oneToken(List<Element> children, String tokenRule, String description) {
        List<Element> matches = children.stream().filter(child -> child.getTagName().equals("token")
                && tokenRule.equals(child.getAttribute("rule"))).toList();
        require(matches.size() == 1, description + " requires exactly one token " + quote(tokenRule)
                + "; found " + matches.size());
        return matches.get(0);
    }

    private static List<Element> elements(Element parent) {
        List<Element> result = new ArrayList<>();
        for (var child = parent.getFirstChild(); child != null; child = child.getNextSibling()) {
            if (child instanceof Element element) result.add(element);
            else if ((child.getNodeType() == org.w3c.dom.Node.TEXT_NODE
                    || child.getNodeType() == org.w3c.dom.Node.CDATA_SECTION_NODE)
                    && !child.getTextContent().isBlank()) {
                throw new IllegalArgumentException("Unexpected text inside " + parent.getTagName());
            }
        }
        return result;
    }

    private static Map<String, Object> objectOrEmpty(Object value, String description) {
        return value == null ? Map.of() : object(value, description);
    }

    @SuppressWarnings("unchecked")
    private static Map<String, Object> object(Object value, String description) {
        require(value instanceof Map<?, ?>, description + " must be an object");
        return (Map<String, Object>) value;
    }

    private static String string(Object value, String description) {
        require(value instanceof String text && !text.isEmpty(), description + " must be a non-empty string");
        return (String) value;
    }

    private static String attribute(Element element, String name) {
        require(element.hasAttribute(name), "Parse-tree " + element.getTagName() + " is missing " + name);
        return element.getAttribute(name);
    }

    private static String quote(String text) {
        return "'" + text + "'";
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new IllegalArgumentException(message);
    }
}
