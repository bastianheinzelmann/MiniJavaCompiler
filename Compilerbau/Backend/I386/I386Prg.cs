using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.I386
{
    class I386Prg : IMachinePrg
    {
        private List<I386Function> functions;

        public I386Prg(List<I386Function> functions)
        {
            this.functions = functions;
        }

        public string RenderAssembly()
        {
            StringBuilder s = new StringBuilder();
            s.Append("\t.intel_syntax\n");
            s.Append("\t.global Lmain\n");
            foreach(var m in functions)
            {
                RenderFunction(m, s);
            }
            return s.ToString();
        }

        private void RenderFunction(I386Function function, StringBuilder s)
        {
            s.Append(function.Name);
            s.Append(":\n");
            foreach(var i in function)
            {
                s.Append(i);
            }
        }
    }
}
