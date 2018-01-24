using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Compilerbau.Intermediate;
using Compilerbau.Intermediate.Tree;

namespace Compilerbau.Backend.I386
{
    class I386CodeGenerator : ICodeGenerator
    {
        // Caller save EAX, ECX, EDX
        public static Temp EAX = new RegTemp("eax");
        public static Temp ECX = new RegTemp("ecx");
        public static Temp EDX = new RegTemp("edx");

        // special purpose registers
        public static Temp ESP = new RegTemp("esp");
        public static Temp EBP = new RegTemp("ebp");

        // Callee save registers
        public static Temp EBX = new RegTemp("ebx");
        public static Temp ESI = new RegTemp("esi");
        public static Temp EDI = new RegTemp("edi");

        List<IMachineInstruction> currentBody;

        int currentParamCount;

        public IMachinePrg CodeGen(TreePrg frag)
        {
            List<I386Function> translatedFunctions = new List<I386Function>();

            foreach (var treef in frag.Functions)
            {
                translatedFunctions.Add(TranslateFunction(treef));
            }

            return new I386Prg(translatedFunctions);
        }

        public List<Temp> GetAllRegisters()
        {
            return new List<Temp> { EAX, ECX, EDX, ESP, EBP, EBX, ESI, EDI };
        }

        public List<Temp> GetGeneralPurposeRegisters()
        {
            return new List<Temp> { EAX, ECX, EDX, EBX, ESI, EDI };
        }

        I386Function TranslateFunction(TreeFunction function)
        {
            currentBody = new List<IMachineInstruction>();
            currentParamCount = function.NumberOfParameters - 1;
            Emit(new InstrUnary(InstrUnary.Kind.PUSH, new Operand.Reg(EBP)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EBP), new Operand.Reg(ESP)));
            Emit(new InstrBinary(InstrBinary.Kind.SUB, new Operand.Reg(ESP), new Operand.Imm(0)));
            //Emit(new InstrBinary(InstrBinary.Kind.SUB, new Operand.Reg(ESP), new Operand.Imm(12)));

            Temp ebxTemp = new Temp(), esiTemp = new Temp(), ediTemp = new Temp();

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ebxTemp), new Operand.Reg(EBX)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(esiTemp), new Operand.Reg(ESI)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ediTemp), new Operand.Reg(EDI)));

            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Mem(EBP, -4), new Operand.Reg(EBX)));
            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Mem(EBP, -8), new Operand.Reg(ESI)));
            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Mem(EBP, -12), new Operand.Reg(EDI)));

            foreach (var stm in function.Body)
            {
                MunchStm(stm);
            }


            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EAX), new Operand.Reg(function.ReturnTemp)));

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EBX), new Operand.Reg(ebxTemp)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ESI), new Operand.Reg(esiTemp)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EDI), new Operand.Reg(ediTemp)));

            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EBX), new Operand.Mem(EBP, -4)));
            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ESI), new Operand.Mem(EBP, -8)));
            //Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EDI), new Operand.Mem(EBP, -12)));

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ESP), new Operand.Reg(EBP)));
            Emit(new InstrUnary(InstrUnary.Kind.POP, new Operand.Reg(EBP)));
            Emit(new InstrNullary(InstrNullary.Kind.RET));

            return new I386Function(function.Name, currentBody);
        }

        void Emit(IMachineInstruction instr)
        {
            currentBody.Add(instr);
        }

        void MunchStm(TreeStm stm)
        {
            switch (stm)
            {
                case StmCJump cjump:
                    {
                        if(cjump.Left is ExpConst c)
                        {
                            Temp constTemp = new Temp();
                            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(constTemp), new Operand.Imm(c.Value)));
                            Emit(new InstrBinary(InstrBinary.Kind.CMP, new Operand.Reg(constTemp), MunchExp(cjump.Right)));
                        }
                        else
                        {
                            Emit(new InstrBinary(InstrBinary.Kind.CMP, MunchExp(cjump.Left), MunchExp(cjump.Right)));
                        }

                        InstrJump.Cond cond;

                        switch (cjump.Rel)
                        {
                            case StmCJump.Relation.EQ:
                                {
                                    cond = InstrJump.Cond.NE;
                                    break;
                                }
                            case StmCJump.Relation.GE:
                                {
                                    cond = InstrJump.Cond.L;
                                    break;
                                }
                            case StmCJump.Relation.GT:
                                {
                                    cond = InstrJump.Cond.LE;
                                    break;
                                }
                            case StmCJump.Relation.LE:
                                {
                                    cond = InstrJump.Cond.G;
                                    break;
                                }
                            case StmCJump.Relation.LT:
                                {
                                    cond = InstrJump.Cond.GE;
                                    break;
                                }
                            case StmCJump.Relation.NE:
                                {
                                    cond = InstrJump.Cond.E;
                                    break;
                                }
                            default: throw new Exception("No Relation matched!");
                        }
                        Emit(new InstrJump(cond, cjump.LabelFalse));
                        break;
                    }
                case StmJump jump:
                    {
                        Emit(new InstrJump(InstrJump.Kind.JMP, jump.PossibleTargets[0]));
                        break;
                    }
                case StmLabel label:
                    {
                        Emit(new InstrLabel(label.Label));
                        break;
                    }
                case StmMove move:
                    {
                        Operand op1 = MunchExp(move.Dest);
                        Operand op2 = MunchExp(move.Source);

                        if(op1 is Operand.Mem && op2 is Operand.Mem)
                        {
                            Operand.Reg t = new Operand.Reg(new Temp());

                            Emit(new InstrBinary(InstrBinary.Kind.MOV, t, op2));
                            Emit(new InstrBinary(InstrBinary.Kind.MOV, op1, t));
                        }
                        else
                        {
                            Emit(new InstrBinary(InstrBinary.Kind.MOV, op1, op2));
                        }

                        break;
                    }
                case StmSeq seq:
                    {
                        throw new Exception("No Sequences allowed!");
                    }
                default:
                    {
                        throw new Exception("No case matched!");
                    }
            }
        }

        Operand MunchExp(TreeExp exp)
        {
            switch (exp)
            {
                case ExpBinOp binop:
                    {
                        InstrBinary.Kind operation;

                        switch (binop.Operator)
                        {
                            case ExpBinOp.Op.AND:
                                {
                                    operation = InstrBinary.Kind.AND;
                                    break;
                                }
                            case ExpBinOp.Op.ARSHIFT:
                                {
                                    operation = InstrBinary.Kind.SHR;
                                    break;
                                }
                            case ExpBinOp.Op.DIV:
                                {
                                    Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EAX), MunchExp(binop.Left)));
                                    //Emit(new InstrNullary(InstrNullary.Kind.CDQ));
                                    Emit(new InstrUnary(InstrUnary.Kind.IDIV, MunchExp(binop.Right)));
                                    return new Operand.Reg(EAX);
                                }
                            case ExpBinOp.Op.LSHIFT:
                                {
                                    operation = InstrBinary.Kind.SHL;
                                    break;
                                }
                            case ExpBinOp.Op.MINUS:
                                {
                                    operation = InstrBinary.Kind.SUB;
                                    break;
                                }
                            case ExpBinOp.Op.MUL:
                                {
                                    operation = InstrBinary.Kind.IMUL;
                                    break;
                                }
                            case ExpBinOp.Op.OR:
                                {
                                    operation = InstrBinary.Kind.OR;
                                    break;
                                }
                            case ExpBinOp.Op.PLUS:
                                {
                                    operation = InstrBinary.Kind.ADD;
                                    break;
                                }
                            default: throw new Exception("not matched");
                        }

                        Operand tempOp = new Operand.Reg(new Temp());
                        Emit(new InstrBinary(InstrBinary.Kind.MOV, tempOp, MunchExp(binop.Left)));
                        Emit(new InstrBinary(operation, tempOp, MunchExp(binop.Right)));
                        return tempOp;
                    }
                case ExpCall call:
                    {
                        ExpName name;

                        if (call.Function is ExpName n)
                        {
                            name = n;
                        }
                        else
                        {
                            throw new Exception("No label");
                        }

                        for(int i = 0; i < call.Args.Count; i++)
                        {
                            Temp argTemp = new Temp();
                            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(argTemp), MunchExp(call.Args[i])));
                            Emit(new InstrUnary(InstrUnary.Kind.PUSH, new Operand.Reg(argTemp)));
                        }

                        //Emit(new InstrBinary(InstrBinary.Kind.SUB, ))
                        Emit(new InstrJump(InstrJump.Kind.CALL, name.Label, new List<RegTemp> { (RegTemp)EAX, (RegTemp)ECX, (RegTemp)EDX}));
                        //Emit(new InstrBinary(InstrBinary.Kind.ADD, new Operand.Reg(EBP), new Operand.Imm(call.Args.Count * 4)));
                        return new Operand.Reg(EAX);
                    }
                case ExpConst con:
                    {
                        return new Operand.Imm(con.Value);
                    }
                case ExpMem mem:
                    {
                        // very confusing

                        Temp bas = new Temp(); Temp index = new Temp();
                        Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(bas), MunchExp(mem.Address)));
                        return new Operand.Mem(bas);
                    }
                case ExpName name:
                    {
                        Emit(new InstrLabel(name.Label));
                        return new Operand.Reg(new Temp());
                    }
                case ExpParam param:
                    {
                        Temp parTemp = new Temp();
                        Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(parTemp), new Operand.Mem(EBP, 0, null, (currentParamCount - param.Number) * 4 + 8)));
                        return new Operand.Reg(parTemp);
                    }
                case ExpTemp temp:
                    {
                        return new Operand.Reg(temp.Temp);
                    }
                default: throw new Exception("No expression matched.");
            }
        }
    }
}

