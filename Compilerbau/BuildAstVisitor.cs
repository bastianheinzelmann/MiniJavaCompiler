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
            node.MainClassNode = Visit(context.mainClass());
            //var das = context.classDeclaration(context);

            return node;
        }

        public override Node VisitMainClass([NotNull] MiniJavaParser.MainClassContext context)
        {
            return null;
        }

        public override Node VisitClassDeclaration([NotNull] MiniJavaParser.ClassDeclarationContext context)
        {
            return base.VisitClassDeclaration(context);
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
