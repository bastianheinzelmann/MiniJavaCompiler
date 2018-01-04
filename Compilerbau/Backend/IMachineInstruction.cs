using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Compilerbau.Backend
{
    interface IMachineInstruction
    {
        IEnumerator<Temp> Use();

        IEnumerator<Temp> Def();

        IEnumerator<Label> Jumps();

        bool IsFallThrough();

        Tuple<Temp, Temp> IsMoveBetweenTemps();

        Label IsLabel();

        void Rename(Func<Temp, Temp> sigma);
    }
}
