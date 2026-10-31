grammar ExpressionFamilies;

program : expression EOF;
expression : sum;
sum : product (('+' | '-') product)*;
product : atom (('*' | '/') atom)*;
atom : ID | '(' expression ')';

ID : [a-zA-Z]+;
