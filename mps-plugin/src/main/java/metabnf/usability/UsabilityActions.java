package metabnf.usability;

import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import static metabnf.usability.ModelNodes.*;

public final class UsabilityActions {
    private record Grammar(String label, SNodeReference node, SModelReference model) {
        @Override public String toString() { return label; }
    }

    private UsabilityActions() {}

    public static void open(MPSProject project, String operation) {
        try {
            Grammar grammar = choose(project, "Select grammar", null);
            if (grammar == null) return;
            switch (operation) {
                case "enrich" -> enrich(project, grammar.node);
                case "profile" -> profile(project, grammar);
                case "transfer" -> transfer(project, grammar);
                default -> throw new IllegalArgumentException("Unknown usability action: " + operation);
            }
        } catch (RuntimeException failure) {
            JOptionPane.showMessageDialog(null, failure.getMessage()
                    + "\nIf creation/saving failed, inspect the metadata before retrying.",
                    "MetaBNF usability", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void enrich(MPSProject project, SNodeReference reference) {
        GrammarEnrichment.Preview preview = project.getModelAccess().computeReadAction(() -> {
            SNode grammar = reference.resolve(project.getRepository());
            attachedGrammar(grammar);
            return GrammarEnrichment.analyze(grammar, GrammarEnrichment.findSet(grammar.getModel(), grammar));
        });
        if (!confirm("Preview grammar enrichment", preview.describe())) return;
        project.getModelAccess().executeCommand(() -> {
            SNode grammar = reference.resolve(project.getRepository());
            if (grammar == null) throw new IllegalStateException("Grammar removed after preview");
            var model = grammar.getModel();
            GrammarEnrichment.apply(preview, model);
            ((EditableSModel) model).save();
        });
    }

    private static void profile(MPSProject project, Grammar selected) {
        SNodeReference existing = project.getModelAccess().computeReadAction(() -> {
            SNode grammar = selected.node.resolve(project.getRepository());
            for (SNode root : grammar.getModel().getRootNodes()) {
                if (is(root, "GenerationProfile") && target(root, "grammar") == grammar) return root.getReference();
            }
            return null;
        });
        if (existing != null) {
            String report = project.getModelAccess().computeReadAction(() ->
                    GenerationProfiles.inspector(existing.resolve(project.getRepository())));
            show("Generation profile - edit the native root to change projection selections", report);
            return;
        }
        String id = (String) JOptionPane.showInputDialog(null, "Profile (capability selection only; no backend generated):",
                "Configure generation profile", JOptionPane.QUESTION_MESSAGE, null,
                new String[]{"vanilla", "grammar-cells", "plaintextgen", "plaintextflow"}, "vanilla");
        if (id == null || !confirm("Profile requirements", GenerationProfiles.descriptor(id).toString()
                + "\nCreate this native profile root? Optional backends remain blocked until compatible dependencies are verified; generation never silently falls back.")) return;
        project.getModelAccess().executeCommand(() -> {
            SNode grammar = selected.node.resolve(project.getRepository());
            GenerationProfiles.createProfile(grammar.getModel(), grammar, id);
            ((EditableSModel) grammar.getModel()).save();
        });
    }

    private static void transfer(MPSProject project, Grammar source) {
        Grammar destination = choose(project, "Select separately imported replacement grammar", source.node);
        if (destination == null) return;
        var preview = project.getModelAccess().computeReadAction(() -> {
            SNode oldGrammar = source.node.resolve(project.getRepository());
            SNode newGrammar = destination.node.resolve(project.getRepository());
            SNode set = GrammarEnrichment.findSet(oldGrammar.getModel(), oldGrammar);
            return GrammarEnrichment.previewReimport(set, newGrammar, GrammarEnrichment.findSet(newGrammar.getModel(), newGrammar));
        });
        if (!confirm("Preview metadata transfer", "Structurally identical locations: " + preview.correspondence().size()
                + "\nDiagnostics: " + preview.diagnostics()
                + "\nNo AST, mapping or generation-profile selections are copied. Any unresolved correspondence blocks transfer.")) return;
        project.getModelAccess().executeCommand(() -> {
            var model = destination.model.resolve(project.getRepository());
            if (model == null) throw new IllegalStateException("Destination removed after preview");
            GrammarEnrichment.applyReimport(preview, model);
            ((EditableSModel) model).save();
        });
    }

    private static Grammar choose(MPSProject project, String title, SNodeReference exclude) {
        List<Grammar> grammars = project.getModelAccess().computeReadAction(() -> {
            List<Grammar> result = new ArrayList<>();
            for (Solution solution : project.getProjectModules(Solution.class)) for (var model : solution.getModels()) {
                if (!(model instanceof EditableSModel) || model.isReadOnly() || !model.getName().getStereotype().isEmpty()) continue;
                for (SNode root : model.getRootNodes()) {
                    if (is(root, "grammar") && !root.getReference().equals(exclude)) result.add(new Grammar(
                            model.getName() + " / " + get(root, "name"), root.getReference(), model.getReference()));
                }
            }
            result.sort(Comparator.comparing(Grammar::label));
            return result;
        });
        if (grammars.isEmpty()) throw new IllegalStateException("No editable MetaBNF grammars found; create or import a grammar first.");
        return (Grammar) JOptionPane.showInputDialog(null, title, "MetaBNF usability", JOptionPane.QUESTION_MESSAGE,
                null, grammars.toArray(), grammars.get(0));
    }

    private static JScrollPane report(String report) {
        JTextArea area = new JTextArea(report, 25, 105);
        area.setEditable(false);
        area.setLineWrap(true);
        area.setWrapStyleWord(true);
        area.setCaretPosition(0);
        return new JScrollPane(area);
    }

    private static boolean confirm(String title, String text) {
        return JOptionPane.showConfirmDialog(null, report(text), title, JOptionPane.OK_CANCEL_OPTION,
                JOptionPane.QUESTION_MESSAGE) == JOptionPane.OK_OPTION;
    }

    private static void show(String title, String text) {
        JOptionPane.showMessageDialog(null, report(text), title, JOptionPane.INFORMATION_MESSAGE);
    }
}
