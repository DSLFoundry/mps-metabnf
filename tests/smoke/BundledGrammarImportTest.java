package metabnf.smoketest;

import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import metabnf.rascal.GrammarModelImporter;
import metabnf.rascal.GrammarTools;
import metabnf.usability.GrammarEnrichment;
import metabnf.usability.ModelNodes;
import jetbrains.mps.smodel.CopyUtil;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

final class BundledGrammarImportTest {
    static void run(Environment environment, Project project, SModel target) throws Exception {
        Path tools = GrammarTools.resourceRoot();
        Path repo = Path.of(System.getProperty("metabnf.smoke.repo"));
        var sentinelConcept = project.getModelAccess().computeReadAction(() -> {
            for (SNode root : target.getRootNodes()) {
                if (root.getConcept().getQualifiedName().equals("metabnf.structure.UsabilityAnnotations")) {
                    return root.getConcept();
                }
            }
            throw new AssertionError("Missing original annotation fixture");
        });
        for (String tool : List.of("ANTLR", "Rascal")) {
            Path work = Files.createTempDirectory("metabnf-bundled-test-");
            try {
                Path source = repo.resolve(tool.equals("ANTLR")
                        ? "tests/antlr-bridge/Mini.g4" : "tests/rascal-bridge/hello-grammar.rsc");
                Path output = GrammarTools.export(tools, tool, source, "program", work, () -> false);
                var grammar = GrammarModelImporter.read(output);
                ApplicationManager.getApplication().invokeAndWait(() -> project.getModelAccess().executeCommand(() -> {
                    List<SNode> roots = new ArrayList<>();
                    target.getRootNodes().forEach(roots::add);
                    roots.forEach(target::removeRootNode);
                    SNode sentinel = target.createNode(sentinelConcept);
                    target.addRootNode(sentinel);
                    var sentinelReference = sentinel.getReference();
                    SNode imported = GrammarModelImporter.importInto(target, grammar, "Bundled" + tool, tool);
                    validate(imported);
                    var reference = imported.getReference();
                    ((EditableSModel) target).reloadFromSource();
                    SNode restored = reference.resolve(project.getRepository());
                    require(restored != null, "Native import did not persist");
                    require(sentinelReference.resolve(project.getRepository()) != null,
                            "Native import lost another target root");
                    validate(restored);
                    int count = roots(target);
                    try {
                        GrammarModelImporter.importInto(target, grammar, "DoNotReplace", tool);
                        throw new AssertionError("Import overwrote an existing grammar");
                    } catch (IllegalArgumentException expected) {
                        require(expected.getMessage().contains("already contains"), "Unexpected rejection: " + expected);
                    }
                    require(roots(target) == count, "Rejected import mutated native roots");
                    target.removeRootNode(sentinelReference.resolve(project.getRepository()));
                    var before = ModelNodes.fingerprint(restored);
                    var preview = GrammarEnrichment.analyze(restored, null);
                    SNode manual = CopyUtil.copy(restored);
                    target.addRootNode(manual);
                    var manualPreview = GrammarEnrichment.analyze(manual, null);
                    require(preview.candidates().stream().map(item -> item.pattern() + ":" + item.evidence()).sorted().toList()
                                    .equals(manualPreview.candidates().stream().map(item -> item.pattern() + ":" + item.evidence()).sorted().toList()),
                            tool + " import and equivalent manual grammar have different enrichment");
                    target.removeRootNode(manual);
                    SNode set = GrammarEnrichment.apply(preview, target);
                    var once = ModelNodes.fingerprint(set);
                    GrammarEnrichment.apply(GrammarEnrichment.analyze(restored, set), target);
                    require(once.equals(ModelNodes.fingerprint(set)), tool + " enrichment is not idempotent");
                    require(before.equals(ModelNodes.fingerprint(restored)), tool + " enrichment changed grammar/mapping input");
                    ((EditableSModel) target).save();
                }));
                MetaBnfSmokeTest.checkConstraints(environment, project, target);
                Path bad = work.resolve("unsupported.xml");
                Files.writeString(bad, Files.readString(output).replace("<choice>", "<priority>").replace("</choice>", "</priority>"));
                try {
                    GrammarModelImporter.read(bad);
                    throw new AssertionError("Unsupported precedence was silently accepted");
                } catch (IllegalArgumentException expected) {
                    require(expected.getMessage().contains("choice"), "Unexpected interchange rejection: " + expected);
                }
                for (String extra : List.of(
                        Files.readString(output).replace("</rascal-grammar>", "<layout/></rascal-grammar>"),
                        Files.readString(output).replace("</sequence>", "</sequence><unsupported/>"))) {
                    Files.writeString(bad, extra);
                    try {
                        GrammarModelImporter.read(bad);
                        throw new AssertionError("Unknown interchange content was silently discarded");
                    } catch (IllegalArgumentException expected) {
                        require(expected.getMessage() != null, "Missing interchange diagnostic");
                    }
                }
                if (tool.equals("ANTLR")) {
                    Path rejectedWork = Files.createDirectory(work.resolve("reject"));
                    Path unsupported = work.resolve("Bad.g4");
                    Files.writeString(unsupported, "grammar Bad; program: {true}? 'x' EOF;");
                    try {
                        GrammarTools.export(tools, tool, unsupported, "program", rejectedWork, () -> false);
                        throw new AssertionError("ANTLR predicate was silently accepted");
                    } catch (java.io.IOException expected) {
                        require(expected.getMessage().contains("Unsupported ANTLR"), "Tool diagnostics were lost");
                    }
                }
            } finally {
                GrammarTools.cleanup(work);
            }
        }
    }

    private static int roots(SModel model) {
        int count = 0;
        for (SNode ignored : model.getRootNodes()) count++;
        return count;
    }

    private static void validate(SNode node) {
        require(node.getConcept().isValid(), "Imported node has an unloaded concept");
        for (var reference : node.getReferences()) {
            require(reference.getTargetNode() != null, "Native grammar reference is unresolved: " + reference.getLink());
        }
        for (SNode child : node.getChildren()) validate(child);
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
