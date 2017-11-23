using Compilerbau.AST;
using Compilerbau.TypeChecking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.Intermediate
{
    class Declassifier
    {
        SymbolTable symbolTable;

        public List<MethodDeclaration> Declassify(Prg ast)
        {
            foreach(var clazz in ast.ClassDeclarations)
            {
                foreach(var method in clazz.MethodDeclarations)
                {
                    method.MethodName = clazz.Name + "$" + method.MethodName;
                    Tuple<AST.Type, string>[] newParameters = new Tuple<AST.Type, string>[method.Parameters.Parameters.Length + 1];
                    //newParameters[0] = new Tuple<AST.Type, string>
                    //method.Parameters.Parameters
                }
            }

            return null;
        }
    }
}
