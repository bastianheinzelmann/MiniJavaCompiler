using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.I386
{
    class InstrNullary : IMachineInstruction
    {
        enum Kind
        {
            RET, LEAVE, NOP
        }

        private Kind kind;

        InstrNullary(Kind kind)
        {
            this.kind = kind;
        }

        public IEnumerator<Temp> Def()
        {
            throw new NotImplementedException();
        }

        public bool IsFallThrough()
        {
            throw new NotImplementedException();
        }

        public Label IsLabel()
        {
            throw new NotImplementedException();
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Jumps()
        {
            throw new NotImplementedException();
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Use()
        {
            throw new NotImplementedException();
        }

        public override string ToString()
        {
            return "\t" + kind + "\n";
        }
    }
}
