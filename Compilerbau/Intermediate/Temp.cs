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
    }
}
