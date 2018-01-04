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
        public enum Kind
        {
            RET, LEAVE, NOP, CDQ
        }

        private Kind kind;

        public InstrNullary(Kind kind)
        {
            this.kind = kind;
        }

        public IEnumerator<Temp> Def()
        {
            throw new NotImplementedException();
        }

        public bool IsFallThrough()
        {
            if(kind == Kind.RET)
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
            throw new NotImplementedException();
        }

        public IEnumerator<Label> Jumps()
        {
            return null;
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
