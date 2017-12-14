using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate.Tree;

namespace Compilerbau.Intermediate.Canon
{
    class CanonizedExp
    {
        private List<TreeStm> body;
        private TreeExp exp;

        CanonizedExp(TreeExp exp)
        {
            body = Enumerable.Empty<TreeStm>().ToList();
            this.exp = exp;
        }

        CanonizedExp(List<TreeStm> body, TreeExp exp)
        {
            this.body = body;
            this.exp = exp;
        }
    }
}
