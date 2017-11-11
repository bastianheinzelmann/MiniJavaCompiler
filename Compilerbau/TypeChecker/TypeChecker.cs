using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.AST;

namespace Compilerbau.TypeChecking
{

    class TypeChecker
    {
        SymbolTable symbolTable;

        public void InitTypeChecking(Prg tree)
        {
            symbolTable = CreateSymbolTable(tree);
        }

        public SymbolTable CreateSymbolTable(Prg tree)
        {
            SymbolTable symbolTable = new SymbolTable();

            // class stuff
            foreach (ClassDeclaration classDecl in tree.ClassDeclarations)
            {
                string currentClass = classDecl.Name;
                symbolTable.AddClass(currentClass);
                foreach(VarDeclaration varDecl in classDecl.VarDeclarations)
                {
                    symbolTable.AddField(currentClass, varDecl.Name, varDecl.Type);
                }
                // method stuff
                foreach(MethodDeclaration methodDecl in classDecl.MethodDeclarations)
                {
                    string currentMethod = methodDecl.MethodName;
                    symbolTable.AddMethod(currentClass, methodDecl.MethodName, methodDecl.ReturnType);
                    
                    // parameters
                    foreach(var par in methodDecl.Parameters.Parameters)
                    {
                        symbolTable.AddMethodParameter(currentClass, currentMethod, par.Item2, par.Item1);
                    }

                    // method vars
                    foreach(var varDecl in methodDecl.MethodBody.VarDeclarations)
                    {
                        symbolTable.AddMethodVariable(currentClass, currentMethod, varDecl.Name, varDecl.Type);
                    }
                }
            }

            return symbolTable;
        }

        public void StartTypeChecking(Prg tree)
        {
            foreach(var classDecl in tree.ClassDeclarations)
            {
                string currentClass = classDecl.Name;

                foreach (var methodDecl in classDecl.MethodDeclarations)
                {
                    string currentMethod = methodDecl.MethodName;
                    TypeChecking(methodDecl.MethodBody, currentClass, currentMethod);
                }
            }
        }

        public void TypeChecking(Node tree, string currentClass, string currentMethod)
        {
            Console.WriteLine("Start type checking in: " + currentClass + "." + currentMethod);

            switch (tree)
            {
                case MethodBody methodBody:
                    {
                        foreach(var stm in methodBody.Statements)
                        {
                            TypeChecking(stm, currentClass, currentMethod);
                        }
                        break;
                    }

                case BlockStatement blockStm:
                    {
                        foreach(var stm in blockStm.Statements)
                        {
                            TypeChecking(stm, currentClass, currentMethod);
                        }
                        break;
                    }
                case IfElseBlock ifElse:
                    {
                        if (!(TypeOf(ifElse.Expression, currentClass, currentMethod) is AST.Boolean))
                        {
                            throw new Exception("Sorry but an if statement awaits a boolean :(");
                        }

                        break;
                    }
                case WhileBlock whileBlock:
                    {
                        break;
                    }
                case VarAssignment varAss: // yes, Ass!
                    {
                        break;
                    }
                case ArrayAssignment arrAss:
                    {
                        break;
                    }
                case Print print:
                    {
                        break;
                    }
                case Write write:
                    {
                        break;
                    }
            }
        }

        public AST.Type TypeOf(Expression exp, string currentClass, string currentMethod)
        {
            switch (exp)
            {
                case Identifier id:
                    {
                        return symbolTable.GetVarType(currentClass, currentMethod, id.Name);
                    }
                case And and:
                    {
                        break;
                    }
                case Plus plus:
                    {
                        break;
                    }
                case Minus minus:
                    {
                        break;
                    }
                case Times times:
                    {
                        break;
                    }
                case Division division:
                    {
                        break;
                    }
                case LessThan lt:
                    {
                        AST.Type left = TypeOf(lt.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(lt.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType()){
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new AST.Boolean();
                        }
                    }
                case GreaterThan gt:
                    {
                        AST.Type left = TypeOf(gt.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(gt.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return left;
                        }
                    }
                case ArrayAccess arrAcc:
                    {
                        break;
                    }
                case ArrayLength arrlength:
                    {
                        break;
                    }
                case MethodCall methodCall:
                    {
                        break;
                    }
                case Read read:
                    {
                        break;
                    }
                case BooleanLit booleanLit:
                    {
                        break;
                    }
                case IntegerLit intLit:
                    {
                        break;
                    }
                case This th:
                    {
                        break;
                    }
                case ArrayInstantiation arrInst:
                    {
                        break;
                    }
                case ObjectInstantiation objInst:
                    {
                        break;
                    }
                case Not not:
                    {
                        break;
                    }
                case Parent par:
                    {
                        break;
                    }
            }

            return null;
        }

        public AST.Type GetType(AST.Type type)
        {
            switch (type)
            {
                case Int i: return new Int();
                case AST.Boolean b: return b;
                case IntArray ia: return ia;
                case ObjectType obj: return obj;
            }

            throw new Exception("This type does not exist.");
        }


    }
}
