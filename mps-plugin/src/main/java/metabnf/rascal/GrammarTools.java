package metabnf.rascal;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.BooleanSupplier;

/** Runs bundled tools outside the IDE classloader; no Python or runtime downloads. */
public final class GrammarTools {
    public static Path export(Path plugin, String tool, Path source, String start,
                              Path work, BooleanSupplier cancelled) throws Exception {
        Path output = work.resolve("grammar.xml");
        Path log = work.resolve("tool.log");
        List<String> command = new ArrayList<>();
        command.add(Path.of(System.getProperty("java.home"), "bin",
                System.getProperty("os.name").startsWith("Windows") ? "java.exe" : "java").toString());
        command.add("-Xmx1g");
        command.add("-Dfile.encoding=UTF-8");
        if (tool.equals("ANTLR")) {
            command.addAll(List.of("-cp", plugin.resolve("tools/antlr/antlr-bridge.jar") + File.pathSeparator
                    + plugin.resolve("tools/antlr/antlr4-4.13.2-complete.jar"),
                    "AntlrBridge", "grammar", source.toAbsolutePath().toString(), start, output.toString()));
        } else if (tool.equals("Rascal")) {
            Path resources = plugin.resolve("tools/rascal");
            copy(resources.resolve("src"), work.resolve("src"));
            copy(resources.resolve("META-INF"), work.resolve("META-INF"));
            Files.createDirectories(work.resolve("test"));
            command.addAll(List.of("-jar", resources.resolve("rascal-0.43.0.jar").toString(),
                    "metabnf::RascalFileImporter", source.toUri().toString(), output.toUri().toString()));
        } else throw new IllegalArgumentException("Unknown grammar tool: " + tool);
        Process process = new ProcessBuilder(command).directory(work.toFile())
                .redirectErrorStream(true).redirectOutput(log.toFile()).start();
        try {
            long deadline = System.nanoTime() + TimeUnit.MINUTES.toNanos(5);
            while (!process.waitFor(200, TimeUnit.MILLISECONDS)) {
                if (cancelled.getAsBoolean()) throw new InterruptedException("Grammar import cancelled");
                if (System.nanoTime() > deadline) throw new IOException(tool + " exceeded the five-minute import limit");
            }
            if (process.exitValue() != 0 || !Files.isRegularFile(output)) {
                throw new IOException(tool + " could not import this grammar (exit " + process.exitValue()
                        + "). Unsupported constructs are not silently lowered.\n" + Files.readString(log, StandardCharsets.UTF_8));
            }
            return output;
        } finally {
            if (process.isAlive()) {
                process.destroy();
                if (!process.waitFor(2, TimeUnit.SECONDS)) {
                    process.destroyForcibly();
                    if (!process.waitFor(5, TimeUnit.SECONDS)) {
                        throw new IOException(tool + " process did not stop; temporary files may still be in use");
                    }
                }
            }
        }
    }

    private static void copy(Path source, Path target) throws IOException {
        try (var paths = Files.walk(source)) {
            for (Path path : paths.toList()) {
                Path destination = target.resolve(source.relativize(path));
                if (Files.isDirectory(path)) Files.createDirectories(destination);
                else Files.copy(path, destination);
            }
        }
    }

    public static void cleanup(Path work) throws IOException {
        try (var paths = Files.walk(work)) {
            for (Path path : paths.sorted(Comparator.reverseOrder()).toList()) Files.delete(path);
        }
    }
}
