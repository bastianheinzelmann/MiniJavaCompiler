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
                case BinaryFunContext binaryFunContext: return binaryFunContext.ToAst();
                case ArrayAccessExpressionContext arrayAccessContext: return new ArrayAccess(arrayAccessContext.expression()[0].ToAst(), arrayAccessContext.expression()[1].ToAst());
                case ArrayLengthExpressionContext arrayLengthContext: return new ArrayLength(arrayLengthContext.expression().ToAst());
                case MethodCallExpressionContext methodCallContext:
                    {               
                        Expression[] parameters = new Expression[methodCallContext.expression().Length - 1];
                        for (int i = 1; i < methodCallContext.expression().Length; i++)
                        {
                            parameters[i - 1] = methodCallContext.expression()[i].ToAst();
                        }
                        return new MethodCall(methodCallContext.expression()[0].ToAst(), methodCallContext.Identifier().GetText(), parameters);
                    }
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

        public static Expression ToAst(this BinaryFunContext binaryFunContext)
        {
            switch (binaryFunContext.GetChild(0))
            {
                case And1Context and1: return and1.relationalExpression().ToAst();
                case And2Context and2: return new And(and2.andExpression().ToAst(), and2.relationalExpression().ToAst());
            }

            return null;
        }

        public static Expression ToAst(this AndExpressionContext andExpressionContext)
        {
            switch (andExpressionContext)
            {
                case And1Context and1: return and1.relationalExpression().ToAst();
                case And2Context and2: return new And(and2.andExpression().ToAst(), and2.relationalExpression().ToAst());
                default: throw new Exception();
            }
        }

        public static Expression ToAst(this RelationalExpressionContext relationalExpressionContext)
        {
            switch (relationalExpressionContext)
            {
                case Relational1Context relation1: return relation1.additiveExpression().ToAst();
                case Relational2Context relation2: return new LessThan(relation2.relationalExpression().ToAst(), relation2.additiveExpression().ToAst());
                case Relational3Context relation3: return new GreaterThan(relation3.relationalExpression().ToAst(), relation3.additiveExpression().ToAst());
                default: throw new Exception();
            }
        }

        public static Expression ToAst(this AdditiveExpressionContext additiveExpressionContext)
        {
            switch (additiveExpressionContext)
            {
                case Additive1Context add1: return add1.ToAst();
                case Additive2Context add2: return new Plus(add2.additiveExpression().ToAst(), add2.multiplicativeExpression().ToAst());
                case Additive3Context add3: return new Minus(add3.additiveExpression().ToAst(), add3.multiplicativeExpression().ToAst());
                default: throw new Exception();
            }
        }

        public static Expression ToAst(this MultiplicativeExpressionContext multiplicativeExpressionContext)
        {
            switch (multiplicativeExpressionContext)
            {
                case Atom1Context atom: return atom.ToAst();
                case Multiplicative1Context multi1: return new Times(multi1.multiplicativeExpression()[0].ToAst(), multi1.multiplicativeExpression()[1].ToAst());
                case Multiplicative2Context multi2: return new Division(multi2.multiplicativeExpression()[0].ToAst(), multi2.multiplicativeExpression()[1].ToAst());
                default: throw new Exception();
            }
        }

        public static Expression ToAst(this Atom1Context atom1Context)
        {
            switch (atom1Context.GetChild(0))
            {
                case IntAtomContext intLit: return new IntegerLit(int.Parse(intLit.GetText()));
                case BoolAtomContext boolAtom: return new BooleanLit(bool.Parse(boolAtom.GetText()));
                case IdAtomContext idAtom: return new Identifier(idAtom.GetText());
                default: throw new Exception();
            }
        }
    }
}
