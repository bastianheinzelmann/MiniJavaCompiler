using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class Label
    {
        private static int nextId = 0;
        public string Name { get; set; }

        public Label()
        {
            Name = "L$$" + nextId++;
        }

        public Label(string name)
        {
            if(name == null)
            {
                throw new NullReferenceException();
            }
            if (name.StartsWith("$$"))
            {
                throw new Exception("Label name " + name + " is reserved.");
            }
            Name = "_L" + name;
            //Name = "L" + name;
        }

        public override string ToString()
        {
            return Name;
        }
    }
}
