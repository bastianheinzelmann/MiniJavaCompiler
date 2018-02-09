using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.I386
{
    class InstrUnary : IMachineInstruction
    {
        public enum Kind
        {
            PUSH, POP, NEG, NOT, INC, DEC, IDIV
        }

        private Operand op;
        private Kind kind;

        public InstrUnary(Kind kind, Operand op)
        {
            this.op = op;
            this.kind = kind;
        }

        public IEnumerator<Temp> Use()
        {
            List<Temp> activeTemps = new List<Temp>();
            if (kind == Kind.IDIV)
            {
                activeTemps.Add(I386CodeGenerator.EDX);
            }
            if (op is Operand.Reg reg)
            {
                //if (Temp.IsSpecialReg(reg.reg))
                //{
                //    return Enumerable.Empty<Temp>().GetEnumerator();
                //}
                //activeTemps.Add(reg.reg);

                if (!Temp.IsSpecialReg(reg.reg))
                {
                    activeTemps.Add(reg.reg);
                }
            }
            else if(op is Operand.Mem mem)
            {
                //if (Temp.IsSpecialReg(mem.bas))
                //{
                //    return Enumerable.Empty<Temp>().GetEnumerator();
                //}
                //activeTemps.Add(mem.bas);

                if (!Temp.IsSpecialReg(mem.bas))
                {
                    activeTemps.Add(mem.bas);
                }
            }
            return activeTemps.GetEnumerator();
        }

        public IEnumerator<Temp> Def()
        {
            if(kind == Kind.IDIV)
            {
                return new List<Temp> { I386CodeGenerator.EDX }.GetEnumerator();
            }
            else
            {
                return Enumerable.Empty<Temp>().GetEnumerator();
            }
        }

        public IEnumerator<Label> Jumps()
        {
            return null;
        }

        public bool IsFallThrough()
        {
            return true;
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            return null;
        }

        public Label IsLabel()
        {
            return null;
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            if (op is Operand.Reg t)
            {
                t.reg = sigma.Invoke(t.reg);
            }
            else if (op is Operand.Mem m)
            {
                m.bas = sigma.Invoke(m.bas);
            }
        }

        public override string ToString()
        {
            return "\t" + kind + " " + op + "\n";
        }
    }
}
