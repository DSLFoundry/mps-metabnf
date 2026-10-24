package metabnf.smoketest;

import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.checkers.ConstraintsChecker;
import jetbrains.mps.checkers.ModelCheckerBuilder;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.generator.GenerationSettingsProvider;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.generator.TransientModelsProvider;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.internal.make.cfg.JavaCompileFacetInitializer;
import jetbrains.mps.make.MakeSession;
import jetbrains.mps.make.resources.IResource;
import jetbrains.mps.make.script.IResult;
import jetbrains.mps.make.script.IScriptController;
import jetbrains.mps.messages.IMessage;
import jetbrains.mps.messages.MessageCollector;
import jetbrains.mps.messages.MessageKind;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.resources.ModelsToResources;
import jetbrains.mps.tool.builder.make.BuildMakeService;
import jetbrains.mps.tool.environment.Environment;
import metabnf.plugin.ImportLanguage_Action;
import metabnf.plugin.ImportRemainingAspects_Action;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

public final class MetaBnfSmokeTest {
    private static final String GRAMMAR =
            "r:eef72bc7-c17d-410f-855b-33f3f37b989b(mbnf.sandbox.Demo)";
    private static final String RASCAL_IMPORT_FIXTURE =
            "r:3410db29-a096-503f-b5d6-1a2ce3c230b5(mbnf.sandbox.RascalImportFixture)";
    private static final String RASCAL_TEXT_IMPORT_FIXTURE =
            "r:697425fa-dfaa-5cd9-8971-6ed844586d5f(mbnf.sandbox.RascalTextImportFixture)";
    private static final String ANTLR_IMPORT_FIXTURE =
            "r:0ffc7c16-4eda-58e9-a320-b6f6af236236(mbnf.sandbox.AntlrImportFixture)";
    private static final String ANTLR_TEXT_IMPORT_FIXTURE =
            "r:0751bb48-fd71-5c1d-ae3a-b462d244a442(mbnf.sandbox.AntlrTextImportFixture)";
    private static final String[] ASPECTS = {
            "r:2338345e-d246-468d-922d-9f8162ca4e3b(Demo.structure)",
            "r:fd18fece-0619-420e-acfb-80ca89a441e4(Demo.editor)",
            "r:80d6dd30-c4c3-47a0-9c0b-e46d1827505b(Demo.textGen)"
    };
    private static final Set<String> STRUCTURE_NAMES = new HashSet<>(Arrays.asList(
            "Identifier", "BooleanValue", "NumberValue", "Bool", "Number",
            "Condition", "Expression", "Skip", "Assignment", "Selection",
            "Loop", "Statement", "Statements", "Program"));

    public static void run(Environment environment) throws Exception {
        File projectDirectory = new File(System.getProperty("metabnf.smoke.project"));
        Project project = environment.openProject(projectDirectory);
        try {
            onEdt(() -> NativeGrammarActionsTest.run((MPSProject) project));
            System.out.println("SMOKE: native ANTLR/Rascal actions registered in Tools without an installed IDE plugin");
            SModel grammar = project.getModelAccess().computeReadAction(() -> model(project, GRAMMAR));
            checkConstraints(environment, project, grammar);
            System.out.println("SMOKE: native MPS grammar constraints are clean");
            SModel usability = project.getModelAccess().computeReadAction(() ->
                    model(project, "r:50e696ba-6dbe-4374-8573-c5102cf3ceca(mbnf.sandbox.UsabilityFixture)"));
            checkConstraints(environment, project, usability);
            onEdt(() -> project.getModelAccess().executeCommand(() -> UsabilityAnnotationsTest.run(usability, grammar)));
            onEdt(() -> project.getModelAccess().executeCommand(() -> UsabilityEditorsTest.run(usability)));
            checkConstraints(environment, project, usability);
            System.out.println("SMOKE: native usability annotation CRUD, diagnostics, and persistence are clean");
            System.out.println("SMOKE: dedicated annotation editor fields, completions, and evidence editing are clean");
            onEdt(() -> project.getModelAccess().executeCommand(() -> ProfilesEnrichmentTest.run(usability, grammar)));
            checkConstraints(environment, project, usability);
            System.out.println("SMOKE: profile resolution, native inspectors, enrichment previews/idempotence and reimport preservation are clean");
            BundledGrammarImportTest.run(environment, project, usability);
            System.out.println("SMOKE: bundled ANTLR/Rascal Java tools import native grammars without Python");
            SModel rascalImport = project.getModelAccess().computeReadAction(() ->
                    model(project, RASCAL_IMPORT_FIXTURE));
            checkConstraints(environment, project, rascalImport);
            project.getModelAccess().computeReadAction(() -> {
                validateImportedGrammarFixture(rascalImport);
                return null;
            });
            System.out.println("SMOKE: imported Rascal grammar model satisfies MetaBNF constraints");
            SModel antlrImport = project.getModelAccess().computeReadAction(() ->
                    model(project, ANTLR_IMPORT_FIXTURE));
            checkConstraints(environment, project, antlrImport);
            project.getModelAccess().computeReadAction(() -> {
                validateImportedGrammarFixture(antlrImport);
                return null;
            });
            System.out.println("SMOKE: freshly imported ANTLR grammar satisfies MetaBNF constraints");
            List<SModel> aspects = project.getModelAccess().computeReadAction(() ->
                    Arrays.stream(ASPECTS).map(ref -> model(project, ref)).collect(Collectors.toList()));
            onEdt(() -> project.getModelAccess().executeCommand(() -> {
                require(grammar.getNode(PersistenceFacade.getInstance().createNodeId("6508006283257465258")) != null,
                        "The README Demo grammar root is missing");
                for (SModel aspect : aspects) {
                    List<SNode> roots = roots(aspect);
                    roots.forEach(aspect::removeRootNode);
                    ((EditableSModel) aspect).save();
                    require(roots(aspect).isEmpty(), "Failed to empty " + aspect.getName());
                }
                seedStaleTransientImports(aspects);
            }));
            project.getComponent(GenerationSettingsProvider.class).getGenerationSettings().setSaveTransientModels(true);

            System.out.println("SMOKE: rebuild the Demo grammar twice (README clean-build workaround)");
            List<IMessage> firstMessages = new ArrayList<>();
            boolean firstBuild = make(project, grammar, firstMessages);
            if (!firstBuild) {
                require(firstMessages.stream().anyMatch(message ->
                                message.getText().contains("package Demo.structure does not exist")),
                        "First build failed for an unexpected reason: " + firstMessages);
                System.out.println("SMOKE: observed the documented missing Demo.structure first-build failure");
            }
            List<IMessage> secondMessages = new ArrayList<>();
            require(make(project, grammar, secondMessages),
                    "Second grammar build failed: " + secondMessages);

            SModel transientModel = project.getModelAccess().computeReadAction(() ->
                    finalTransientModel(project));
            System.out.println("SMOKE: import from " + transientModel.getReference());
            DataContext dataContext = key -> {
                if (MPSCommonDataKeys.MPS_PROJECT.is(key)) {
                    return (MPSProject) project;
                }
                if (MPSCommonDataKeys.CONTEXT_MODEL.is(key)) {
                    return transientModel;
                }
                return null;
            };
            onEdt(() -> project.getModelAccess().runReadAction(() -> {
                AnActionEvent event = AnActionEvent.createFromDataContext("MetaBNF smoke test", null, dataContext);
                new ImportLanguage_Action().doExecute(event, Collections.emptyMap());
            }));
            awaitImports(environment, project, Collections.singletonList(aspects.get(0)));
            onEdt(() -> project.getModelAccess().runReadAction(() -> {
                AnActionEvent event = AnActionEvent.createFromDataContext("MetaBNF smoke test", null, dataContext);
                new ImportRemainingAspects_Action().doExecute(event, Collections.emptyMap());
            }));
            awaitImports(environment, project, aspects);
            onEdt(() -> project.getModelAccess().executeCommand(() -> {
                validateAspects(aspects);
                project.getComponent(TransientModelsProvider.class).removeAllTransients(true);
                validateAspects(aspects);
                for (SModel aspect : aspects) {
                    ((EditableSModel) aspect).save();
                }
                ((AbstractModule) aspects.get(0).getModule()).save();
            }));
            for (SModel aspect : aspects) {
                checkConstraints(environment, project, aspect);
            }
            System.out.println("SMOKE: imported all Demo aspects; references survive removal of transients");
        } finally {
            environment.closeProject(project);
        }
    }

    public static void validateGeneratedAst(Environment environment) throws Exception {
        File projectDirectory = new File(System.getProperty("metabnf.smoke.project"));
        Project project = environment.openProject(projectDirectory);
        try {
            SModel rascalTextImport = project.getModelAccess().computeReadAction(() ->
                    model(project, RASCAL_TEXT_IMPORT_FIXTURE));
            project.getModelAccess().computeReadAction(() -> {
                validateParsedTextFixture(rascalTextImport);
                return null;
            });
            System.out.println("SMOKE: parsed Rascal text uses the generated-language MPS registry");
            SModel antlrTextImport = project.getModelAccess().computeReadAction(() ->
                    model(project, ANTLR_TEXT_IMPORT_FIXTURE));
            project.getModelAccess().computeReadAction(() -> {
                validateParsedTextFixture(antlrTextImport);
                return null;
            });
            System.out.println("SMOKE: parsed ANTLR text uses the generated-language MPS registry");
        } finally {
            environment.closeProject(project);
        }
    }

    static void checkConstraints(Environment environment, Project project, SModel model) {
        List<IssueKindReportItem> problems = new ArrayList<>();
        new ModelCheckerBuilder(new ModelCheckerBuilder.ModelsExtractorImpl())
                .createChecker(Collections.singletonList(new ConstraintsChecker(environment.getPlatform())))
                .check(ModelCheckerBuilder.ItemsToCheck.forSingleModel(model), project.getRepository(),
                        problems::add, new EmptyProgressMonitor());
        require(problems.isEmpty(), model.getName() + " constraint errors: " + problems);
    }

    private static boolean make(Project project, SModel model, List<IMessage> messages) throws Exception {
        List<IResource> resources = project.getModelAccess().computeReadAction(() -> {
            List<IResource> result = new ArrayList<>();
            new ModelsToResources(Collections.singletonList(model)).resources().forEach(result::add);
            return result;
        });
        MessageCollector collector = new MessageCollector(messages);
        MakeSession session = new MakeSession(project, collector, true);
        IScriptController controller = new IScriptController.Stub2(session, new JavaCompileFacetInitializer());
        IResult result = new BuildMakeService().make(session, resources, null, controller,
                new EmptyProgressMonitor()).get(5, TimeUnit.MINUTES);
        messages.forEach(message -> System.out.println("SMOKE: " + message.getKind() + ": " + message.getText()));
        return result != null && result.isSucessful()
                && messages.stream().noneMatch(message -> message.getKind() == MessageKind.ERROR);
    }

    private static SModel finalTransientModel(Project project) {
        List<SModel> models = new ArrayList<>();
        for (TransientModelsModule module : project.getComponent(TransientModelsProvider.class).getModules()) {
            for (SModel model : module.getModels()) {
                if ("mbnf.sandbox.Demo".equals(model.getName().getLongName())
                        && model.getName().getStereotype().matches("\\d+_\\d+")) {
                    models.add(model);
                }
            }
        }
        SModel result = models.stream().max(Comparator.comparingInt(MetaBnfSmokeTest::generationStep))
                .orElseThrow(() -> new AssertionError("No saved Demo transient models"));
        require(roots(result).stream().anyMatch(node ->
                        "metabnf.structure.TargetInjector".equals(node.getConcept().getQualifiedName())),
                "The last Demo transient model has no TargetInjector: " + result.getName());
        require(roots(result).stream().noneMatch(node ->
                        "metabnf.structure.UsabilityAnnotations".equals(node.getConcept().getQualifiedName())),
                "Usability metadata leaked into the generated language");
        return result;
    }

    private static int generationStep(SModel model) {
        String[] parts = model.getName().getStereotype().split("_");
        require(parts.length == 2, "Unexpected transient step: " + model.getName());
        return Integer.parseInt(parts[0]) * 10000 + Integer.parseInt(parts[1]);
    }

    private static void awaitImports(Environment environment, Project project, List<SModel> aspects)
            throws InterruptedException {
        long deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(30);
        do {
            environment.flushAllEvents();
            if (project.getModelAccess().computeReadAction(() ->
                    aspects.stream().allMatch(model -> model.getRootNodes().iterator().hasNext()))) {
                return;
            }
            Thread.sleep(100);
        } while (System.nanoTime() < deadline);
        throw new AssertionError("Import actions did not populate " +
                aspects.stream().map(model -> model.getName().getValue()).collect(Collectors.joining(", ")));
    }

    private static void validateAspects(List<SModel> aspects) {
        require(roots(aspects.get(0)).size() == STRUCTURE_NAMES.size(),
                "Expected fourteen generated Demo structure declarations");
        Set<String> names = roots(aspects.get(0)).stream()
                .map(node -> node.getProperty("name")).collect(Collectors.toSet());
        require(STRUCTURE_NAMES.equals(names), "Unexpected generated Demo structure: " + names);
        require(roots(aspects.get(1)).size() == 8, "Expected eight generated Demo editors");
        require(roots(aspects.get(2)).size() == 8, "Expected eight generated Demo text generators");
        for (SModel aspect : aspects) {
            validatePersistentImports(aspect);
            for (SNode root : aspect.getRootNodes()) {
                validateReferences(root);
            }
        }
    }

    private static void seedStaleTransientImports(List<SModel> aspects) {
        SModuleReference staleModule = PersistenceFacade.getInstance().createModuleReference(
                "a4212748-e3e6-4df1-b6f9-954b2f14eabc(mbnf.sandbox@transientSmokeRegression)");
        for (SModel aspect : aspects) {
            new ModelImports(aspect).addModelImport(PersistenceFacade.getInstance().createModelReference(
                    staleModule.getModuleId() +
                    "/r:367cc5bc-426f-4cdc-b214-940ed570a8a4(mbnf.sandbox@transientSmokeRegression/mbnf.sandbox.Demo@1_0)"));
        }
        AbstractModule module = (AbstractModule) aspects.get(0).getModule();
        module.addDependency(staleModule, false);
        module.getModuleDescriptor().getDependencyVersions().put(staleModule, 0);
        boolean rejected = false;
        try {
            validatePersistentImports(aspects.get(0));
        } catch (AssertionError expected) {
            require(expected.getMessage().startsWith("Transient model import:"),
                    "Unexpected regression-probe failure: " + expected);
            rejected = true;
        }
        require(rejected, "The smoke test did not reject an injected stale transient import");
        System.out.println("SMOKE: stale transient import detection verified; importer must remove injected entries");
    }

    private static void validatePersistentImports(SModel model) {
        for (org.jetbrains.mps.openapi.model.SModelReference reference : new ModelImports(model).getImportedModels()) {
            SModuleReference owner = reference.getModuleReference();
            require(owner == null || !owner.getModuleName().contains("@transient"),
                    "Transient model import: " + reference + " in " + model.getName());
            SModel imported = reference.resolve(model.getRepository());
            require(imported != null, "Unresolved model import: " + reference + " in " + model.getName());
            require(!(imported.getModule() instanceof TransientModelsModule),
                    "Transient model import: " + reference + " in " + model.getName());
        }
        AbstractModule module = (AbstractModule) model.getModule();
        module.getDeclaredDependencies().forEach(dependency ->
                require(!dependency.getTargetModule().getModuleName().contains("@transient"),
                        "Transient module dependency: " + dependency.getTargetModule()));
        module.getModuleDescriptor().getDependencyVersions().keySet().forEach(reference ->
                require(!reference.getModuleName().contains("@transient"),
                        "Transient module dependency version: " + reference));
    }

    private static void validateReferences(SNode node) {
        for (SReference reference : node.getReferences()) {
            SNode target = reference.getTargetNode();
            require(target != null, "Unresolved " + reference.getLink().getName() + " in " + node.getReference());
            require(target.getModel() != null,
                    "Detached " + reference.getLink().getName() + " target in " + node.getReference());
            require(!(target.getModel().getModule() instanceof TransientModelsModule),
                    "Generated aspect still references a transient: " + reference.getTargetNodeReference());
        }
        node.getChildren().forEach(MetaBnfSmokeTest::validateReferences);
    }

    private static void validateImportedGrammarFixture(SModel model) {
        List<SNode> modelRoots = roots(model);
        require(modelRoots.size() == 1, "Expected one imported Rascal grammar root");
        SNode root = modelRoots.get(0);
        require("metabnf.structure.grammar".equals(root.getConcept().getQualifiedName()),
                "Imported Rascal model root is not a MetaBNF grammar");
        Set<String> concepts = new HashSet<>();
        collectConcepts(root, concepts);
        require(concepts.contains("metabnf.structure.TerminalRule"),
                "Imported Rascal grammar has no lexical rule");
        require(concepts.contains("metabnf.structure.NonterminalRule"),
                "Imported Rascal grammar has no sort rule");
        require(concepts.contains("metabnf.structure.TerminalReference"),
                "Imported Rascal grammar has no lexical reference");
        require(concepts.contains("metabnf.structure.ChoiceRule"),
                "Imported Rascal grammar lost its production alternatives");
        require(concepts.contains("metabnf.structure.NonterminalReference"),
                "Imported Rascal grammar has no sort reference");
        require(concepts.contains("metabnf.structure.Keyword"),
                "Imported Rascal grammar has no literal keyword");
        require(concepts.contains("jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart"),
                "Imported Rascal lexical expression lost its character range");
        validateReferences(root);
    }

    private static void collectConcepts(SNode node, Set<String> concepts) {
        concepts.add(node.getConcept().getQualifiedName());
        node.getChildren().forEach(child -> collectConcepts(child, concepts));
    }

    private static void validateParsedTextFixture(SModel model) {
        List<SNode> modelRoots = roots(model);
        require(modelRoots.size() == 1, "Expected one parsed Rascal text root");
        SNode root = modelRoots.get(0);
        require("Demo.structure.Program".equals(root.getConcept().getQualifiedName()),
                "Parsed Rascal text has the wrong generated-language root concept");
        SNode assignment = findConcept(root, "Demo.structure.Assignment");
        require(assignment != null, "Parsed Rascal text has no Assignment node");
        SNode number = findConcept(assignment, "Demo.structure.Number");
        require(number != null, "Parsed Rascal text has no Number node");
        validateReferences(root);
    }

    private static SNode findConcept(SNode node, String conceptName) {
        if (conceptName.equals(node.getConcept().getQualifiedName())) {
            return node;
        }
        for (SNode child : node.getChildren()) {
            SNode match = findConcept(child, conceptName);
            if (match != null) {
                return match;
            }
        }
        return null;
    }

    private static SModel model(Project project, String reference) {
        SModel model = PersistenceFacade.getInstance().createModelReference(reference).resolve(project.getRepository());
        require(model != null, "Missing model: " + reference);
        return model;
    }

    private static List<SNode> roots(SModel model) {
        List<SNode> roots = new ArrayList<>();
        model.getRootNodes().forEach(roots::add);
        return roots;
    }

    private static void onEdt(Runnable action) {
        ApplicationManager.getApplication().invokeAndWait(action);
    }

    private static void require(boolean condition, String message) {
        if (!condition) {
            throw new AssertionError(message);
        }
    }
}
