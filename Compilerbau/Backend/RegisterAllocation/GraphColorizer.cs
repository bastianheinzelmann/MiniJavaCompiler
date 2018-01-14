using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.RegisterAllocation
{
    class GraphColorizer
    {
        int colours;
        List<Temp> registers;

        public GraphColorizer(int colours, List<Temp> registers)
        {
            this.colours = colours;
            this.registers = registers;
        }

        public void ColorizeGraph(Dictionary<Temp, HashSet<Temp>> interferenceGraph)
        {
            Dictionary<Temp, HashSet<Temp>> graphCopy = new Dictionary<Temp, HashSet<Temp>>();
            Dictionary<Temp, RegTemp> registerDict = new Dictionary<Temp, RegTemp>();  
            Stack<Temp> tempStack = new Stack<Temp>();
            List<Temp> spillCandidates = new List<Temp>();
            List<Temp> spillNode = new List<Temp>();

            // make a copy of graph
            foreach(var n in interferenceGraph)
            {
                graphCopy.Add(n.Key, new HashSet<Temp>(n.Value));
            }


            // simplify

            foreach (var n in graphCopy)
            {
                if (registerDict.ContainsKey(n.Key))
                {
                    // dann isser schon gefärbt
                    continue;
                }
                else if (n.Key is RegTemp r)
                {
                    registerDict.Add(r, r);
                }
                else if (interferenceGraph[n.Key].Count < colours)
                {
                    tempStack.Push(n.Key);
                    foreach (var o in interferenceGraph)
                    {
                        if (o.Value.Contains(n.Key))
                        {
                            o.Value.Remove(n.Key);
                        }
                    }
                    interferenceGraph.Remove(n.Key);
                }
                else
                {
                    spillCandidates.Add(n.Key);
                    tempStack.Push(n.Key);
                    foreach (var o in interferenceGraph)
                    {
                        if (o.Value.Contains(n.Key))
                        {
                            o.Value.Remove(n.Key);
                        }
                    }
                    interferenceGraph.Remove(n.Key);
                }
            }

            // simplify end

            // backwards

            while(tempStack.Count != 0)
            {
                Temp key = tempStack.Pop();
                interferenceGraph.Add(key, new HashSet<Temp>());
                
                // alte kanten wiederherstellen 
                foreach (var n in interferenceGraph)
                {
                    if (graphCopy[key].Contains(n.Key))
                    {
                        interferenceGraph[key].Add(n.Key);
                    }
                }

                if (!FindReg(key))
                {
                    // spill
                    Console.WriteLine("Spill " + key);
                    registerDict.Add(key, null);
                }
            }



            bool FindReg(Temp key)
            {
                if (spillCandidates.Contains(key))
                {
                    Console.WriteLine("Spill in findReg " + key);
                }

                bool foundReg = false;
                // register zuweisen
                foreach (var reg in registers)
                {
                    foreach (var n in interferenceGraph[key])
                    {
                        if (!n.Equals(key))
                        {
                            if (registerDict[n].Equals(reg))
                            {
                                continue;
                            }
                            else
                            {
                                registerDict.Add(key, (RegTemp)reg);
                                foundReg = true;
                                break;
                            }
                        }
                    }
                    if (foundReg) break;
                }

                return foundReg;
            }
        }
    }
}
