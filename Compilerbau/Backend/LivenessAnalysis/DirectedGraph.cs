using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class DirectedGraph<Node>
    {
        public HashSet<Node> Nodes { get; set; } = new HashSet<Node>();
        public Dictionary<Node, HashSet<Node>> Successors { get; set; } = new Dictionary<Node, HashSet<Node>>();
    }
}
