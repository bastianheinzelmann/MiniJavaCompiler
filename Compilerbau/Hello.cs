using System;
using Compilerbau.GeneratedParser;
using System.Text;
using Antlr4.Runtime;
using System.IO;
using Antlr4.Runtime.Tree;
using Compilerbau.AST;
using CustomExtensions;
using System.Diagnostics;

namespace Compilerbau
{
    class Hello
    {
        public static void Main(String[] args)
        {
            Stopwatch stopwatch = Stopwatch.StartNew();


            string input = File.ReadAllText(args[0]);

            ParserFacade parserFacade = new ParserFacade();
            parserFacade.Parse(input);
            

            stopwatch.Stop();
            var elapsedTime = stopwatch.ElapsedMilliseconds;
            float time = (float)elapsedTime / 1000;
            Console.WriteLine("I took " + time + " milliseconds. I am so lame.");
            Console.ReadKey();
        }
    }
}