using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.AST
{
    public interface Node { }

    public interface Expression { }

    public interface Statement { }

    public interface Type { }

    class Int : Type { }

    class Boolean : Type { }

    class IntArray : Type
    {

    }

    class Prg : Node
    {
        public Prg(MainClass mainClass, ClassDeclaration[] classDeclarations)
        {
            MainClass = mainClass;           
            ClassDeclarations = classDeclarations;
        }

        public MainClass MainClass { get; set; }
        public ClassDeclaration[] ClassDeclarations { get; set; }
    }

    class ClassDeclaration : Node
    {
        public ClassDeclaration(string name, string superName, VarDeclaration[] varDeclarations, MethodDeclaration[] methodDeclarations)
        {
            Name = name;
            SuperName = superName;
            VarDeclarations = varDeclarations;
            MethodDeclarations = methodDeclarations;
        }

        public string Name { get; set; }
        public string SuperName { get; set; }
        public VarDeclaration[] VarDeclarations { get; set; }
        public MethodDeclaration[] MethodDeclarations { get; set; }
    }

    class VarDeclaration : Node
    {
        public VarDeclaration(Type type, string name)
        {
            Type = type;
            Name = name;
        }

        Type Type { get; set; }
        string Name { get; set; }
    }

    class MethodDeclaration : Node
    {
        public MethodDeclaration(Type returnType, string methodName, Params parameters, bool hasException, MethodBody methodBody)
        {
            ReturnType = returnType;
            MethodName = methodName;
            Parameters = parameters;
            MethodBody = methodBody;
        }

        public Type ReturnType { get; set; }
        public string MethodName { get; set; }
        public Params Parameters { get; set; }
        MethodBody MethodBody { get; set; }
    }

    class Params : Node
    {
        public Params(Tuple<Type, string>[] parameters)
        {
            Parameters = parameters;
        }

        Tuple<Type, string>[] Parameters {get;set;}
    }

    class MethodBody : Node
    {
        public MethodBody(VarDeclaration[] varDeclarations, Statement[] statements, Expression returnExpression)
        {
            VarDeclarations = varDeclarations;
            Statements = statements;
            ReturnExpression = returnExpression;
        }

        public VarDeclaration[] VarDeclarations { get; set; }
        public Statement[] Statements { get; set; }
        public Expression ReturnExpression { get; set; }
    }

    class MainClass : Node
    {
        public MainClass(string name, string param, Statement statement)
        {
            Name = name;
            Statement = statement;
            Param = param;
        }

        public string Name { get; set; }
        public string Param { get; set; }
        Statement Statement { get; set; }
    }

    #region statements
    class BlockStatement : Statement
    {
        public BlockStatement(Statement[] statements)
        {
            Statements = statements;
        }
        public Statement[] Statements { get; set; }
    }

    class IfElseBlock : Statement
    {
        public IfElseBlock(Expression expression, Statement trueBranch, Statement falseBranch)
        {
            Expression = expression;
            TrueBranch = trueBranch;
            FalseBranch = falseBranch;
        }

        public Expression Expression { get; set; }
        public Statement TrueBranch { get; set; }
        public Statement FalseBranch { get; set; }
    }

    class WhileBlock : Statement
    {
        public WhileBlock(Expression expression, Statement statement)
        {
            Expression = expression;
            Statement = Statement;
        }

        public Expression Expression { get; set; }
        public Statement Statement { get; set; }
    }

    class VarAssignment : Statement
    {
        public VarAssignment(string id, Expression expression)
        {
            Id = id;
            Expression = expression;
        }

        public string Id { get; set; }
        public Expression Expression { get; set; }
    }

    class ArrayAssignment : Statement
    {
        public ArrayAssignment(string id, Expression index, Expression value)
        {
            Id = id;
            Index = index;
            Value = value;
        }

        public string Id { get; set; }
        public Expression Index { get; set; }
        public Expression Value { get; set; }
    }

    class Print : Statement
    {
        public Print(Expression expression)
        {
            Expression = expression;
        }

        public Expression Expression { get; set; }
    }

    class Write : Statement
    {
        public Write(Expression expression)
        {
            Expression = expression;
        }

        public Expression Expression { get; set; }
    }
    #endregion

    #region expressions
    interface BinaryExpression : Expression
    {
        Expression Left { get; set; }
        Expression Right { get; set; }
    }

    class Identifier : Expression
    {
        public Identifier(string name)
        {
            Name = name;
        }

        public string Name { get; set; }
    }

    class And : BinaryExpression
    {
        public And(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Plus : BinaryExpression
    {
        public Plus(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Minus : BinaryExpression
    {
        public Minus(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Times : BinaryExpression
    {
        public Times(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Division : BinaryExpression
    {
        public Division(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class LessThan : BinaryExpression
    {
        public LessThan(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class GreaterThan : BinaryExpression
    {
        public GreaterThan(Expression left, Expression right)
        {
            Left = left;
            Right = right;
        }

        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class ArrayAccess : Expression
    {
        public ArrayAccess(Expression index, Expression val)
        {
            Index = index;
            Val = val;
        }

        public Expression Index { get; set; }
        public Expression Val { get; set; }
    }

    class ArrayLength : Expression
    {
        public ArrayLength(Expression exp)
        {
            Exp = exp;
        }

        public Expression Exp { get; set; } 
    }

    class MethodCall : Expression
    {
        public MethodCall(Expression exp, string methodName, Expression[] parameters)
        {
            Exp = exp;
            MethodName = methodName;
            Parameters = parameters;
        }

        public Expression Exp { get; set; }
        public string MethodName { get; set; }
        public Expression[] Parameters { get; set; }
    }

    class Read : Expression { }

    class IntegerLit : Expression
    {
        public IntegerLit(int val)
        {
            Val = val;
        }

        public int Val { get; set; }
    }

    class BooleanLit : Expression
    {
        public BooleanLit(bool val)
        {
            Val = val;
        }

        public bool Val { get; set; }
    }

    class This : Expression { }

    class ArrayInstantiation : Expression
    {
        public ArrayInstantiation(Expression length)
        {
            Length = length;
        }

        public Expression Length { get; set; }
    }

    class ObjectInstantiation : Expression
    {
        public ObjectInstantiation(string name)
        {
            ObjectId = name;
        }

        public string ObjectId { get; set; }
    }

    class Not : Expression
    {
        public Not(Expression exp)
        {
            Exp = exp;
        }

        public Expression Exp { get; set; }
    }

    class Parent : Expression
    {
        public Parent(Expression exp)
        {
            Exp = exp;
        }

        public Expression Exp { get; set; }
    }

    #endregion
}
