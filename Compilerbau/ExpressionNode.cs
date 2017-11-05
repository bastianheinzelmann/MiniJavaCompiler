using System;

namespace Compilerbau
{
    abstract class Node{ }

    class ProgramNode : Node
    {
        public MainClassNode MainClassNode { get; set; }
        public ClassDeclarationNode GetClassDeclarationNode { get; set; }
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
        public Tuple<TypeNode, IdentifierNode>[] Parameters { get; set; }
    }

    class MethodBodyNode : Node
    {
        VarDeclarationNode[] VarDeclarationNodes { get; set; }
        StatementNode[] Statements { get; set; }
        ExpressionNode ReturnExpression { get; set; }
    }

    class TypeNode : Node
    {
        // mal sehen
    }

    class StatementNode : Node
    {
        // mal sehen
    }

    class ExpressionNode : Node
    {
        // mal sehen
    }

    class IdentifierNode : Node
    {
        string name { get; set; }
    }
}
