using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.TypeChecker
{
    class Class
    {
        public Dictionary<string, Method> MethodTables;
        public Dictionary<string, AST.Type> Fields;
    }
}
