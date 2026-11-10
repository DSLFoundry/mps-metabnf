package metabnf.smoketest;

import metabnf.usability.ExpressionFamilies;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

final class ExpressionFamiliesTest {
    private ExpressionFamiliesTest() {}

    static void run(SNode grammar) {
        for (String family : List.of("ExpressionLiteral", "ExpressionPrefix", "ExpressionPostfix",
                "ExpressionInfix", "ExpressionTernary", "ExpressionGrouping", "ExpressionIndexAccess",
                "ExpressionMemberAccess", "ExpressionLayered")) {
            require(ExpressionFamilies.isExpressionPattern(family), "Expression pattern is missing: " + family);
        }
        require(!ExpressionFamilies.isExpressionPattern("Flag")
                        && !ExpressionFamilies.isExpressionPattern(null),
                "Non-expression pattern was accepted");
        List<ExpressionFamilies.Candidate> candidates = ExpressionFamilies.recognize(grammar);
        require(!candidates.isEmpty(), "Demo grammar has no reviewable expression-family candidates");
        require(candidates.stream().allMatch(candidate -> candidate.target().resolve(grammar.getModel().getRepository()) != null),
                "An expression-family candidate lost its grammar target");
        require(candidates.stream().anyMatch(candidate -> "ExpressionLiteral".equals(candidate.family())),
                "Literal leaf shape was not surfaced for review");
        require(candidates.stream().noneMatch(candidate -> Set.of("ExpressionInfix", "ExpressionLayered")
                        .contains(candidate.family())),
                "Unrelated Demo grammar rules were incorrectly inferred to be expression operators: "
                        + candidates.stream().map(ExpressionFamilies.Candidate::family).collect(Collectors.toList()));

        ExpressionFamilies.OperatorSemantics atom = new ExpressionFamilies.OperatorSemantics(
                100, ExpressionFamilies.Associativity.NONE);
        ExpressionFamilies.OperatorSemantics additive = new ExpressionFamilies.OperatorSemantics(
                10, ExpressionFamilies.Associativity.LEFT);
        ExpressionFamilies.OperatorSemantics multiplicative = new ExpressionFamilies.OperatorSemantics(
                20, ExpressionFamilies.Associativity.LEFT);
        ExpressionFamilies.OperatorSemantics rightAssociative = new ExpressionFamilies.OperatorSemantics(
                10, ExpressionFamilies.Associativity.RIGHT);
        expectIllegalArgument(() -> ExpressionFamilies.requiresParentheses(null, atom,
                ExpressionFamilies.OperandSide.LEFT));
        ExpressionFamilies.OperatorSemantics nonAssociative = new ExpressionFamilies.OperatorSemantics(
                10, ExpressionFamilies.Associativity.NONE);
        require(ExpressionFamilies.requiresParentheses(additive, additive, ExpressionFamilies.OperandSide.RIGHT)
                        && !ExpressionFamilies.requiresParentheses(additive, additive, ExpressionFamilies.OperandSide.LEFT)
                        && ExpressionFamilies.requiresParentheses(nonAssociative, nonAssociative,
                        ExpressionFamilies.OperandSide.LEFT)
                        && ExpressionFamilies.requiresParentheses(nonAssociative, nonAssociative,
                        ExpressionFamilies.OperandSide.RIGHT)
                        && !ExpressionFamilies.requiresParentheses(rightAssociative, rightAssociative,
                        ExpressionFamilies.OperandSide.RIGHT)
                        && ExpressionFamilies.requiresParentheses(rightAssociative, rightAssociative,
                        ExpressionFamilies.OperandSide.LEFT)
                        && ExpressionFamilies.requiresParentheses(rightAssociative, additive,
                        ExpressionFamilies.OperandSide.RIGHT)
                        && ExpressionFamilies.requiresParentheses(rightAssociative, additive,
                        ExpressionFamilies.OperandSide.LEFT),
                "Associativity did not preserve the supplied tree shape");
        ExpressionFamilies.Expression left = new ExpressionFamilies.Operand("a", atom);
        ExpressionFamilies.Expression right = new ExpressionFamilies.BinaryExpression(
                new ExpressionFamilies.Operand("b", atom), "*", new ExpressionFamilies.Operand("c", atom), multiplicative);
        ExpressionFamilies.BinaryExpression sum = new ExpressionFamilies.BinaryExpression(left, "+", right, additive);
        require("a+b*c".equals(ExpressionFamilies.render(sum)), "Renderer changed the supplied precedence-layered AST");

        ExpressionFamilies.BinaryExpression difference = ExpressionFamilies.replaceOperator(sum, "-", additive);
        require("a-b*c".equals(ExpressionFamilies.render(difference))
                        && difference.left() == left && difference.right() == right,
                "Operator replacement changed an operand subtree");
        ExpressionFamilies.BinaryExpression productReplacement = ExpressionFamilies.replaceOperator(sum, "*", multiplicative);
        require("a*(b*c)".equals(ExpressionFamilies.render(productReplacement)),
                "Replacement semantics did not preserve the right operand's precedence");
        ExpressionFamilies.BinaryExpression productParent = new ExpressionFamilies.BinaryExpression(
                left, "*", sum, multiplicative);
        require("a*(a+b*c)".equals(ExpressionFamilies.render(productParent)),
                "Lower-precedence nested expression was not grouped");

        require("(a+b)".equals(ExpressionFamilies.wrap("a+b")), "Expression wrapping failed");
        require("b*c".equals(ExpressionFamilies.unwrap("(b*c)", additive, multiplicative,
                        ExpressionFamilies.OperandSide.RIGHT)), "Redundant wrapper was not removed");
        expectIllegalArgument(() -> ExpressionFamilies.unwrap("(a+b)", multiplicative, additive,
                ExpressionFamilies.OperandSide.LEFT));
        expectIllegalArgument(() -> ExpressionFamilies.unwrap("(a+b))", additive, atom,
                ExpressionFamilies.OperandSide.LEFT));
        expectIllegalArgument(() -> ExpressionFamilies.render(new ExpressionFamilies.BinaryExpression(
                null, "+", new ExpressionFamilies.Operand("b", atom), additive)));
        expectIllegalArgument(() -> ExpressionFamilies.render(new ExpressionFamilies.Operand("", atom)));
        expectIllegalArgument(() -> ExpressionFamilies.replaceOperator(sum, "*", null));
        expectIllegalArgument(() -> new ExpressionFamilies.OperatorSemantics(-1, ExpressionFamilies.Associativity.LEFT));
        expectIllegalArgument(() -> ExpressionFamilies.wrap(""));

        ExpressionFamilies.LiteralSplit split = ExpressionFamilies.splitLiteral("abcd", 2,
                text -> text.chars().mapToObj(c -> String.valueOf((char) c)).collect(Collectors.toList()),
                text -> !text.isEmpty());
        require("ab".equals(split.left()) && "cd".equals(split.right()), "Tokenizer-safe literal split failed");
        expectIllegalArgument(() -> ExpressionFamilies.splitLiteral("abcd", 2,
                text -> List.of(text), text -> true));
        expectIllegalArgument(() -> ExpressionFamilies.splitLiteral("abcd", 2,
                text -> text.chars().mapToObj(c -> String.valueOf((char) c)).collect(Collectors.toList()),
                text -> text.length() < 2));
        expectIllegalArgument(() -> ExpressionFamilies.splitLiteral("abcd", 2, text -> null, text -> true));
    }

    private static void expectIllegalArgument(Runnable action) {
        try {
            action.run();
        } catch (IllegalArgumentException expected) {
            return;
        }
        throw new AssertionError("Unsafe expression operation was accepted");
    }

    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }
}
