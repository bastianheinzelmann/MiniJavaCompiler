using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class LivenessMachine
    {
        public Dictionary<IMachineInstruction, HashSet<Temp>> CalcLiveness(DirectedGraph<IMachineInstruction> graph)
        {
            Dictionary<IMachineInstruction, HashSet<Temp>> outActive = new Dictionary < IMachineInstruction, HashSet< Temp >>();
            Dictionary<IMachineInstruction, HashSet<Temp>> inActive = new Dictionary < IMachineInstruction, HashSet< Temp >>();

            Dictionary<IMachineInstruction, HashSet<Temp>> outActiveOld = new Dictionary<IMachineInstruction, HashSet<Temp>>();
            Dictionary<IMachineInstruction, HashSet<Temp>> inActiveOld = new Dictionary<IMachineInstruction, HashSet<Temp>>();

            // we start from the fucking last instruction
            foreach(var node in graph.Nodes.Reverse())
            {
                outActive.Add(node, new HashSet<Temp>());
                inActive.Add(node, new HashSet<Temp>());
            }

            bool weAreDone = false;

            while (!weAreDone)
            {
                foreach (var n in graph.Nodes.Reverse())
                {
                    // save old state
                    outActiveOld = new Dictionary<IMachineInstruction, HashSet<Temp>>(outActive);
                    inActiveOld = new Dictionary<IMachineInstruction, HashSet<Temp>>(inActive);

                    // out stuff
                    foreach (var s in graph.Successors[n])
                    {
                        foreach (var shit in inActive[s])
                        {
                            outActive[n].Add(shit);
                        }
                    }

                    // in stuff
                    HashSet<Temp> usedTemps = new HashSet<Temp>();
                    IEnumerator<Temp> enumerator = n.Use();
                    while (enumerator.MoveNext())
                    {
                        usedTemps.Add(enumerator.Current);
                    }

                    HashSet<Temp> definedTemps = new HashSet<Temp>();
                    enumerator = n.Def();
                    while (enumerator.MoveNext())
                    {
                        definedTemps.Add(enumerator.Current);
                    }

                    inActive[n] = new HashSet<Temp>(usedTemps.Union(outActive[n].Except(definedTemps)));
                }

                // compare old and new
                if (CompareDicts(outActive, outActiveOld) && CompareDicts(inActive, inActiveOld))
                {
                    weAreDone = true;
                } 
            }

            return outActive;

        }

        public void CalcInterferenceGraph(DirectedGraph<IMachineInstruction> graph)
        {
            Dictionary<IMachineInstruction, HashSet<Temp>> outActive = CalcLiveness(graph);

            foreach(var n in graph.Nodes)
            {
                if(n.IsMoveBetweenTemps() == null)
                {
                    // IEnumerator.Current is t
                    while (n.Def().MoveNext())
                    {
                        foreach(var u in outActive[n])
                        {
                            // kante (t, u)
                        }
                    }
                }
                else
                {
                    // t <- v
                    Tuple<Temp, Temp> temps = n.IsMoveBetweenTemps();
                    foreach(var u in outActive[n])
                    {
                        // kante (t, u)
                    }
                }
            }
        }

        private bool CompareDicts(Dictionary<IMachineInstruction, HashSet<Temp>> first, Dictionary<IMachineInstruction, HashSet<Temp>> second)
        {
            foreach (var pair in first)
            {
                if (pair.Value.Count == second[pair.Key].Count)
                {               
                    foreach (var val in pair.Value)
                    {
                        if (!second[pair.Key].Contains(val))
                        {
                            return false;
                        }
                    }
                }
                else
                {
                    return false;
                }
            }

            return true;
        }
    }
}
