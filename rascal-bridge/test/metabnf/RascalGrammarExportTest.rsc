module metabnf::RascalGrammarExportTest

import Grammar;
import lang::xml::IO;
import ParseTree;
import metabnf::RascalGrammarExport;
import IO;
import String;

public void main(list[str] args) {
  sampleGrammar = grammar(
    {\start(sort("Program"))},
    {
      prod(sort("Program"), [lit("hello"), lit("a&\<\""), sort("Identifier")], {}),
      prod(sort("Identifier"), [lex("IDENTIFIER")], {}),
      prod(lex("IDENTIFIER"), [\char-class([range(65, 90)])], {}),
      prod(sort("Rich"), [
        \opt(lit("optional")),
        \iter(sort("Item")),
        \iter-star(lit("many")),
        \char-class([range(65, 90)]),
        \iter-seps(sort("Item"), [lit(",")])
      ], {}),
      associativity(sort("Assoc"), Associativity::\right(), {
        prod(sort("Assoc"), [sort("Atom"), lit("^"), sort("Assoc")], {})
      })
    });
    xml = toXml("Example", sampleGrammar);
    readXML(xml);
    if (xml != toXml("Example", sampleGrammar)) throw "Export is not deterministic";
    if (!contains(xml, "format-version")) throw "Missing format version";
    if (!contains(xml, "\<start name=\"Program\"/\>")) throw "Missing start symbol";
    if (!contains(xml, "kind=\"sort\"")) throw "Missing sort rule kind";
    if (!contains(xml, "kind=\"lexical\"")) throw "Missing lexical rule kind";
    if (!contains(xml, "hello")) throw "Missing terminal";
    if (!contains(xml, "a&amp;&lt;&quot;")) throw "XML attribute characters were not escaped";
    if (!contains(xml, "IDENTIFIER")) throw "Missing lexical symbol";
    if (!contains(xml, "one-or-more-sep")) throw "Missing separated repetition";
    if (!contains(xml, "character-class")) throw "Missing character class";
    if (!contains(xml, "kind=\"right\"")) throw "Associativity was not preserved";
    if (!contains(xml, "rascal-grammar")) throw "Missing XML root";
    println(xml);

    importableGrammar = grammar(
      {\start(sort("Program"))},
      {
        prod(sort("Program"), [lit("hello"), lex("IDENTIFIER"), \opt(sort("Suffix"))], {}),
        prod(sort("Program"), [lit("good"), lex("IDENTIFIER")], {}),
        prod(sort("Suffix"), [lit("!")], {}),
        prod(lex("IDENTIFIER"), [\char-class([range(65, 90)])], {})
      });
    writeFile(|cwd:///build/simple-grammar.xml|, toXml("Example", importableGrammar));
}
