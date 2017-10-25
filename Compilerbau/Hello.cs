using System;
using Compilerbau.GeneratedParser;
using System.Text;
using Antlr4.Runtime;
using System.IO;

namespace Compilerbau
{
    class Hello
    {
        public static void Main(String[] args)
        {
            try
            {
                //string input = "";
                //StringBuilder text = new StringBuilder();
                //Console.WriteLine("Input some shit");

                //while ((input = Console.ReadLine()) != "\u0004")
                //{
                //    text.AppendLine(input);
                //}

                string input = File.ReadAllText(args[0]);

                AntlrInputStream inputStream = new AntlrInputStream(input);
                MiniJavaLexer miniJavaLexer = new MiniJavaLexer(inputStream);
                CommonTokenStream commonTokenStream = new CommonTokenStream(miniJavaLexer);
                MiniJavaParser miniJavaParser = new MiniJavaParser(commonTokenStream);
                miniJavaParser.prg();

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e);
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("It's all my fault :(");
                Console.ReadKey();
            }

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("You did great!");
            Console.ReadKey();
        }
    }
}
