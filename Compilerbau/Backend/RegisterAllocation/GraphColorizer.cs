using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;

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

            while (true)
            {
                Simplify();
                if (spillCandidates.Count > 0)
                {
                    // remove some shit like spilling candidate with highest stuff
                }
                else
                {
                    Select();
                }
                break;
            }

            // simplify
            void Simplify()
            {
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
                        //tempStack.Push(n.Key);
                        //foreach (var o in interferenceGraph)
                        //{
                        //    if (o.Value.Contains(n.Key))
                        //    {
                        //        o.Value.Remove(n.Key);
                        //    }
                        //}
                        //interferenceGraph.Remove(n.Key);
                    }
                }
            }



            // simplify end

            // backwards
            void Select()
            {
                while (tempStack.Count != 0)
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
            }


            bool FindReg(Temp key)
            {
                bool foundReg = false;
                // register zuweisen
                foreach(var r in registers)
                {
                    bool regIsUsed = false;
                    foreach(var neighbour in interferenceGraph[key])
                    {
                        if (registerDict[neighbour].Equals(r))
                        {
                            regIsUsed = true;
                            break;
                        }
                    }
                    if(regIsUsed == false)
                    {
                        registerDict.Add(key, (RegTemp)r);
                        return true;
                    }
                }
                return false;
            }
        }
    }
}
