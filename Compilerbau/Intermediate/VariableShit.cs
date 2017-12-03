using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class VariableShit
    {
        public Dictionary<string, string[]> RawClass = new Dictionary<string, string[]>();
        public List<string> parameters = new List<string>();
        public List<string> localVars = new List<string>();
    }
}
