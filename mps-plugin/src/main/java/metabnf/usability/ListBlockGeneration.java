package metabnf.usability;

import jetbrains.mps.smodel.CopyUtil;
import jetbrains.mps.generator.template.TemplateQueryContext;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.textgen.trace.TracingUtil;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

/** Opt-in list policies applied to native generated editor and TextGen declarations. */
public final class ListBlockGeneration {
    private static final String EDITOR = "jetbrains.mps.lang.editor.structure.";
    private static final String TEXT = "jetbrains.mps.lang.textGen.structure.";
    private static final String BASE = "jetbrains.mps.baseLanguage.structure.";
    private ListBlockGeneration() {}

    public static void editor(SNode input, SNode output, SModel originalModel, TemplateQueryContext context) {
        if (!inVanillaPlan(input)) return;
        SNode rule = original(input, originalModel);
        factories(rule, output, context);
        List<SNode> paired = policies(rule).stream().filter(a -> ModelNodes.target(a, "openingBoundary") != null).toList();
        if (paired.isEmpty()) return;
        if (paired.size() != 1) throw invalid(rule, "One paired block list per rule is supported");
        SNode annotation = paired.get(0);
        String role = ModelNodes.get(ModelNodes.target(annotation, "target"), "name");
        SNode collection = child(output, "cellModel");
        if (collection == null || !collection.getConcept().getName().equals("CellModel_Collection")) {
            throw invalid(rule, "Paired blocks require a generated collection editor");
        }
        SNode opening = constant(output, ModelNodes.get(ModelNodes.target(annotation, "openingBoundary"), "name"));
        SNode closing = constant(output, ModelNodes.get(ModelNodes.target(annotation, "closingBoundary"), "name"));
        matching(opening, "list_" + role);
        matching(closing, "list_" + role);
        id(opening, "opening_" + role);
        id(closing, "closing_" + role);
        id(collection, "block_" + role);
        ModelNodes.put(collection, "usesFolding", "true");
        SNode folded = make(output.getModel(), EDITOR + "CellModel_Constant");
        String summary = ModelNodes.get(annotation, "foldSummary");
        if (summary.isEmpty()) summary = ModelNodes.get(ModelNodes.target(annotation, "openingBoundary"), "name")
                + " ... " + ModelNodes.get(ModelNodes.target(annotation, "closingBoundary"), "name");
        ModelNodes.put(folded, "text", summary);
        ModelNodes.add(collection, "foldedCellModel", folded);
        id(folded, "folded_" + role);
    }

    private static void factories(SNode rule, SNode output, TemplateQueryContext context) {
        List<SNode> terms = ModelNodes.children(rule, "terms").stream().filter(n ->
                ModelNodes.is(n, "NonterminalReference") &&
                        List.of("ZeroOrMore", "AtleastOne").contains(ModelNodes.enumeration(n, "card"))).toList();
        List<SNode> cells = ModelNodes.tree(output).stream()
                .filter(n -> n.getConcept().getName().equals("CellModel_RefNodeList")).toList();
        for (SNode policy : policies(rule)) {
            if (ModelNodes.get(policy, "triviaPrefix").isEmpty() && !ModelNodes.bool(policy, "clauseSiblings")
                    && ModelNodes.target(policy, "openingBoundary") == null) continue;
            int index = terms.indexOf(ModelNodes.target(policy, "target"));
            if (index < 0 || terms.size() != cells.size()) throw invalid(policy, "Cannot match the generated list factory");
            SNode factory = child(cells.get(index), "nodeFactory");
            if (factory == null) continue;
            String targetName = ModelNodes.get(ModelNodes.target(terms.get(index), "rule"), "name");
            SNode declaration = null;
            for (SModel model : List.of(context.getOutputModel(), context.getInputModel())) {
                for (SNode root : model.getRootNodes()) {
                    if (root.getConcept().getName().equals("ConceptDeclaration") && ModelNodes.get(root, "name").equals(targetName)) {
                        declaration = root;
                        break;
                    }
                }
                if (declaration != null) break;
            }
            if (declaration == null) {
                factory.delete();
                continue;
            }
            for (SNode type : ModelNodes.tree(factory)) {
                if (type.getConcept().getName().equals("SNodeType")) ModelNodes.point(type, "concept", declaration);
            }
        }
    }

    public static void textGen(SNode input, SNode output, SModel originalModel, TemplateQueryContext context) {
        if (!inVanillaPlan(input)) return;
        SNode rule = original(input, originalModel);
        List<SNode> lists = new ArrayList<>();
        for (SNode term : ModelNodes.children(rule, "terms")) {
            if (ModelNodes.is(term, "NonterminalReference") &&
                    List.of("ZeroOrMore", "AtleastOne").contains(ModelNodes.enumeration(term, "card"))) lists.add(term);
        }
        List<SNode> parts = ModelNodes.tree(output).stream()
                .filter(n -> n.getConcept().getName().equals("CollectionAppendPart")).toList();
        for (SNode annotation : policies(rule)) {
            String prefix = ModelNodes.get(annotation, "triviaPrefix");
            if (prefix.isEmpty()) continue;
            SNode target = ModelNodes.target(annotation, "target");
            int index = lists.indexOf(target);
            if (index < 0 || parts.size() != lists.size()) throw invalid(annotation, "Cannot match the generated list export");
            SNode part = parts.get(index);
            SNode list = child(part, "list");
            SNode owner = child(list, "operand");
            if (owner == null) throw invalid(annotation, "Expected a generated node-list export");
            SModel operations = null;
            for (var module : originalModel.getModule().getRepository().getModules()) {
                for (SModel model : module.getModels()) {
                    if (model.getName().getLongName().equals("metabnf.textGen")) { operations = model; break; }
                }
                if (operations != null) break;
            }
            if (operations == null) throw new IllegalStateException("Missing native trivia TextGen operations");
            SNode operation = null;
            for (SNode root : operations.getRootNodes()) {
                if (root.getConcept().getName().equals("LanguageTextGenDeclaration")) {
                    for (SNode candidate : ModelNodes.children(root, "operation")) {
                        if (ModelNodes.get(candidate, "name").equals("emitList")) operation = candidate;
                    }
                }
            }
            if (operation == null) throw new IllegalStateException("Missing emitList TextGen operation");
            SNode call = make(output.getModel(), TEXT + "OperationCall");
            ModelNodes.point(call, "function", operation);
            ModelNodes.add(call, "parameter", CopyUtil.copy(owner));
            ModelNodes.add(call, "parameter", string(output.getModel(), ModelNodes.get(target, "name")));
            ModelNodes.add(call, "parameter", string(output.getModel(), ModelNodes.get(part, "separator")));
            ModelNodes.add(call, "parameter", string(output.getModel(), prefix));
            part.getParent().insertChildBefore(part.getContainmentLink(), call, part);
            part.delete();
            new ModelImports(context.getOutputModel()).addModelImport(operations.getReference());
        }
    }

    public static void actionMap(SNode input, SNode output, SModel originalModel) {
        SNode source = original(input, originalModel);
        StringBuilder blocked = new StringBuilder();
        for (SNode node : ModelNodes.tree(grammar(source, originalModel))) {
            if (!ModelNodes.is(node, "NonterminalRule")) continue;
            for (SNode annotation : policies(node)) {
                if (ModelNodes.bool(annotation, "clauseSiblings")) {
                    blocked.append('|').append(ModelNodes.get(node, "name")).append('.')
                            .append(ModelNodes.get(ModelNodes.target(annotation, "target"), "name")).append('|');
                }
            }
        }
        for (SNode node : ModelNodes.tree(output)) {
            if (node.getConcept().getName().equals("StringLiteral") && ModelNodes.get(node, "value").equals("__CLAUSE_BOUNDARIES__")) {
                ModelNodes.put(node, "value", blocked.toString());
            }
        }
    }

    public static boolean hasTrivia(SNode input, SModel originalModel) {
        SNode source = original(input, originalModel);
        for (SNode node : ModelNodes.tree(grammar(source, originalModel))) {
            if (ModelNodes.is(node, "NonterminalRule")) {
                for (SNode policy : policies(node)) if (!ModelNodes.get(policy, "triviaPrefix").isEmpty()) return true;
            }
        }
        return false;
    }

    public static boolean clauseList(SNode input, SModel originalModel) {
        if (!inVanillaPlan(input)) return false;
        SNode source = original(input, originalModel);
        if (!ModelNodes.is(source, "NonterminalReference")) return false;
        return policies(source.getParent()).stream().anyMatch(a -> ModelNodes.target(a, "target") == source
                && ModelNodes.bool(a, "clauseSiblings"));
    }

    public static boolean hasClause(SNode input, SModel originalModel) {
        SNode source = original(input, originalModel);
        for (SNode node : ModelNodes.tree(grammar(source, originalModel))) {
            if (ModelNodes.is(node, "NonterminalRule") && policies(node).stream()
                    .anyMatch(a -> ModelNodes.bool(a, "clauseSiblings"))) return true;
        }
        return false;
    }

    public static SNode firstClauseList(SNode input, SModel originalModel) {
        SNode source = original(input, originalModel);
        for (SNode node : ModelNodes.tree(grammar(source, originalModel))) {
            if (!ModelNodes.is(node, "NonterminalRule")) continue;
            for (SNode annotation : policies(node)) {
                if (ModelNodes.bool(annotation, "clauseSiblings")) {
                    SNode target = ModelNodes.target(annotation, "target");
                    SNode currentGrammar = ModelNodes.grammar(input);
                    if (currentGrammar == null && ModelNodes.is(input, "GenerationModel")) {
                        currentGrammar = child(input, "grammar");
                    }
                    for (SNode candidate : ModelNodes.tree(currentGrammar)) {
                        if (original(candidate, originalModel) == target) return candidate;
                    }
                    throw invalid(input, "Cannot retain the clause-list generation trace");
                }
            }
        }
        throw invalid(source, "No approved clause-sibling list");
    }

    public static void clauseActionMap(SNode input, SNode output, SModel originalModel) {
        ModelNodes.put(output, "name", "ClauseSiblingBoundary_ActionMap");
    }

    public static SNode elementActionMap(SNode input, TemplateQueryContext context, SModel originalModel) {
        return generatedMap(input, context, "optional_repeated_list_action_map");
    }

    public static SNode boundaryActionMap(SNode input, TemplateQueryContext context, SModel originalModel) {
        return generatedMap(input, context, "clause_sibling_boundary_action_map");
    }

    private static SNode generatedMap(SNode input, TemplateQueryContext context, String label) {
        SNode root = input.getContainingRoot();
        SNode grammar = ModelNodes.grammar(input);
        if (grammar == null && ModelNodes.is(root, "GenerationModel")) grammar = child(root, "grammar");
        SNode start = grammar == null ? null : ModelNodes.target(grammar, "start");
        LinkedHashSet<SNode> matches = new LinkedHashSet<>();
        // Root MAP_SRC uses the grammar start; roots can still be detached in ordinary make.
        for (SNode key : new SNode[]{root, start}) {
            if (key == null) continue;
            List<SNode> found = context.getAllOutputNodesByInputNodeAndMappingLabel(key, label);
            if (found != null) matches.addAll(found);
        }
        if (matches.size() == 1) return matches.iterator().next();
        if (matches.isEmpty() && !inVanillaPlan(input)) return null;
        throw invalid(input, (matches.isEmpty() ? "Missing" : "Ambiguous") + " generated list action map: " + label);
    }

    private static boolean inVanillaPlan(SNode input) {
        return input != null && ModelNodes.is(input.getContainingRoot(), "GenerationModel");
    }

    private static SNode grammar(SNode source, SModel originalModel) {
        SNode grammar = ModelNodes.grammar(source);
        if (grammar == null && ModelNodes.is(source, "GenerationModel")) {
            List<SNode> nested = ModelNodes.children(source, "grammar");
            if (!nested.isEmpty()) grammar = nested.get(0);
        }
        if (grammar != null && grammar.getModel() != null) {
            SNode traced = TracingUtil.getInputNode(grammar, originalModel.getRepository());
            if (ModelNodes.is(traced, "grammar")) grammar = traced;
        }
        if (grammar == null) throw invalid(source, "A list policy needs its source grammar");
        return grammar;
    }

    public static List<SNode> policies(SNode rule) {
        SNode grammar = ModelNodes.grammar(rule);
        if (grammar == null) return List.of();
        List<SNode> result = new ArrayList<>();
        for (SNode root : grammar.getModel().getRootNodes()) {
            if (!ModelNodes.is(root, "UsabilityAnnotations") || ModelNodes.target(root, "grammar") != grammar) continue;
            for (SNode annotation : ModelNodes.children(root, "annotations")) {
                if (!ModelNodes.is(annotation, "ListAnnotation") || ModelNodes.bool(annotation, "suppressed")
                        || ModelNodes.enumeration(annotation, "origin").equals("Suggested")) continue;
                SNode target = ModelNodes.target(annotation, "target");
                if (target == null || target.getParent() != rule) continue;
                if (!List.of("ZeroOrMore", "AtleastOne").contains(ModelNodes.enumeration(target, "card"))) {
                    throw invalid(annotation, "List policies require repeated native storage");
                }
                String prefix = ModelNodes.get(annotation, "triviaPrefix");
                if (prefix.indexOf('\n') >= 0 || prefix.indexOf('\r') >= 0 || (!prefix.isEmpty() && prefix.isBlank())) {
                    throw invalid(annotation, "Use a single-line nonblank target comment prefix");
                }
                SNode opening = ModelNodes.target(annotation, "openingBoundary");
                SNode closing = ModelNodes.target(annotation, "closingBoundary");
                if ((opening == null) != (closing == null)) throw invalid(annotation, "Select both block boundaries");
                if (opening != null) {
                    List<SNode> terms = ModelNodes.children(rule, "terms");
                    if (opening.getParent() != rule || closing.getParent() != rule || terms.indexOf(opening) >= terms.indexOf(target)
                            || terms.indexOf(target) >= terms.indexOf(closing)) {
                        throw invalid(annotation, "Boundaries must enclose their list in the same rule");
                    }
                } else if (!ModelNodes.get(annotation, "foldSummary").isEmpty()) {
                    throw invalid(annotation, "A folding summary needs explicit paired boundaries");
                }
                result.add(annotation);
            }
        }
        return result;
    }

    private static SNode original(SNode input, SModel model) {
        SNode result = TracingUtil.getInputNode(input, model.getRepository());
        return result == null ? input : result;
    }

    private static SNode constant(SNode root, String text) {
        List<SNode> cells = ModelNodes.tree(root).stream().filter(n -> n.getConcept().getName().equals("CellModel_Constant")
                && ModelNodes.get(n, "text").equals(text)).toList();
        if (cells.size() != 1) throw invalid(root, "Paired boundary text must identify one generated constant cell");
        return cells.get(0);
    }

    private static void matching(SNode cell, String label) {
        SNode style = make(cell.getModel(), EDITOR + "MatchingLabelStyleClassItem");
        ModelNodes.put(style, "labelName", label);
        ModelNodes.add(cell, "styleItem", style);
    }

    private static void id(SNode cell, String name) {
        SNode old = child(cell, "id");
        if (old != null) old.delete();
        SNode id = make(cell.getModel(), EDITOR + "EditorCellId");
        ModelNodes.put(id, "name", name);
        ModelNodes.add(cell, "id", id);
    }

    private static SNode string(SModel model, String value) {
        SNode result = make(model, BASE + "StringLiteral");
        ModelNodes.put(result, "value", value);
        return result;
    }

    private static SNode make(SModel model, String concept) {
        var found = ConceptRegistry.getInstance().getConceptByName(concept);
        if (!(found instanceof SConcept concrete) || !concrete.isValid()) throw new IllegalStateException("Missing " + concept);
        return model == null ? new jetbrains.mps.smodel.SNode(concrete) : model.createNode(concrete);
    }

    private static SNode child(SNode node, String role) {
        if (node == null) return null;
        List<SNode> children = ModelNodes.children(node, role);
        return children.isEmpty() ? null : children.get(0);
    }

    private static UsabilityException invalid(SNode node, String message) {
        return ModelNodes.failure("MBNF_LIST_POLICY", node, message, "Review the authored list/block annotation");
    }
}

