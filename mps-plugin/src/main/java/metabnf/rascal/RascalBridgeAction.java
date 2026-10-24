package metabnf.rascal;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.Component;
import java.awt.KeyboardFocusManager;
import java.io.IOException;
import java.net.URISyntaxException;
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

public final class RascalBridgeAction extends AnAction {
  private static final String[] OPERATIONS = {
      "Import Rascal grammar into MetaBNF",
      "Export MetaBNF grammar as Rascal",
      "Import source model into MPS",
      "Export MPS model as source"
  };
  private static final Preferences PREFERENCES =
      Preferences.userNodeForPackage(RascalBridgeAction.class);

  @Override
  public void update(AnActionEvent event) {
    event.getPresentation().setEnabledAndVisible(event.getProject() != null);
  }

  @Override
  public void actionPerformed(AnActionEvent event) {
    Project project = event.getProject();
    if (project == null) {
      showMessage("Open an MPS project before using the Rascal bridge.", true);
      return;
    }
    String operation = (String) JOptionPane.showInputDialog(
        null,
        "Choose an import or export operation.",
        "Rascal / MetaBNF",
        JOptionPane.PLAIN_MESSAGE,
        null,
        OPERATIONS,
        OPERATIONS[0]);
    if (operation == null) {
      return;
    }
    try {
      Path pluginRoot = pluginRoot();
      Path bridge = pluginRoot.resolve("rascal-bridge");
      if (!Files.isDirectory(bridge.resolve("src"))) {
        throw new IOException("The installed Rascal bridge resources are incomplete.");
      }
      switch (operation) {
        case "Import Rascal grammar into MetaBNF" -> importGrammar(pluginRoot, bridge);
        case "Export MetaBNF grammar as Rascal" -> exportGrammar(bridge);
        case "Import source model into MPS" -> importSourceModel(bridge);
        case "Export MPS model as source" -> exportSourceModel(bridge);
        default -> throw new IllegalStateException("Unknown Rascal bridge operation.");
      }
    } catch (IOException | URISyntaxException error) {
      showMessage(error.getMessage(), true);
    }
  }

  private static void importGrammar(Path pluginRoot, Path bridge) throws IOException {
    Path source = chooseOpenFile("Select a Rascal grammar", "Rascal source", "rsc");
    if (source == null) return;
    Path output = chooseSaveFile("Save the MetaBNF model under an MPS model root", "MPS model", "mps");
    if (output == null) return;
    Path rascalJar = chooseRascalJar();
    if (rascalJar == null) return;
    Path template = pluginRoot.resolve("templates/Demo.mps");
    Path regexTemplate = pluginRoot.resolve("templates/python.mps");
    String modelName = fileStem(output);
    runWorkflow("Importing Rascal grammar", output, bridge, workingBridge -> {
      Path interchange = Files.createTempFile("metabnf-grammar-", ".xml");
      try {
        runPython(workingBridge, "import_rascal_file.py",
            "--rascal-jar", rascalJar.toString(),
            "--input", source.toString(),
            "--output", interchange.toString());
        runPython(workingBridge, "import_to_mps.py",
            "--input", interchange.toString(),
            "--output", output.toString(),
            "--model-name", modelName,
            "--template", template.toString(),
            "--regex-template", regexTemplate.toString());
      } finally {
        Files.deleteIfExists(interchange);
      }
    });
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

  private static void importSourceModel(Path bridge) throws IOException {
    Path grammar = chooseOpenFile(
        "Select a Rascal or MetaBNF grammar", "Grammar sources", "rsc", "mps");
    if (grammar == null) return;
    Path source = chooseOpenFile("Select the source text", "Source text", "txt");
    if (source == null) return;
    Path template = chooseOpenFile("Select the target MPS model template", "MPS model", "mps");
    if (template == null) return;
    Path mapping = chooseOpenFile("Select the AST mapping configuration", "Mapping", "json");
    if (mapping == null) return;
    Path output = chooseSaveFile(
        "Save the imported model under the target language's MPS model root", "MPS model", "mps");
    if (output == null) return;
    Path rascalJar = chooseRascalJar();
    if (rascalJar == null) return;
    runWorkflow("Importing source model", output, bridge, workingBridge ->
        runPython(workingBridge, "import_text_to_mps.py",
            "--rascal-jar", rascalJar.toString(),
            "--grammar", grammar.toString(),
            "--input-text", source.toString(),
            "--template", template.toString(),
            "--mapping", mapping.toString(),
            "--output", output.toString(),
            "--model-name", fileStem(output)));
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
    Path workingBridge = temporaryRoot.resolve("rascal-bridge");
    try {
      copyBridge(bridge, workingBridge);
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
    builder.environment().putIfAbsent("JAVA_HOME", System.getProperty("java.home"));
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
        } else if (path.toString().endsWith(".py") || path.toString().endsWith(".rsc")) {
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

  private static Path pluginRoot() throws URISyntaxException {
    Path jar = Paths.get(
        RascalBridgeAction.class.getProtectionDomain().getCodeSource().getLocation().toURI());
    return jar.getParent().getParent();
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
          parent, message, "Rascal / MetaBNF",
          error ? JOptionPane.ERROR_MESSAGE : JOptionPane.INFORMATION_MESSAGE);
    });
  }

  @FunctionalInterface
  private interface Workflow {
    void run(Path workingBridge) throws Exception;
  }
}
