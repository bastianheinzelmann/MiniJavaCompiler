using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate.Tree;

namespace Compilerbau.Intermediate.Canon
{
    class Canonizer
    {
        public TreePrg CanonPrg(TreePrg prg)
        {
            List<TreeFunction> canonizedFunctions = new List<TreeFunction>();
            foreach(var tfunction in prg)
            {
                canonizedFunctions.Add(CanonFunction(tfunction));
            }
            return new TreePrg(canonizedFunctions);
        }

        private TreeFunction CanonFunction(TreeFunction function)
        {
            List<TreeStm> canonBody = new List<TreeStm>();
            foreach(var s in function)
            {
                canonBody.AddRange(CanonStm(s));
            }
            return new TreeFunction(function.Name, function.NumberOfParameters, canonBody, function.ReturnTemp);
        }

        private List<TreeStm> CanonStm(TreeStm s)
        {
            switch (s)
            {
                case StmMove move:
                    {
                        if (move.Dest is ExpMem mem)
                        {
                            TreeExp addr = ((ExpMem)move.Dest).Address;
                            CanonExpression(addr);
                            return CanonizedExp.ToStm(CanonNoTopCall(addr), CanonNoTopCall(move.Source),
                                (eaddr, esrc) => new StmMove(new ExpMem(eaddr), esrc));
                        }
                        else if (move.Dest is ExpTemp)
                        {
                            return CanonExpression(move.Source).ToStm(esrc => new StmMove(move.Dest, esrc));
                        }
                        else if (move.Dest is ExpParam)
                        {
                            return CanonExpression(move.Source).ToStm(esrc => new StmMove(move.Dest, esrc));
                        }
                        else if (move.Dest is ExpESeq dst)
                        {
                            return CanonStm(new StmSeq(new List<TreeStm> { dst.Stm, new StmMove(dst.Exp, move.Source) }));
                        }
                        else
                        {
                            throw new Exception("Left-hand side of MOVE must be TEMP, PARAM, MEM or ESEQ.");
                        }
                    }
                case StmJump jump:
                    {
                        return CanonNoTopCall(jump.Dest).ToStm(e => new StmJump(e, jump.PossibleTargets));
                    }
                case StmCJump cjump:
                    {
                        return CanonizedExp.ToStm(CanonNoTopCall(cjump.Left), CanonNoTopCall(cjump.Right),
                            (l, r) => new StmCJump(cjump.Rel, l, r, cjump.LabelTrue, cjump.LabelFalse));
                    }
                case StmSeq seq:
                    {
                        List<TreeStm> cstms = new List<TreeStm>();
                        foreach(var stat in seq.Stms)
                        {
                            cstms.AddRange(CanonStm(stat));
                        }
                        return cstms;
                    }
                case StmLabel label:
                    {
                        List<TreeStm> stms = new List<TreeStm>();
                        stms.Add(label);
                        return stms;
                    }
                default: throw new Exception("Ya know, did not match any Statement.");
            }
        }

        CanonizedExp CanonNoTopCall(TreeExp e)
        {
            CanonizedExp ce = CanonExpression(e);
            if(ce.Exp is ExpCall)
            {
                TreeExp call = ce.Exp;
                TreeExp t = new ExpTemp(new Temp());
                List<TreeStm> stms = new List<TreeStm>(ce.Body);
                stms.Add(new StmMove(t, call));
                ce = new CanonizedExp(stms, t);
            }
            return ce;
        }

        private CanonizedExp CanonExpression(TreeExp exp)
        {
            switch (exp)
            {
                case ExpCall call:
                    {
                        CanonizedExp cfunc = CanonNoTopCall(call.Function);

                        List<CanonizedExp> cargs = new List<CanonizedExp>();
                        foreach(var arg in call.Args)
                        {
                            cargs.Add(CanonNoTopCall(arg));
                        }

                        return CanonizedExp.Combine(cfunc, cargs, (a ,b) => new ExpCall(a, b));
                    }
                case ExpConst constant:
                    {
                        return new CanonizedExp(constant);
                    }
                case ExpName name:
                    {
                        return new CanonizedExp(name);
                    }
                case ExpTemp temp:
                    {
                        return new CanonizedExp(temp);
                    }
                case ExpParam para:
                    {
                        return new CanonizedExp(para);
                    }
                case ExpMem mem:
                    {
                        // TODO
                        return CanonNoTopCall(mem.Address).MapExp((a) => new ExpMem(a));
                    }
                case ExpBinOp binop:
                    {
                        return CanonizedExp.Combine(CanonNoTopCall(binop.Left), CanonNoTopCall(binop.Right),
                            (l, r) => new ExpBinOp(binop.Operator, l, r));
                    }
                case ExpESeq eseq:
                    {
                        CanonizedExp b1 = new CanonizedExp(CanonStm(eseq.Stm), new ExpConst(0));
                        CanonizedExp cres = CanonNoTopCall(eseq.Exp);
                        return CanonizedExp.Combine(b1, cres, (nop, e) => e);
                    }
                default: throw new Exception("Shiiiit");
            }
        }
    }
}
