using System;
using Compilerbau.GeneratedParser;
using System.Text;
using Antlr4.Runtime;

namespace Compilerbau
{
    class Hello
    {
        public static void Main()
        {
            try
            {
                string input = "";
                StringBuilder text = new StringBuilder();
                Console.WriteLine("Input some shit");

                while ((input = Console.ReadLine()) != "\u0004")
                {
                    text.AppendLine(input);
                }

                AntlrInputStream inputStream = new AntlrInputStream(text.ToString());
                MiniJavaLexer miniJavaLexer = new MiniJavaLexer(inputStream);
                CommonTokenStream commonTokenStream = new CommonTokenStream(miniJavaLexer);
                MiniJavaParser miniJavaParser = new MiniJavaParser(commonTokenStream);
                miniJavaParser.prg();

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e);
            }

            Console.ReadKey();
        }
    }
}
