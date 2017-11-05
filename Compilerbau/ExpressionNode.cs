using System;

namespace Compilerbau
{
    abstract class Node{ }

    public enum MiniJavaType
    {
        INTARRAY, BOOLEAN, INT, IDENTIFIER
    }

    public enum Operator
    {
        AND, PLUS, MINUS, TIMES, EQ, LT, GT, DIV
    }

    class ProgramNode : Node
    {
        public Node MainClassNode { get; set; }
        public Node ClassDeclarationNode { get; set; }
    }

    class MainClassNode : Node
    {
        public IdentifierNode ClassIdentifier { get; set; }
        public IdentifierNode ParameterIdentifier { get; set; }
        public StatementNode StatementNode { get; set; }
    }

    class ClassDeclarationNode : Node
    {
        public IdentifierNode ClassIdentifier { get; set; }
        public IdentifierNode InheritedClassIdentifier { get; set; }
        public VarDeclarationNode[] VarDeclarationNodes { get; set; }
        public MethodDeclarationNode[] MethodDeclarationNodes { get; set; }
    }

    class VarDeclarationNode : Node
    {
        public TypeNode TypeNode { get; set; }
        public IdentifierNode IdentifierNode { get; set; }
    }

    class MethodDeclarationNode : Node
    {
        public TypeNode ReturnTypeNode { get; set; }
        public IdentifierNode MethodName { get; set; }
        public MethodParametersNode MethodParameters { get; set; }
        public MethodBodyNode MethodBody { get; set; }
    }

    class MethodParametersNode : Node
    {
        public ParameterNode[] Parameters { get; set; }
    }

    class ParameterNode : Node
    {
        public Tuple<TypeNode, IdentifierNode> Parameters { get; set; }
    }

    class MethodBodyNode : Node
    {
        VarDeclarationNode[] VarDeclarationNodes { get; set; }
        StatementNode[] Statements { get; set; }
        ExpressionNode ReturnExpression { get; set; }
    }

    class TypeNode : Node
    {
        MiniJavaType type { get; set; }
    }

    class StatementNode : Node
    {
        StatementNode[] StatementNodes { get; set; }
        IfElseNode IfElseNode { get; set; }
        WhileNode WhileNode { get; set; }
        VarAssignmentNode VarAssignmentNode { get; set; }
        ArrayAssignmentNode ArrayAssignmentNode { get; set; }
        PrintlnNode PrintlnNode { get; set; }
        WriteNode WriteNode { get; set; }
    }

    class IfElseNode : Node
    {
        ExpressionNode Condition { get; set; }
        StatementNode TrueBranch { get; set; }
        StatementNode FalseBranch { get; set; }
    }

    class WhileNode : Node
    {
        ExpressionNode Condition { get; set; }
        StatementNode Statement { get; set; }
    }

    class VarAssignmentNode : Node
    {
        IdentifierNode ID { get; set; }
        ExpressionNode Expression { get; set; }
    }

    class ArrayAssignmentNode : Node
    {
        IdentifierNode ID { get; set; }
        ExpressionNode Expression { get; set; }
    }

    class PrintlnNode : Node
    {
        ExpressionNode Expression { get; set; }
    }

    class WriteNode : Node
    {
        ExpressionNode Expression;
    }

    class BinaryOpNode : ExpressionNode
    {
        public Operator Operator { get; set; }
        public ExpressionNode LeftExpression { get; set; }
        public ExpressionNode RightExpression { get; set; }
    }

    class ExpressionNode : Node
    {
           
    }

    class ExpressionArrayGetNode : ExpressionNode
    {
        public ExpressionNode ID { get; set; }
        public ExpressionNode Index { get; set; }
    }

    class ArrayLengthNode : ExpressionNode
    {
        public ExpressionNode ID { get; set; }
    }

    class MethodCallNode : ExpressionNode
    {
        public ExpressionNode ID { get; set; }
        public IdentifierNode MethodName { get; set; }
        public MethodParametersNode[] Parameters { get; set; }
    }

    class ReadNode : ExpressionNode
    {

    }

    class IntegerNode : ExpressionNode
    {
        public int Value { get; set; }
    }

    class BooleanNode : ExpressionNode
    {
        public bool Value { get; set; }
    }

    class ThisNode : ExpressionNode
    {
        
    }

    class NewIntArrayNode : ExpressionNode
    {
        ExpressionNode Length { get; set; }
    }

    class NewNode : ExpressionNode
    {
        IdentifierNode ID { get; set; }
    }

    class NotNode : ExpressionNode
    {
        ExpressionNode Expression { get; set; }
    }

    class ExpressionInPars :ExpressionNode
    {
        ExpressionNode Expression { get; set; }
    }

    class IdentifierNode : Node
    {
        string Name { get; set; }
    }
}
