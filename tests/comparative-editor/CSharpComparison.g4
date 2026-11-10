// Independently authored bounded C#-like benchmark; Apache-2.0 (repository LICENSE).
// Not extracted from the upstream C# grammar. Layout is deliberately explicit.
grammar CSharpComparison;
program: block EOF;
block: '{' statement* '}';
statement: block | 'return' (' ' expression)? ';';
expression: NUMBER ('+' NUMBER)*;
NUMBER: [0-9]+;
