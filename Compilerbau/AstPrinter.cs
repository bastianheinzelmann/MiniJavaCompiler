
using System;
using Antlr4.Runtime;
using Compilerbau.GeneratedParser;
using Antlr4.Runtime.Tree;

namespace Compilerbau
{
    class AstPrinter : AstVisitor<string>
    {
        public override string Visit(ProgramNode node)
        {
            return Visit(node.MainClassNode) + Visit(node.ClassDeclarationNode);
        }

        public override string Visit(MainClassNode node)
        {
            return node.ClassName + "\n" + node.ParameterName + Visit(node.StatementNode);
        }

        public override string Visit(ClassDeclarationNode node)
        {
            throw new NotImplementedException();
        }

        public override string Visit(VarDeclarationNode node)
        {
            throw new NotImplementedException();
        }

        public override string Visit(MethodDeclarationNode node)
        {
            throw new NotImplementedException();
        }

        public override string Visit(ParameterNode node)
        {
            throw new NotImplementedException();
        }

        public override string Visit(MethodBodyNode node)
        {
            throw new NotImplementedException();
        }

        public override string Visit(StatementNode node)
        {
            throw new NotImplementedException();
        }
    }
}
