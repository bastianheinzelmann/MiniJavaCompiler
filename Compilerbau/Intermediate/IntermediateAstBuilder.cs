using Compilerbau.Intermediate.Tree;
using Compilerbau.AST;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class IntermediateAstBuilder
    {
        public TreeNode BuildIntermediateAst(Prg prg)
        {
                return new TreePrg(BuildFunctions(prg));
        }

        private List<TreeFunction> BuildFunctions(Prg prg)
        {
            List<TreeFunction> functions = new List<TreeFunction>();

            // main method
            functions.Add(new TreeFunction(new Label("main"), 2, new List<TreeStm>() { (BuildBody(prg.MainClass.Statement)) }, new Temp()));

            foreach(var classDecl in prg.ClassDeclarations)
            {
                foreach(var methodDecl in classDecl.MethodDeclarations)
                {
                    List<TreeStm> body = new List<TreeStm>();
                    foreach (var stm in methodDecl.MethodBody.Statements)
                    {
                        body.Add(BuildBody(stm));
                    }
                    functions.Add(new TreeFunction(new Label(classDecl.Name + "$" + methodDecl.MethodName), methodDecl.Parameters.Parameters.Length + 1, body, new Temp()));
                }
            }

            return functions;
        }

        private TreeStm BuildBody(Statement statement)
        {

            switch (statement)
            {
                case BlockStatement blockStm:
                    {
                        List<TreeStm> stms = new List<TreeStm>();
                        foreach (Statement stm in blockStm.Statements)
                        {
                            stms.Add(BuildBody(stm));
                        }
                        return new StmSeq(stms);
                    }
                case IfElseBlock ifelseBlock:
                    {
                        StmCJump.Relation rel;

                        switch (ifelseBlock.Expression)
                        {
                            case LessThan lt: rel = StmCJump.Relation.LT; break;
                            case GreaterThan gt: rel = StmCJump.Relation.GT; break;
                            default: throw new Exception("No rel matched?");
                        }
                        if (ifelseBlock.Expression is LessThan lessthan)
                        {
                            new StmSeq(new List<TreeStm>() { new StmCJump(rel, BuildExpression(lessthan.Left), BuildExpression(lessthan.Right), new Label(), new Label()), new StmLabel(), new StmLabel(),  });
                        }
                    }
                case WhileBlock whileBlock: break;
                case VarAssignment varAss:
                    {
                        return new StmMove(BuildExpression(varAss.Expression), BuildExpression(varAss.Expression));
                    }
                case ArrayAssignment arrAss: break;
                case Print print:
                    {
                        return new ExpCall(new ExpName(new Label("L_println_int")), new List<TreeExp> { BuildExpression(print.Expression) });
                    }
                case Write write: break;
            }

            return null;
        }

        private TreeExp BuildExpression(Expression expression)
        {
            return null;
        }
    }
}
