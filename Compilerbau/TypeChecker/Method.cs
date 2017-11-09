using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.TypeChecker
{
    class Method
    {
        public Dictionary<string, AST.Type> Variables { get; set; }
        public AST.Type ReturnType { get; set; }
        public Dictionary<string, AST.Type> Parameters { get; set; }
    }
}
