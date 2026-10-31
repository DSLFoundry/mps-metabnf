package metabnf.smoketest;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import metabnf.rascal.SourceModelImporter;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

final class SourceModelResolutionTest {
    private static final String DECLARATION =
            "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration";
    private static final String REFERENCE =
            "jetbrains.mps.lang.structure.structure.InterfaceConceptReference";

    static void run(SModel model, Path projectRoot) throws Exception {
        Path work = projectRoot.resolve("build/issue6-reference-resolution");
        Files.createDirectories(work);
        Path tree = work.resolve("parse-result.xml");
        Path mapping = work.resolve("mapping.json");
        Files.writeString(mapping, """
                {"rules":{
                  "Interface":{"concept":"%s","properties":{"name":{"token":"NAME"}},"children":{"Extends":"extends"}},
                  "Extends":{"concept":"%s","references":{"intfc":{"token":"NAME","targetConcept":"%s","targetIdentifier":"name","scope":"native"}}}
                }}
                """.formatted(DECLARATION, REFERENCE, DECLARATION));

        int originalRoots = countRoots(model);
        Files.writeString(tree, parseResult(
                declaration("Issue6ForwardSource", reference("Issue6ForwardTarget")),
                declaration("Issue6ForwardTarget"),
                declaration("Issue6PriorTarget"),
                declaration("Issue6PriorSource", reference("Issue6PriorTarget"))));
        SourceModelImporter.Result imported = SourceModelImporter.importInto(model, tree, mapping);
        require(imported.roots().size() == 4 && imported.references() == 2,
                "Expected two declarations and two mapped references");
        ((EditableSModel) model).reloadFromSource();
        SNode forwardSource = resolve(model, imported.roots().get(0));
        SNode forwardTarget = resolve(model, imported.roots().get(1));
        SNode priorTarget = resolve(model, imported.roots().get(2));
        SNode priorSource = resolve(model, imported.roots().get(3));
        verifyReference(forwardSource, forwardTarget, "Issue6ForwardTarget");
        verifyReference(priorSource, priorTarget, "Issue6PriorTarget");

        Files.writeString(tree, parseResult(declaration("Issue6MissingSource", reference("Issue6MissingTarget"))));
        expectRejected(model, originalRoots + 4, tree, mapping, "Unresolved reference");
        Files.writeString(tree, parseResult(
                declaration("Issue6DuplicateTarget"), declaration("Issue6DuplicateTarget"),
                declaration("Issue6DuplicateSource", reference("Issue6DuplicateTarget"))));
        expectRejected(model, originalRoots + 4, tree, mapping, "Ambiguous reference");

        var references = new ArrayList<>(imported.roots());
        for (SNodeReference rootReference : references) {
            SNode root = rootReference.resolve(model.getRepository());
            if (root != null) model.removeRootNode(root);
        }
        ((EditableSModel) model).save();
        require(countRoots(model) == originalRoots, "Source-model import test did not clean up its roots");
        Files.deleteIfExists(tree);
        Files.deleteIfExists(mapping);
        Files.deleteIfExists(work);
    }

    private static void verifyReference(SNode declaration, SNode target, String expectedName) {
        require(declaration != null && declaration.getConcept().getQualifiedName().equals(DECLARATION),
                "Reloaded declaration is missing or has an unloaded target-language concept");
        require(target != null && target.getConcept().getQualifiedName().equals(DECLARATION),
                "Reloaded reference target is missing or has an unloaded target-language concept");
        SNode reference = null;
        for (SNode child : declaration.getChildren()) {
            if (child.getConcept().getQualifiedName().equals(REFERENCE)) reference = child;
        }
        require(reference != null, "Missing native reference child");
        SReferenceLink link = reference.getConcept().getReferenceLinks().stream()
                .filter(item -> item.getName().equals("intfc")).findFirst()
                .orElseThrow(() -> new AssertionError("Target-language reference metadata is missing"));
        SNode actual = reference.getReferenceTarget(link);
        require(actual != null && actual.getReference().equals(target.getReference()),
                "Resolved MPS reference did not survive model reload");
        require(link.getScope(reference).contains(target), "Reloaded target is outside its native MPS scope");
        SProperty name = target.getConcept().getProperties().stream()
                .filter(item -> item.getName().equals("name")).findFirst()
                .orElseThrow(() -> new AssertionError("Target-language identifier metadata is missing"));
        require(expectedName.equals(target.getProperty(name)), "Resolved reference points to the wrong symbol");
    }

    private static void expectRejected(
            SModel model, int expectedRootCount, Path tree, Path mapping, String diagnostic) throws Exception {
        try {
            SourceModelImporter.importInto(model, tree, mapping);
            throw new AssertionError("Expected " + diagnostic + " diagnostic");
        } catch (IllegalArgumentException expected) {
            require(expected.getMessage().contains(diagnostic), "Unexpected reference diagnostic: " + expected);
        }
        require(countRoots(model) == expectedRootCount,
                "Rejected source import left a partial AST in the target model");
    }

    private static SNode resolve(SModel model, SNodeReference reference) {
        SNode node = reference.resolve(model.getRepository());
        require(node != null, "Imported root did not survive model reload: " + reference);
        return node;
    }

    private static int countRoots(SModel model) {
        int count = 0;
        for (SNode ignored : model.getRootNodes()) count++;
        return count;
    }

    private static String declaration(String name, String... children) {
        return "<node rule=\"Interface\"><token rule=\"NAME\" value=\"" + name + "\"/>"
                + String.join("", children) + "</node>";
    }

    private static String reference(String name) {
        return "<node rule=\"Extends\"><token rule=\"NAME\" value=\"" + name + "\"/></node>";
    }

    private static String parseResult(String... roots) {
        return "<?xml version=\"1.0\" encoding=\"UTF-8\"?><parse-result>"
                + String.join("", roots) + "</parse-result>";
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
