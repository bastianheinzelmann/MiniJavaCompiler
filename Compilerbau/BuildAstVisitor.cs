using Antlr4.Runtime.Misc;
using Compilerbau.GeneratedParser;
using System;

namespace Compilerbau
{
    class BuildAstVisitor : MiniJavaBaseVisitor<Node>
    {

        public override Node VisitPrg([NotNull] MiniJavaParser.PrgContext context)
        {
            ProgramNode node = new ProgramNode();
            node.MainClassNode = VisitChildren(context);
            return node;
        }

        public override Node VisitMainClass([NotNull] MiniJavaParser.MainClassContext context)
        {
            return null;
        }

        public override Node VisitClassDeclaration([NotNull] MiniJavaParser.ClassDeclarationContext context)
        {
            ClassDeclarationNode node = new ClassDeclarationNode();

            node.ClassName = context.Identifier()[0].GetText();

            if(context.Identifier().Length > 1)
                node.ClassName = context.Identifier()[1].GetText();

            var varDeclarationContexts = context.varDeclaration();
            var methodDeclarations = context.methodDeclaration();

            int varDeclarationLength = varDeclarationContexts.Length;
            int methodDeclarationLength = methodDeclarations.Length;

            node.VarDeclarationNodes = new Node[varDeclarationLength];
            node.MethodDeclarationNodes = new Node[methodDeclarationLength];

            for(int i = 0; i < varDeclarationLength; i++)
            {
                node.VarDeclarationNodes[i] = Visit(varDeclarationContexts[i]);
            }

            for (int i = 0; i < varDeclarationLength; i++)
            {
                node.MethodDeclarationNodes[i] = Visit(methodDeclarations[i]);
            }

            return node;
        }

        public override Node VisitVarDeclaration([NotNull] MiniJavaParser.VarDeclarationContext context)
        {
            return base.VisitVarDeclaration(context);
        }

        public override Node VisitMethodDeclaration([NotNull] MiniJavaParser.MethodDeclarationContext context)
        {
            return base.VisitMethodDeclaration(context);
        }

        public override Node VisitMethodParameters([NotNull] MiniJavaParser.MethodParametersContext context)
        {
            return base.VisitMethodParameters(context);
        }

        public override Node VisitMethodBody([NotNull] MiniJavaParser.MethodBodyContext context)
        {
            return base.VisitMethodBody(context);
        }

        public override Node VisitType([NotNull] MiniJavaParser.TypeContext context)
        {
            return base.VisitType(context);
        }

        public override Node VisitStatement([NotNull] MiniJavaParser.StatementContext context)
        {
            return base.VisitStatement(context);
        }

        public override Node VisitExpression([NotNull] MiniJavaParser.ExpressionContext context)
        {
            return base.VisitExpression(context);
        }
    }
}
