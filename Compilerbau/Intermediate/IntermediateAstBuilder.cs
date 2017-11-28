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

        public TreeNode BuildIntermediateAst(Prg prg)
        {
            return new TreePrg(BuildFunctions(prg));
        }

        private List<TreeFunction> BuildFunctions(Prg prg)
        {
            List<TreeFunction> functions = new List<TreeFunction>();

            // main method
            functions.Add(new TreeFunction(new Label("main"), 2, new List<TreeStm>() { (BuildBody(prg.MainClass.Statement)) }, new Temp()));

            foreach (var classDecl in prg.ClassDeclarations)
            {
                foreach (var methodDecl in classDecl.MethodDeclarations)
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
                        //StmCJump.Relation rel;
                        Label labelF = new Label();
                        Label labelT = new Label();
                        Label labelExit = new Label();

						switch (ifelseBlock.Expression)
						{
							case LessThan lt:
								{
									return new StmSeq(new List<TreeStm>() { new StmCJump(StmCJump.Relation.LT, BuildExpression(lt.Left), BuildExpression(lt.Right),
								    labelT, labelF), new StmLabel(labelT),BuildBody(ifelseBlock.TrueBranch) , new StmJump(new ExpName(labelExit), new List<Label> { labelExit }),
								    new StmLabel(labelF), BuildBody(ifelseBlock.FalseBranch), new StmLabel(labelExit) });
								}
							case GreaterThan gt:
								{
									return new StmSeq(new List<TreeStm>() { new StmCJump(StmCJump.Relation.GT, BuildExpression(gt.Left), BuildExpression(gt.Right),
								    labelT, labelF), new StmLabel(labelT),BuildBody(ifelseBlock.TrueBranch) , new StmJump(new ExpName(labelExit), new List<Label> { labelExit }),
								    new StmLabel(labelF), BuildBody(ifelseBlock.FalseBranch), new StmLabel(labelExit) });
								}
							default: throw new Exception("No rel matched?");
						}
					}
                case WhileBlock whileBlock:
                    {
                        Label labelStart = new Label();
                        Label labelEnd = new Label();
                        Label labelTrue = new Label();
                        switch (whileBlock.Expression)
                        {
                            case LessThan lt:
                                {
                                    return new StmSeq(new List<TreeStm> { new StmLabel(labelStart), new StmCJump(StmCJump.Relation.LT, BuildExpression(lt.Left), BuildExpression(lt.Right), labelTrue, labelEnd),
                                    new StmLabel(labelTrue), BuildBody(whileBlock.Statement), new StmJump(new ExpName(labelStart), new List<Label>{labelStart}), new StmLabel(labelEnd)});
                                }
                            case GreaterThan gt:
                                {
                                    return new StmSeq(new List<TreeStm> { new StmLabel(labelStart), new StmCJump(StmCJump.Relation.GT, BuildExpression(gt.Left), BuildExpression(gt.Right), labelTrue, labelEnd),
                                    new StmLabel(labelTrue), BuildBody(whileBlock.Statement), new StmJump(new ExpName(labelStart), new List<Label>{labelStart}), new StmLabel(labelEnd)});
                                }
                            default: throw new Exception("No rel matched in while?");
                        }
                    }
                case VarAssignment varAss:
                    {
                        return new StmMove(BuildExpression(varAss.Expression), BuildExpression(varAss.Expression));
                    }
                case ArrayAssignment arrAss:
                    {
                        return new StmMove(new ExpMem(new ExpBinOp(ExpBinOp.Op.PLUS, new ExpTemp(new Temp()), new ExpBinOp(ExpBinOp.Op.MUL, new ExpConst(WORDSIZE), new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrAss.Index), new ExpConst(1))))), 
                        BuildExpression(arrAss.Value));
                    }
                case Print print:
                    {
                        return new StmMove(new ExpTemp(new Temp()), new ExpCall(new ExpName(new Label("L_println_int")), new List<TreeExp> { BuildExpression(print.Expression) }));
                    }
                case Write write: break;
            }

            return null;
        }

        private TreeExp BuildExpression(Expression expression)
        {
            switch (expression)
            {
                case Identifier id:
                    {
                        break;
                    }
                case And and:
                    {
                        return new ExpBinOp(ExpBinOp.Op.AND, BuildExpression(expression), BuildExpression(expression));
                    }
                case Plus plus:
                    {
                        return new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(expression), BuildExpression(expression));
                    }
                case Minus minus:
                    {
                        return new ExpBinOp(ExpBinOp.Op.MINUS, BuildExpression(expression), BuildExpression(expression));
                    }
                case Times times:
                    {
                        return new ExpBinOp(ExpBinOp.Op.MUL, BuildExpression(expression), BuildExpression(expression));
                    }
                case Division division:
                    {
                        return new ExpBinOp(ExpBinOp.Op.DIV, BuildExpression(expression), BuildExpression(expression));
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
                        break; // i dont care TODO
                    }
                case ArrayAccess arrAcc:
                    {
                        return new ExpMem(new ExpBinOp(ExpBinOp.Op.PLUS, new ExpTemp(new Temp()), new ExpBinOp(ExpBinOp.Op.MUL, new ExpConst(WORDSIZE), new ExpBinOp(ExpBinOp.Op.PLUS, BuildExpression(arrAcc.Index), new ExpConst(1)))));
                    }
                case ArrayLength arrlength:
                    {
                        return new ExpMem(BuildExpression(arrlength.Exp));
                    }
                case MethodCall call:
                    {
                        List<TreeExp> parameters = new List<TreeExp>();

                        foreach(var parameter in call.Parameters)
                        {
                            parameters.Add(BuildExpression(parameter));
                        }
                        // TODO method call and first parameter
                        return new ExpCall(new ExpName(new Label(call.MethodName)), parameters);
                    }
                case Read read:
                    {
                        //TODO
                        break;
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
                        break;
                    }
                case ArrayInstantiation arrayInst:
                    {
                        break;
                    }
                case ObjectInstantiation objInst:
                    {
                        break;  // TODO a const list of all standard methods :)
                    }
                case Not not:
                    {
                        break;
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

            return null;
        }
    }
}
