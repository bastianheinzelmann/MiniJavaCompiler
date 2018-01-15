using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Backend.I386;
using Compilerbau.Backend.RegisterAllocation;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class RegisterAllocator
    {
        public void AllocateRegisters(I386Prg prg, List<Temp> registers)
        {
            GraphGenerator graphGenerator = new GraphGenerator();
            GraphColorizer graphColorizer = new GraphColorizer(registers.Count, registers);
            LivenessMachine livenessMachine = new LivenessMachine();
            foreach (var n in prg.Functions)
            {
                var cfg = graphGenerator.GenGraphs(n);
                var interferenceGraph = livenessMachine.CalcInterferenceGraph(cfg);
                var regDict = graphColorizer.ColorizeGraph(interferenceGraph);
                RenameTemps(n, regDict);
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
    }
}
