using Antlr4.Runtime.Misc;
using Compilerbau.GeneratedParser;
using System;

namespace Compilerbau
{
    class BuildAstVisitor : MiniJavaBaseVisitor<Node>
    {

        public override string ToString()
        {


            return "";
        }

        public override Node VisitPrg([NotNull] MiniJavaParser.PrgContext context)
        {
            ProgramNode node = new ProgramNode();
            node.MainClassNode = VisitChildren(context);
            return node;
        }

        public override Node VisitMainClass([NotNull] MiniJavaParser.MainClassContext context)
        {
            MainClassNode node = new MainClassNode();
            node.ClassName = context.Identifier()[0].GetText();
            node.ParameterName = context.Identifier()[1].GetText();

            node.StatementNode = Visit(context.statement());

            return node;
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

            for (int i = 0; i < methodDeclarationLength; i++)
            {
                node.MethodDeclarationNodes[i] = Visit(methodDeclarations[i]);
            }

            return node;
        }

        public override Node VisitVarDeclaration([NotNull] MiniJavaParser.VarDeclarationContext context)
        {
            VarDeclarationNode node = new VarDeclarationNode();
            if (context.type().Identifier() != null)
            {
                node.Type = new IdType(context.type().Identifier().GetText());
            }
            else
            {

                switch (context.type().GetText())
                {
                    case "int": node.Type = new PrimitiveType(MiniJavaType.INT); break;
                    case "int[]": node.Type = new PrimitiveType(MiniJavaType.INTARRAY); break;
                    case "boolean": node.Type = new PrimitiveType(MiniJavaType.BOOLEAN); break;
                }
            }

            node.Name = context.Identifier().GetText();

            return node;
        }

        public override Node VisitMethodDeclaration([NotNull] MiniJavaParser.MethodDeclarationContext context)
        {
            MethodDeclarationNode node = new MethodDeclarationNode();
            if (context.type().Identifier() != null)
            {
                node.ReturnType = new IdType(context.type().Identifier().GetText());
            }
            else
            {

                switch (context.type().GetText())
                {
                    case "int": node.ReturnType = new PrimitiveType(MiniJavaType.INT); break;
                    case "int[]": node.ReturnType = new PrimitiveType(MiniJavaType.INTARRAY); break;
                    case "boolean": node.ReturnType = new PrimitiveType(MiniJavaType.BOOLEAN); break;
                }
            }

            node.MethodName = context.Identifier().GetText();

            node.MethodParameters = Visit(context.methodParameters());
            node.MethodBody = Visit(context.methodBody());

            return node;
        }

        public override Node VisitMethodParameters([NotNull] MiniJavaParser.MethodParametersContext context)
        {
            ParameterNode node = new ParameterNode();

            var types = context.type();
            var identifiers = context.Identifier();

            node.Parameters = new Tuple<Type, string>[types.Length];

            for(int i = 0; i < types.Length; i++)
            {
                node.Parameters[i] = new Tuple<Type, string>(new PrimitiveType(MiniJavaType.INT), context.Identifier()[i].GetText());
            }

            return null;
        }

        public override Node VisitMethodBody([NotNull] MiniJavaParser.MethodBodyContext context)
        {
            MethodBodyNode node = new MethodBodyNode();

            var varDeclarations = context.varDeclaration();
            node.VarDeclarationNodes = new VarDeclarationNode[varDeclarations.Length];
            for(int i = 0; i < varDeclarations.Length; i++)
            {
                node.VarDeclarationNodes[i] = Visit(varDeclarations[i]);
            }

            var statements = context.statement();
            node.Statements = new Node[statements.Length];
            for(int i = 0; i < statements.Length; i++)
            {
                node.Statements[i] = Visit(statements[i]);
            }

            node.ReturnExpression = Visit(context.RETURN());

            return node;
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
