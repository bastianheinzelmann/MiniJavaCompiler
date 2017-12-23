using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;
using Compilerbau.Intermediate.Tree;

namespace Compilerbau.Backend.I386
{
    class I386CodeGenerator : ICodeGenerator
    {
        public IMachinePrg CodeGen(TreePrg frag)
        {
            throw new NotImplementedException();
        }

        public List<Temp> GetAllRegisters()
        {
            throw new NotImplementedException();
        }

        public List<Temp> GetGeneralPurposeRegisters()
        {
            throw new NotImplementedException();
        }
    }
}
