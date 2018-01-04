using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.ControlFlowGraph
{
    class DirectedGraph<Node>
    {
        public HashSet<Node> Nodes { get; }
        public Dictionary<Node, HashSet<Node>> Successors { get; }
    }
}
