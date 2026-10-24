package metabnf.usability;

import org.jetbrains.mps.openapi.model.SNode;
import java.util.Map;
import java.util.Set;
import static metabnf.usability.ModelNodes.*;

public final class PatternAnnotations {
    private PatternAnnotations() {}

    public static String validation(SNode set, SNode annotation) {
        SNode grammar = target(set, "grammar");
        SNode node = target(annotation, "target");
        if (!within(node, grammar)) return "Pattern target must resolve inside the set's grammar";
        try {
            bool(annotation, "mappingImpact");
            String pattern = enumeration(annotation, "pattern");
            if (!Set.of("Flag", "List", "OptionalGroup", "LiteralChoice").contains(pattern)) return "Unsupported pattern enum";
            if ((pattern.equals("Flag") || pattern.equals("List") || pattern.equals("OptionalGroup"))
                    && !is(node, "NonterminalReference")) return "This pattern requires a nonterminal-reference occurrence";
            if (pattern.equals("Flag") || pattern.equals("OptionalGroup")) {
                if (!enumeration(node, "card").equals("AtMostOne")) return "This interpretation requires an optional occurrence";
            }
            if (pattern.equals("List") && !Set.of("AtleastOne", "ZeroOrMore").contains(enumeration(node, "card"))) {
                return "List interpretation requires a repeated occurrence";
            }
            if (pattern.equals("LiteralChoice") && !is(node, "ChoiceRule") && !is(node, "EnumRule")
                    && !(is(node, "NonterminalReference") && enumeration(node, "card").equals("AtMostOne"))) {
                return "Literal choice requires a choice rule or an optional reference";
            }
        } catch (UsabilityException failure) { return failure.getMessage(); }
        return "";
    }

    public static Map<String, Object> inspect(SNode annotation) {
        return Map.of("target", ref(target(annotation, "target")), "pattern", enumeration(annotation, "pattern"),
                "mappingImpact", bool(annotation, "mappingImpact"),
                "recognitionKey", get(annotation, "recognitionKey"));
    }
}
