using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Backend.I386;
using Compilerbau.Backend.RegisterAllocation;
using Compilerbau.Intermediate;
using System.IO;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class RegisterAllocator
    {
        public void AllocateRegisters(I386Prg prg, List<Temp> registers)
        {
            GraphGenerator graphGenerator = new GraphGenerator();
            LivenessMachine livenessMachine = new LivenessMachine();
            foreach (var n in prg.Functions)
            {
                while (true)
                {
                    var cfg = graphGenerator.GenGraphs(n);
                    var interferenceGraph = livenessMachine.CalcInterferenceGraph(cfg, registers);
                    var nodesToSpill = ColorizeGraph(interferenceGraph, registers, registers.Count, n);
                    if (nodesToSpill.Count > 0)
                    {
                        n.Spill(nodesToSpill);
                    }
                    else
                    {
                        break;
                    }
                    //File.WriteAllText(@"C:\Users\WhynotPanda\Documents\Compilerbau1718\risc386\Examples\randomSpill.s", prg.RenderAssembly());
                }
            }
        }

        private void RenameTemps(I386Function function, Dictionary<Temp, RegTemp> regDict)
        {
            foreach(var inst in function)
            {
                foreach(var n in regDict)
                {
                    Func<Temp, Temp> sigma = (x) => x.Equals(n.Key) ? n.Value : x;
                    inst.Rename(sigma);
                }
            }
        }

        public List<Temp> ColorizeGraph(Dictionary<Temp, HashSet<Temp>> interferenceGraph, List<Temp> registers, int colours, I386Function function)
        {
            Dictionary<Temp, HashSet<Temp>> graphCopy = new Dictionary<Temp, HashSet<Temp>>();
            Dictionary<Temp, RegTemp> registerDict = new Dictionary<Temp, RegTemp>();
            Stack<Temp> tempStack = new Stack<Temp>();
            List<Temp> spillCandidates = new List<Temp>();
            List<Temp> spillNode = new List<Temp>();
            List<Temp> spillNodes = new List<Temp>();

            void CopyGraph(Dictionary<Temp, HashSet<Temp>> to, Dictionary<Temp, HashSet<Temp>> from)
            {
                to.Clear();
                //to = new Dictionary<Temp, HashSet<Temp>>();
                // make a copy of graph
                foreach (var n in from)
                {
                    to.Add(n.Key, new HashSet<Temp>(n.Value));
                }
            }

            CopyGraph(graphCopy, interferenceGraph);
            Dictionary<Temp, HashSet<Temp>> currentGraph = new Dictionary<Temp, HashSet<Temp>>();
            CopyGraph(currentGraph, graphCopy);
            while (true)
            {
                spillCandidates.Clear();
                Simplify(currentGraph);
                // spill shit
                if (spillCandidates.Count > 0)
                {
                    // remove some shit like spilling candidate with highest stuff
                    Temp spillCandidate = spillCandidates[0];
                    foreach (var n in spillCandidates)
                    {
                        if (interferenceGraph[n].Count > interferenceGraph[spillCandidate].Count)
                        {
                            spillCandidate = n;
                        }
                    }
                    tempStack.Push(spillCandidate);
                    foreach (var o in interferenceGraph)
                    {
                        if (o.Value.Contains(spillCandidate))
                        {
                            o.Value.Remove(spillCandidate);
                        }
                    }
                    interferenceGraph.Remove(spillCandidate);
                }
                else
                {
                    Select();
                    break;
                }
                CopyGraph(currentGraph, interferenceGraph);
            }

            // simplify
            void Simplify(Dictionary<Temp, HashSet<Temp>> currentGraphCopy)
            {
                foreach (var n in currentGraphCopy)
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
                        //registerDict.Add(key, null);
                        spillNodes.Add(key);
                    }
                }
            }


            bool FindReg(Temp key)
            {
                // register zuweisen
                foreach (var r in registers)
                {
                    bool regIsUsed = false;
                    foreach (var neighbour in interferenceGraph[key])
                    {
                        if (spillNodes.Contains(neighbour))
                        {
                            continue;
                        }
                        else if (registerDict[neighbour].Equals(r))
                        {
                            regIsUsed = true;
                            break;
                        }
                    }
                    if (regIsUsed == false)
                    {
                        registerDict.Add(key, (RegTemp)r);
                        return true;
                    }
                }
                return false;
            }

            RenameTemps(function ,registerDict);
            return spillNodes;
        }
    }
}
