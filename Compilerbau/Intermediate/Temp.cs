using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class Temp
    {
        private static int nextId = 0;

        public int Id { get; set; }

        public Temp()
        {
            Id = nextId++;
        }

        public static void ResetCounter()
        {
            nextId = 0;
        }

        public override string ToString()
        {
            return "t" + Id;
        }

        public override bool Equals(Object obj)
        {
            Temp other = (Temp)obj;

            if(this.Id == other.Id)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool IsSpecialReg(Temp t)
        {
            if(t is RegTemp rt)
            {
                if(rt.Id == "ebp" || rt.Id == "esp")
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }

    class RegTemp : Temp
    {
        public string Id { get; }

        public RegTemp(string id)
        {
            Id = id;
        }

        public override string ToString()
        {
            return Id;
        }

        public override bool Equals(object obj)
        {
            RegTemp other = (RegTemp)obj;

            if(Id == other.Id)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
