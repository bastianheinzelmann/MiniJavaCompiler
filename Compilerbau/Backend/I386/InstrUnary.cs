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
            if(op is Operand.Reg reg)
            {
                if (Temp.IsSpecialReg(reg.reg))
                {
                    return Enumerable.Empty<Temp>().GetEnumerator();
                }
                activeTemps.Add(reg.reg);
            }
            else if(op is Operand.Mem mem)
            {
                if (Temp.IsSpecialReg(mem.bas))
                {
                    return Enumerable.Empty<Temp>().GetEnumerator();
                }
                activeTemps.Add(mem.bas);
            }
            return activeTemps.GetEnumerator();
        }

        public IEnumerator<Temp> Def()
        {
            return Enumerable.Empty<Temp>().GetEnumerator();
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
            throw new NotImplementedException();
        }

        public override string ToString()
        {
            return "\t" + kind + " " + op + "\n";
        }
    }
}
