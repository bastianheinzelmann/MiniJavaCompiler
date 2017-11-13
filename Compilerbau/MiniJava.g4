grammar MiniJava;

prg : mainClass classDeclaration* EOF;

mainClass : 'class' Identifier '{' 'public' 'static' 'void' 'main' '(' 'String' '[' ']' Identifier ')' '{' statement '}' '}';

classDeclaration : 'class' Identifier ('extends' Identifier)? '{' varDeclaration* methodDeclaration* '}';

varDeclaration : type Identifier ';';

methodDeclaration : 'public' type Identifier '(' methodParameters ')' ('throws' 'java.io.exception')? '{' methodBody '}';

methodParameters : ( type Identifier (',' type Identifier)*)?;

methodBody : varDeclaration* statement* RETURN expression ';';

type : integerarr='int' '[' ']' | boolean='boolean' | integer='int' | object=Identifier;

statement : '{' statement* '}' #blockStatement
			| 'if' '(' expression ')' statement 'else' statement #ifelseBlock
			| 'while' '(' expression ')' statement #whileBlock
			| Identifier '=' expression ';' #varAssignment
			| Identifier '[' expression ']' '=' expression ';' #arrayAssignment
			| 'System.out.println' '(' expression ')' ';' #print
			| 'System.out.write' '(' expression ')' ';' #write;

expression :  andExpression #binaryFun
			| expression DOTLENGTH #arrayLengthExpression
			| expression '.' Identifier LP (expression (',' expression)*)? RP #methodCallExpression
			| 'System.in.read' LP RP #readExpression
			| IntegerLiteral #integerLitExpression
			| BooleanLiteral #booleanLitExpression			
			| 'this' #thisExpression
			| 'new''int' LB expression RB #arrayInstantiationExpression
			| expression LB expression RB #arrayAccessExpression
			| 'new' Identifier LP RP #objectInstantiationExpression
			| NOT expression #notExpression
			| Identifier #identifierExpression
			| LP expression RP #parentExpression
			;

atom : IntegerLiteral #intAtom
	| BooleanLiteral #boolAtom
	| Identifier #idAtom;

multiplicativeExpression : atom #atom1
			| multiplicativeExpression TIMES multiplicativeExpression #multiplicative1
			| multiplicativeExpression DIV multiplicativeExpression #multiplicative2;

additiveExpression : multiplicativeExpression #additive1
			| additiveExpression PLUS multiplicativeExpression #additive2
			| additiveExpression MINUS multiplicativeExpression #additive3;

relationalExpression : additiveExpression #relational1
			| relationalExpression LT additiveExpression #relational2
			| relationalExpression GT additiveExpression #relational3;

andExpression : relationalExpression #and1
			| andExpression AND relationalExpression #and2;

BinaryOperator: AND | PLUS | MINUS | TIMES | DIV | LT | GT;

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