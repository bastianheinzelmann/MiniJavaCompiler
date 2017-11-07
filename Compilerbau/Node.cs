using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau.AST
{
    public interface Node { }

    public interface Expression { }

    public interface Statement { }

    class Prg : Node
    {
        public Prg(MainClass mainClass, ClassDeclaration[] classDeclarations)
        {
            MainClass = mainClass;           
            ClassDeclarations = classDeclarations;
        }

        public MainClass MainClass { get; set; }
        public ClassDeclaration[] ClassDeclarations { get; set; }
    }

    class ClassDeclaration : Node
    {

    }

    class MainClass : Node
    {
        public MainClass(string name, string param, Statement statement)
        {
            Name = name;
            Statement = statement;
            Param = param;
        }

        public string Name { get; set; }
        public string Param { get; set; }
        Statement Statement { get; set; }
    }

    // statement shit
    class BlockStatement : Statement
    {

    }

    class IfElseBlock : Statement
    {

    }

    class WhileBlock : Statement
    {

    }

    class VarAssignment : Statement
    {
        
    }

    class ArrayAssignment : Statement
    {

    }

    class Print : Statement
    {

    }

    class Write : Statement
    {

    }
}
