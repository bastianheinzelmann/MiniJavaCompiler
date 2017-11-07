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

            AntlrInputStream inputStream = new AntlrInputStream(input);

            MiniJavaLexer miniJavaLexer = new MiniJavaLexer(inputStream);

            CommonTokenStream commonTokenStream = new CommonTokenStream(miniJavaLexer);
            MiniJavaParser miniJavaParser = new MiniJavaParser(commonTokenStream);
            miniJavaParser.AddErrorListener(ErrorListener.INSTANCE);

            var cst = miniJavaParser.prg();

            var ast = cst.ToAst();

            if (ErrorListener.INSTANCE.errorCounter > 0)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("Sorry this is all my fault :(");
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("You did great!");
            }

            Console.ReadKey();
        }
    }
}
