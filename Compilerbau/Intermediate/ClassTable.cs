using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class ClassTable
    {
        public Dictionary<string, int> ClassSizes = new Dictionary<string, int>();


        public int GetClassSize(string className)
        {
            return ClassSizes[className];
        }

        public void AddClass(string name, int size)
        {
            ClassSizes.Add(name, size);
        }
    }
}
