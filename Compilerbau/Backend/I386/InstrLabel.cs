using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.I386
{
    class InstrLabel : IMachineInstruction
    {
        Label label;

        InstrLabel(Label label)
        {
            this.label = label;
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
            return label + ":\n";
        }
    }
}
