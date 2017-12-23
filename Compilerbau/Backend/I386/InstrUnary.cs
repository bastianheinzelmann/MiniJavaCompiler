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
        enum Kind
        {
            PUSH, POP, NEG, NOT, INC, DEC, IDIV
        }

        private Operand op;
        private Kind kind;

        InstrUnary(Kind kind, Operand op)
        {
            this.op = op;
            this.kind = kind;
        }

        public IEnumerator<Temp> Use()
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Def()
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Jumps()
        {
            throw new NotImplementedException();
        }

        public bool IsFallThrough()
        {
            throw new NotImplementedException();
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            throw new NotImplementedException();
        }

        public Label IsLabel()
        {
            throw new NotImplementedException();
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
