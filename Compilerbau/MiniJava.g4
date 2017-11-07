grammar MiniJava;

prg : mainClass classDeclaration* EOF;

mainClass : 'class' Identifier '{' 'public' 'static' 'void' 'main' '(' 'String' '[' ']' Identifier ')' '{' statement '}' '}';

classDeclaration : 'class' Identifier ('extends' Identifier)? '{' varDeclaration* methodDeclaration* '}';

varDeclaration : type Identifier ';';

methodDeclaration : 'public' type Identifier '(' methodParameters ')' ('throws' 'java.io.exception')? '{' methodBody '}';

methodParameters : ( type Identifier (',' type Identifier)*)?;

methodBody : varDeclaration* statement* RETURN expression ';';

type : 'int' '[' ']' | 'boolean' | 'int' | Identifier;

statement : '{' statement* '}' #blockStatement
			| 'if' '(' expression ')' statement 'else' statement #ifelseBlock
			| 'while' '(' expression ')' statement #whileBlock
			| Identifier '=' expression ';' #varAssignment
			| Identifier '[' expression ']' '=' expression ';' #arrayAssignment
			| 'System.out.println' '(' expression ')' ';' #print
			| 'System.out.write' '(' expression ')' ';' #write;

expression :  expression LB expression RB #arrayAccessExpression
			| expression '.' 'length' #arrayLengthExpression
			| expression '.' Identifier '.' LP (expression (',' expression)*)? RP #methodCallExpression
			| 'System.in.read' LP RP #readExpression
			| IntegerLiteral #integerLitExpression
			| BooleanLiteral #booleanLitExpression
			| Identifier #identifierExpression
			| 'this' #thisExpression
			| 'new''int' LB expression RB #arrayInstantiationExpression
			| 'new' Identifier LP RP #objectInstantiationExpression
			| NOT expression #notExpression
			| LP expression RP #parentExpression
			| expression AND expression #andExpression
			| expression PLUS expression #plusExpression
			| expression MINUS expression #minusExpression
			| expression TIMES expression #timesExpression
			| expression DIV expression #divisionExpression
			| expression LT expression #lessThanExpression
			| expression GT expression #greaterThanExpression;

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