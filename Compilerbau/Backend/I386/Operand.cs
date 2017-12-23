using Compilerbau.Intermediate;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Compilerbau.Backend.I386
{
    abstract class Operand
    {
        class Imm : Operand
        {
            int imm;

            Imm(int imm)
            {
                this.imm = imm;
            }

            public override string ToString()
            {
                return base.ToString();
            }

            public override Operand Rename(Func<Temp, Temp> sigma)
            {
                return this;
            }
        }

        class Mem : Operand
        {
            Temp bas;
            int scale;
            Temp index;
            int displacement;

            Mem(Temp bas, int scale, Temp index, int displacement)
            {
                this.bas = bas;
                this.scale = scale;
                this.index = index;
                this.displacement = displacement;
            }

            Mem(Temp bas)
            {
                this.bas = bas;
                displacement = 0;
            }

            public override string ToString()
            {
                throw new NotImplementedException();
            }

            public override List<Temp> Use()
            {
                List<Temp> use = new List<Temp>(2);
                if(bas != null)
                {
                    use.Add(bas);
                }
                if(index != null)
                {
                    use.Add(index);
                }
                return use;
            }

            public override Operand Rename(Func<Temp, Temp> sigma)
            {
                return new Mem(bas != null ? sigma(bas) : null, scale, index != null ? sigma(index) : null, displacement);
            }
        }

        public virtual List<Temp> Use()
        {
            return Enumerable.Empty<Temp>().ToList();
        }

        public abstract Operand Rename(Func<Temp, Temp> sigma);
    }
}
