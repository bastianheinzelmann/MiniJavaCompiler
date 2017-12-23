using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend
{
    interface IMachineFunction
    {
        void Rename(Func<Temp, Temp> sigma);

        void Spill(List<Temp> toSpill);
    }
}
