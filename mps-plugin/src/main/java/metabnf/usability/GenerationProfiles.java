package metabnf.usability;

import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static metabnf.usability.ModelNodes.*;

/** Selection descriptors only: interactive backend generation is a subsequent milestone. */
public final class GenerationProfiles {
    public static final String VERSION = "1";
    public static final String MPS = "2026.1.1";
    public static final String MPS_BUILD = "261.25134.877";
    private static final Set<String> PATTERNS = Set.of("Flag", "List", "OptionalGroup", "LiteralChoice");
    private static final Set<String> PROJECTIONS = Set.of("Textual", "Form", "Table");
    private static final Set<String> PROFILES = Set.of("vanilla", "grammar-cells", "plaintextgen", "plaintextflow");
    private static final Set<String> SERIALIZATION_PROFILES = Set.of("plaintextgen", "plaintextflow");
    private static final Map<String, List<String>> IMPLEMENTATIONS = Map.of(
            "Flag", List.of("vanilla.keyword", "vanilla.checkbox", "grammar-cells.flag"),
            "List", List.of("vanilla.sequence", "vanilla.vertical-list", "grammar-cells.list"),
            "OptionalGroup", List.of("vanilla.inline-group", "vanilla.form-group"),
            "LiteralChoice", List.of("vanilla.literal-choice", "vanilla.choice-field"));

    private GenerationProfiles() {}
    private record Subject(SNode node, SNode target, String pattern, boolean annotation) {}

    public static Map<String, Object> descriptor(String id) {
        if (!PROFILES.contains(id)) {
            throw failure("MBNF_UNKNOWN_PROFILE", null, "Unknown profile: " + id,
                    "Use vanilla, grammar-cells, plaintextgen, or plaintextflow");
        }
        Map<String, Object> result = new LinkedHashMap<>();
        result.put("id", id);
        result.put("version", VERSION);
        result.put("mps", MPS);
        result.put("mpsBuild", MPS_BUILD);
        result.put("kind", SERIALIZATION_PROFILES.contains(id) ? "serialization" : "projection");
        result.put("backend", id.equals("plaintextgen") ? "PlainTextGen"
                : id.equals("plaintextflow") ? "PlainTextFlow" : id);
        result.put("requirements", switch (id) {
            case "vanilla" -> List.of("MPS " + MPS + " / " + MPS_BUILD);
            case "grammar-cells" -> List.of("MPS " + MPS + " / " + MPS_BUILD,
                    "com.mbeddr.mpsutil.grammarcells: verified 2026.1 build required");
            case "plaintextgen" -> List.of("MPS " + MPS + " / " + MPS_BUILD,
                    "com.dslfoundry.plaintextgen: compatible MPS 2026.1 release required");
            case "plaintextflow" -> List.of("MPS " + MPS + " / " + MPS_BUILD,
                    "com.dslfoundry.plaintextgen: compatible MPS 2026.1 release required",
                    "com.dslfoundry.plaintextflow: compatible MPS 2026.1 release required");
            default -> throw new IllegalStateException(id);
        });
        result.put("available", id.equals("vanilla"));
        result.put("reason", switch (id) {
            case "vanilla" -> "Bundled vanilla MPS capability descriptors";
            case "grammar-cells" -> "Blocked: inspected sibling MPS-extensions targets 263.6259.116, not MPS 2026.1; no compatible backend verified";
            case "plaintextgen" -> "Blocked: PlainTextGen is optional and no compatible MPS 2026.1 backend has been verified";
            case "plaintextflow" -> "Blocked: PlainTextFlow requires PlainTextGen and no compatible MPS 2026.1 backends have been verified";
            default -> throw new IllegalStateException(id);
        });
        result.put("capabilities", SERIALIZATION_PROFILES.contains(id) ? Map.of() : IMPLEMENTATIONS);
        return result;
    }

    public static SNode createProfile(SModel model, SNode grammar, String id) {
        attachedGrammar(grammar);
        descriptor(id);
        if (model.getRepository() != grammar.getModel().getRepository() || model.isReadOnly()) {
            throw failure("MBNF_INVALID_PROFILE", grammar, "Profile model must be editable in the same repository",
                    "Choose an editable metadata model");
        }
        for (SNode root : model.getRootNodes()) if (is(root, "GenerationProfile") && target(root, "grammar") == grammar) {
            throw failure("MBNF_DUPLICATE_PROFILE", root, "Profile already exists for this grammar", "Use the existing profile");
        }
        SNode profile = create(model, "GenerationProfile");
        put(profile, "profileId", id);
        put(profile, "version", VERSION);
        point(profile, "grammar", grammar);
        imports(model, grammar);
        model.addRootNode(profile);
        return profile;
    }

    public static SNode select(SNode profile, String scope, SNode target, String pattern,
                               String projection, String implementation) {
        SNode grammar = validate(profile);
        validateSelection(grammar, scope, target, pattern, projection);
        if (!implementation.equals("auto") && !IMPLEMENTATIONS.get(pattern).contains(implementation)) {
            throw failure("MBNF_UNKNOWN_IMPLEMENTATION", profile, "Unknown implementation: " + implementation,
                    "Choose auto or a documented implementation for " + pattern);
        }
        List<SNode> existing = selections(profile, scope, target, pattern, projection);
        if (existing.size() > 1) throw duplicate(profile);
        SNode choice = existing.isEmpty() ? create(profile.getModel(), "ImplementationSelection") : existing.get(0);
        enumeration(choice, "scope", scope);
        enumeration(choice, "pattern", pattern);
        enumeration(choice, "projection", projection);
        point(choice, "target", target);
        put(choice, "implementation", implementation);
        if (existing.isEmpty()) add(profile, "selections", choice);
        return choice;
    }

    public static void validateForGeneration(SNode profile) {
        if (profile == null) return;
        validate(profile);
        requireAvailable(profile, descriptor(get(profile, "profileId")));
    }

    public static Map<String, Object> resolve(SNode profile, SNode occurrence, String pattern, String projection) {
        return resolve(profile, occurrence, pattern, projection, false);
    }

    public static Map<String, Object> resolveAnnotation(SNode profile, SNode annotation, String projection) {
        SNode grammar = validate(profile);
        if (annotation == null || !is(annotation.getParent(), "UsabilityAnnotations")
                || target(annotation.getParent(), "grammar") != grammar) {
            throw failure("MBNF_INVALID_ANNOTATION", annotation, "Annotation must belong to the profile grammar",
                    "Select an attached annotation for this grammar");
        }
        String origin = enumeration(annotation, "origin");
        if (!Set.of("Authored", "Inferred", "Suggested").contains(origin)
                || (!origin.equals("Authored") && get(annotation, "evidence").isBlank())) {
            throw failure("MBNF_INVALID_PROVENANCE", annotation, "Invalid annotation origin/evidence",
                    "Review annotation provenance before resolving");
        }
        if (bool(annotation, "suppressed") || origin.equals("Suggested")) {
            throw failure("MBNF_UNAPPROVED_PATTERN", annotation, "Suppressed or suggested intent is not a generation decision",
                    "Review the suggestion; approve as authored with suppression cleared before resolving it");
        }
        Subject subject = subject(annotation);
        if (subject == null || !within(subject.target, grammar)) {
            throw failure("MBNF_INVALID_ANNOTATION", annotation, "Invalid semantic attachment", "Review annotation kind/target");
        }
        if ((is(annotation, "FlagAnnotation") && !is(subject.target, "Flag"))
                || (is(annotation, "ListAnnotation") && !applicable(subject.target, "List"))) {
            throw failure("MBNF_INVALID_ANNOTATION", annotation, "Annotation no longer matches the native target shape",
                    "Review its target and cardinality");
        }
        if (is(annotation, "OptionalGroupAnnotation")) {
            SNode owner = target(annotation, "owner");
            SNode last = target(annotation, "last");
            if (!is(owner, "NonterminalRule") || subject.target.getParent() != owner || last == null
                    || last.getParent() != owner || !within(owner, grammar)
                    || children(owner, "terms").indexOf(subject.target) < 0
                    || children(owner, "terms").indexOf(last) < children(owner, "terms").indexOf(subject.target)) {
                throw failure("MBNF_INVALID_RANGE", annotation, "Optional group endpoints are no longer ordered terms of its owner",
                        "Review the authored range");
            }
        }
        if (is(annotation, "PatternAnnotation")) {
            String invalid = PatternAnnotations.validation(annotation.getParent(), annotation);
            if (!invalid.isEmpty()) throw failure("MBNF_INVALID_PATTERN", annotation, invalid, "Review pattern target/cardinality");
        }
        return resolve(profile, subject.target, subject.pattern, projection, true);
    }

    private static Map<String, Object> resolve(SNode profile, SNode occurrence, String pattern, String projection, boolean approved) {
        SNode grammar = validate(profile);
        validateSelection(grammar, "Occurrence", occurrence, pattern, projection);
        String id = get(profile, "profileId");
        Map<String, Object> descriptor = descriptor(id);
        requireAvailable(profile, descriptor);
        if (!approved && !applicable(occurrence, pattern)) {
            throw failure("MBNF_PATTERN_NOT_APPLICABLE", occurrence, pattern + " does not apply to this occurrence",
                    "Resolve a compatible annotation target");
        }
        List<String> alternatives = IMPLEMENTATIONS.get(pattern).stream().filter(item -> !item.startsWith("grammar-cells.")).toList();
        String selected = null;
        String origin = "";
        String reason = "";
        for (String scope : List.of("Occurrence", "Rule", "Pattern")) {
            SNode location = scope.equals("Occurrence") ? occurrence : scope.equals("Rule") ? rule(occurrence) : null;
            if (scope.equals("Rule") && location == null) continue;
            List<SNode> matches = selections(profile, scope, location, pattern, projection);
            if (matches.size() > 1) throw duplicate(profile);
            if (!matches.isEmpty() && !get(matches.get(0), "implementation").equals("auto")) {
                selected = get(matches.get(0), "implementation");
                origin = scope.toLowerCase(java.util.Locale.ROOT) + "-override";
                reason = "Explicit " + scope.toLowerCase(java.util.Locale.ROOT) + " selection for " + projection;
                break;
            }
        }
        if (selected == null) {
            boolean form = projection.equals("Form") || projection.equals("Table");
            selected = switch (pattern) {
                case "Flag" -> form ? "vanilla.checkbox" : "vanilla.keyword";
                case "List" -> form ? "vanilla.vertical-list" : "vanilla.sequence";
                case "OptionalGroup" -> form ? "vanilla.form-group" : "vanilla.inline-group";
                case "LiteralChoice" -> form ? "vanilla.choice-field" : "vanilla.literal-choice";
                default -> throw new IllegalStateException(pattern);
            };
            origin = form ? "contextual-policy" : "profile-default";
            reason = form ? projection + " projection uses a field/list capability; no syntax is changed"
                    : "Textual projection uses the profile-wide " + pattern + " default";
        }
        if (!alternatives.contains(selected)) {
            throw failure("MBNF_INCOMPATIBLE_SELECTION", occurrence,
                    selected + " cannot run with " + id + "@" + VERSION + " on MPS " + MPS,
                    "Select an available implementation or return this selection to auto");
        }
        Map<String, Object> result = new LinkedHashMap<>();
        result.put("target", ref(occurrence));
        result.put("pattern", pattern);
        result.put("projection", projection);
        result.put("implementation", selected);
        result.put("origin", origin);
        result.put("reason", reason);
        result.put("alternatives", alternatives);
        result.put("requirements", descriptor.get("requirements"));
        result.put("generationMetadata", Map.of("profile", id, "version", VERSION, "mps", MPS, "mpsBuild", MPS_BUILD,
                "requirements", descriptor.get("requirements"), "capabilityOnly", true));
        return result;
    }

    private static void requireAvailable(SNode profile, Map<String, Object> descriptor) {
        if (Boolean.TRUE.equals(descriptor.get("available"))) return;
        String id = descriptor.get("id").toString();
        String remedy = id.equals("grammar-cells")
                ? "Use vanilla@1 or verify a compatible Grammar Cells backend without changing the MPS platform"
                : "Install and verify every listed compatible optional backend, or use vanilla@1; no fallback is performed";
        throw failure("MBNF_BACKEND_UNAVAILABLE", profile,
                id + "@" + get(profile, "version") + ": " + descriptor.get("reason"), remedy);
    }

    public static Map<String, Object> inspect(SNode profile) {
        validate(profile);
        List<Map<String, Object>> plans = new ArrayList<>();
        List<Map<String, String>> diagnostics = new ArrayList<>();
        SNode grammar = target(profile, "grammar");
        var descriptor = descriptor(get(profile, "profileId"));
        if (!Boolean.TRUE.equals(descriptor.get("available"))) {
            diagnostics.add(failure("MBNF_BACKEND_UNAVAILABLE", profile,
                    get(profile, "profileId") + "@" + VERSION + " on MPS " + MPS + ": " + descriptor.get("reason"),
                    "Use vanilla@1 until a compatible backend is verified").getDiagnostic());
        }
        for (Subject subject : subjects(profile)) {
            for (String projection : List.of("Textual", "Form", "Table")) {
                try { plans.add(subject.annotation ? resolveAnnotation(profile, subject.node, projection)
                        : resolve(profile, subject.target, subject.pattern, projection)); }
                catch (UsabilityException failure) { diagnostics.add(failure.getDiagnostic()); }
            }
        }
        // Invalid/unmatched selections must not disappear just because their occurrence is gone.
        for (SNode choice : children(profile, "selections")) {
            try {
                String scope = enumeration(choice, "scope");
                String pattern = enumeration(choice, "pattern");
                String projection = enumeration(choice, "projection");
                validateSelection(grammar, scope, target(choice, "target"), pattern, projection);
                if (!get(choice, "implementation").equals("auto")
                        && !IMPLEMENTATIONS.get(pattern).contains(get(choice, "implementation"))) {
                    throw failure("MBNF_UNKNOWN_IMPLEMENTATION", choice, "Invalid stored implementation",
                            "Choose auto or a documented implementation");
                }
                if (get(choice, "implementation").startsWith("grammar-cells.") && get(profile, "profileId").equals("vanilla")) {
                    throw failure("MBNF_INCOMPATIBLE_SELECTION", choice, "Grammar Cells capability unavailable on vanilla@1 / MPS 2026.1",
                            "Choose a bundled capability or auto");
                }
                if (scope.equals("Occurrence") && subjects(profile).stream()
                        .noneMatch(subject -> subject.target == target(choice, "target") && subject.pattern.equals(pattern))) {
                    throw failure("MBNF_PATTERN_NOT_APPLICABLE", choice, "No approved semantic pattern at occurrence",
                            "Select an applicable target or approve its annotation");
                }
                if (selections(profile, scope, target(choice, "target"), pattern, projection).size() > 1) throw duplicate(choice);
            } catch (UsabilityException failure) { diagnostics.add(failure.getDiagnostic()); }
        }
        return Map.of("profile", descriptor(get(profile, "profileId")), "plans", plans, "diagnostics", diagnostics);
    }

    public static String inspector(SNode node) {
        SNode profile = node;
        while (profile != null && !is(profile, "GenerationProfile")) profile = profile.getParent();
        if (profile == null) return "No generation profile selected";
        try { return inspect(profile).toString(); }
        catch (UsabilityException failure) { return failure.getDiagnostic().toString(); }
    }

    public static String inspectorField(SNode node, String field) {
        SNode profile = node;
        while (profile != null && !is(profile, "GenerationProfile")) profile = profile.getParent();
        if (profile == null) return "No generation profile selected";
        try {
            if (field.equals("diagnostics")) return inspect(profile).get("diagnostics").toString();
            if (field.equals("requirements") || field.equals("generationMetadata")) {
                return descriptor(get(profile, "profileId")).toString();
            }
            List<String> values = new ArrayList<>();
            for (Subject subject : subjects(profile)) {
                SNode occurrence = subject.target;
                String pattern = subject.pattern;
                for (String projection : List.of("Textual", "Form", "Table")) {
                    if (is(node, "ImplementationSelection")
                            && (!enumeration(node, "pattern").equals(pattern)
                                || !enumeration(node, "projection").equals(projection)
                                || (!enumeration(node, "scope").equals("Pattern")
                                    && !within(occurrence, target(node, "target"))))) continue;
                    var plan = subject.annotation ? resolveAnnotation(profile, subject.node, projection)
                            : resolve(profile, occurrence, pattern, projection);
                    values.add(ref(occurrence) + " / " + projection + ": " + plan.get(field));
                }
            }
            return values.isEmpty() ? "No applicable occurrences" : String.join("; ", values);
        } catch (UsabilityException failure) { return failure.getDiagnostic().toString(); }
    }

    public static boolean applicable(SNode node, String pattern) {
        return switch (pattern) {
            case "Flag" -> is(node, "Flag");
            case "List" -> is(node, "NonterminalReference")
                    && Set.of("AtleastOne", "ZeroOrMore").contains(enumeration(node, "card"));
            case "OptionalGroup" -> false;
            case "LiteralChoice" -> is(node, "EnumRule");
            default -> false;
        };
    }

    private static Subject subject(SNode annotation) {
        if (is(annotation, "PatternAnnotation")) return new Subject(annotation, target(annotation, "target"), enumeration(annotation, "pattern"), true);
        if (is(annotation, "FlagAnnotation")) return new Subject(annotation, target(annotation, "target"), "Flag", true);
        if (is(annotation, "ListAnnotation")) return new Subject(annotation, target(annotation, "target"), "List", true);
        if (is(annotation, "OptionalGroupAnnotation")) return new Subject(annotation, target(annotation, "first"), "OptionalGroup", true);
        return null;
    }

    private static List<Subject> subjects(SNode profile) {
        SNode grammar = target(profile, "grammar");
        List<Subject> result = new ArrayList<>();
        Set<String> seen = new java.util.HashSet<>();
        for (SNode node : tree(grammar)) for (String pattern : List.of("Flag", "List", "LiteralChoice")) {
            if (applicable(node, pattern)) {
                result.add(new Subject(node, node, pattern, false));
                seen.add(ref(node) + ":" + pattern);
            }
        }
        Set<SModel> models = new java.util.LinkedHashSet<>(List.of(grammar.getModel(), profile.getModel()));
        for (SModel model : models) for (SNode root : model.getRootNodes()) {
            if (!is(root, "UsabilityAnnotations") || target(root, "grammar") != grammar) continue;
            for (SNode annotation : children(root, "annotations")) {
                if (bool(annotation, "suppressed") || enumeration(annotation, "origin").equals("Suggested")) continue;
                Subject subject = subject(annotation);
                if (subject != null && seen.add(ref(subject.target) + ":" + subject.pattern)) result.add(subject);
            }
        }
        return result;
    }

    private static SNode validate(SNode profile) {
        if (!is(profile, "GenerationProfile") || profile.getModel() == null) {
            throw failure("MBNF_INVALID_PROFILE", profile, "Expected an attached generation profile", "Select a profile root");
        }
        SNode grammar = target(profile, "grammar");
        attachedGrammar(grammar);
        if (profile.getModel().getRepository() != grammar.getModel().getRepository()) {
            throw failure("MBNF_INVALID_PROFILE", profile, "Grammar belongs to another repository", "Select a local grammar");
        }
        descriptor(get(profile, "profileId"));
        if (!get(profile, "version").equals(VERSION)) {
            throw failure("MBNF_PROFILE_VERSION", profile, "Unsupported profile version: " + get(profile, "version"),
                    "Use an explicitly supported version; current version is 1 on MPS 2026.1");
        }
        return grammar;
    }

    private static void validateSelection(SNode grammar, String scope, SNode target, String pattern, String projection) {
        if (!PATTERNS.contains(pattern) || !PROJECTIONS.contains(projection)
                || !Set.of("Occurrence", "Rule", "Pattern").contains(scope)) {
            throw failure("MBNF_INVALID_SELECTION", target, "Unknown scope, pattern or projection", "Use documented native enum values");
        }
        if ((scope.equals("Pattern") && target != null) || (!scope.equals("Pattern") && !within(target, grammar))
                || (scope.equals("Rule") && rule(target) != target)) {
            throw failure("MBNF_INVALID_SELECTION", target, "Selection target is incompatible with its scope",
                    "Choose an occurrence/rule in this grammar, or clear the target for a pattern default");
        }
    }

    private static SNode rule(SNode occurrence) {
        for (SNode current = occurrence; current != null; current = current.getParent()) {
            if (is(current, "NonterminalRule") || is(current, "ChoiceRule") || is(current, "EnumRule")) return current;
        }
        return null;
    }

    private static List<SNode> selections(SNode profile, String scope, SNode target, String pattern, String projection) {
        return children(profile, "selections").stream().filter(choice -> enumeration(choice, "scope").equals(scope)
                && target(choice, "target") == target && enumeration(choice, "pattern").equals(pattern)
                && enumeration(choice, "projection").equals(projection)).toList();
    }

    private static UsabilityException duplicate(SNode node) {
        return failure("MBNF_DUPLICATE_SELECTION", node, "Duplicate selections at the same resolution level",
                "Keep one selection per target, pattern and projection");
    }
}
