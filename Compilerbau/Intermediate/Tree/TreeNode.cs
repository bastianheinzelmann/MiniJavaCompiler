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
        public Function[] Functions {get; set; }
        
        public TreePrg(Function[] functions)
        {
            Functions = functions;
        }
    }

    class Function : TreeNode
    {

    }

    class Stm : TreeNode
    {

    }

    class StmCJump
    {

    }

    class StmLabel
    {

    }

    class StmMove
    {

    }

    class StmSeq
    {

    }

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
