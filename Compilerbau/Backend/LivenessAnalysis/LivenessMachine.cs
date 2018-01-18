using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.IO;
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

            // we start from the last instruction
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
                        foreach (var o in inActive[s])
                        {
                            outActive[n].Add(o);
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

            /*int i = 0;
            string stuff = "In\n";
            foreach(var a in inActive)
            {

                stuff += i + ": ";
                foreach(var b in a.Value)
                {
                    stuff += b + ", ";
                }
            
                stuff += "\n";
                i++;
            }

            i = 0; stuff += "\n\nOut";

            foreach (var a in outActive)
            {
                stuff += i + ": ";
                foreach (var b in a.Value)
                {
                    stuff += b + ", ";
                }

                stuff += "\n";
                i++;
            }

            File.WriteAllText(@"C:\Users\WhynotPanda\Documents\Compilerbau1718\risc386\Examples\graph.txt", stuff);
            */

            return outActive;

        }

        public Dictionary<Temp, HashSet<Temp>> CalcInterferenceGraph(DirectedGraph<IMachineInstruction> graph, List<Temp> registers)
        {
            Dictionary<IMachineInstruction, HashSet<Temp>> outActive = CalcLiveness(graph);
            Dictionary<Temp, HashSet<Temp>> interferenceGraph = new Dictionary<Temp, HashSet<Temp>>();

            // da müssen wirklich alle temps der Funktion inklusive Register rein
            //foreach (var n in outActive)
            //{
            //    foreach(var t in n.Value)
            //    {
            //        if (!interferenceGraph.ContainsKey(t))
            //        {
            //            interferenceGraph.Add(t, new HashSet<Temp>());
            //        }
            //    }
            //}

#region initialize interference graph

            HashSet<Temp> allTemps = new HashSet<Temp>();

            foreach (var n in graph.Nodes)
            {
                IEnumerator<Temp> enumerator = n.Def();
                while (enumerator.MoveNext())
                {
                    allTemps.Add(enumerator.Current);
                }
            }

            foreach(var t in registers)
            {
                allTemps.Add(t);
            }

            foreach(var t in allTemps)
            {
                interferenceGraph.Add(t, new HashSet<Temp>());
            }

#endregion

            foreach (var n in graph.Nodes)
            {
                if(n.IsMoveBetweenTemps() == null)
                {
                    IEnumerator<Temp> enumerator = n.Def();
                    // IEnumerator.Current is t
                    while (enumerator.MoveNext())
                    {
                        foreach(var u in outActive[n])
                        {
                            // kante (t, u)
                            Temp shit = enumerator.Current;
                            if (interferenceGraph.ContainsKey(enumerator.Current))
                            {
                                if (!u.Equals(enumerator.Current))
                                {
                                    interferenceGraph[enumerator.Current].Add(u);
                                    interferenceGraph[u].Add(enumerator.Current);
                                }
                            }
                        }
                    }
                }
                else
                {
                    // t <- v
                    Tuple<Temp, Temp> temps = n.IsMoveBetweenTemps();
                    foreach(var u in outActive[n])
                    {
                        if (!u.Equals(temps.Item2) && !u.Equals(temps.Item1))
                        {
                            // kante (t, u)
                            interferenceGraph[temps.Item1].Add(u);
                            interferenceGraph[u].Add(temps.Item1);
                        }                      
                    }
                }
            }

            return interferenceGraph;
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
