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
        public Dictionary<string, int> ArraySize = new Dictionary<string, int>();
        public List<string> parameters = new List<string>();
        public List<string> localVars = new List<string>();
    }
}
