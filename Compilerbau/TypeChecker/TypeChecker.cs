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
            try
            {
                symbolTable = CreateSymbolTable(tree);
            }
            catch(Exception e)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(e.Message);
                Console.ForegroundColor = ConsoleColor.White;
            }
        }

        public SymbolTable CreateSymbolTable(Prg tree)
        {
            SymbolTable symbolTable = new SymbolTable();

            // main class
            symbolTable.AddClass(tree.MainClass.Name);
            symbolTable.AddMethod(tree.MainClass.Name, "main", new ObjectType("void"));
            symbolTable.AddMethodParameter(tree.MainClass.Name, "main", tree.MainClass.Param, new ObjectType("StringArray"));


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
            // main class
            TypeChecking(tree.MainClass.Statement, tree.MainClass.Name, "main");

            foreach(var classDecl in tree.ClassDeclarations)
            {
                string currentClass = classDecl.Name;

                foreach (var methodDecl in classDecl.MethodDeclarations)
                {
                    string currentMethod = methodDecl.MethodName;
                    try
                    {
                        TypeChecking(methodDecl.MethodBody, currentClass, currentMethod);
                    }
                    catch(Exception e)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine(e.Message + " in " + currentClass + "." + currentMethod);
                        Console.ForegroundColor = ConsoleColor.White;
                    }
                }
            }
        }

        public bool TypeChecking(Node tree, string currentClass, string currentMethod)
        {

            switch (tree)
            {
                case MethodBody methodBody:
                    {
                        foreach(var stm in methodBody.Statements)
                        {
                            TypeChecking(stm, currentClass, currentMethod);
                        }
                        if(symbolTable.GetMethodReturnType(currentClass, currentMethod).GetType() != TypeOf(methodBody.ReturnExpression, currentClass, currentMethod).GetType())
                        {
                            throw new Exception("Wrong return type");
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
                        else
                        {
                            return TypeChecking(ifElse.TrueBranch, currentClass, currentMethod) && TypeChecking(ifElse.FalseBranch, currentClass, currentMethod);
                        }
                    }
                case WhileBlock whileBlock:
                    {
                        if(!(TypeOf(whileBlock.Expression, currentClass, currentMethod) is AST.Boolean))
                        {
                            throw new Exception("While type stupid");
                        }
                        else
                        {
                            return true;
                        }
                    }
                case VarAssignment varAss: // yes, Ass!
                    {
                        AST.Type varType = symbolTable.GetVarType(currentClass, currentMethod, varAss.Id);
                        if(varType.GetType() != TypeOf(varAss.Expression, currentClass, currentMethod).GetType()){
                            throw new Exception("Variable Assignment type is shit");
                        }
                        else
                        {
                            return true;
                        }
                    }
                case ArrayAssignment arrAss:
                    {
                        if(!(TypeOf(arrAss.Index, currentClass, currentMethod) is Int) || !(TypeOf(arrAss.Value, currentClass, currentMethod) is Int))
                        {
                            throw new Exception("???");
                        }
                        else
                        {
                            return true;
                        }                      
                    }
                case Print print:
                    {
                        if(TypeOf(print.Expression, currentClass, currentMethod) is AST.Int)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                case Write write:
                    {
                        return true;
                    }
            }

            return false;
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
                        AST.Type left = TypeOf(and.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(and.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new AST.Boolean();
                        }
                    }
                case Plus plus:
                    {
                        AST.Type left = TypeOf(plus.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(plus.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new Int();
                        }
                    }
                case Minus minus:
                    {
                        AST.Type left = TypeOf(minus.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(minus.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new Int();
                        }
                    }
                case Times times:
                    {
                        AST.Type left = TypeOf(times.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(times.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new Int();
                        }
                    }
                case Division division:
                    {
                        AST.Type left = TypeOf(division.Left, currentClass, currentMethod);
                        AST.Type right = TypeOf(division.Right, currentClass, currentMethod);

                        if (left.GetType() != right.GetType())
                        {
                            throw new Exception("Binary operator type fail and shit");
                        }
                        else
                        {
                            return new Int();
                        }
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
                            return new AST.Boolean();
                        }
                    }
                case ArrayAccess arrAcc:
                    {
                        return new Int();
                    }
                case ArrayLength arrlength:
                    {
                        if(!(TypeOf(arrlength.Exp, currentClass, currentMethod) is IntArray))
                        {
                            throw new Exception(arrlength.Exp + " is not an array");
                        }
                        else
                        {
                            return new Int();
                        }
                    }
                case MethodCall methodCall:
                    {
                        ObjectType expType;
                        if (TypeOf(methodCall.Exp, currentClass, currentMethod) is ObjectType ot)
                        {
                            expType = ot;
                        }
                        else if(methodCall.Exp is This t)
                        {
                            expType = new ObjectType(currentClass);
                        }
                        else
                        {
                            throw new Exception("This method does not exist... Sorry bro");
                        }

                        if (!symbolTable.ExistsMethod(expType.Name, methodCall.MethodName)) throw new Exception("Method does not exist");
                        AST.Type[] paramTypes = symbolTable.GetMethodParam(expType.Name, methodCall.MethodName);
                        int i = 0;

                        if (methodCall.Parameters == null) return symbolTable.GetMethodReturnType(expType.Name, methodCall.MethodName);

                        foreach (var par in methodCall.Parameters)
                        {
                            if(!CompareTypes(TypeOf(par, currentClass, currentMethod), paramTypes[i]))
                            {
                                throw new Exception("Parameters type error");
                            }
                        }

                        methodCall.EnhancedName = expType.Name + "$" + methodCall.MethodName;

                        return symbolTable.GetMethodReturnType(expType.Name, methodCall.MethodName);
                    }
                case Read read:
                    {
                        return new AST.Boolean();
                    }
                case BooleanLit booleanLit:
                    {
                        return new AST.Boolean();
                    }
                case IntegerLit intLit:
                    {
                        return new Int();
                    }
                case This th:
                    {
                        return null;
                    }
                case ArrayInstantiation arrInst:
                    {
                        return new IntArray();
                    }
                case ObjectInstantiation objInst:
                    {
                        return new ObjectType(objInst.ObjectId);
                    }
                case Not not:
                    {
                        return new AST.Boolean();
                    }
                case Parent par:
                    {
                        return TypeOf(par.Exp, currentClass, currentMethod);
                    }
            }

            return null;
        }

        public bool CompareTypes(AST.Type t1, AST.Type t2)
        {
            if(t1.GetType() != t2.GetType())
            {
                return false;
            }

            if(t1 is ObjectType to1 && t2 is ObjectType to2)
            {
                if(to1.Name != to2.Name)
                {
                    return false;
                }
            }

            return true;
        }
    }
}
