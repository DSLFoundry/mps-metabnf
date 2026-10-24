package metabnf.smoketest;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.Presentation;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.project.MPSProject;
import metabnf.rascal.GrammarTools;

import java.nio.file.Files;
import java.util.Arrays;
import java.util.List;

final class NativeGrammarActionsTest {
    static void run(MPSProject project) {
        ActionManager manager = ActionManager.getInstance();
        var tools = manager.getAction("jetbrains.mps.ide.actions.Tools_ActionGroup");
        require(tools instanceof ActionGroup, "Native Tools menu is missing");
        var group = manager.getAction("metabnf.plugin.GeneratedLanguageImporter_ActionGroup");
        require(group instanceof ActionGroup, "MetaBNF action group was not registered");
        require(Arrays.asList(((ActionGroup) tools).getChildren(null)).contains(group),
                "MetaBNF action group is not attached to Tools");
        for (String name : List.of("ImportGrammar", "ImportAntlrGrammar", "ImportRascalGrammar", "ParserBridgeUtilities")) {
            String id = "metabnf.plugin." + name + "_Action";
            var action = manager.getAction(id);
            require(action != null, "Native action was not registered: " + id);
            require(Arrays.asList(((ActionGroup) group).getChildren(null)).contains(action),
                    "Native action is not in the MetaBNF Tools group: " + id);
            var event = AnActionEvent.createFromDataContext("metabnf-smoke", new Presentation(),
                    key -> MPSCommonDataKeys.MPS_PROJECT.is(key) ? project : null);
            action.update(event);
            require(event.getPresentation().isEnabledAndVisible(),
                    "Native import requires a model selection instead of just an open project: " + id);
        }
        java.nio.file.Path root;
        try {
            root = GrammarTools.resourceRoot();
        } catch (java.io.IOException failure) {
            throw new AssertionError("Cannot locate bundled parser resources from the native module", failure);
        }
        require(root.endsWith("parser-bridge"), "Parser resources are outside the language module: " + root);
        require(Files.isRegularFile(root.resolve("tools/antlr/antlr-bridge.jar"))
                        && Files.isRegularFile(root.resolve("tools/rascal/rascal-0.43.0.jar")),
                "Bundled grammar tools are not available through the native module");
        require(GrammarTools.class.getClassLoader().toString().contains("metabnf"),
                "Test bypassed the native MetaBNF module classloader");
        String guide;
        try {
            guide = Files.readString(root.resolve("docs/metabnf-base.md"));
        } catch (java.io.IOException failure) {
            throw new AssertionError("Core user guide is missing from the prepared module", failure);
        }
        for (var action : ((ActionGroup) group).getChildren(null)) {
            String caption = action.getTemplatePresentation().getText();
            if (caption != null && !caption.isBlank()) {
                require(guide.contains(caption), "Core user guide omits a MetaBNF Tools action: " + caption);
            }
        }
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
