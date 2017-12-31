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
        Temp EAX = new RegTemp("eax");
        Temp ESP = new RegTemp("esp");
        Temp EBP = new RegTemp("ebp");

        // Callee save registers
        Temp EBX = new RegTemp("ebx");
        Temp ESI = new RegTemp("esi");
        Temp EDI = new RegTemp("edi");

        List<IMachineInstruction> currentBody;

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
            throw new NotImplementedException();
        }

        public List<Temp> GetGeneralPurposeRegisters()
        {
            throw new NotImplementedException();
        }

        I386Function TranslateFunction(TreeFunction function)
        {
            currentBody = new List<IMachineInstruction>();

            Emit(new InstrUnary(InstrUnary.Kind.PUSH, new Operand.Reg(EBP)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EBP), new Operand.Reg(ESP)));

            Temp ebxTemp = new Temp(), esiTemp = new Temp(), ediTemp = new Temp();

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ebxTemp), new Operand.Reg(EBX)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(esiTemp), new Operand.Reg(ESI)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ediTemp), new Operand.Reg(EDI)));

            foreach (var stm in function.Body)
            {
                MunchStm(stm);
            }

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EAX), new Operand.Reg(function.ReturnTemp)));

            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EBX), new Operand.Reg(ebxTemp)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(ESI), new Operand.Reg(esiTemp)));
            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(EDI), new Operand.Reg(ediTemp)));

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
                        Emit(new InstrBinary(InstrBinary.Kind.CMP, MunchExp(cjump.Left), MunchExp(cjump.Right)));
                        InstrJump.Cond cond;

                        switch (cjump.Rel)
                        {
                            case StmCJump.Relation.EQ:
                                {
                                    cond = InstrJump.Cond.E;
                                    break;
                                }
                            case StmCJump.Relation.GE:
                                {
                                    cond = InstrJump.Cond.GE;
                                    break;
                                }
                            case StmCJump.Relation.GT:
                                {
                                    cond = InstrJump.Cond.G;
                                    break;
                                }
                            case StmCJump.Relation.LE:
                                {
                                    cond = InstrJump.Cond.LE;
                                    break;
                                }
                            case StmCJump.Relation.LT:
                                {
                                    cond = InstrJump.Cond.L;
                                    break;
                                }
                            case StmCJump.Relation.NE:
                                {
                                    cond = InstrJump.Cond.NE;
                                    break;
                                }
                            default: throw new Exception("No Relation matched!");
                        }
                        Emit(new InstrJump(cond, cjump.LabelTrue));
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
                        Emit(new InstrBinary(InstrBinary.Kind.MOV, MunchExp(move.Dest), MunchExp(move.Source)));
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
                            Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Mem(ESP, 0, null, i * 4), MunchExp(call.Args[i])));
                        }

                        //Emit(new InstrBinary(InstrBinary.Kind.SUB, ))
                        Emit(new InstrJump(InstrJump.Kind.CALL, name.Label));
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
                        Emit(new InstrBinary(InstrBinary.Kind.MOV, new Operand.Reg(parTemp), new Operand.Mem(ESP, 0, null, param.Number * 4)));
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

