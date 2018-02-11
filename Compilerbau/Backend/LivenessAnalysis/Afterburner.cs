using System.Collections.Generic;
using Compilerbau.Backend.I386;
using System;
using Compilerbau.Intermediate;
using System.Linq;

namespace Compilerbau.Backend.LivenessAnalysis
{
    class Afterburner
    {
        public void RemoveRedundancies(I386Prg prg)
        {
            foreach(var n in prg.Functions)
            {
                List<IMachineInstruction> redundantInstrs = new List<IMachineInstruction>();

                foreach (var inst in n.body)
                {
                    if (inst is InstrBinary i)
                    {
                        if (i.kind == InstrBinary.Kind.MOV)
                        {
                            if (i.src is Operand.Reg reg1 && i.dst is Operand.Reg reg2)
                            {
                                if (reg1.reg.Equals(reg2.reg))
                                {
                                    redundantInstrs.Add(i);
                                }
                            }
                        }
                    }
                }

                foreach (var red in redundantInstrs)
                {
                    n.body.Remove(red);
                }
            }
        }
    }
}
