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
        public List<TreeStm> Body { get; set; }
        public TreeExp Exp { get; set; }

        public CanonizedExp(TreeExp exp)
        {
            Body = Enumerable.Empty<TreeStm>().ToList();
            this.Exp = exp;
        }

        public CanonizedExp(List<TreeStm> body, TreeExp exp)
        {
            Body = body;
            Exp = exp;
        }

        public CanonizedExp MapExp(Func<TreeExp, TreeExp> f)
        {
            return new CanonizedExp(Body, f(Exp));
        }

        public static CanonizedExp Combine(CanonizedExp b1, CanonizedExp b2,
            Func<TreeExp, TreeExp, TreeExp> f)
        {
            CanonizedExp c = Compose(b1, b2.Body);
            return new CanonizedExp(c.Body, f(c.Exp, b2.Exp));
        }

        // cfunc, cargs, (a ,b) => new ExpCall(a, b)
        public static CanonizedExp Combine(CanonizedExp b1, List<CanonizedExp> clist,
                            Func<TreeExp, List<TreeExp>, TreeExp> f)
        {
            List<CanonizedExp> clistRev = new List<CanonizedExp>(clist);
            clistRev.Reverse();

            List<TreeExp> joined = new List<TreeExp>();
            List<TreeStm> stms = new List<TreeStm>();
            foreach (CanonizedExp ce in clistRev)
            {
                CanonizedExp ca = Compose(ce, stms);
                stms = ca.Body;
                joined.Insert(0, ca.Exp);
            }
            CanonizedExp c = Compose(b1, stms);
            return new CanonizedExp(c.Body, f(c.Exp, joined));
        }

        // esrc => new StmMove(move.Dest, esrc)
        public List<TreeStm> ToStm(Func<TreeExp, TreeStm> f)
        {
            List<TreeStm> res = new List<TreeStm>(Body);
            res.Add(f(Exp));
            return res;
        }

        public static List<TreeStm> ToStm(CanonizedExp b1, CanonizedExp b2, Func<TreeExp, TreeExp, TreeStm> f)
        {
            CanonizedExp c = Compose(b1, b2.Body);
            List<TreeStm> res = new List<TreeStm>(c.Body);
            res.Add(f(c.Exp, b2.Exp));
            return res;
        }

        private static CanonizedExp Compose(CanonizedExp c, List<TreeStm> stms)
        {
            if(!stms.Any())
            {
                return c;
            }

            List<TreeStm> newstms = new List<TreeStm>();
            newstms.AddRange(c.Body);

            if(Commute(stms, c.Exp))
            {
                newstms.AddRange(stms);
                return new CanonizedExp(newstms, c.Exp);
            }
            else
            {
                TreeExp t = new ExpTemp(new Temp());
                newstms.Add(new StmMove(t, c.Exp));
                newstms.AddRange(stms);
                return new CanonizedExp(newstms, t);
            }
        }

        private static bool Commute(TreeStm s, TreeExp e)
        {
            return (e is ExpName) || (e is ExpConst);
        }

        private static bool Commute(List<TreeStm> stms, TreeExp e)
        {
            return stms.Any(s => Commute(s, e) == true);
        }
    }
}
