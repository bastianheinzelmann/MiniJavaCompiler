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
            return new ClassDeclaration(classDeclarationContext.Identifier()[0].GetText(), classDeclarationContext.Identifier().Length > 1 ? classDeclarationContext.Identifier()[1].GetText() : null, classDeclarationContext.varDeclaration().Select(varContext => varContext.ToAst()).ToArray(), classDeclarationContext.methodDeclaration().Select(methodContext => methodContext.ToAst()).ToArray());
        }

        public static MethodDeclaration ToAst(this MethodDeclarationContext methodDeclarationContext)
        {
            return new MethodDeclaration(methodDeclarationContext.type().ToAst(), methodDeclarationContext.Identifier().GetText(), methodDeclarationContext.methodParameters().ToAst(), false, methodDeclarationContext.methodBody().ToAst());
        }

        public static MethodBody ToAst(this MethodBodyContext methodBodyContext)
        {
            return new MethodBody(methodBodyContext.varDeclaration().Select(varDecl => varDecl.ToAst()).ToArray(), methodBodyContext.statement().Select(stm => stm.ToAst()).ToArray(), methodBodyContext.expression().ToAst());
        }

        public static Params ToAst(this MethodParametersContext methodParametersContext)
        {
            Compilerbau.AST.Type[] types = methodParametersContext.type().Select(t => t.ToAst()).ToArray();
            string[] names = methodParametersContext.Identifier().Select(n => n.GetText()).ToArray();

            Tuple<Compilerbau.AST.Type, string>[] parameters = new Tuple<Compilerbau.AST.Type, string>[names.Length];
            for(int i = 0; i < names.Length; i++)
            {
                parameters[i] = new Tuple<Compilerbau.AST.Type, string>(types[i], names[i]);
            }

            return new Params(parameters);
        }

        public static VarDeclaration ToAst(this VarDeclarationContext varDeclarationContext)
        {
            return new VarDeclaration(varDeclarationContext.type().ToAst(), varDeclarationContext.Identifier().GetText());
        }

        public static Compilerbau.AST.Type ToAst(this TypeContext typeContext)
        {
            switch (typeContext.GetText())
            {
                case "int": return new Int();
                case "int[]": return new IntArray();
                case "boolean": return new Compilerbau.AST.Boolean();
                default: return new ObjectType(typeContext.Identifier().GetText()); //identifier case
            }

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
                case BinaryExpressionContext binaryExContext: return binaryExContext.ToAst();
                case ArrayAccessExpressionContext arrayAccessContext: return new ArrayAccess(arrayAccessContext.expression()[0].ToAst(), arrayAccessContext.expression()[1].ToAst());
                case ArrayLengthExpressionContext arrayLengthContext: return new ArrayLength(arrayLengthContext.expression().ToAst());
                case MethodCallExpressionContext methodCallContext: return new MethodCall(methodCallContext.expression()[0].ToAst(), methodCallContext.Identifier().GetText(), methodCallContext.expression().Select(par => par.ToAst()).ToArray());
                case ReadExpressionContext readContext: return new Read();
                case IntegerLitExpressionContext integerContext: return new IntegerLit(int.Parse(integerContext.GetText()));
                case BooleanLitExpressionContext booleanContext: return new BooleanLit(bool.Parse(booleanContext.GetText()));
                case ThisExpressionContext thisContext: return new This();
                case ArrayInstantiationExpressionContext arrayInstContext: return new ArrayInstantiation(arrayInstContext.expression().ToAst());
                case ObjectInstantiationExpressionContext objectInstContext: return new ObjectInstantiation(objectInstContext.Identifier().GetText());
                case NotExpressionContext notContext: return new Not(notContext.expression().ToAst());
                case ParentExpressionContext parentContext: return new Parent(parentContext.expression().ToAst());
                case IdentifierExpressionContext identifierContext: return new Identifier(identifierContext.Identifier().GetText());
                default: throw new Exception("No match???");
            }
        }

        public static BinaryExpression ToAst(this BinaryExpressionContext binaryExpressionContext)
        {
            switch (binaryExpressionContext.BinaryOperator().GetText())
            {
                case "&&": return new And(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case "+" : return new Plus(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case "-" : return new Minus(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case "*" : return new Times(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case "/" : return new Division(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case "<" : return new LessThan(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                case ">" : return new GreaterThan(binaryExpressionContext.expression()[0].ToAst(), binaryExpressionContext.expression()[1].ToAst());
                default: throw new Exception(":(");
            }
        }
    }
}
