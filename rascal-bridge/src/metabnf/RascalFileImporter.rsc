module metabnf::RascalFileImporter

import IO;
import Grammar;
import ParseTree;
import String;
import lang::rascal::\syntax::Rascal;
import lang::rascal::grammar::definition::Modules;
import metabnf::RascalGrammarExport;

public void main(list[str] args) {
  if (size(args) != 2) throw "Expected input and output file URIs";
  input = readFile(toLocation(args[0]));
  parsed = parse(#Module, input);
  <mainModule, _, _> = getModuleMetaInf(parsed);
  exportModules(mainModule, {parsed}, toLocation(args[1]));
}
