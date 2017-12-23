using Compilerbau.Intermediate;
using Compilerbau.Intermediate.Tree;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend
{
    interface ICodeGenerator
    {
        List<Temp> GetAllRegisters();

        List<Temp> GetGeneralPurposeRegisters();

        IMachinePrg CodeGen(TreePrg frag);
    }
}
