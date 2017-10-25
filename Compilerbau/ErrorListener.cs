using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau
{
    class ErrorListener : IAntlrErrorListener<IToken>
    {
        public static ErrorListener INSTANCE = new ErrorListener();
        public int errorCounter = 0;

        public void SyntaxError(IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
        {
            //throw new ParseCanceledException("line " + line + "." + charPositionInLine + " " + msg);
            errorCounter++;
        }
    }
}
