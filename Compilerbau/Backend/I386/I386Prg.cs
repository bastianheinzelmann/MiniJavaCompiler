﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.I386
{
    class I386Prg : IMachinePrg
    {
        public List<I386Function> Functions { get; }

        public I386Prg(List<I386Function> functions)
        {
            this.Functions = functions;
        }

        public string RenderAssembly()
        {
            StringBuilder s = new StringBuilder();
            s.Append("\t.intel_syntax\n");
            s.Append("\t.global _Lmain\n");
            foreach(var m in Functions)
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
