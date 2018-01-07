using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.I386
{
    class InstrJump : IMachineInstruction
    {
        public enum Kind
        {
            JMP, J, CALL
        }

        public enum Cond
        {
            E, NE, L, LE, G, GE, Z
        }

        private Kind kind;
        private Label label;
        private Operand dest;
        private Cond cond;

        public InstrJump(Kind kind, Label label)
        {
            this.kind = kind;
            this.label = label;
        }

        public InstrJump(Kind kind, Operand dest)
        {
            this.kind = kind;
            this.dest = dest;
        }

        public InstrJump(Cond cond, Label label)
        {
            kind = Kind.J;
            this.label = label;
            this.cond = cond;
        }

        public InstrJump(Kind kind, Label label, Operand dest, Cond cond)
        {
            this.kind = kind;
            this.label = label;
            this.dest = dest;
            this.cond = cond;
        }

        public IEnumerator<Temp> Def()
        {
            return new List<Temp>().GetEnumerator();
        }

        public bool IsFallThrough()
        {
            if(kind == Kind.JMP)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public Label IsLabel()
        {
            return null;
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            return null;
        }

        public IEnumerator<Label> Jumps()
        {
            List<Label> list = new List<Label> { label };
            return list.GetEnumerator();
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Use()
        {
            List<Temp> activeTemps = new List<Temp>();
            if(kind == Kind.J)
            {
                if(dest is Operand.Reg reg)
                {
                    activeTemps.Add(reg.reg);
                }
            }

            return activeTemps.GetEnumerator();
        }

        public override string ToString()
        {
            String ins = (kind == Kind.J) ? (kind.ToString() + cond.ToString()) : kind.ToString();
            return "\t" + ins + " " + (label != null ? label.ToString() : dest.ToString()) + "\n";
        }
    }
}
