using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.GeneratedParser;
using Compilerbau.AST;

namespace CustomExtensions
{
    using static Compilerbau.GeneratedParser.MiniJavaParser;

    static class ExtensionMethods
    {
        public static Prg ToAst(this PrgContext prgContext)
        {
            return new Prg(prgContext.mainClass().ToAst(), prgContext.classDeclaration().Select(classcontext => classcontext.ToAst()).ToArray());
        }

        public static MainClass ToAst(this MainClassContext mainClassContext)
        {
            return new MainClass(mainClassContext.Identifier()[0].GetText(), mainClassContext.Identifier()[1].GetText(), mainClassContext.statement().ToAst());
        }

        public static ClassDeclaration ToAst(this ClassDeclarationContext classDeclarationContext)
        {
            return new ClassDeclaration(classDeclarationContext.Identifier()[0].GetText(), classDeclarationContext.Identifier()[1].GetText(), classDeclarationContext.varDeclaration().Select(varContext => varContext.ToAst()).ToArray(), classDeclarationContext.methodDeclaration().Select(methodContext => methodContext.ToAst()).ToArray());
        }

        public static MethodDeclaration ToAst(this MethodDeclarationContext classDeclarationContext)
        {
            return null;
        }

        public static VarDeclaration ToAst(this VarDeclarationContext varDeclarationContext)
        {
            return new VarDeclaration(varDeclarationContext.type().ToAst(), varDeclarationContext.Identifier().GetText());
        }

        public static Compilerbau.AST.Type ToAst(this TypeContext typeContext)
        {
            switch (typeContext.GetText())
            {
                case "int": return null;
                case "int[]": return null;
                case "boolean": return null;   
                // TODO identifier type
            }
            return null;
        }

        public static Statement ToAst(this StatementContext statementContext)
        {
            switch (statementContext)
            {
                case IfelseBlockContext ifelseBlock: return new IfElseBlock(ifelseBlock.expression().ToAst(), ifelseBlock.statement()[0].ToAst(), ifelseBlock.statement()[1].ToAst());
                case WhileBlockContext whileContext: return new WhileBlock(whileContext.expression().ToAst(), whileContext.statement().ToAst());
                case VarAssignmentContext varAssign: return new VarAssignment(varAssign.Identifier().GetText(), varAssign.expression().ToAst());
                case ArrayAssignmentContext arrayAssign: return new ArrayAssignment(arrayAssign.Identifier().GetText(), arrayAssign.expression()[0].ToAst(), arrayAssign.expression()[1].ToAst());
                case PrintContext printContext: return new Print(printContext.expression().ToAst());
                case WriteContext writeContext: return new Write(writeContext.expression().ToAst());
                case BlockStatementContext blockContext: return new BlockStatement(blockContext.statement().Select(context => context.ToAst()).ToArray());
                default: throw new Exception();
            }
        }

        public static Expression ToAst(this ExpressionContext expressionContext)
        {
            switch (expressionContext)
            {
                case BinaryExpressionContext binaryExContext: return null;
                case ArrayAccessExpressionContext arrayAccessContext: return null;
                case ArrayLengthExpressionContext arrayLengthContext: return null;
                case MethodCallExpressionContext methodCallContext: return null;
                case ReadExpressionContext readContext: return null;
                case IntegerLitExpressionContext integerContext: return null;
                case BooleanLitExpressionContext booleanContext: return null;
                case ThisExpressionContext thisContext: return null;
                case ArrayInstantiationExpressionContext arrayInstContext: return null;
                case ObjectInstantiationExpressionContext objectInstContext: return null;
                case NotExpressionContext notContext: return null;
                case ParentExpressionContext parentContext: return null;
            }

            return null;
        }
    }
}
