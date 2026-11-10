grammar GrammarCoverage;

program : (expression | 'true') EOF;
expression : ID (('+' | '-') ID)*;

ID : ([a-zA-Z]+ | '_') [a-zA-Z0-9_]*;
