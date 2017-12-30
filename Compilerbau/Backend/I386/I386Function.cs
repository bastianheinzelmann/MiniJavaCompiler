using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.I386
{
    class I386Function : IMachineFunction
    {
        public Label Name { get; }
        private List<IMachineInstruction> body;

        public I386Function(Label name, List<IMachineInstruction> body)
        {
            Name = name;
            this.body = body;
        }

        public IEnumerator<IMachineInstruction> GetEnumerator()
        {
            return body.GetEnumerator();
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            throw new NotImplementedException();
        }

        public void Spill(List<Temp> toSpill)
        {
            throw new NotImplementedException();
        }
    }
}
