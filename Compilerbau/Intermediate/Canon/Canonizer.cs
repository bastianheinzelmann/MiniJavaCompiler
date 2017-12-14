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

                    }
                case StmJump jump:
                    {

                    }
                case StmCJump cjump:
                    {

                    }
                case StmSeq seq:
                    {

                    }
                case StmLabel label:
                    {

                    }
                default: throw new Exception("Ya know, did not match any Statement.");
            }
        }

        private CanonizedExp CanonExpression(TreeExp exp)
        {
            switch (exp)
            {
                case ExpCall call:
                    {

                    }
                case ExpConst constant:
                    {

                    }
                case ExpName name:
                    {

                    }
                case ExpTemp temp:
                    {

                    }
                case ExpParam para:
                    {

                    }
                case ExpMem mem:
                    {

                    }
                case ExpBinOp binop;
                    {

                    }
                case ExpESeq eseq:
                    {

                    }
                default: throw new Exception("Shiiiit");
            }
        }
    }
}
