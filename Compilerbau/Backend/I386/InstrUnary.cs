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
                activeTemps.Add(reg.reg);
            }
            return activeTemps.GetEnumerator();
        }

        public IEnumerator<Temp> Def()
        {
            return new List<Temp>().GetEnumerator();
        }

        public IEnumerator<Label> Jumps()
        {
            return null;
        }

        public bool IsFallThrough()
        {
            return false;
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            throw new NotImplementedException();
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
