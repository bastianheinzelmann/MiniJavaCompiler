using Antlr4.Runtime;
using Compilerbau.GeneratedParser;
using Compilerbau.TypeChecking;
using CustomExtensions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau
{
    class ParserFacade
    {
        public void Parse(string input)
        {
            //string input = File.ReadAllText(args[0]);

            AntlrInputStream inputStream = new AntlrInputStream(input);

            MiniJavaLexer miniJavaLexer = new MiniJavaLexer(inputStream);

            CommonTokenStream commonTokenStream = new CommonTokenStream(miniJavaLexer);
            MiniJavaParser miniJavaParser = new MiniJavaParser(commonTokenStream);
            miniJavaParser.AddErrorListener(ErrorListener.INSTANCE);

            var cst = miniJavaParser.prg();

            if (ErrorListener.INSTANCE.errorCounter > 0)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("Sorry this is all my fault :(");
            }
            else
            {
                var ast = cst.ToAst();
                TypeChecker typeChecker = new TypeChecker();
                //SymbolTable sym = typeChecker.CreateSymbolTable(ast);
                typeChecker.InitTypeChecking(ast);
                typeChecker.StartTypeChecking(ast);

                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("You did great!");
            }
        }
    }
}
