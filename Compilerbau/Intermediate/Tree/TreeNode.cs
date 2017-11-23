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
        public List<TreeFunction> Functions {get; set; }
        
        public TreePrg(List<TreeFunction> functions)
        {
            Functions = functions;
        }
    }

    class TreeFunction : TreeNode
    {
        public Label Name { get; set; }
        public int NumberOfParameters { get; set; }
        public List<TreeStm> Body { get; set; }
        public Temp ReturnTemp { get; set; }

        public TreeFunction(Label name, int numberOfParameters, List<TreeStm> body, Temp returnTemp)
        {
            Name = name;
            NumberOfParameters = numberOfParameters;
            Body = body;
            ReturnTemp = returnTemp;
        }
    }

#region Statements

    class TreeStm : TreeNode
    {

    }

    class StmCJump : TreeStm
    {
        public enum Relation
        {
            EQ, NE, LT, GT, LE, GE, ULT, ULE, UGT, UGE
        }

        public Relation Rel { get; }
        public TreeExp Left { get; }
        public TreeExp Right { get; }
        public Label LabelTrue { get; }
        public Label LabelFalse { get; }

        public StmCJump(Relation rel, TreeExp left, TreeExp right, Label ltrue, Label lfalse)
        {
            Rel = rel;
            Left = left;
            Right = right;
            LabelTrue = ltrue;
            LabelFalse = lfalse;
        }
    }

    class StmJump : TreeStm
    {
        public TreeExp Dest { get; }
        public List<Label> PossibleTargets { get; }

        public StmJump(TreeExp dest, List<Label> targets)
        {
            Dest = dest;
            PossibleTargets = targets;
        }
    }

    class StmLabel : TreeStm
    {
        public Label Label { get; }

        public StmLabel(Label label)
        {
            Label = label;
        }
    }

    class StmMove : TreeStm
    {
        public TreeExp Dest { get; set; }
        public TreeExp Source { get; set; }

        public StmMove(TreeExp dest, TreeExp source)
        {
            Dest = dest;
            Source = source;
        }
    }

    class StmSeq : TreeStm
    {
        public List<TreeStm> Stms { get; set; }

        public StmSeq(List<TreeStm> stms)
        {
            Stms = stms;
        }
    }

#endregion

    class TreeExp
    {

    }

    class ExpBinOp : TreeExp
    {
        public enum Op
        {
            PLUS, MINUS, MUL, DIV, AND, OR, LSHIFT, RSHIFT, ARSHIFT, XOR
        }

        public Op Operator { get; }
        public TreeExp Left { get; }
        public TreeExp Right { get; }

        public ExpBinOp(Op op, TreeExp left, TreeExp right)
        {
            Operator = op;
            Left = left;
            Right = right;
        }
    }

    class ExpCall : TreeExp
    {
        public TreeExp Function { get; }
        public List<TreeExp> Args { get; }

        public ExpCall(TreeExp func, List<TreeExp> args)
        {
            Function = func;
            Args = args;
        }
    }

    class ExpConst : TreeExp
    {
        public int Value { get; }

        public ExpConst(int val)
        {
            Value = val;
        }
    }

    class ExpESeq : TreeExp
    {
        public TreeStm Stm { get; }
        public TreeExp Exp { get; }

        public ExpESeq(TreeStm stm, TreeExp exp)
        {
            Stm = stm;
            Exp = exp;
        }
    }

    class ExpMem : TreeExp
    {
        public TreeExp Address { get; }

        public ExpMem(TreeExp address)
        {
            Address = address;
        }
    }

    class ExpName : TreeExp
    {
        public Label Label { get; }

        public ExpName(Label label)
        {
            Label = label;
        }
    }

    class ExpParam : TreeExp
    {
        public int Number { get; }

        public ExpParam(int number)
        {
            Number = number;
        }
    }

    class ExpTemp : TreeExp
    {
        public Temp Temp { get; }

        public ExpTemp(Temp temp)
        {
            Temp = temp;
        }
    }

    static class ExtensionMethod
    {
        public static StmCJump.Relation Negate(this StmCJump.Relation rel)
        {
            switch (rel)
            {
                case StmCJump.Relation.EQ:
                    return StmCJump.Relation.NE;
                case StmCJump.Relation.NE:
                    return StmCJump.Relation.EQ;
                case StmCJump.Relation.LT:
                    return StmCJump.Relation.GE;
                case StmCJump.Relation.GT:
                    return StmCJump.Relation.LE;
                case StmCJump.Relation.LE:
                    return StmCJump.Relation.GT;
                case StmCJump.Relation.GE:
                    return StmCJump.Relation.LT;
                case StmCJump.Relation.ULT:
                    return StmCJump.Relation.UGE;
                case StmCJump.Relation.UGT:
                    return StmCJump.Relation.ULE;
                case StmCJump.Relation.ULE:
                    return StmCJump.Relation.UGT;
                case StmCJump.Relation.UGE:
                    return StmCJump.Relation.ULT;
                default:
                    return StmCJump.Relation.EQ;
            }
        }
    }
}
