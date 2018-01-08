﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;

namespace Compilerbau.Backend.I386
{
    class InstrBinary : IMachineInstruction
    {
        public enum Kind
        {
            MOV, ADD, SUB, SHL, SHR, SAL, SAR, AND, OR, XOR, TEST, CMP, LEA, IMUL
        }

        private Operand src;
        private Operand dst;
        private Kind kind;

        public InstrBinary(Kind kind, Operand dst, Operand src)
        {
            this.src = src;
            this.dst = dst;
            this.kind = kind;
        }

        public IEnumerator<Temp> Def()
        {
            List<Temp> definedTemps = new List<Temp>();

            if(kind == Kind.CMP)
            {
                return Enumerable.Empty<Temp>().GetEnumerator();
            }
            if (dst is Operand.Reg reg)
            {
                if (Temp.IsSpecialReg(reg.reg))
                {
                    return Enumerable.Empty<Temp>().GetEnumerator();
                }
                definedTemps.Add(reg.reg);
            }
            return definedTemps.GetEnumerator();
        }

        public bool IsFallThrough()
        {
            return true;
        }

        public Label IsLabel()
        {
            return null;
        }

        public Tuple<Temp, Temp> IsMoveBetweenTemps()
        {
            if(kind == Kind.MOV)
            {
                if(src is Operand.Reg r1 && dst is Operand.Reg r2)
                {
                    if(!(r1.reg is RegTemp) && !(r2.reg is RegTemp))
                    {
                        return new Tuple<Temp, Temp>(r2.reg, r1.reg);
                    }
                    else
                    {
                        return null;
                    }
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }

        public IEnumerator<Label> Jumps()
        {
            return null;
        }

        public void Rename(Func<Temp, Temp> sigma)
        {
            throw new NotImplementedException();
        }

        public IEnumerator<Temp> Use()
        {
            List<Temp> activeTemps = new List<Temp>();
            if(dst is Operand.Reg reg && kind == Kind.CMP)
            {
                if (!Temp.IsSpecialReg(reg.reg))
                {
                    activeTemps.Add(reg.reg);
                }
            }
            if(src is Operand.Reg reg2)
            {
                if (!Temp.IsSpecialReg(reg2.reg))
                {
                    activeTemps.Add(reg2.reg);
                }
            }

            return activeTemps.GetEnumerator();
        }

        public override string ToString()
        {
            return "\t" + kind + " " + dst + ", " + src + "\n";
        }
    }
}
