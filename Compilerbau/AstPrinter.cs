
using System;
using Antlr4.Runtime;
using Compilerbau.GeneratedParser;
using Antlr4.Runtime.Tree;

namespace Compilerbau
{
    class AstPrinter
    {
        public void print(RuleContext ctx)
        {
            explore(ctx, 0);
        }

        private void explore(RuleContext ctx, int indentation)
        {
            string ruleName = MiniJavaParser.ruleNames[ctx.RuleIndex];
            for (int i = 0; i < indentation; i++)
            {
                Console.Write("  ");
            }
            Console.WriteLine(ruleName);
            for (int i = 0; i < ctx.ChildCount; i++)
            {
                IParseTree element = ctx.GetChild(i);
                if (element is RuleContext) {
                explore((RuleContext)element, indentation + 1);
            }
        }
    }
}
}
