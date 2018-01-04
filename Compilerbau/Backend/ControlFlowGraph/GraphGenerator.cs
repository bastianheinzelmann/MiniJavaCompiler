using Compilerbau.Backend.I386;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.ControlFlowGraph
{
    class GraphGenerator
    {
        public DirectedGraph<IMachineInstruction> GenGraph(I386Prg prg)
        {
            DirectedGraph<IMachineInstruction> graph = new DirectedGraph<IMachineInstruction>();

            foreach (var function in prg.Functions)
            {

            }
        }
    }
}
