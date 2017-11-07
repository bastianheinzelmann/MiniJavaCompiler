using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.GeneratedParser;
using Compilerbau.AST;

namespace CustomExtensions
{
    using static Compilerbau.GeneratedParser.MiniJavaParser;

    static class ExtensionMethods
    {
        public static Prg ToAst(this PrgContext prgContext)
        {
            return new Prg(prgContext.mainClass().ToAst(), prgContext.classDeclaration().Select(classcontext => classcontext.ToAst()).ToArray());
        }

        public static MainClass ToAst(this MainClassContext mainClassContext)
        {
            return new MainClass(mainClassContext.Identifier()[0].GetText(), mainClassContext.Identifier()[1].GetText(), mainClassContext.statement().ToAst());
        }

        public static ClassDeclaration ToAst(this ClassDeclarationContext classDeclarationContext)
        {
            return null;
        }

        public static Statement ToAst(this StatementContext statementContext)
        {
            switch (statementContext)
            {
                case IfelseBlockContext ifelseBlock: break;
            }
            return null;
        }
    }
}
