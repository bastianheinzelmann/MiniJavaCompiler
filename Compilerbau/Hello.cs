using System;
using Compilerbau.GeneratedParser;
using System.Text;
using Antlr4.Runtime;
using System.IO;
using Antlr4.Runtime.Tree;
using Compilerbau.AST;
using CustomExtensions;

namespace Compilerbau
{
    class Hello
    {
        public static void Main(String[] args)
        {
            string input = File.ReadAllText(args[0]);

            ParserFacade parserFacade = new ParserFacade();
            parserFacade.Parse(input);

            Console.ReadKey();
        }
    }
}