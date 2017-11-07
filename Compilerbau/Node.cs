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

    class Int : Type
    {

    }

    class Boolean : Type
    {

    }

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
            SuperName = name;
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

    class And : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Plus : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Minus : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Times : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class Division : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class LessThan : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class GreaterThan : BinaryExpression
    {
        public Expression Left { get; set; }
        public Expression Right { get; set; }
    }

    class ArrayAccess : Expression
    {

    }

    class ArrayLength : Expression
    {

    }

    class MethodCall : Expression
    {

    }

    class Read : Expression
    {

    }

    class IntegerLit : Expression
    {

    }

    class BooleanLit : Expression
    {

    }

    class This : Expression
    {

    }

    class ArrayInstantiation : Expression
    {

    }

    class ObjectInstantiation : Expression
    {

    }

    class Not : Expression
    {

    }

    class Parent : Expression
    {

    }

    #endregion
}
