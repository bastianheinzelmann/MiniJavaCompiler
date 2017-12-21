using Antlr4.Runtime;
using Compilerbau.GeneratedParser;
using Compilerbau.Intermediate;
using Compilerbau.Intermediate.Canon;
using Compilerbau.Intermediate.Tree;
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
                // Generate AST //

                var ast = cst.ToAst();

                // Type Checking //

                TypeChecker typeChecker = new TypeChecker();
                typeChecker.InitTypeChecking(ast);
                typeChecker.StartTypeChecking(ast);

                // Convert to intermediate //

                IntermediateAstBuilder intermediate = new IntermediateAstBuilder();
                var interTree = intermediate.BuildIntermediateAst(ast);
                var canonizedTree = new Canonizer().CanonPrg((TreePrg)interTree);

                //File.WriteAllText(@"C:\Users\WhynotPanda\Documents\Compilerbau1718\tree2c\Examples\randomCan.tree", canonizedTree.ToString());
                File.WriteAllText(@"C:\Users\WhynotPanda\Documents\Compilerbau1718\tree2c\Examples\random.tree", canonizedTree.ToString());

                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("You did great!");
            }
        }
    }
}
