﻿using Antlr4.Runtime;
using Compilerbau.Backend.I386;
using Compilerbau.Backend.LivenessAnalysis;
using Compilerbau.GeneratedParser;
using Compilerbau.Intermediate;
using Compilerbau.Intermediate.Canon;
using Compilerbau.Intermediate.Tree;
using Compilerbau.TypeChecking;
using CustomExtensions;
using System;
using System.IO;

namespace Compilerbau
{
    class ParserFacade
    {
        bool WithoutAlloc = false;
        bool Intermediate = false;

        private void ParseCompilerOptions(string[] options)
        {
            foreach(var option in options)
            {
                if(option == "no_regallocs")
                {
                    WithoutAlloc = true;
                }
                if (option == "tree")
                {
                    Intermediate = true;
                }
            }
        }


        public void Parse(string input, string[] compilerOptions)
        {
            string fileName = Path.GetFileNameWithoutExtension(compilerOptions[0]);
            ParseCompilerOptions(compilerOptions);

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

                // assembly //
                I386CodeGenerator codeGenerator = new I386CodeGenerator();
                var i386Prg = (I386Prg)codeGenerator.CodeGen(canonizedTree);

                if(WithoutAlloc) File.WriteAllText(fileName+  "_noallocs.s", i386Prg.RenderAssembly());

                // Liveness analysis //
                RegisterAllocator registerAllocator = new RegisterAllocator();
                registerAllocator.AllocateRegisters(i386Prg, codeGenerator.GetGeneralPurposeRegisters());

                Afterburner afterburner = new Afterburner();
                afterburner.RemoveRedundancies(i386Prg);



                if(Intermediate) File.WriteAllText(fileName + ".tree", canonizedTree.ToString());
                File.WriteAllText(fileName + ".s", i386Prg.RenderAssembly());

                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("You did great!");
                Console.ForegroundColor = ConsoleColor.White;
            }
        }
    }
}
