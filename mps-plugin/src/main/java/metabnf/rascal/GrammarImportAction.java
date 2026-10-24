package metabnf.rascal;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.Task;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNodeReference;
import metabnf.usability.UsabilityActions;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class GrammarImportAction {
    private record Target(String label, SModelReference reference) {
        @Override public String toString() { return label; }
    }

    public static void open(MPSProject project, String preferredTool) {
        var ideaProject = project.getProject();
        String tool = preferredTool != null ? preferredTool : (String) JOptionPane.showInputDialog(null,
                "Grammar format:", "Import grammar into MetaBNF", JOptionPane.QUESTION_MESSAGE,
                null, new String[]{"ANTLR", "Rascal"}, "ANTLR");
        if (tool == null) return;
        JFileChooser chooser = new JFileChooser();
        chooser.setDialogTitle("Select " + tool + " grammar");
        chooser.setFileFilter(new FileNameExtensionFilter(tool + " grammar", tool.equals("ANTLR") ? "g4" : "rsc"));
        if (chooser.showOpenDialog(null) != JFileChooser.APPROVE_OPTION) return;
        Path source = chooser.getSelectedFile().toPath().toAbsolutePath();
        String start = tool.equals("ANTLR")
                ? JOptionPane.showInputDialog(null, "Parser start rule:", "program") : "";
        if (start == null) return;
        if (tool.equals("ANTLR") && !start.matches("[A-Za-z_][A-Za-z0-9_]*")) {
            error("Enter a parser start rule name, not an expression.");
            return;
        }
        List<Target> targets = project.getModelAccess().computeReadAction(() -> {
            List<Target> result = new ArrayList<>();
            for (Solution solution : project.getProjectModules(Solution.class)) {
                for (SModel model : solution.getModels()) {
                    if (model instanceof EditableSModel && !model.isReadOnly()
                            && model.getName().getStereotype().isEmpty()) {
                        boolean hasGrammar = false;
                        for (var root : model.getRootNodes()) {
                            if (root.getConcept().getQualifiedName().equals("metabnf.structure.grammar")) hasGrammar = true;
                        }
                        if (!hasGrammar) result.add(new Target(model.getName().toString(), model.getReference()));
                    }
                }
            }
            result.sort(Comparator.comparing(Target::label));
            return result;
        });
        if (targets.isEmpty()) {
            error("Create an editable model in a project solution first (New > Model). Existing grammars are never overwritten.");
            return;
        }
        Target target = (Target) JOptionPane.showInputDialog(null,
                "Target model (create one with New > Model first; existing contents are preserved):",
                "Import grammar into MetaBNF", JOptionPane.QUESTION_MESSAGE, null, targets.toArray(), targets.get(0));
        if (target == null) return;
        String language = JOptionPane.showInputDialog(null, "Generated language name (simple identifier):",
                source.getFileName().toString().replaceFirst("\\.[^.]+$", ""));
        if (language == null) return;
        if (!language.matches("[A-Za-z_][A-Za-z0-9_]*")) {
            error("Enter a simple language identifier, for example Mini.");
            return;
        }
        new Task.Backgroundable(ideaProject, "Importing " + tool + " grammar", true) {
            @Override public void run(ProgressIndicator indicator) {
                Path work = null;
                try {
                    Path plugin = GrammarTools.resourceRoot();
                    work = Files.createTempDirectory("metabnf-grammar-");
                    indicator.setIndeterminate(true);
                    indicator.setText("Reading " + source.getFileName() + " with bundled " + tool);
                    Path interchange = GrammarTools.export(plugin, tool, source, start, work, indicator::isCanceled);
                    GrammarModelImporter.Grammar grammar = GrammarModelImporter.read(interchange);
                    indicator.checkCanceled();
                    ApplicationManager.getApplication().invokeAndWait(() -> {
                        if (ideaProject.isDisposed() || indicator.isCanceled()) return;
                        SNodeReference[] imported = new SNodeReference[1];
                        project.getModelAccess().executeCommand(() -> {
                            SModel model = target.reference().resolve(project.getRepository());
                            if (model == null) throw new IllegalStateException("Target model was removed during import");
                            imported[0] = GrammarModelImporter.importInto(model, grammar, language, tool).getReference();
                        });
                        JOptionPane.showMessageDialog(null, "Imported into " + target.label()
                                + ". Open the model in Logical View.\nNo language was generated; review the grammar before generation.");
                        try {
                            UsabilityActions.enrich(project, imported[0]);
                        } catch (RuntimeException failure) {
                            JOptionPane.showMessageDialog(null, "The grammar was imported, but enrichment failed: "
                                            + failure.getMessage() + "\nThe imported grammar is retained. Inspect metadata before retrying.",
                                    "MetaBNF enrichment", JOptionPane.ERROR_MESSAGE);
                        }
                    });
                } catch (com.intellij.openapi.progress.ProcessCanceledException cancelled) {
                    throw cancelled;
                } catch (InterruptedException cancelled) {
                    Thread.currentThread().interrupt();
                } catch (Exception failure) {
                    error("Grammar import failed: " + failure.getMessage()
                            + "\nParsing/validation failures leave the target unchanged. If native creation or saving failed,"
                            + " inspect the target for partial changes before retrying.");
                } finally {
                    if (work != null) {
                        try { GrammarTools.cleanup(work); }
                        catch (java.io.IOException failure) { error("Could not remove temporary import files: " + failure.getMessage()); }
                    }
                }
            }
        }.queue();
    }

    private static void error(String message) {
        ApplicationManager.getApplication().invokeLater(() ->
                JOptionPane.showMessageDialog(null, message, "MetaBNF grammar import", JOptionPane.ERROR_MESSAGE));
    }
}
