package metabnf.usability;

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static metabnf.usability.ModelNodes.*;

/** Conservative structural expression recognition and precedence-safe rendering helpers. */
public final class ExpressionFamilies {
    private static final Set<String> FAMILIES = Set.of(
            "ExpressionLiteral", "ExpressionPrefix", "ExpressionPostfix", "ExpressionInfix",
            "ExpressionTernary", "ExpressionGrouping", "ExpressionIndexAccess",
            "ExpressionMemberAccess", "ExpressionLayered");

    public enum Associativity { LEFT, RIGHT, NONE }
    public enum OperandSide { LEFT, RIGHT }

    public record Candidate(String family, SNodeReference target, Map<String, Integer> operandRoles,
                            List<Integer> operatorTerms, String evidence) {
        public Candidate {
            operandRoles = Map.copyOf(operandRoles);
            operatorTerms = List.copyOf(operatorTerms);
        }
    }

    public record OperatorSemantics(int precedence, Associativity associativity) {
        public OperatorSemantics {
            if (precedence < 0) throw new IllegalArgumentException("Precedence must be explicit and non-negative");
            if (associativity == null) throw new IllegalArgumentException("Associativity must be explicit");
        }
    }

    public sealed interface Expression permits Operand, BinaryExpression {
        OperatorSemantics semantics();
    }

    public record Operand(String text, OperatorSemantics semantics) implements Expression {}

    public record BinaryExpression(Expression left, String operator, Expression right,
                                   OperatorSemantics semantics) implements Expression {}

    public record LiteralSplit(String left, String right) {}

    @FunctionalInterface
    public interface Tokenizer { List<String> tokenize(String text); }

    private ExpressionFamilies() {}

    public static boolean isExpressionPattern(String pattern) { return pattern != null && FAMILIES.contains(pattern); }

    /** Recognizes shapes only. It never supplies precedence, associativity, or a fold direction. */
    public static List<Candidate> recognize(SNode grammar) {
        attachedGrammar(grammar);
        List<Candidate> result = new ArrayList<>();
        for (SNode node : tree(grammar)) result.addAll(recognizeNode(node, grammar));
        return List.copyOf(result);
    }

    public static List<Candidate> recognizeNode(SNode node, SNode grammar) {
        List<Candidate> result = new ArrayList<>();
        if (is(node, "NonterminalRule")) {
            List<SNode> terms = children(node, "terms");
            List<Integer> operands = referenceTerms(terms);
            if (terms.size() == 1 && literal(terms.get(0)) != null) {
                result.add(candidate("ExpressionLiteral", node, Map.of(), List.of(),
                        "One literal term; this is a leaf shape, not an operator or precedence declaration"));
            }
            if (terms.size() == 2 && literal(terms.get(0)) != null && isExpressionReference(terms.get(1), node, grammar)) {
                result.add(candidate("ExpressionPrefix", node, Map.of("operand", 1), List.of(0),
                        "Literal followed by a recursively reachable expression operand; operator intent still requires review"));
            }
            if (terms.size() == 2 && isExpressionReference(terms.get(0), node, grammar) && literal(terms.get(1)) != null) {
                result.add(candidate("ExpressionPostfix", node, Map.of("operand", 0), List.of(1),
                        "Expression operand followed by a literal; operator intent still requires review"));
            }
            if (terms.size() == 3 && isExpressionReference(terms.get(0), node, grammar)
                    && literal(terms.get(1)) != null && !".".equals(literal(terms.get(1)))
                    && isExpressionReference(terms.get(2), node, grammar)) {
                result.add(candidate("ExpressionInfix", node, Map.of("left", 0, "right", 2), List.of(1),
                        "Two expression-reference operands around one literal; precedence and associativity are not inferred"));
            }
            if (terms.size() == 5 && isExpressionReference(terms.get(0), node, grammar)
                    && literal(terms.get(1)) != null && isExpressionReference(terms.get(2), node, grammar)
                    && literal(terms.get(3)) != null && isExpressionReference(terms.get(4), node, grammar)) {
                result.add(candidate("ExpressionTernary", node,
                        Map.of("condition", 0, "then", 2, "else", 4), List.of(1, 3),
                        "Three expression-reference operands separated by two literals; conditional meaning requires review"));
            }
            if (terms.size() == 3 && literal(terms.get(0)) != null && literal(terms.get(2)) != null
                    && "(".equals(literal(terms.get(0))) && ")".equals(literal(terms.get(2)))
                    && isReference(terms.get(1))) {
                result.add(candidate("ExpressionGrouping", node, Map.of("expression", 1), List.of(0, 2),
                        "A reference between literal parentheses; rendering keeps the existing wrapper"));
            }
            if (terms.size() == 4 && isExpressionReference(terms.get(0), node, grammar)
                    && "[".equals(literal(terms.get(1))) && isExpressionReference(terms.get(2), node, grammar)
                    && "]".equals(literal(terms.get(3)))) {
                result.add(candidate("ExpressionIndexAccess", node, Map.of("target", 0, "index", 2), List.of(1, 3),
                        "Expression target and index enclosed by literal brackets; target/index roles are explicit candidates"));
            }
            if (terms.size() == 3 && isExpressionReference(terms.get(0), node, grammar)
                    && ".".equals(literal(terms.get(1))) && isReference(terms.get(2))) {
                result.add(candidate("ExpressionMemberAccess", node, Map.of("target", 0, "member", 2), List.of(1),
                        "Reference, literal dot, and member reference; member semantics require review"));
            }
            long expressionOperands = terms.stream().filter(term -> isExpressionReference(term, node, grammar)).count();
            boolean repeatedRecursiveOperand = terms.stream().anyMatch(term -> is(term, "NonterminalReference")
                    && Set.of("AtleastOne", "ZeroOrMore").contains(enumeration(term, "card"))
                    && target(term, "rule") != null && reaches(target(term, "rule"), node, grammar, new java.util.HashSet<>()));
            if (terms.size() >= 3 && expressionOperands >= 2 && repeatedRecursiveOperand
                    && terms.stream().anyMatch(term -> literal(term) != null)) {
                List<Integer> operatorTerms = literalTermIndices(terms);
                result.add(candidate("ExpressionLayered", node, operandRoles(operands), operatorTerms,
                        "Recursive repeated operand shape; binary lowering requires an explicit folding policy"));
            }
        } else if (is(node, "ChoiceRule")) {
            List<SNode> alternatives = children(node, "nonterminals");
            SNode recursiveOperatorRule = null;
            boolean baseAlternative = false;
            for (SNode alternative : alternatives) {
                SNode targetRule = target(alternative, "rule");
                boolean recursive = targetRule != null && reaches(targetRule, node, grammar, new java.util.HashSet<>());
                if (recursive && hasRecursiveBinaryAlternative(targetRule, node, grammar)) recursiveOperatorRule = targetRule;
                baseAlternative |= !recursive;
            }
            if (recursiveOperatorRule != null && baseAlternative) {
                List<SNode> terms = children(recursiveOperatorRule, "terms");
                result.add(candidate("ExpressionLayered", node, operandRoles(referenceTerms(terms)),
                        literalTermIndices(terms),
                        "Recursive and base alternatives form a layered candidate; precedence and binary folding remain unspecified"));
            }
        }
        return result;
    }

    /** Validates authored annotations; suggestions may describe a shape without asserting semantics. */
    public static String validation(SNode set, SNode annotation) {
        SNode node = target(annotation, "target");
        if (node == null || !within(node, target(set, "grammar"))) return "Expression target must resolve inside its annotation set grammar";
        String pattern = enumeration(annotation, "pattern");
        if (!isExpressionPattern(pattern)) return "Unsupported expression family";
        if (!bool(annotation, "mappingImpact")) return "Expression-family recognition is reviewable intent and must retain mappingImpact";
        Candidate shape = recognizeNode(node, target(set, "grammar")).stream()
                .filter(item -> item.family.equals(pattern)).findFirst().orElse(null);
        if (shape == null) return "Target no longer has the recognized expression shape";
        String origin = enumeration(annotation, "origin");
        if (!"Authored".equals(origin)) return "";

        Map<String, Integer> operandRoles;
        try { operandRoles = parseRoles(get(annotation, "operandRoles")); }
        catch (IllegalArgumentException error) { return error.getMessage(); }
        if (!operandRoles.equals(shape.operandRoles)) return "Operand roles must match the structurally recognized terms " + shape.operandRoles;
        if (pattern.equals("ExpressionLayered")) {
            String fold = get(annotation, "foldingPolicy");
            if (!oneOf(fold, "Left", "Right")) return "Layered expressions require an explicit Left or Right foldingPolicy before binary lowering";
        }
        boolean operatorFamily = Set.of("ExpressionPrefix", "ExpressionPostfix", "ExpressionInfix", "ExpressionTernary").contains(pattern);
        if (operatorFamily) {
            try {
                int precedence = Integer.parseInt(get(annotation, "precedence"));
                if (precedence < 0) return "Precedence must be explicit and non-negative";
            } catch (NumberFormatException error) { return "Precedence must be an explicit non-negative integer"; }
            if (!oneOf(get(annotation, "associativity"), "Left", "Right", "None")) return "Associativity must be Left, Right, or None";
        }
        if (!oneOf(get(annotation, "wrappingPolicy"), "PreserveMeaning", "ExplicitOnly")) return "Choose PreserveMeaning or ExplicitOnly wrapping policy";
        if (!oneOf(get(annotation, "replacementPolicy"), "PreserveOperands", "ConfirmLoss", "Disabled")) return "Choose PreserveOperands, ConfirmLoss, or Disabled replacement policy";
        if (!oneOf(get(annotation, "deletionPolicy"), "DeleteOperatorOnly", "ConfirmLoss", "Disabled")) return "Choose DeleteOperatorOnly, ConfirmLoss, or Disabled deletion policy";
        if (!oneOf(get(annotation, "focusPolicy"), "LeftOperand", "RightOperand", "Operator", "NewOperand")) return "Choose an explicit supported focus policy";
        return "";
    }

    public static boolean requiresParentheses(OperatorSemantics parent, OperatorSemantics child, OperandSide side) {
        if (parent == null || child == null || side == null) throw new IllegalArgumentException("Precedence, associativity, and operand side must be explicit");
        if (child.precedence < parent.precedence) return true;
        if (child.precedence > parent.precedence) return false;
        if (parent.associativity != child.associativity) return true;
        return switch (parent.associativity) {
            case LEFT -> side == OperandSide.RIGHT;
            case RIGHT -> side == OperandSide.LEFT;
            case NONE -> true;
        };
    }

    /** Renders the supplied AST shape without rebalancing it. */
    public static String render(Expression expression) {
        if (expression == null || expression.semantics() == null) {
            throw new IllegalArgumentException("Expression rendering requires explicit precedence semantics");
        }
        if (expression instanceof Operand operand) {
            if (operand.text() == null || operand.text().isEmpty()) throw new IllegalArgumentException("Missing expression operand");
            return operand.text();
        }
        BinaryExpression binary = (BinaryExpression) expression;
        if (binary.operator() == null || binary.operator().isEmpty()) {
            throw new IllegalArgumentException("Expression rendering requires an explicit operator");
        }
        if (binary.left() == null || binary.right() == null) throw new IllegalArgumentException("Missing expression operand");
        if (binary.left().semantics() == null || binary.right().semantics() == null) {
            throw new IllegalArgumentException("Child precedence must be explicit; classify atomic operands explicitly too");
        }
        String left = render(binary.left());
        String right = render(binary.right());
        if (requiresParentheses(binary.semantics(), binary.left().semantics(), OperandSide.LEFT)) left = "(" + left + ")";
        if (requiresParentheses(binary.semantics(), binary.right().semantics(), OperandSide.RIGHT)) right = "(" + right + ")";
        return left + binary.operator() + right;
    }

    /** Changes the operator and its explicit semantics while retaining both operand subtrees. */
    public static BinaryExpression replaceOperator(BinaryExpression expression, String replacement,
                                                   OperatorSemantics replacementSemantics) {
        if (expression == null || replacement == null || replacement.isEmpty() || replacementSemantics == null) {
            throw new IllegalArgumentException("A replacement operator and its explicit precedence semantics are required");
        }
        return new BinaryExpression(expression.left(), replacement, expression.right(), replacementSemantics);
    }

    public static String wrap(String expression) {
        if (expression == null || expression.isEmpty()) throw new IllegalArgumentException("Cannot wrap a missing expression");
        return "(" + expression + ")";
    }

    /** Removes one explicit wrapper only when parent/child precedence proves it is redundant. */
    public static String unwrap(String expression, OperatorSemantics parent, OperatorSemantics child, OperandSide side) {
        if (!hasOneOuterPair(expression)) throw new IllegalArgumentException("Expected one explicit parenthesis wrapper");
        if (requiresParentheses(parent, child, side)) throw new IllegalArgumentException("Removing this wrapper changes or obscures precedence");
        return expression.substring(1, expression.length() - 1);
    }

    private static boolean hasOneOuterPair(String expression) {
        if (expression == null || expression.length() < 2 || expression.charAt(0) != '(') return false;
        int depth = 0;
        char quote = 0;
        boolean escaped = false;
        for (int i = 0; i < expression.length(); i++) {
            char current = expression.charAt(i);
            if (escaped) { escaped = false; continue; }
            if (current == '\\') { escaped = true; continue; }
            if (quote != 0) {
                if (current == quote) quote = 0;
                continue;
            }
            if (current == '\'' || current == '"') { quote = current; continue; }
            if (current == '(') depth++;
            else if (current == ')' && --depth < 0) return false;
            if (depth == 0 && i != expression.length() - 1) return false;
        }
        return depth == 0 && quote == 0 && !escaped;
    }

    /** Splits only at a tokenizer boundary and only when both pieces satisfy the target property's constraint. */
    public static LiteralSplit splitLiteral(String text, int offset, Tokenizer tokenizer,
                                            java.util.function.Predicate<String> propertyConstraint) {
        if (text == null || tokenizer == null || propertyConstraint == null || offset <= 0 || offset >= text.length()) {
            throw new IllegalArgumentException("Literal split requires a non-edge offset, tokenizer, and property constraint");
        }
        String left = text.substring(0, offset);
        String right = text.substring(offset);
        if (!propertyConstraint.test(left) || !propertyConstraint.test(right)) throw new IllegalArgumentException("Split pieces violate the target property constraint");
        List<String> originalTokens = tokenize(tokenizer, text);
        List<String> splitTokens = new ArrayList<>(tokenize(tokenizer, left));
        splitTokens.addAll(tokenize(tokenizer, right));
        if (!originalTokens.equals(splitTokens)) throw new IllegalArgumentException("Split crosses a tokenizer boundary");
        return new LiteralSplit(left, right);
    }

    private static List<String> tokenize(Tokenizer tokenizer, String text) {
        List<String> tokens = tokenizer.tokenize(text);
        if (tokens == null || tokens.stream().anyMatch(java.util.Objects::isNull)) {
            throw new IllegalArgumentException("Tokenizer must return a non-null list of non-null tokens");
        }
        return List.copyOf(tokens);
    }

    private static boolean hasRecursiveBinaryAlternative(SNode rule, SNode owner, SNode grammar) {
        if (!is(rule, "NonterminalRule")) return false;
        List<SNode> terms = children(rule, "terms");
        if (terms.size() != 3 || !isReference(terms.get(0)) || literal(terms.get(1)) == null
                || !isReference(terms.get(2))) return false;
        boolean leftRecursive = reaches(target(terms.get(0), "rule"), owner, grammar, new java.util.HashSet<>());
        boolean rightRecursive = reaches(target(terms.get(2), "rule"), owner, grammar, new java.util.HashSet<>());
        return leftRecursive ^ rightRecursive;
    }

    private static Candidate candidate(String family, SNode node, Map<String, Integer> operands,
                                       List<Integer> operators, String evidence) {
        return new Candidate(family, node.getReference(), operands, operators, evidence);
    }

    private static boolean oneOf(String value, String... options) {
        return value != null && Set.of(options).contains(value);
    }

    private static Map<String, Integer> parseRoles(String value) {
        Map<String, Integer> result = new LinkedHashMap<>();
        if (value == null || value.isBlank()) return result;
        for (String item : value.split(",")) {
            String[] pair = item.trim().split("=", -1);
            if (pair.length != 2 || pair[0].isBlank() || result.containsKey(pair[0].trim())) {
                throw new IllegalArgumentException("Operand roles must use unique name=index pairs, separated by commas");
            }
            try { result.put(pair[0].trim(), Integer.parseInt(pair[1].trim())); }
            catch (NumberFormatException error) { throw new IllegalArgumentException("Operand role indexes must be integers"); }
        }
        return result;
    }

    private static List<Integer> referenceTerms(List<SNode> terms) {
        List<Integer> result = new ArrayList<>();
        for (int i = 0; i < terms.size(); i++) {
            SNode term = terms.get(i);
            if (is(term, "NonterminalReference") && target(term, "rule") != null) result.add(i);
        }
        return result;
    }

    private static Map<String, Integer> operandRoles(List<Integer> terms) {
        Map<String, Integer> result = new LinkedHashMap<>();
        for (int i = 0; i < terms.size(); i++) {
            String role = terms.size() == 2 ? (i == 0 ? "left" : "right") : "operand" + i;
            result.put(role, terms.get(i));
        }
        return result;
    }

    private static List<Integer> literalTermIndices(List<SNode> terms) {
        List<Integer> result = new ArrayList<>();
        for (int i = 0; i < terms.size(); i++) if (literal(terms.get(i)) != null) result.add(i);
        return result;
    }

    private static boolean isReference(SNode node) {
        return is(node, "NonterminalReference") && enumeration(node, "card").equals("ExactlyOne") && target(node, "rule") != null;
    }

    private static boolean isExpressionReference(SNode node, SNode owner, SNode grammar) {
        if (!isReference(node)) return false;
        SNode rule = target(node, "rule");
        return rule == owner || reaches(rule, owner, grammar, new java.util.HashSet<>());
    }

    private static boolean reaches(SNode start, SNode sought, SNode grammar, Set<SNode> visited) {
        if (start == sought) return true;
        if (start == null || !within(start, grammar) || !visited.add(start)) return false;
        for (SNode node : tree(start)) for (var reference : node.getReferences()) {
            SNode target = reference.getTargetNode();
            if (target == sought || (target != null && reaches(target, sought, grammar, visited))) return true;
        }
        return false;
    }

    private static String literal(SNode node) {
        if (is(node, "Keyword")) return get(node, "name");
        if (is(node, "TerminalReference")) return literal(target(node, "rule"));
        if (is(node, "TerminalRule")) {
            List<SNode> expressions = children(node, "regexp");
            if (expressions.size() != 1) return null;
            List<SNode> values = children(expressions.get(0), "regexp");
            if (values.size() == 1 && values.get(0).getConcept().getQualifiedName()
                    .equals("jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp")) return get(values.get(0), "text");
        }
        return null;
    }
}
