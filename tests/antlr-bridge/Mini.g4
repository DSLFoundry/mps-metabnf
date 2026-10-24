grammar Mini;

program : 'hello' NAME suffix? EOF;
suffix : '!' | '?';

NAME : [A-Z];
WS : [ \t\r\n]+ -> skip;
