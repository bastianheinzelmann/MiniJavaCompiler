using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.TypeChecking
{
    internal class Method
    {
        public Dictionary<string, AST.Type> Variables { get; set; } = new Dictionary<string, AST.Type>();
        public AST.Type ReturnType { get; set; }
        public Dictionary<string, AST.Type> Parameters { get; set; } = new Dictionary<string, AST.Type>();

        public Method(AST.Type returnType)
        {
            ReturnType = returnType;
        }

        public void AddParam(string name, AST.Type type)
        {
            if (!Parameters.ContainsKey(name))
            {
                Parameters.Add(name, type);
            }
            else
            {
                throw new Exception("Parameter name exists already...");
            }
        }

        public void AddVariable(string name, AST.Type type)
        {
            if (!Variables.ContainsKey(name))
            {
                Variables.Add(name, type);
            }
            else
            {
                throw new Exception("Variable name and stuff and there is one...");
            }
        }
    }
}
