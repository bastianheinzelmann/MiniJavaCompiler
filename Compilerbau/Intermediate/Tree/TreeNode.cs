using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate.Tree
{
    class TreeNode
    {
    }

    class TreePrg : TreeNode
    {
        public List<Function> Functions {get; set; }
        
        public TreePrg(List<Function> functions)
        {
            Functions = functions;
        }
    }

    class Function : TreeNode
    {
        public Label Name { get; set; }
        public int NumberOfParameters { get; set; }
        public List<Stm> Body { get; set; }
        public Temp ReturnTemp { get; set; }

        public Function(Label name, int numberOfParameters, List<Stm> body, Temp returnTemp)
        {
            Name = name;
            NumberOfParameters = numberOfParameters;
            Body = body;
            ReturnTemp = returnTemp;
        }
    }

#region Statements

    class Stm : TreeNode
    {

    }

    class StmCJump : Stm
    {

    }

    class StmLabel : Stm
    {

    }

    class StmMove : Stm
    {
        public Exp Dest { get; set; }
        public Exp Source { get; set; }

        public StmMove(Exp dest, Exp source)
        {
            Dest = dest;
            Source = source;
        }
    }

    class StmSeq : Stm
    {
        public List<Stm> Stms { get; set; }

        public StmSeq(List<Stm> stms)
        {
            Stms = stms;
        }
    }

#endregion

    class Exp
    {

    }

    class ExpBinOp
    {

    }

    class ExpCall
    {

    }

    class ExpConst
    {

    }

    class ExpESeq
    {

    }

    class ExpMem
    {

    }

    class ExpName
    {

    }

    class ExpParam
    {

    }

    class ExpTemp
    {

    }
}
