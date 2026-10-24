package metabnf.smoketest;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.EditorCell_Label;
import metabnf.plugin.UsabilityAnnotations;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.List;

final class UsabilityEditorsTest {
    static void run(SModel model) {
        SNode set = null;
        for (SNode root : model.getRootNodes()) {
            if ("UsabilityAnnotations".equals(root.getConcept().getName())) set = root;
        }
        require(set != null, "Missing usability fixture");
        EditorComponent editor = new EditorComponent(model.getRepository()) {};
        try {
            editor.editNode(set);
            List<EditorCell> cells = new ArrayList<>();
            collect(editor.getRootCell(), cells);
            field(cells, set, "usability for grammar:", true);
            require(cells.stream().anyMatch(cell -> cell.getSNode() == editor.getEditedNode()
                    && "annotations".equals(cell.getRole()) && cell instanceof EditorCell_Collection),
                    "Annotation list is not a native child-list cell");
            int count = 0;
            for (SNode annotation : set.getChildren()) {
                String kind = annotation.getConcept().getName();
                if ("FlagAnnotation".equals(kind)) field(cells, annotation, "flag:", true);
                else if ("ListAnnotation".equals(kind)) field(cells, annotation, "list:", true);
                else if ("OptionalGroupAnnotation".equals(kind)) {
                    field(cells, annotation, "optional group in rule:", true);
                    field(cells, annotation, "from:", true);
                    field(cells, annotation, "through:", true);
                    EditorCell_Property empty = field(cells, annotation, "distinguish absent / present-empty:", false);
                    empty.changeText("false");
                    require(!"true".equals(get(annotation, "distinguishEmpty")), "Empty-group field did not edit the model");
                    empty.changeText("true");
                } else throw new AssertionError("Unexpected fixture annotation " + kind);
                EditorCell_Property origin = field(cells, annotation, "origin:", false);
                EditorCell_Property suppressed = field(cells, annotation, "suppressed:", false);
                EditorCell_Property evidence = field(cells, annotation, "evidence:", false);
                require(origin.getSubstituteInfo() != null, "Origin has no native completion");
                for (String value : List.of("authored", "inferred", "suggested")) {
                    require(origin.getSubstituteInfo().getMatchingActions(value, true).size() == 1,
                            "Origin completion is missing " + value);
                }
                String originalOrigin = origin.getText();
                origin.getSubstituteInfo().getMatchingActions("inferred", true).get(0)
                        .substitute(editor.getEditorContext(), "inferred");
                SProperty originProperty = annotation.getConcept().getProperties().stream()
                        .filter(property -> property.getName().equals("origin")).findFirst().orElseThrow(AssertionError::new);
                Object selected = originProperty.getType().fromString(annotation.getProperty(originProperty));
                require(selected instanceof SEnumerationLiteral && "Inferred".equals(((SEnumerationLiteral) selected).getName()),
                        "Origin completion did not update the model");
                origin.getSubstituteInfo().getMatchingActions(originalOrigin, true).get(0)
                        .substitute(editor.getEditorContext(), originalOrigin);
                String originalText = evidence.getText();
                evidence.changeText("Edited through the annotation editor");
                require(get(annotation, "evidence").equals("Edited through the annotation editor"),
                        "Evidence field did not edit the model");
                evidence.changeText("");
                require(get(annotation, "evidence") == null || get(annotation, "evidence").isEmpty(),
                        "Evidence cannot be cleared");
                evidence.changeText(originalText);
                require(suppressed.getSubstituteInfo() != null, "Suppression has no native boolean completion");
                String originalSuppressed = suppressed.getText();
                suppressed.changeText("true");
                require("true".equals(get(annotation, "suppressed")), "Suppression field did not edit the model");
                suppressed.changeText(originalSuppressed);
                count++;
            }
            require(count == 3, "Did not exercise all annotation editors");
            require(((List<?>) UsabilityAnnotations.inspect(set).get("diagnostics")).isEmpty(),
                    "Editing/restoring fields left invalid annotation metadata");
            ((EditableSModel) model).save();
        } finally {
            editor.dispose();
        }
    }

    private static EditorCell_Property field(List<EditorCell> cells, SNode node, String label, boolean reference) {
        for (int i = 0; i < cells.size() - 1; i++) {
            EditorCell cell = cells.get(i);
            if (cell.getSNode() == node && cell instanceof EditorCell_Label
                    && ((EditorCell_Label) cell).getText().equals(label)) {
                EditorCell next = cells.get(i + 1);
                require(next instanceof EditorCell_Property, "Missing editable field after " + label);
                EditorCell_Property property = (EditorCell_Property) next;
                require(property.isEditable() && property.isReferenceCell() == reference,
                        "Wrong editability/reference semantics after " + label);
                if (reference) require(property.getSubstituteInfo() != null, "Missing target completion after " + label);
                return property;
            }
        }
        throw new AssertionError("Dedicated editor is missing field " + label);
    }

    private static String get(SNode node, String name) {
        return node.getProperty(node.getConcept().getProperties().stream()
                .filter(property -> property.getName().equals(name)).findFirst().orElseThrow(AssertionError::new));
    }

    private static void collect(EditorCell cell, List<EditorCell> cells) {
        cells.add(cell);
        if (cell instanceof EditorCell_Collection) {
            for (EditorCell child : (EditorCell_Collection) cell) collect(child, cells);
        }
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
