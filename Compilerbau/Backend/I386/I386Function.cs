using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Backend.I386
{
    class I386Function : IMachineFunction
    {
        public Label Name { get; }
        public List<IMachineInstruction> body { get; }

        private int framePointerCounter = -4;
        //private int framePointerCounter = -16;

        public I386Function(Label name, List<IMachineInstruction> body)
        {
            Name = name;
            this.body = body;
        }

        public IEnumerator<IMachineInstruction> GetEnumerator()
        {
            return body.GetEnumerator();
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            throw new NotImplementedException();
        }

        public void Spill(List<Temp> toSpill)
        {
            int fp = framePointerCounter;
            Temp newTemp;

            foreach (var t in toSpill)
            {
                for (int i = 0; i < body.Count; i++)
                {
                    newTemp = null;

                    var usedEnumerator = body[i].Use();

                    while (usedEnumerator.MoveNext())
                    {
                        if (t.Equals(usedEnumerator.Current))
                        {
                            if (newTemp == null) newTemp = new Temp();
                            body[i].Rename((x) => x.Equals(t) ? newTemp : x);
                            body.Insert(i, new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(newTemp), new Operand.Mem(I386CodeGenerator.EBP, fp)));
                            i++;
                        }
                    }

                    var defedEnumerator = body[i].Def();

                    while (defedEnumerator.MoveNext())
                    {
                        if (t.Equals(defedEnumerator.Current))
                        {
                            if (newTemp == null) newTemp = new Temp();
                            body[i].Rename((x) => x.Equals(t) ? newTemp : x);
                            body.Insert(i + 1, new InstrBinary(InstrBinary.Kind.MOV, new Operand.Mem(I386CodeGenerator.EBP, fp), new Operand.Reg(newTemp)));
                            i++;
                        }
                    }
                }

                fp -= 4;
            }

            framePointerCounter = fp - 4;
            body[2] = new InstrBinary(InstrBinary.Kind.SUB, new Operand.Reg(I386CodeGenerator.ESP), new Operand.Imm(Math.Abs(fp + 4)));
        }
    }
}
