import org.antlr.v4.Tool;
import org.antlr.v4.automata.LexerATNFactory;
import org.antlr.v4.misc.CharSupport;
import org.antlr.v4.parse.ANTLRParser;
import org.antlr.v4.runtime.BaseErrorListener;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.RecognitionException;
import org.antlr.v4.runtime.Recognizer;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.misc.Interval;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.tool.Grammar;
import org.antlr.v4.tool.LeftRecursiveRule;
import org.antlr.v4.tool.ast.GrammarAST;
import org.antlr.v4.tool.ast.GrammarRootAST;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamWriter;

public final class AntlrBridge {
    private static final BaseErrorListener ERRORS = new BaseErrorListener() {
        @Override
        public void syntaxError(Recognizer<?, ?> recognizer, Object symbol, int line,
                                int column, String message, RecognitionException cause) {
            throw new IllegalArgumentException("Source " + line + ":" + column + ": " + message);
        }
    };

    public static void main(String[] args) throws Exception {
        if (args.length != 4 && args.length != 5) {
            throw new IllegalArgumentException(
                    "Expected grammar <grammar.g4> <start> <output.xml> or "
                    + "parse <grammar.g4> <start> <output.xml> <source>");
        }
        boolean parsing = args[0].equals("parse");
        if ((!parsing && !args[0].equals("grammar")) || args.length != (parsing ? 5 : 4)) {
            throw new IllegalArgumentException("Invalid ANTLR bridge operation");
        }
        Tool tool = new Tool();
        GrammarRootAST ast = tool.parseGrammar(args[1]);
        if (ast == null || ast.hasErrors || tool.getNumErrors() != 0) {
            throw new IllegalArgumentException("ANTLR could not read the grammar");
        }
        if (ast.grammarType != ANTLRParser.COMBINED) {
            throw new IllegalArgumentException("Only self-contained combined ANTLR 4 grammars are supported");
        }
        rejectUnsupported(ast);
        GrammarRootAST original = (GrammarRootAST) ast.dupTree();
        Grammar grammar = tool.createGrammar(ast);
        grammar.fileName = args[1];
        tool.process(grammar, false);
        if (tool.getNumErrors() != 0) {
            throw new IllegalArgumentException("ANTLR rejected the grammar");
        }
        String start = args[2];
        if (grammar.getRule(start) == null) {
            throw new IllegalArgumentException("Unknown parser start rule: " + start);
        }
        String xml = parsing
                ? parse(grammar, start, Path.of(args[4]))
                : export(grammar, original, start);
        Files.writeString(Path.of(args[3]), xml, StandardCharsets.UTF_8);
    }

    private static void rejectUnsupported(GrammarAST node) {
        switch (node.getType()) {
            case ANTLRParser.ACTION, ANTLRParser.SEMPRED, ANTLRParser.ARG_ACTION,
                 ANTLRParser.IMPORT, ANTLRParser.OPTIONS, ANTLRParser.AT,
                 ANTLRParser.CATCH, ANTLRParser.FINALLY, ANTLRParser.TOKENS_SPEC,
                 ANTLRParser.CHANNELS ->
                throw new IllegalArgumentException(
                        "Unsupported ANTLR actions, predicates, imports, options, or declarations: "
                        + node.getText());
            default -> { }
        }
        for (GrammarAST child : children(node)) rejectUnsupported(child);
    }

    private static String parse(Grammar grammar, String start, Path source) throws Exception {
        var lexer = grammar.implicitLexer.createLexerInterpreter(
                CharStreams.fromPath(source, StandardCharsets.UTF_8));
        lexer.removeErrorListeners();
        lexer.addErrorListener(ERRORS);
        var tokens = new CommonTokenStream(lexer);
        // Fill first so lexical errors after the parsed prefix cannot go unnoticed.
        tokens.fill();
        tokens.seek(0);
        var parser = grammar.createParserInterpreter(tokens);
        parser.removeErrorListeners();
        parser.addErrorListener(ERRORS);
        ParserRuleContext tree = parser.parse(grammar.getRule(start).index);
        if (tokens.LA(1) != Token.EOF) {
            throw new IllegalArgumentException("Unconsumed source input after start rule " + start);
        }
        var text = new java.io.StringWriter();
        XMLStreamWriter xml = XMLOutputFactory.newFactory().createXMLStreamWriter(text);
        xml.writeStartElement("parse-result");
        treeXml(tree, grammar, xml);
        xml.writeEndElement();
        xml.close();
        return xmlText(text);
    }

    private static void treeXml(ParseTree tree, Grammar grammar, XMLStreamWriter xml)
            throws Exception {
        if (tree instanceof ParserRuleContext context) {
            xml.writeStartElement("node");
            xml.writeAttribute("rule", grammar.getRuleNames()[context.getRuleIndex()]);
            for (int i = 0; i < context.getChildCount(); i++) {
                treeXml(context.getChild(i), grammar, xml);
            }
            xml.writeEndElement();
        } else if (tree instanceof TerminalNode terminal) {
            Token token = terminal.getSymbol();
            if (token.getType() == Token.EOF) return;
            String name = grammar.getVocabulary().getSymbolicName(token.getType());
            if (name != null && !name.startsWith(Grammar.AUTO_GENERATED_TOKEN_NAME_PREFIX)) {
                xml.writeEmptyElement("token");
                xml.writeAttribute("rule", name);
                xml.writeAttribute("value", token.getText());
            }
        } else {
            throw new IllegalArgumentException("Unsupported ANTLR parse tree: " + tree);
        }
    }

    private static String export(Grammar grammar, GrammarRootAST ast, String start)
            throws Exception {
        Map<String, GrammarAST> rules = new LinkedHashMap<>();
        GrammarAST ruleList = (GrammarAST) ast.getFirstChildWithType(ANTLRParser.RULES);
        for (GrammarAST rule : children(ruleList)) {
            rules.put(rule.getChild(0).getText(), rule);
        }
        SyntheticRules synthetic = new SyntheticRules(rules.keySet());
        var text = new java.io.StringWriter();
        XMLStreamWriter xml = XMLOutputFactory.newFactory().createXMLStreamWriter(text);
        xml.writeStartDocument("UTF-8", "1.0");
        xml.writeStartElement("rascal-grammar");
        xml.writeAttribute("format-version", "1");
        xml.writeAttribute("module", grammar.name);
        xml.writeStartElement("starts");
        xml.writeEmptyElement("start");
        xml.writeAttribute("name", start);
        xml.writeEndElement();
        xml.writeStartElement("rules");
        for (var entry : rules.entrySet()) {
            String name = entry.getKey();
            GrammarAST rule = entry.getValue();
            boolean lexical = Character.isUpperCase(name.charAt(0));
            if (rule.getFirstChildWithType(ANTLRParser.RULEMODIFIERS) != null) {
                throw new IllegalArgumentException("Rule modifiers cannot be imported: " + name);
            }
            if (!lexical && grammar.getRule(name) instanceof LeftRecursiveRule) {
                throw new IllegalArgumentException(
                        "Left-recursive grammar import would lose precedence: " + name);
            }
            GrammarAST block = (GrammarAST) rule.getFirstChildWithType(ANTLRParser.BLOCK);
            List<GrammarAST> alternatives = children(block);
            if (lexical) rejectLexerCommands(alternatives, name);
            xml.writeStartElement("rule");
            xml.writeAttribute("name", name);
            xml.writeAttribute("kind", lexical ? "lexical" : "sort");
            xml.writeStartElement("choice");
            if (lexical) {
                xml.writeStartElement("production");
                xml.writeStartElement("sequence");
                writeLexerExpression(alternatives, grammar, name, xml);
                xml.writeEndElement();
                xml.writeEndElement();
            } else {
                for (GrammarAST alternative : alternatives) {
                    if (alternative.getType() != ANTLRParser.ALT) throw unsupported(alternative);
                    xml.writeStartElement("production");
                    xml.writeStartElement("sequence");
                    List<GrammarAST> symbols = children(alternative);
                    for (int i = 0; i < symbols.size(); i++) {
                        GrammarAST symbol = symbols.get(i);
                        if (symbol.getType() == ANTLRParser.TOKEN_REF
                                && symbol.getText().equals("EOF")) {
                            if (!name.equals(start) || i != symbols.size() - 1) {
                                throw new IllegalArgumentException(
                                        "EOF is only supported at the end of the start rule");
                            }
                            continue;
                        }
                        parserSymbolXml(symbol, xml, synthetic);
                    }
                    xml.writeEndElement();
                    xml.writeEndElement();
                }
            }
            xml.writeEndElement();
            xml.writeEndElement();
        }
        for (int index = 0; index < synthetic.rules.size(); index++) {
            SyntheticRule generated = synthetic.rules.get(index);
            xml.writeStartElement("rule");
            xml.writeAttribute("name", generated.name);
            xml.writeAttribute("kind", "sort");
            xml.writeStartElement("choice");
            for (GrammarAST alternative : generated.alternatives) {
                if (alternative.getType() != ANTLRParser.ALT) throw unsupported(alternative);
                xml.writeStartElement("production");
                xml.writeStartElement("sequence");
                for (GrammarAST symbol : children(alternative)) {
                    if (symbol.getType() == ANTLRParser.TOKEN_REF && symbol.getText().equals("EOF")) {
                        throw new IllegalArgumentException("EOF is unsupported inside grouped parser rules");
                    }
                    parserSymbolXml(symbol, xml, synthetic);
                }
                xml.writeEndElement();
                xml.writeEndElement();
            }
            xml.writeEndElement();
            xml.writeEndElement();
        }
        xml.writeEndElement();
        xml.writeEndElement();
        xml.writeEndDocument();
        xml.close();
        return xmlText(text);
    }

    private static void rejectLexerCommands(List<GrammarAST> alternatives, String rule) {
        for (GrammarAST alternative : alternatives) {
            if (alternative.getType() == ANTLRParser.LEXER_ALT_ACTION) {
                throw new IllegalArgumentException(
                        "ANTLR lexer commands, including skip, cannot be preserved in MetaBNF grammar import: "
                        + rule);
            }
            if (alternative.getType() != ANTLRParser.ALT) throw unsupported(alternative);
            for (GrammarAST part : children(alternative)) {
                if (part.getType() == ANTLRParser.LEXER_ALT_ACTION) {
                    throw new IllegalArgumentException(
                            "ANTLR lexer commands, including skip, cannot be preserved in MetaBNF grammar import: "
                            + rule);
                }
            }
        }
    }

    private static void writeLexerExpression(List<GrammarAST> alternatives, Grammar grammar,
                                             String ruleName, XMLStreamWriter xml)
            throws Exception {
        if (alternatives.isEmpty()) throw new IllegalArgumentException("Lexer rule has no alternatives: " + ruleName);
        if (alternatives.size() == 1) {
            writeLexerSequence(alternatives.get(0), grammar, ruleName, xml);
            return;
        }
        xml.writeStartElement("choice");
        for (GrammarAST alternative : alternatives) {
            xml.writeStartElement("sequence");
            for (GrammarAST symbol : children(alternative)) {
                lexicalSymbolXml(symbol, grammar, ruleName, xml);
            }
            xml.writeEndElement();
        }
        xml.writeEndElement();
    }

    private static void writeLexerSequence(GrammarAST alternative, Grammar grammar,
                                           String ruleName, XMLStreamWriter xml)
            throws Exception {
        if (alternative.getType() != ANTLRParser.ALT) throw unsupported(alternative);
        List<GrammarAST> symbols = children(alternative);
        if (symbols.isEmpty()) {
            xml.writeEmptyElement("empty");
        } else if (symbols.size() == 1) {
            lexicalSymbolXml(symbols.get(0), grammar, ruleName, xml);
        } else {
            xml.writeStartElement("sequence");
            for (GrammarAST symbol : symbols) lexicalSymbolXml(symbol, grammar, ruleName, xml);
            xml.writeEndElement();
        }
    }

    private static void lexicalSymbolXml(GrammarAST symbol, Grammar grammar, String ruleName,
                                         XMLStreamWriter xml) throws Exception {
        switch (symbol.getType()) {
            case ANTLRParser.STRING_LITERAL -> {
                String value = CharSupport.getStringFromGrammarStringLiteral(symbol.getText());
                if (value == null) throw unsupported(symbol);
                xml.writeEmptyElement("literal");
                xml.writeAttribute("value", value);
            }
            case ANTLRParser.LEXER_CHAR_SET -> {
                xml.writeStartElement("character-class");
                var factory = new LexerATNFactory(grammar.implicitLexer);
                factory.setCurrentRuleName(ruleName);
                var set = factory.getSetFromCharSetLiteral(symbol);
                for (Interval range : set.getIntervals()) {
                    xml.writeEmptyElement("range");
                    xml.writeAttribute("start", Integer.toString(range.a));
                    xml.writeAttribute("end", Integer.toString(range.b));
                }
                xml.writeEndElement();
            }
            case ANTLRParser.OPTIONAL, ANTLRParser.CLOSURE, ANTLRParser.POSITIVE_CLOSURE -> {
                GrammarAST block = (GrammarAST) symbol.getChild(0);
                List<GrammarAST> alternatives = children(block);
                String wrapper = switch (symbol.getType()) {
                    case ANTLRParser.OPTIONAL -> "optional";
                    case ANTLRParser.CLOSURE -> "zero-or-more";
                    default -> "one-or-more";
                };
                xml.writeStartElement(wrapper);
                writeLexerExpression(alternatives, grammar, ruleName, xml);
                xml.writeEndElement();
            }
            case ANTLRParser.BLOCK -> writeLexerExpression(children(symbol), grammar, ruleName, xml);
            case ANTLRParser.EPSILON -> xml.writeEmptyElement("empty");
            case ANTLRParser.RULE_REF, ANTLRParser.TOKEN_REF ->
                    throw new IllegalArgumentException(
                            "ANTLR lexer rule references/fragments are unsupported in MetaBNF grammar import: "
                            + symbol.getText());
            case ANTLRParser.ASSIGN, ANTLRParser.PLUS_ASSIGN ->
                    throw new IllegalArgumentException("ANTLR lexer labels cannot be preserved: " + symbol.getText());
            default -> throw unsupported(symbol);
        }
    }

    private static final class SyntheticRule {
        final String name;
        final List<GrammarAST> alternatives;

        SyntheticRule(String name, List<GrammarAST> alternatives) {
            this.name = name;
            this.alternatives = alternatives;
        }
    }

    private static final class SyntheticRules {
        final List<SyntheticRule> rules = new ArrayList<>();
        final java.util.Set<String> usedNames = new java.util.HashSet<>();
        int nextId = 1;

        SyntheticRules(java.util.Set<String> names) { usedNames.addAll(names); }

        String add(GrammarAST block) {
            String name;
            do { name = "_AntlrGroup" + nextId++; } while (!usedNames.add(name));
            List<GrammarAST> alternatives = children(block);
            if (alternatives.isEmpty()) throw new IllegalArgumentException("Empty ANTLR parser group");
            rules.add(new SyntheticRule(name, alternatives));
            return name;
        }
    }

    private static void parserSymbolXml(GrammarAST symbol, XMLStreamWriter xml,
                                        SyntheticRules synthetic) throws Exception {
        switch (symbol.getType()) {
            case ANTLRParser.STRING_LITERAL -> {
                String value = CharSupport.getStringFromGrammarStringLiteral(symbol.getText());
                if (value == null) throw unsupported(symbol);
                xml.writeEmptyElement("literal");
                xml.writeAttribute("value", value);
            }
            case ANTLRParser.RULE_REF, ANTLRParser.TOKEN_REF -> {
                xml.writeEmptyElement(symbol.getType() == ANTLRParser.RULE_REF ? "sort" : "lexical");
                xml.writeAttribute("name", symbol.getText());
            }
            case ANTLRParser.BLOCK -> {
                String generated = synthetic.add(symbol);
                xml.writeEmptyElement("sort");
                xml.writeAttribute("name", generated);
            }
            case ANTLRParser.OPTIONAL, ANTLRParser.CLOSURE, ANTLRParser.POSITIVE_CLOSURE -> {
                GrammarAST block = (GrammarAST) symbol.getChild(0);
                List<GrammarAST> alternatives = children(block);
                String wrapper = switch (symbol.getType()) {
                    case ANTLRParser.OPTIONAL -> "optional";
                    case ANTLRParser.CLOSURE -> "zero-or-more";
                    default -> "one-or-more";
                };
                String generated = null;
                GrammarAST direct = singleRuleReference(block);
                if (direct == null) generated = synthetic.add(block);
                xml.writeStartElement(wrapper);
                xml.writeEmptyElement("sort");
                xml.writeAttribute("name", generated != null ? generated : direct.getText());
                xml.writeEndElement();
            }
            case ANTLRParser.EPSILON -> xml.writeEmptyElement("empty");
            case ANTLRParser.ASSIGN, ANTLRParser.PLUS_ASSIGN ->
                    throw new IllegalArgumentException(
                            "ANTLR element labels cannot be preserved in MetaBNF grammar import: " + symbol.getText());
            default -> throw unsupported(symbol);
        }
    }

    private static GrammarAST singleRuleReference(GrammarAST block) {
        List<GrammarAST> alternatives = children(block);
        if (alternatives.size() != 1) return null;
        List<GrammarAST> symbols = children(alternatives.get(0));
        if (symbols.size() != 1 || symbols.get(0).getType() != ANTLRParser.RULE_REF) return null;
        return symbols.get(0);
    }

    private static IllegalArgumentException unsupported(GrammarAST node) {
        return new IllegalArgumentException("Unsupported ANTLR grammar construct: " + node.toStringTree());
    }

    private static String xmlText(java.io.StringWriter writer) {
        String text = writer.toString();
        if (text.codePoints().anyMatch(c -> !(c == 9 || c == 10 || c == 13
                || c >= 0x20 && c <= 0xD7FF || c >= 0xE000 && c <= 0xFFFD
                || c >= 0x10000 && c <= 0x10FFFF))) {
            throw new IllegalArgumentException("Token or literal contains a character not representable in XML 1.0");
        }
        // StAX escapes markup but emits attribute whitespace literally; XML readers normalize it.
        return text.replace("\t", "&#9;").replace("\r", "&#13;").replace("\n", "&#10;");
    }

    private static List<GrammarAST> children(GrammarAST node) {
        if (node == null) throw new IllegalArgumentException("Missing ANTLR grammar block");
        List<GrammarAST> result = new ArrayList<>();
        for (int i = 0; i < node.getChildCount(); i++) {
            result.add((GrammarAST) node.getChild(i));
        }
        return result;
    }
}
