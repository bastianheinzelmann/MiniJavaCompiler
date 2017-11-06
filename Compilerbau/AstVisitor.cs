using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compilerbau
{
    abstract class AstVisitor<T>
    {
        public abstract T Visit(ProgramNode node);
        public abstract T Visit(MainClassNode node);
        public abstract T Visit(ClassDeclarationNode node);
        public abstract T Visit(VarDeclarationNode node);
        public abstract T Visit(MethodDeclarationNode node);
        public abstract T Visit(ParameterNode node);
        public abstract T Visit(MethodBodyNode node);
        public abstract T Visit(StatementNode node);


        public T Visit(Node node)
        {
            return Visit((dynamic)node);
        }

    }
}
