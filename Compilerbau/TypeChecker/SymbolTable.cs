using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.TypeChecking
{
    class SymbolTable
    {
        Program program = new Program();

        public void AddClass(string name)
        {
            if (!program.classTables.ContainsKey(name))
            {
                program.classTables.Add(name, new Class());
            }
            else
            {
                throw new Exception("Sorry but I am not clever enough to handle two classes with the same Name :/");
            }
        }

        public void AddField(string className, string fieldName, AST.Type type)
        {
            program.classTables[className].AddField(fieldName, type);
        }

        public void AddMethod(string className, string methodName, AST.Type returnType)
        {
            program.classTables[className].AddMethod(methodName, returnType);
        }

        public void AddMethodParameter(string className, string methodName, string parameterName, AST.Type type)
        {
            program.classTables[className].Methods[methodName].AddParam(parameterName, type);
        }

        public void AddMethodVariable(string className, string methodName, string varName, AST.Type type)
        {
            program.classTables[className].Methods[methodName].AddVariable(varName, type);
        }

        public AST.Type GetVarType(string className, string methodName, string varName)
        {
            if (program.classTables[className].Methods[methodName].Variables.ContainsKey(varName))
            {
                return program.classTables[className].Methods[methodName].Variables[varName];
            }
            else if(program.classTables[className].Methods[methodName].Parameters.ContainsKey(varName))
            {
                return program.classTables[className].Methods[methodName].Parameters[varName];
            }
            else if (program.classTables[className].Fields.ContainsKey(varName))
            {
                return program.classTables[className].Fields[varName];
            }
            else
            {
                throw new Exception("Variable does not exist");
            }
        }

        public AST.Type[] GetMethodParam(string className, string methodName)
        {
            return program.classTables[className].Methods[methodName].Parameters.Select(item => item.Value).ToArray();
        }

        public AST.Type GetMethodReturnType(string className, string methodName)
        {
            return program.classTables[className].Methods[methodName].ReturnType;
        }

        public bool ExistsMethod(string className, string methodName)
        {
            if (program.classTables[className].Methods.ContainsKey(methodName))
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
