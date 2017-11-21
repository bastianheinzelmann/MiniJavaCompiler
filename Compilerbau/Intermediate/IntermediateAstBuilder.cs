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

        private List<Function> BuildFunctions(Prg prg)
        {
            List<Function> functions = new List<Function>();

            // main method
            functions.Add(new Function(new Label("main"), 2, new List<Stm>() { (BuildBody(prg.MainClass.Statement)) }, new Temp()));

            foreach(var classDecl in prg.ClassDeclarations)
            {
                foreach(var methodDecl in classDecl.MethodDeclarations)
                {
                    List<Stm> body = new List<Stm>();
                    foreach (var stm in methodDecl.MethodBody.Statements)
                    {
                        body.Add(BuildBody(stm));
                    }
                    functions.Add(new Function(new Label(classDecl.Name + "$" + methodDecl.MethodName), methodDecl.Parameters.Parameters.Length + 1, body, new Temp()));
                }
            }

            return functions;
        }

        private Stm BuildBody(Statement statement)
        {

            switch (statement)
            {
                case BlockStatement blockStm:
                    {
                        List<Stm> stms = new List<Stm>();
                        foreach (Statement stm in blockStm.Statements)
                        {
                            stms.Add(BuildBody(stm));
                        }
                        return new StmSeq(stms);
                    }
                case IfElseBlock ifelseBlock: break;
                case WhileBlock whileBlock: break;
                case VarAssignment varAss:
                    {
                        return new StmMove(BuildExpression(varAss.Expression), BuildExpression(varAss.Expression));
                    }
            }

            return null;
        }

        private Exp BuildExpression(Expression expression)
        {
            return null;
        }

        // ich muss instanzmethoden erst umschreiben in public returntype classname$methodname(class this_, ...)
    }
}
