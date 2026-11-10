package metabnf.usability;

import jetbrains.mps.smodel.ModelImports;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.ArrayList;
import java.util.List;

/** Ordered, non-semantic trivia for explicitly selected generated containment lists. */
public final class TargetTrivia {
    private TargetTrivia() {}

    public static SNode attach(SNode owner, String role) {
        requireList(owner, role);
        SNode existing = store(owner, role);
        if (existing != null) return existing;
        SNode result = create(owner, "TargetListTrivia");
        ModelNodes.put(result, "listRole", role);
        ModelNodes.add(owner, "smodelAttribute", result);
        new ModelImports(owner.getModel()).addUsedLanguage(result.getConcept().getLanguage());
        return result;
    }

    public static SNode addComment(SNode owner, String role, SNode anchor, String text) {
        return add(owner, role, anchor, text, false);
    }

    public static SNode addBlankLine(SNode owner, String role, SNode anchor) {
        return add(owner, role, anchor, "", true);
    }

    private static SNode add(SNode owner, String role, SNode anchor, String text, boolean blank) {
        requireList(owner, role);
        requireAnchor(owner, role, anchor);
        requireText(text, blank);
        SNode result = create(owner, "TargetTriviaChunk");
        ModelNodes.put(result, "text", text);
        ModelNodes.put(result, "blankLine", Boolean.toString(blank));
        ModelNodes.point(result, "anchor", anchor);
        ModelNodes.add(attach(owner, role), "chunks", result);
        return result;
    }

    public static void validate(SNode owner, String role) {
        requireList(owner, role);
        for (SNode chunk : chunks(owner, role)) {
            SReference reference = chunk.getReferences().iterator().hasNext()
                    ? chunk.getReferences().iterator().next() : null;
            SNode anchor = ModelNodes.target(chunk, "anchor");
            if (reference != null && anchor == null) {
                throw new IllegalStateException("Unresolved trivia anchor; reanchor explicitly before export");
            }
            requireAnchor(owner, role, anchor);
            requireText(ModelNodes.get(chunk, "text"), ModelNodes.bool(chunk, "blankLine"));
        }
    }

    public static void reanchorBeforeRemoval(SNode element) {
        SNode owner = element.getParent();
        if (owner == null || element.getContainmentLink() == null) return;
        String role = element.getContainmentLink().getName();
        if (store(owner, role) == null) return;
        validate(owner, role);
        List<SNode> siblings = ModelNodes.children(owner, role);
        int index = siblings.indexOf(element);
        SNode next = index + 1 < siblings.size() ? siblings.get(index + 1) : null;
        for (SNode chunk : chunks(owner, role)) {
            if (ModelNodes.target(chunk, "anchor") == element) ModelNodes.point(chunk, "anchor", next);
        }
    }

    public static final class Part {
        private final int kind;
        private final SNode node;
        private final String text;
        private Part(int kind, SNode node, String text) { this.kind = kind; this.node = node; this.text = text; }
        public int getKind() { return kind; }
        public SNode getNode() { return node; }
        public String getText() { return text; }
    }

    public static List<Part> parts(SNode owner, String role, String separator, String prefix) {
        if (prefix == null || prefix.isBlank() || prefix.indexOf('\n') >= 0 || prefix.indexOf('\r') >= 0) {
            throw new IllegalArgumentException("Trivia needs a single-line target comment prefix");
        }
        validate(owner, role);
        List<Part> result = new ArrayList<>();
        List<SNode> elements = ModelNodes.children(owner, role);
        for (int i = 0; i < elements.size(); i++) {
            SNode element = elements.get(i);
            List<SNode> leading = anchored(owner, role, element);
            if (!leading.isEmpty() && i > 0) {
                result.add(new Part(2, null, null));
                result.add(new Part(3, null, null));
            }
            appendChunks(result, leading, prefix, true);
            result.add(new Part(0, element, null));
            if (i + 1 < elements.size()) result.add(new Part(1, null, separator));
        }
        List<SNode> trailing = anchored(owner, role, null);
        if (!trailing.isEmpty() && !elements.isEmpty()) {
            result.add(new Part(2, null, null));
            result.add(new Part(3, null, null));
        }
        appendChunks(result, trailing, prefix, false);
        return result;
    }

    private static void appendChunks(List<Part> result, List<SNode> chunks, String prefix, boolean followedByElement) {
        for (int i = 0; i < chunks.size(); i++) {
            SNode chunk = chunks.get(i);
            if (!ModelNodes.bool(chunk, "blankLine")) result.add(new Part(1, null, prefix + ModelNodes.get(chunk, "text")));
            result.add(new Part(2, null, null));
            if (followedByElement || i + 1 < chunks.size()) result.add(new Part(3, null, null));
        }
    }

    private static List<SNode> anchored(SNode owner, String role, SNode anchor) {
        List<SNode> result = new ArrayList<>();
        for (SNode chunk : chunks(owner, role)) if (ModelNodes.target(chunk, "anchor") == anchor) result.add(chunk);
        return result;
    }

    public static List<SNode> chunks(SNode owner, String role) {
        SNode store = store(owner, role);
        return store == null ? List.of() : ModelNodes.children(store, "chunks");
    }

    private static SNode store(SNode owner, String role) {
        SNode result = null;
        for (SNode attribute : ModelNodes.children(owner, "smodelAttribute")) {
            if (!isStore(attribute) || !role.equals(ModelNodes.get(attribute, "listRole"))) continue;
            if (result != null) throw new IllegalStateException("Duplicate trivia store for " + role);
            result = attribute;
        }
        return result;
    }

    private static boolean isStore(SNode node) {
        return node.getConcept().getQualifiedName().equals("metabnf.trivia.structure.TargetListTrivia");
    }

    private static SNode create(SNode owner, String name) {
        var concept = jetbrains.mps.smodel.language.ConceptRegistry.getInstance()
                .getConceptByName("metabnf.trivia.structure." + name);
        if (!(concept instanceof org.jetbrains.mps.openapi.language.SConcept concrete) || !concrete.isValid()) {
            throw new IllegalStateException("Missing target trivia language: " + name);
        }
        return owner.getModel().createNode(concrete);
    }

    private static void requireList(SNode owner, String role) {
        if (owner == null || owner.getModel() == null || role == null || owner.getConcept().getContainmentLinks().stream()
                .noneMatch(link -> role.equals(link.getName()) && link.isMultiple())) {
            throw new IllegalArgumentException("Trivia owner must have the designated repeated containment link");
        }
    }

    private static void requireAnchor(SNode owner, String role, SNode anchor) {
        if (anchor != null && (anchor.getParent() != owner || anchor.getContainmentLink() == null
                || !role.equals(anchor.getContainmentLink().getName()))) {
            throw new IllegalArgumentException("Trivia anchor must be an element of its owner's designated list");
        }
    }

    private static void requireText(String text, boolean blank) {
        if (text == null || text.indexOf('\n') >= 0 || text.indexOf('\r') >= 0 || (blank && !text.isEmpty())) {
            throw new IllegalArgumentException("Use one comment line per chunk; blank-line chunks have empty text");
        }
    }
}
