module MappingSample

start syntax Program = "program" IDENTIFIER "{" Statements "}";
syntax Statements = Assignment+;
syntax Assignment = IDENTIFIER "=" NUMBER ";";
lexical IDENTIFIER = [A-Z];
lexical NUMBER = [0-9];
