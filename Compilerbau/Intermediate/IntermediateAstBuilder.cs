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
        public TreeNode BuildIntermediateAst(Node ast)
        {
            switch (ast)
            {
                case Prg prg: return new TreePrg(new Function[1]);
            }

            return null;
        }

        public void BuildFunctionList()
        {

        }

        // ich muss instanzmethoden erst umschreiben in public returntype classname$methodname(class this_, ...)
    }
}
