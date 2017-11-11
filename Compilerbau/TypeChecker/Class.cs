using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.TypeChecking
{
    class Class
    {
        public Dictionary<string, Method> Methods = new Dictionary<string, Method>();
        public Dictionary<string, AST.Type> Fields = new Dictionary<string, AST.Type>();

        public void AddField(string name, AST.Type type)
        {
            if (!Fields.ContainsKey(name))
            {
                Fields.Add(name, type);
            }
            else
            {
                throw new Exception("Sorry, but there is another field with the same name :(");
            }
        }

        public void AddMethod(string name, AST.Type returnType)
        {
            if(!Methods.ContainsKey(name))
            {
                Methods.Add(name, new Method(returnType));
            }
            else
            {
                throw new Exception("Method already exists!");
            }
        }
    }
}
