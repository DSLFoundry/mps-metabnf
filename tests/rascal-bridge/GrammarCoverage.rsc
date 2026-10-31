module examples::GrammarCoverage

layout WS = [\t\n\r\u0020]*;
lexical Identifier = [A-Za-z]+ [0-9]*;
start syntax Program = Identifier "," Identifier;
