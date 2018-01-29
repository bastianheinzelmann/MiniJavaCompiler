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
        const int WORDSIZE = 4;
        Label HALLOC = new Label("_halloc");
        

        public Dictionary<string, Temp> env = new Dictionary<string, Temp>();
        private Dictionary<string, ExpParam> parEnv = new Dictionary<string, ExpParam>();
        private Dictionary<string, AST.Type> instanceVariables = new Dictionary<string, AST.Type>();
        private VariableShit vshit = new VariableShit();
        private String currentClass;

        public TreeNode BuildIntermediateAst(Prg prg)
        {
            //PrepareTree(prg);
            return new TreePrg(BuildFunctions(prg));
        }

        private void PrepareTree(Prg prg)
        {
            foreach (var classDecl in prg.ClassDeclarations)
            {
                vshit.RawClass.Add(classDecl.Name, classDecl.VarDeclarations.Select(v => v.Name).ToArray());
                foreach(var methodDecl in classDecl.MethodDeclarations)
                {
                    methodDecl.MethodName = classDecl.Name + "$" + methodDecl.MethodName;
                }
            }
        }

        private List<TreeFunction> BuildFunctions(Prg prg)
        {
            PrepareTree(prg);
            List<TreeFunction> functions = new List<TreeFunction>();

            // main method
            Temp mainReturnTemp = new Temp();
            functions.Add(new TreeFunction(new Label("main"), 2, new List<TreeStm>() { (BuildBody(prg.MainClass.Statement)), new StmMove(new ExpTemp(mainReturnTemp), new ExpConst(0)) }, mainReturnTemp));



            foreach (var classDecl in prg.ClassDeclarations)
            {
                currentClass = classDecl.Name;
                foreach (var instanceVar in classDecl.VarDeclarations)
                {
                    instanceVariables.Add(instanceVar.Name, instanceVar.Type);
                }

                foreach (var methodDecl in classDecl.MethodDeclarations)
                {
                    List<TreeStm> body = new List<TreeStm>();

                    // register all params in environment
                    for(int i = 0; i < methodDecl.Parameters.Parameters.Length; i++)
                    {
                        // (i + 1) because of the this pointer which is always the first param 
                        parEnv.Add(methodDecl.Parameters.Parameters[i].Item2, new ExpParam(i + 1));
                    }

                    // register local variables in environment
                    foreach(var local in methodDecl.MethodBody.VarDeclarations)
                    {
                        env.Add(local.Name, new Temp());
                    }

                    foreach (var stm in methodDecl.MethodBody.Statements)
                    {
                        body.Add(BuildBody(stm));
                    }
                    // separate return shit
                    Temp returnVal = new Temp();
                    body.Add(new StmMove(new ExpTemp(returnVal), BuildExpression(methodDecl.MethodBody.ReturnExpression)));
                    // create the treefunction and clear enviroments
                    functions.Add(new TreeFunction(new Label(methodDecl.MethodName), methodDecl.Parameters.Parameters.Length + 1, body, returnVal));
                    parEnv.Clear();
                    env.Clear();
                }

                instanceVariables.Clear();

            }

            return functions;
        }

        private TreeStm BuildBody(Statement statement)
        {
            if(statement == null)
            {
                throw new Exception("Wtf???");
            }
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
                        //StmCJump.Relation rel;
                        Label labelF = new Label();
                        Label labelT = new Label();
                        Label labelExit = new Label();

						return new StmSeq(new List<TreeStm>() { new StmCJump(StmCJump.Relation.EQ, BuildExpression(ifelseBlock.Expression), new ExpConst(1),
						labelT, labelF), new StmLabel(labelT),BuildBody(ifelseBlock.TrueBranch) , new StmJump(new ExpName(labelExit), new List<Label> { labelExit }),
						new StmLabel(labelF), BuildBody(ifelseBlock.FalseBranch), new StmLabel(labelExit) });
						
					}
                case WhileBlock whileBlock:
                    {
                        Label labelStart = new Label();
                        Label labelEnd = new Label();
                        Label labelTrue = new Label();
                        return new StmSeq(new List<TreeStm> { new StmLabel(labelStart), new StmCJump(StmCJump.Relation.EQ, BuildExpression(whileBlock.Expression), new ExpConst(1), labelTrue, labelEnd),
                        new StmLabel(labelTrue), BuildBody(whileBlock.Statement), new StmJump(new ExpName(labelStart), new List<Label>{labelStart}), new StmLabel(labelEnd)});              
                    }
                case VarAssignment varAss:
                    {
                        return new StmMove(BuildExpression(new Identifier(varAss.Id)), BuildExpression(varAss.Expression));
                    }
                case ArrayAssignment arrAss:
                    {
                        return new StmMove(new ExpMem(new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(new Identifier(arrAss.Id)), new ExpBinOp(ExpBinOp.Op.MUL, new ExpConst(WORDSIZE), new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrAss.Index), new ExpConst(1))))), 
                        BuildExpression(arrAss.Value));
                    }
                case Print print:
                    {
                        return new StmMove(new ExpTemp(new Temp()), new ExpCall(new ExpName(new Label("_println_int")), new List<TreeExp> { BuildExpression(print.Expression) }));
                    }
                case Write write:
                    {
                        return new StmMove( new ExpTemp(new Temp()), new ExpCall(new ExpName(new Label("_write")), new List<TreeExp> { BuildExpression(write.Expression) }));
                    }
                default: throw new Exception("Did not match statement");
            }
        }

        private TreeExp BuildExpression(Expression expression)
        {
            switch (expression)
            {
                case Identifier id:
                    {
                        // TODO instance stuff
                        if (env.ContainsKey(id.Name))
                        {
                            return new ExpTemp(env[id.Name]);
                        }
                        else if (parEnv.ContainsKey(id.Name))
                        {
                            return new ExpParam(parEnv[id.Name].Number);
                        }
                        else if (instanceVariables.ContainsKey(id.Name))
                        {
                            int index = -1;
                            for(int i = 0; i < vshit.RawClass[currentClass].Length; i++)
                            {
                                if(vshit.RawClass[currentClass][i] == id.Name)
                                {
                                    index = i;
                                }
                            }
                            if (index < 0) throw new Exception("Instance Variable not found");
                            return new ExpMem(new ExpBinOp(ExpBinOp.Op.PLUS, new ExpParam(0), new ExpBinOp(ExpBinOp.Op.MUL, new ExpConst(index), new ExpConst(WORDSIZE))));
                        }
                        else
                        {
                            throw new Exception("Could not find id in environment");
                        }
                    }
                case And and:
                    {
                        Label labelT = new Label();
                        Label labelF = new Label();
                        Label exit = new Label();

                        ExpTemp leftT = new ExpTemp(new Temp());
                        ExpTemp rightT = new ExpTemp(new Temp());

                        return new ExpESeq( new StmSeq(new List<TreeStm>() { new StmCJump(StmCJump.Relation.EQ, BuildExpression(and.Left), new ExpConst(1),
                        labelT, labelF), new StmLabel(labelT), new StmMove(rightT, BuildExpression(and.Right)), new StmMove(leftT, new ExpConst(1)), new StmJump(new ExpName(exit), new List<Label> { exit }),
                        new StmLabel(labelF), new StmMove(rightT, new ExpConst(0)), new StmMove(leftT, new ExpConst(0)), new StmLabel(exit) }), new ExpBinOp(ExpBinOp.Op.AND, leftT, rightT));

                        //return new ExpBinOp(ExpBinOp.Op.AND, BuildExpression(and.Left), BuildExpression(and.Right)); // true branch
                        // ExpBinOp(ExpBinOp.Op.AND, BuildExpression(and.Left), new ExpConst(0)); false branch
                    }
                case Plus plus:
                    {
                        return new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(plus.Left), BuildExpression(plus.Right));
                    }
                case Minus minus:
                    {
                        return new ExpBinOp(ExpBinOp.Op.MINUS, BuildExpression(minus.Left), BuildExpression(minus.Right));
                    }
                case Times times:
                    {
                        return new ExpBinOp(ExpBinOp.Op.MUL, BuildExpression(times.Left), BuildExpression(times.Right));
                    }
                case Division division:
                    {
                        return new ExpBinOp(ExpBinOp.Op.DIV, BuildExpression(division.Left), BuildExpression(division.Right));
                    }
                case LessThan lt:
                    {
                        Label ltrue = new Label();
                        Label lfalse = new Label();
                        Temp temp = new Temp();

                        return new ExpESeq(new StmSeq(new List<TreeStm>() { new StmMove(new ExpTemp(temp), new ExpConst(0)),
                        new StmCJump(StmCJump.Relation.LT, BuildExpression(lt.Left), BuildExpression(lt.Right), ltrue, lfalse),
                        new StmLabel(ltrue), new StmMove(new ExpTemp(temp), new ExpConst(1)), new StmLabel(lfalse)}), new ExpTemp(temp));
                    }
                case GreaterThan gt:
                    {
                        throw new Exception("Not implemented"); ; // i dont care TODO
                    }
                case ArrayAccess arrAcc:
                    {
                        return new ExpMem(new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrAcc.Index), new ExpBinOp(ExpBinOp.Op.MUL, new ExpConst(WORDSIZE), new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrAcc.Val), new ExpConst(1)))));
                    }
                case ArrayLength arrlength:
                    {
                        return new ExpMem(BuildExpression(arrlength.Exp));
                    }
                case MethodCall call:
                    {
                        List<TreeExp> parameters = new List<TreeExp>();
                        
                        if(call.Exp is This)
                        {
                            parameters.Add(new ExpParam(0));
                        }
                        else
                        {
                            parameters.Add(BuildExpression(call.Exp));
                        }

                        foreach(var parameter in call.Parameters)
                        {
                            parameters.Add(BuildExpression(parameter));
                        }

                        return new ExpCall(new ExpName(new Label(call.EnhancedName)), parameters);
                    }
                case Read read:
                    {
                        //TODO
                        throw new Exception("Not implemented");
                    }
                case IntegerLit integerLit:
                    {
                        return new ExpConst(integerLit.Val);
                    }
                case BooleanLit booleanLit:
                    {
                        int val;
                        val = booleanLit.Val ? 1 : 0;
                        return new ExpConst(val);
                    }
                case This t:
                    {
                        return new ExpParam(0);
                    }
                case ArrayInstantiation arrayInst:
                    {
                        Temp temptemp = new Temp();
                        return new ExpESeq(new StmSeq(new List<TreeStm> { new StmMove(new ExpTemp(temptemp), new ExpCall(new ExpName(HALLOC), new List<TreeExp> { new ExpBinOp(ExpBinOp.Op.MUL, new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrayInst.Length), new ExpConst(1)), new ExpConst(WORDSIZE)) })), new StmMove(new ExpMem(new ExpTemp(temptemp)), BuildExpression(arrayInst.Length)) }), new ExpTemp(temptemp));
                    }
                case ObjectInstantiation objInst:
                    {
                        return new ExpCall(new ExpName(HALLOC), new List<TreeExp> { new ExpConst((vshit.RawClass[objInst.ObjectId].Length) * WORDSIZE) });
                    }
                case Not not:
                    {
                        return new ExpBinOp(ExpBinOp.Op.MINUS, new ExpConst(1), BuildExpression(not.Exp));
                    }
                case Parent par:
                    {
                        return BuildExpression(par.Exp);
                    }
                default:
                    {
                        throw new Exception("Your expression is weird.");
                    }
                
            }
        }
    }
}
