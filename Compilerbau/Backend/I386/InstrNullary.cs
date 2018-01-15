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
            return Enumerable.Empty<Temp>().GetEnumerator();
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
            return null;
        }

        public IEnumerator<Label> Jumps()
        {
            return null;
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            // do nothing
        }

        public IEnumerator<Temp> Use()
        {
            return Enumerable.Empty<Temp>().GetEnumerator();
        }

        public override string ToString()
        {
            return "\t" + kind + "\n";
        }
    }
}
