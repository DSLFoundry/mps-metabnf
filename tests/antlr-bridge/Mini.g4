grammar Mini;

program : 'hello' NAME suffix? EOF;
suffix : '!' | '?';

NAME : [A-Z];
