grammar DemoText;

program : 'program' IDENTIFIER '{' statements '}' EOF;
statements : assignment*;
assignment : IDENTIFIER '=' NUMBER ';';

IDENTIFIER : [A-Z]+;
NUMBER : [0-9]+;
WS : [ \t\r\n]+ -> skip;
