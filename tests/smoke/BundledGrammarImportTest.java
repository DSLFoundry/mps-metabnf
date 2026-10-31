package metabnf.smoketest;

import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import metabnf.rascal.GrammarModelImporter;
import metabnf.rascal.GrammarTools;
import metabnf.usability.ExpressionFamilies;
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
            Path work = repo.resolve("build/bundled-grammar-test-" + tool.toLowerCase());
            if (Files.exists(work)) GrammarTools.cleanup(work);
            Files.createDirectories(work);
            try {
                Path source = repo.resolve(tool.equals("ANTLR")
                        ? "tests/antlr-bridge/GrammarCoverage.g4" : "tests/rascal-bridge/GrammarCoverage.rsc");
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
                    if (tool.equals("ANTLR")) {
                        SNode grammarGroup = ModelNodes.children(imported, "rules").get(0);
                        SNode flatExpression = ModelNodes.children(grammarGroup, "rules").stream()
                                .filter(rule -> "expression".equals(ModelNodes.get(rule, "name")))
                                .findFirst().orElseThrow(() -> new AssertionError("Flat expression rule was not imported"));
                        List<SNode> flatTerms = ModelNodes.children(flatExpression, "terms");
                        require(flatTerms.size() == 2
                                        && "ZeroOrMore".equals(ModelNodes.enumeration(flatTerms.get(1), "card")),
                                "Ambiguous flat expression structure or repetition was not preserved");
                        require(ExpressionFamilies.recognize(imported).stream().noneMatch(candidate ->
                                        List.of("ExpressionPrefix", "ExpressionPostfix", "ExpressionInfix",
                                                "ExpressionTernary", "ExpressionLayered").contains(candidate.family())),
                                "Flat repeated operators acquired inferred precedence/associativity instead of remaining ambiguous");
                    }
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
                System.out.println("SMOKE: validating bundled " + tool + " grammar in native MPS");
                MetaBnfSmokeTest.checkConstraints(environment, project, target);
                Path bad = work.resolve("unsupported.xml");
                Files.writeString(bad, Files.readString(output).replace("<choice>", "<priority>").replace("</choice>", "</priority>"));
                try {
                    GrammarModelImporter.read(bad);
                    throw new AssertionError("Unsupported precedence was silently accepted");
                } catch (IllegalArgumentException expected) {
                    require(expected.getMessage().contains("Priority/associativity"), "Unexpected interchange rejection: " + expected);
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
                    verifyStratifiedExpressionImport(tools, repo, work);
                    Path rejectedWork = Files.createDirectory(work.resolve("reject"));
                    Path unsupported = work.resolve("Bad.g4");
                    Files.writeString(unsupported, "grammar Bad; program: {true}? 'x' EOF;");
                    try {
                        GrammarTools.export(tools, tool, unsupported, "program", rejectedWork, () -> false);
                        throw new AssertionError("ANTLR predicate was silently accepted");
                    } catch (java.io.IOException expected) {
                        require(expected.getMessage().contains("Unsupported ANTLR"), "Tool diagnostics were lost");
                    }
                    Path recursiveWork = Files.createDirectory(work.resolve("left-recursive"));
                    Path recursive = work.resolve("LeftRecursive.g4");
                    Files.writeString(recursive, "grammar LeftRecursive; program: expression EOF; "
                            + "expression: expression '+' expression | ID; ID: [a-z]+;");
                    try {
                        GrammarTools.export(tools, "ANTLR", recursive, "program", recursiveWork, () -> false);
                        throw new AssertionError("Left-recursive expression import guessed precedence");
                    } catch (java.io.IOException expected) {
                        require(expected.getMessage().contains("lose precedence"),
                                "Left-recursion rejection lost its precedence diagnostic: " + expected.getMessage());
                    }
                } else {
                    String associativity = Files.readString(output)
                            .replace("</choice>", "</choice><associativity/>");
                    Files.writeString(bad, associativity);
                    try {
                        GrammarModelImporter.read(bad);
                        throw new AssertionError("Unsupported associativity was silently accepted");
                    } catch (IllegalArgumentException expected) {
                        require(expected.getMessage().contains("Priority/associativity"),
                                "Unexpected associativity rejection: " + expected);
                    }
                }
            } finally {
                GrammarTools.cleanup(work);
            }
        }
        Path corpusWork = repo.resolve("build/corpus-validation/native-muddb");
        if (Files.exists(corpusWork)) GrammarTools.cleanup(corpusWork);
        Files.createDirectories(corpusWork);
        try {
            Path source = repo.resolve("tests/corpus/antlr/muddb.g4");
            Path output = GrammarTools.export(tools, "ANTLR", source, "db", corpusWork, () -> false);
            var grammar = GrammarModelImporter.read(output);
            ApplicationManager.getApplication().invokeAndWait(() -> project.getModelAccess().executeCommand(() -> {
                List<SNode> roots = new ArrayList<>();
                target.getRootNodes().forEach(roots::add);
                roots.forEach(target::removeRootNode);
                SNode sentinel = target.createNode(sentinelConcept);
                target.addRootNode(sentinel);
                var sentinelReference = sentinel.getReference();
                SNode imported = GrammarModelImporter.importInto(target, grammar, "MuddbCorpus", "ANTLR");
                validate(imported);
                var reference = imported.getReference();
                ((EditableSModel) target).reloadFromSource();
                SNode restored = reference.resolve(project.getRepository());
                require(restored != null, "Native corpus import did not persist");
                SNode restoredSentinel = sentinelReference.resolve(project.getRepository());
                require(restoredSentinel != null, "Native corpus import lost another target root");
                validate(restored);
                target.removeRootNode(restoredSentinel);
                ((EditableSModel) target).save();
            }));
            System.out.println("SMOKE: checking accepted upstream MudDB grammar in native MPS");
            var corpusProblems = MetaBnfSmokeTest.constraintProblems(environment, project, target);
            require(corpusProblems.size() == 1
                            && corpusProblems.get(0).toString().contains(
                            "Property constraint violation for the property \"text\""),
                    "Unexpected native MudDB constraint outcome: " + corpusProblems);
            System.out.println("SMOKE: recorded the current MudDB native text-property constraint incompatibility");
        } finally {
            GrammarTools.cleanup(corpusWork);
        }
    }

    private static void verifyStratifiedExpressionImport(Path tools, Path repo, Path work) throws Exception {
        Path expressionWork = Files.createDirectory(work.resolve("stratified-expression"));
        try {
            Path source = repo.resolve("tests/antlr-bridge/ExpressionFamilies.g4");
            Path interchange = GrammarTools.export(tools, "ANTLR", source, "program", expressionWork, () -> false);
            GrammarModelImporter.Grammar grammar = GrammarModelImporter.read(interchange);
            var byName = grammar.rules().stream().collect(java.util.stream.Collectors.toMap(
                    GrammarModelImporter.Rule::name, rule -> rule));
            var sum = byName.get("sum");
            var product = byName.get("product");
            require(sum != null && product != null, "Stratified expression rules were discarded during import");
            require(sum.alternatives().size() == 1
                            && sum.alternatives().get(0).stream().anyMatch(symbol ->
                            symbol.kind().equals("sort") && symbol.value().equals("product"))
                            && sum.alternatives().get(0).stream().anyMatch(symbol ->
                            symbol.cardinality().equals("ZeroOrMore")),
                    "Additive precedence layer was flattened or its repetition was lost");
            require(product.alternatives().size() == 1
                            && product.alternatives().get(0).stream().anyMatch(symbol ->
                            symbol.kind().equals("sort") && symbol.value().equals("atom"))
                            && product.alternatives().get(0).stream().anyMatch(symbol ->
                            symbol.cardinality().equals("ZeroOrMore")),
                    "Multiplicative precedence layer was flattened or its repetition was lost");
            List<String> literals = grammar.rules().stream().flatMap(rule -> rule.alternatives().stream())
                    .flatMap(List::stream).filter(symbol -> symbol.kind().equals("literal"))
                    .map(GrammarModelImporter.Symbol::value).toList();
            require(literals.containsAll(List.of("+", "-", "*", "/")),
                    "Expression operators were lost while preserving the explicit grammar layers");
        } finally {
            GrammarTools.cleanup(expressionWork);
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
