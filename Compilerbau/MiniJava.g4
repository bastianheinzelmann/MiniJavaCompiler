grammar MiniJava;

prg : mainClass classDeclaration* EOF;

mainClass : 'class' Identifier '{' 'public' 'static' 'void' 'main' '(' 'String' '[' ']' Identifier ')' '{' statement '}' '}';

classDeclaration : 'class' Identifier ('extends' Identifier)? '{' varDeclaration* methodDeclaration* '}';

varDeclaration : type Identifier ';';

methodDeclaration : 'public' type Identifier '(' methodParameters ')' ('throws' 'java.io.exception')? '{' methodBody '}';

methodParameters : ( type Identifier (',' type Identifier)*)?;

methodBody : varDeclaration* statement* RETURN expression ';';

type : 'int' '[' ']' | 'boolean' | 'int' | Identifier;

statement : '{' statement* '}'
			| 'if' '(' expression ')' statement 'else' statement
			| 'while' '(' expression ')' statement
			| Identifier '=' expression ';'
			| Identifier '[' expression ']' '=' expression ';'
			| 'System.out.println' '(' expression ')' ';'
			| 'System.out.write' '(' expression ')' ';';

expression : expression ( AND | PLUS | MINUS | TIMES | DIV | LT | GT) expression
			| expression LB expression RB
			| expression '.' 'length'
			| expression '.' Identifier '.' LP (expression (',' expression)*)? RP
			| 'System.in.read' LP RP
			| IntegerLiteral
			| BooleanLiteral
			| Identifier
			| 'this'
			| 'new''int' LB expression RB
			| 'new' Identifier LB RB
			| NOT expression
			| LP expression RP;

AND :'&&';
PLUS :'+';
MINUS :'-';
TIMES :'*';
NOT :'!';
LB :'[';
RB :']';
DOTLENGTH :'.length';
LP :'(';
RP :')';
RETURN : 'return';
EQ : '=';
LT : '<';
GT : '>';
DIV : '/';

BooleanLiteral : 'true' | 'false';

IntegerLiteral : DecimalNumeral;

Identifier : IdentifierChars;

IdentifierChars : JavaLetter JavaLetterOrDigit*;

fragment
JavaLetter : [a-zA-Z$_];

fragment
JavaLetterOrDigit : [a-zA-Z0-9$_];

fragment
DecimalNumeral : '0' | NonZeroDigit Digits?;

fragment
Digits : [0-9]*;

fragment
NonZeroDigit : [1-9];

WS : [ \r\t\n]+ -> skip;

MULTILINE_COMMENT :  '/*' .*? '*/' -> skip;

LINE_COMMENT :  '//' .*? '\n' -> skip;