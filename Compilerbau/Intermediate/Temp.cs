using System;

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

            if(Id == other.Id)
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
            if(obj is RegTemp other)
            {
                if (Id == other.Id)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else if(obj is Temp)
            {
                return false;
            }
            else
            {
                throw new Exception();
            }
        }
    }
}
