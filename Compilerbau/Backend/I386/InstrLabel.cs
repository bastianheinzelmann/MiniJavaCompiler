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

        public InstrLabel(Label label)
        {
            this.label = label;
        }

        public IEnumerator<Temp> Def()
        {
            throw new NotImplementedException();
        }

        public bool IsFallThrough()
        {
            return true;
        }

        public Label IsLabel()
        {
            return label;
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
            return label + ":\n";
        }
    }
}
