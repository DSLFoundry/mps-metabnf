package metabnf.rascal;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.Component;
import java.awt.KeyboardFocusManager;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CompletableFuture;
import java.util.prefs.Preferences;

public final class RascalBridgeAction {
  private static final String[] OPERATIONS = {
      "Import Rascal grammar into MetaBNF",
      "Export MetaBNF grammar as Rascal",
      "Import source model into MPS",
      "Export MPS model as source",
      "Import ANTLR grammar into MetaBNF",
      "Import ANTLR source model into MPS"
  };
  private static final Preferences PREFERENCES =
      Preferences.userNodeForPackage(RascalBridgeAction.class);

  public static void open(jetbrains.mps.project.MPSProject mpsProject) {
    String operation = (String) JOptionPane.showInputDialog(
        null,
        "Choose an import or export operation.",
        "Rascal / ANTLR / MetaBNF",
        JOptionPane.PLAIN_MESSAGE,
        null,
        OPERATIONS,
        OPERATIONS[0]);
    if (operation == null) {
      return;
    }
    if (operation.equals("Import Rascal grammar into MetaBNF")
        || operation.equals("Import ANTLR grammar into MetaBNF")) {
      GrammarImportAction.open(mpsProject, operation.contains("ANTLR") ? "ANTLR" : "Rascal");
      return;
    }
    try {
      Path pluginRoot = GrammarTools.resourceRoot();
      Path bridge = pluginRoot.resolve("rascal-bridge");
      if (!Files.isDirectory(bridge.resolve("src"))) {
        throw new IOException("The installed Rascal bridge resources are incomplete.");
      }
      switch (operation) {
        case "Export MetaBNF grammar as Rascal" -> exportGrammar(bridge);
        case "Import source model into MPS" -> importSourceModel(mpsProject, bridge);
        case "Export MPS model as source" -> exportSourceModel(bridge);
        case "Import ANTLR source model into MPS" -> importAntlr(mpsProject, pluginRoot, true);
        default -> throw new IllegalStateException("Unknown parser bridge operation.");
      }
    } catch (IOException error) {
      showMessage(error.getMessage(), true);
    }
  }

  private static void importAntlr(
      jetbrains.mps.project.MPSProject mpsProject, Path pluginRoot, boolean textImport) throws IOException {
    Path bridge = pluginRoot.resolve("antlr-bridge");
    if (!Files.isRegularFile(bridge.resolve("src/AntlrBridge.java"))) {
      throw new IOException("The installed ANTLR bridge resources are incomplete.");
    }
    Path grammar = chooseOpenFile("Select a combined ANTLR 4 grammar", "ANTLR grammar", "g4");
    if (grammar == null) return;
    String start = JOptionPane.showInputDialog(null, "Parser start rule:", "program");
    if (start == null) return;
    if (!start.matches("[A-Za-z_][A-Za-z0-9_]*")) {
      showMessage("Enter a parser start rule name.", true);
      return;
    }
    if (textImport) {
      Path source = chooseOpenFile("Select the source text", "Source text", "txt");
      if (source == null) return;
      Path mapping = chooseOpenFile("Select the AST mapping configuration", "Mapping", "json");
      if (mapping == null) return;
      Target target = chooseTargetModel(mpsProject);
      if (target == null) return;
      String previous = PREFERENCES.get("antlrJar", "");
      Path jar = chooseFile("Select the ANTLR 4 complete JAR", "JAR",
          previous.isBlank() ? null : Paths.get(previous), "jar");
      if (jar == null) return;
      PREFERENCES.put("antlrJar", jar.toString());
      runNativeSourceImport("Importing ANTLR source model", mpsProject, target, bridge, mapping,
          (workingBridge, parseTree) -> runPython(workingBridge, "bridge.py",
              "parse", "--antlr-jar", jar.toString(), "--grammar", grammar.toString(),
              "--start", start, "--input-text", source.toString(), "--output", parseTree.toString()));
      return;
    }
    Path template = pluginRoot.resolve("templates/Demo.mps");
    Path output = chooseSaveFile("Save the imported grammar model", "MPS model", "mps");
    if (output == null) return;
    String previous = PREFERENCES.get("antlrJar", "");
    Path jar = chooseFile("Select the ANTLR 4 complete JAR", "JAR",
        previous.isBlank() ? null : Paths.get(previous), "jar");
    if (jar == null) return;
    PREFERENCES.put("antlrJar", jar.toString());
    runWorkflow("Importing ANTLR grammar", output, bridge, workingBridge ->
        runPython(workingBridge, "bridge.py",
            "grammar", "--antlr-jar", jar.toString(), "--grammar", grammar.toString(),
            "--start", start, "--output", output.toString(), "--model-name", fileStem(output),
            "--template", template.toString()));
  }

  private static void exportGrammar(Path bridge) throws IOException {
    Path model = chooseOpenFile("Select a MetaBNF grammar model", "MPS model", "mps");
    if (model == null) return;
    Path output = chooseSaveFile("Save the Rascal grammar source", "Rascal source", "rsc");
    if (output == null) return;
    String defaultModule = fileStem(model);
    String moduleName = JOptionPane.showInputDialog(
        null, "Qualified Rascal module name:", defaultModule);
    if (moduleName == null) return;
    runWorkflow("Exporting MetaBNF grammar", output, bridge, workingBridge ->
        runPython(workingBridge, "mps_to_rascal.py",
            "--input", model.toString(),
            "--output", output.toString(),
            "--module-name", moduleName));
  }

  private static void importSourceModel(
      jetbrains.mps.project.MPSProject mpsProject, Path bridge) throws IOException {
    Path grammar = chooseOpenFile(
        "Select a Rascal or MetaBNF grammar", "Grammar sources", "rsc", "mps");
    if (grammar == null) return;
    Path source = chooseOpenFile("Select the source text", "Source text", "txt");
    if (source == null) return;
    Path mapping = chooseOpenFile("Select the AST mapping configuration", "Mapping", "json");
    if (mapping == null) return;
    Target target = chooseTargetModel(mpsProject);
    if (target == null) return;
    Path rascalJar = chooseRascalJar();
    if (rascalJar == null) return;
    runNativeSourceImport("Importing source model", mpsProject, target, bridge, mapping,
        (workingBridge, parseTree) -> runPython(workingBridge, "import_text_to_mps.py",
            "--rascal-jar", rascalJar.toString(), "--grammar", grammar.toString(),
            "--input-text", source.toString(), "--parse-tree-output", parseTree.toString()));
  }

  private record Target(String label, org.jetbrains.mps.openapi.model.SModelReference reference) {
    @Override public String toString() { return label; }
  }

  private static Target chooseTargetModel(jetbrains.mps.project.MPSProject mpsProject) {
    List<Target> targets = mpsProject.getModelAccess().computeReadAction(() -> {
      List<Target> result = new ArrayList<>();
      for (jetbrains.mps.project.Solution solution :
          mpsProject.getProjectModules(jetbrains.mps.project.Solution.class)) {
        for (org.jetbrains.mps.openapi.model.SModel model : solution.getModels()) {
          if (model instanceof org.jetbrains.mps.openapi.model.EditableSModel && !model.isReadOnly()
              && model.getName().getStereotype().isEmpty()) {
            result.add(new Target(model.getName().toString(), model.getReference()));
          }
        }
      }
      result.sort(java.util.Comparator.comparing(Target::label));
      return result;
    });
    if (targets.isEmpty()) {
      showMessage("Create an editable model in a project solution first (New > Model).", true);
      return null;
    }
    return (Target) JOptionPane.showInputDialog(null,
        "Target model (the selected model must use the mapped MPS language):",
        "Import source model into MPS", JOptionPane.QUESTION_MESSAGE,
        null, targets.toArray(), targets.get(0));
  }

  @FunctionalInterface
  private interface ParseWorkflow {
    void run(Path workingBridge, Path parseTree) throws Exception;
  }

  private static void runNativeSourceImport(
      String label, jetbrains.mps.project.MPSProject mpsProject, Target target,
      Path bridge, Path mapping, ParseWorkflow workflow) throws IOException {
    Path temporaryRoot = Files.createTempDirectory("metabnf-source-import-");
    Path workingBridge = temporaryRoot.resolve(bridge.getFileName());
    try {
      copyBridge(bridge, workingBridge);
      if (bridge.getFileName().toString().equals("antlr-bridge")) {
        copyBridge(bridge.getParent().resolve("rascal-bridge"), temporaryRoot.resolve("rascal-bridge"));
      }
    } catch (IOException error) {
      deleteTree(temporaryRoot);
      throw error;
    }
    CompletableFuture.runAsync(() -> {
      try {
        Path parseTree = temporaryRoot.resolve("parse-result.xml");
        workflow.run(workingBridge, parseTree);
        SourceModelImporter.Result[] imported = new SourceModelImporter.Result[1];
        ApplicationManager.getApplication().invokeAndWait(() -> {
          if (mpsProject.getProject().isDisposed()) return;
          mpsProject.getModelAccess().executeCommand(() -> {
            org.jetbrains.mps.openapi.model.SModel model = target.reference().resolve(mpsProject.getRepository());
            if (model == null) throw new IllegalStateException("Target model was removed during import");
            try {
              imported[0] = SourceModelImporter.importInto(model, parseTree, mapping);
            } catch (Exception failure) {
              throw new IllegalStateException(failure.getMessage(), failure);
            }
          });
        });
        if (imported[0] != null) {
          showMessage("Imported " + imported[0].roots().size() + " root node(s) and "
              + imported[0].references() + " reference(s) into " + target.label()
              + ". References were resolved with the target language's native MPS scope.", false);
        }
      } catch (Exception error) {
        showMessage(label + " failed:\n" + error.getMessage()
            + "\nNo AST is retained when a mapped reference cannot be resolved.", true);
      } finally {
        deleteTree(temporaryRoot);
      }
    });
  }

  private static void exportSourceModel(Path bridge) throws IOException {
    Path grammar = chooseOpenFile(
        "Select a Rascal or MetaBNF grammar", "Grammar sources", "rsc", "mps", "xml");
    if (grammar == null) return;
    Path model = chooseOpenFile("Select the MPS model to export", "MPS model", "mps");
    if (model == null) return;
    Path mapping = chooseOpenFile("Select the AST mapping configuration", "Mapping", "json");
    if (mapping == null) return;
    Path output = chooseSaveFile("Save the source text", "Source text", "txt");
    if (output == null) return;
    Path rascalJar = grammar.getFileName().toString().toLowerCase(Locale.ROOT).endsWith(".rsc")
        ? chooseRascalJar() : null;
    if (grammar.toString().toLowerCase(Locale.ROOT).endsWith(".rsc") && rascalJar == null) return;
    runWorkflow("Exporting MPS model as source", output, bridge, workingBridge -> {
      List<String> arguments = new ArrayList<>(List.of(
          "--grammar", grammar.toString(),
          "--model", model.toString(),
          "--mapping", mapping.toString(),
          "--output", output.toString()));
      if (rascalJar != null) {
        arguments.add("--rascal-jar");
        arguments.add(rascalJar.toString());
      }
      runPython(workingBridge, "export_mps_to_text.py", arguments.toArray(String[]::new));
    });
  }

  private static Path chooseRascalJar() {
    String previous = PREFERENCES.get("rascalJar", "");
    Path initial = previous.isBlank() ? null : Paths.get(previous);
    Path selected = chooseFile("Select the Rascal runtime distribution JAR", "JAR", initial, "jar");
    if (selected != null) PREFERENCES.put("rascalJar", selected.toString());
    return selected;
  }

  private static Path chooseOpenFile(String title, String filter, String... extensions) {
    return chooseFile(title, filter, null, extensions);
  }

  private static Path chooseSaveFile(String title, String filter, String extension) {
    Path selected = chooseFile(title, filter, null, extension);
    if (selected == null) return null;
    String filename = selected.getFileName().toString();
    return filename.toLowerCase(Locale.ROOT).endsWith("." + extension)
        ? selected : selected.resolveSibling(filename + "." + extension);
  }

  private static Path chooseFile(String title, String filter, Path initial, String... extensions) {
    Path directory = initial == null ? null : Files.isDirectory(initial) ? initial : initial.getParent();
    JFileChooser chooser = new JFileChooser(directory == null ? null : directory.toFile());
    if (initial != null && Files.isRegularFile(initial)) {
      chooser.setSelectedFile(initial.toFile());
    }
    chooser.setDialogTitle(title);
    chooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
    chooser.setAcceptAllFileFilterUsed(false);
    chooser.setFileFilter(new FileNameExtensionFilter(filter, extensions));
    int result = title.startsWith("Save")
        ? chooser.showSaveDialog(null)
        : chooser.showOpenDialog(null);
    return result == JFileChooser.APPROVE_OPTION ? chooser.getSelectedFile().toPath() : null;
  }

  private static void runWorkflow(
      String label,
      Path output,
      Path bridge,
      Workflow workflow) throws IOException {
    Path temporaryRoot = Files.createTempDirectory("metabnf-rascal-");
    Path workingBridge = temporaryRoot.resolve(bridge.getFileName());
    try {
      copyBridge(bridge, workingBridge);
      if (bridge.getFileName().toString().equals("antlr-bridge")) {
        copyBridge(bridge.getParent().resolve("rascal-bridge"), temporaryRoot.resolve("rascal-bridge"));
      }
    } catch (IOException error) {
      deleteTree(temporaryRoot);
      throw error;
    }
    CompletableFuture.runAsync(() -> {
      try {
        workflow.run(workingBridge);
        refreshOutput(output);
        showMessage("Completed. MPS/source output: " + output, false);
      } catch (Exception error) {
        if (error instanceof InterruptedException) {
          Thread.currentThread().interrupt();
        }
        showMessage(label + " failed:\n" + error.getMessage(), true);
      } finally {
        deleteTree(temporaryRoot);
      }
    });
  }

  private static void runPython(Path bridge, String script, String... arguments)
      throws IOException, InterruptedException {
    List<String> command = new ArrayList<>();
    String defaultPython = System.getProperty("os.name", "").toLowerCase(Locale.ROOT)
        .startsWith("windows") ? "python" : "python3";
    command.add(System.getProperty("metabnf.python", defaultPython));
    command.add(bridge.resolve(script).toString());
    command.addAll(List.of(arguments));
    ProcessBuilder builder = new ProcessBuilder(command)
        .directory(bridge.toFile())
        .redirectErrorStream(true);
    builder.environment().put("JAVA_HOME", System.getProperty("java.home"));
    Process process = builder.start();
    byte[] output = process.getInputStream().readAllBytes();
    int exitCode = process.waitFor();
    if (exitCode != 0) {
      String details = new String(output, StandardCharsets.UTF_8);
      throw new IOException("Bridge command failed (exit " + exitCode + "):\n" + details);
    }
  }

  private static void copyBridge(Path source, Path target) throws IOException {
    try (var paths = Files.walk(source)) {
      for (Path path : paths.toList()) {
        Path relative = source.relativize(path);
        if (relative.toString().isEmpty()) continue;
        if (Files.isDirectory(path)) {
          Files.createDirectories(target.resolve(relative));
        } else if (path.toString().endsWith(".py") || path.toString().endsWith(".rsc")
            || path.toString().endsWith(".java")) {
          Path destination = target.resolve(relative);
          Files.createDirectories(destination.getParent());
          Files.copy(path, destination);
        }
      }
    }
    Files.createDirectories(target.resolve("test"));
  }

  private static void deleteTree(Path root) {
    try (var paths = Files.walk(root)) {
      for (Path path : paths.sorted(Comparator.reverseOrder()).toList()) {
        Files.deleteIfExists(path);
      }
    } catch (IOException error) {
      showMessage("Could not remove temporary bridge files at " + root + ":\n"
          + error.getMessage(), true);
    }
  }

  private static void refreshOutput(Path output) {
    VirtualFile file = LocalFileSystem.getInstance().refreshAndFindFileByPath(
        output.toAbsolutePath().toString());
    if (file != null) {
      file.refresh(false, true);
    }
  }

  private static String fileStem(Path path) {
    String filename = path.getFileName().toString();
    int extension = filename.lastIndexOf('.');
    return extension < 0 ? filename : filename.substring(0, extension);
  }

  private static void showMessage(String message, boolean error) {
    SwingUtilities.invokeLater(() -> {
      Component parent = KeyboardFocusManager.getCurrentKeyboardFocusManager().getActiveWindow();
      JOptionPane.showMessageDialog(
          parent, message, "Rascal / ANTLR / MetaBNF",
          error ? JOptionPane.ERROR_MESSAGE : JOptionPane.INFORMATION_MESSAGE);
    });
  }

  @FunctionalInterface
  private interface Workflow {
    void run(Path workingBridge) throws Exception;
  }
}
