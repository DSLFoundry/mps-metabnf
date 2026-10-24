import java.net.URLClassLoader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.util.Comparator;
import java.util.List;
import java.util.function.BooleanSupplier;
import java.util.zip.ZipFile;

public final class PackagedGrammarToolsTest {
    public static void main(String[] args) throws Exception {
        Path work = Files.createTempDirectory("metabnf-packaged-java-");
        try {
            Path plugin = work.resolve("plugin");
            String prefix = "plugins/metabnf-rascal-bridge/";
            try (ZipFile zip = new ZipFile(args[0])) {
                for (String required : List.of("tools/antlr/antlr-bridge.jar",
                        "tools/antlr/antlr4-4.13.2-complete.jar", "tools/rascal/rascal-0.43.0.jar",
                        "third-party/sources/rascal-0.43.0-sources.jar",
                        "third-party/licenses/Rascal-LICENSE", "third-party/licenses/EPL-1.0",
                        "third-party/licenses/EPL-2.0", "third-party/licenses/ICU-LICENSE",
                        "third-party/licenses/Zstd-LICENSE", "third-party/licenses/ASM-LICENSE",
                        "third-party/reference-artifacts/junit-4.13.2-sources.jar",
                        "third-party/reference-artifacts/org.eclipse.lsp4j.debug-1.0.0-sources.jar",
                        "third-party/source-headers/antlr-runtime-3.5.3-sources.jar.txt",
                        "docs/importing-grammars.md",
                        "third-party/README.md")) {
                    if (zip.getEntry(prefix + required) == null) throw new AssertionError("Missing packaged resource: " + required);
                }
                String inventory = new String(zip.getInputStream(zip.getEntry(prefix + "third-party/parser-components.tsv"))
                        .readAllBytes(), java.nio.charset.StandardCharsets.UTF_8);
                for (String line : inventory.lines().filter(value -> !value.isBlank() && !value.startsWith("#")).toList()) {
                    String[] coordinate = line.split("\\|")[0].split(":");
                    for (String classifier : coordinate[0].equals("org.rascalmpl") ? List.of("") : List.of("", "-sources")) {
                        String artifact = coordinate[1] + "-" + coordinate[2] + classifier + ".jar";
                        if (zip.getEntry(prefix + "third-party/reference-artifacts/" + artifact) == null) {
                            throw new AssertionError("Missing original component/source artifact: " + artifact);
                        }
                    }
                }
                String resources = new String(zip.getInputStream(zip.getEntry(prefix + "third-party/license-resources.tsv"))
                        .readAllBytes(), java.nio.charset.StandardCharsets.UTF_8);
                for (String line : resources.lines().filter(value -> !value.isBlank() && !value.startsWith("#")).toList()) {
                    String[] resource = line.split("\\|");
                    var entry = zip.getEntry(prefix + "third-party/licenses/" + resource[0]);
                    if (entry == null) throw new AssertionError("Missing upstream license: " + resource[0]);
                    String hash = java.util.HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256")
                            .digest(zip.getInputStream(entry).readAllBytes()));
                    if (!hash.equals(resource[1])) throw new AssertionError("Changed upstream license: " + resource[0]);
                }
                for (var entry : zip.stream().filter(item -> item.getName().startsWith(prefix + "tools/")
                        || item.getName().startsWith(prefix + "lib/")).toList()) {
                    Path target = plugin.resolve(entry.getName().substring(prefix.length())).normalize();
                    if (!target.startsWith(plugin)) throw new AssertionError("Unsafe archive path");
                    if (entry.isDirectory()) Files.createDirectories(target);
                    else {
                        Files.createDirectories(target.getParent());
                        try (var input = zip.getInputStream(entry)) { Files.copy(input, target); }
                    }
                }
            }
            Path fixtures = Path.of(args[1]);
            try (var loader = new URLClassLoader(new java.net.URL[]{
                    plugin.resolve("lib/metabnf-rascal-bridge.jar").toUri().toURL()}, ClassLoader.getPlatformClassLoader())) {
                var export = loader.loadClass("metabnf.rascal.GrammarTools").getMethod("export",
                        Path.class, String.class, Path.class, String.class, Path.class, BooleanSupplier.class);
                for (String tool : List.of("ANTLR", "Rascal")) {
                    Path invocation = Files.createDirectory(work.resolve(tool));
                    Path source = fixtures.resolve(tool.equals("ANTLR")
                            ? "antlr-bridge/Mini.g4" : "rascal-bridge/hello-grammar.rsc");
                    Path output = (Path) export.invoke(null, plugin, tool, source, "program", invocation,
                            (BooleanSupplier) () -> false);
                    String xml = Files.readString(output);
                    if (!xml.contains("<rascal-grammar") || !xml.contains("<rule")) {
                        throw new AssertionError("Packaged tool produced no grammar: " + tool);
                    }
                }
            }
            System.out.println("Packaged ANTLR and Rascal run using Java only; legal/source resources are present.");
        } finally {
            try (var paths = Files.walk(work)) {
                for (Path path : paths.sorted(Comparator.reverseOrder()).toList()) Files.delete(path);
            }
        }
    }
}
