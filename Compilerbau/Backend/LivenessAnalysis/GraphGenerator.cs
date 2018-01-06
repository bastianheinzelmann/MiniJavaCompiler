using Compilerbau.Backend.I386;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class GraphGenerator
    {
        public List<DirectedGraph<IMachineInstruction>> GenGraphs(I386Prg prg)
        {
            List<DirectedGraph<IMachineInstruction>> graphs = new List<DirectedGraph<IMachineInstruction>>();

            foreach (var function in prg.Functions)
            {
                DirectedGraph<IMachineInstruction> graph = new DirectedGraph<IMachineInstruction>();
                List<InstrLabel> labels = FindAllLabelNodes(function.body);


                for (int i = 0; i < function.body.Count; i++)
                {
                    graph.Nodes.Add(function.body[i]);
                    HashSet<IMachineInstruction> successors = new HashSet<IMachineInstruction>();

                    if (function.body[i].Jumps() != null)
                    {
                        IEnumerator<Intermediate.Label> enumerator = function.body[i].Jumps();

                        while (enumerator.MoveNext())
                        {
                            // search for the label instructions
                            foreach(var label in labels)
                            {
                                if (enumerator.Current.Name == label.IsLabel().Name)
                                {
                                    successors.Add(label);
                                    break;
                                }
                            }
                        }
                    }

                    if (function.body[i].IsFallThrough())
                    {
                        successors.Add(function.body[i + 1]);
                    }

                    graph.Successors.Add(function.body[i], successors);
                }

                graphs.Add(graph);
            }

            return graphs;
        }

        List<InstrLabel> FindAllLabelNodes(List<IMachineInstruction> body)
        {
            List<InstrLabel> labelNodes = new List<InstrLabel>();
            foreach(var i in body)
            {
                if (i.IsLabel() != null)
                {
                    labelNodes.Add((InstrLabel)i);
                }
            }

            return labelNodes;
        }
    }
}
