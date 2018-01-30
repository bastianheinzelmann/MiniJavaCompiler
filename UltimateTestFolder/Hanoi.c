#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LH$init (int32_t p0) ;

int32_t LH$run (int32_t p0) ;

int32_t LH$move (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4) ;

int32_t LH$display (int32_t p0) ;

int32_t LH$drawbar (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t37, t38, t39;
/* MOVE(TEMP(t37), CALL(NAME(L_halloc), CONST(16))) */
int32_t t2 = L_halloc(16);
t37 = t2;
/* MOVE(TEMP(t38), CALL(NAME(LH$init), TEMP(t37))) */
int32_t t3 = LH$init(t37);
t38 = t3;
/* MOVE(TEMP(t39), CALL(NAME(LH$run), TEMP(t38))) */
int32_t t4 = LH$run(t38);
t39 = t4;
/* MOVE(TEMP(t1), CALL(NAME(L_write), TEMP(t39))) */
int32_t t5 = L_write(t39);
t1 = t5;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LH$init (int32_t p0) {
int32_t t2, t3, t4, t40, t41, t42, t5, t6, t7;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(10)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = 10;
/* MOVE(TEMP(t40), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))) */
t40 = (p0 + (1 * 4));
/* MOVE(TEMP(t3), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc(((MEM((p0 + (0 * 4))) + 1) * 4));
t3 = t1;
/* MOVE(MEM(TEMP(t3)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
int32_t t8 = t3;
MEM(t8) = MEM((p0 + (0 * 4)));
/* MOVE(MEM(TEMP(t40)), TEMP(t3)) */
int32_t t9 = t40;
MEM(t9) = t3;
/* MOVE(TEMP(t41), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))) */
t41 = (p0 + (2 * 4));
/* MOVE(TEMP(t4), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t10 = L_halloc(((MEM((p0 + (0 * 4))) + 1) * 4));
t4 = t10;
/* MOVE(MEM(TEMP(t4)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
int32_t t11 = t4;
MEM(t11) = MEM((p0 + (0 * 4)));
/* MOVE(MEM(TEMP(t41)), TEMP(t4)) */
int32_t t12 = t41;
MEM(t12) = t4;
/* MOVE(TEMP(t42), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))) */
t42 = (p0 + (3 * 4));
/* MOVE(TEMP(t5), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(DIV, CONST(1), CONST(2))), CONST(1)), CONST(4)))) */
int32_t t13 = L_halloc((((MEM((p0 + (0 * 4))) + (1 / 2)) + 1) * 4));
t5 = t13;
/* MOVE(MEM(TEMP(t5)), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(DIV, CONST(1), CONST(2)))) */
int32_t t14 = t5;
MEM(t14) = (MEM((p0 + (0 * 4))) + (1 / 2));
/* MOVE(MEM(TEMP(t42)), TEMP(t5)) */
int32_t t15 = t42;
MEM(t15) = t5;
/* MOVE(TEMP(t2), CONST(0)) */
t2 = 0;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* CJUMP(LT, TEMP(t2), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), L$$3, L$$4) */
if (t2 < MEM((p0 + (0 * 4)))) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t6), CONST(1), L$$2, L$$1) */
if (t6 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t2), CONST(1))))), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), TEMP(t2))) */
int32_t t16 = (MEM((p0 + (1 * 4))) + (4 * (t2 + 1)));
MEM(t16) = (MEM((p0 + (0 * 4))) - t2);
/* MOVE(TEMP(t2), BINOP(PLUS, TEMP(t2), CONST(1))) */
t2 = (t2 + 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t7), PARAM(0)) */
t7 = p0;
return t7;
}

int32_t LH$run (int32_t p0) {
int32_t t8, t9;
/* MOVE(TEMP(t8), CALL(NAME(LH$display), PARAM(0))) */
int32_t t0 = LH$display(p0);
t8 = t0;
/* MOVE(TEMP(t8), CALL(NAME(LH$move), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))))) */
int32_t t1 = LH$move(p0, MEM((p0 + (0 * 4))), MEM((p0 + (1 * 4))), MEM((p0 + (3 * 4))), MEM((p0 + (2 * 4))));
t8 = t1;
/* MOVE(TEMP(t9), CONST(10)) */
t9 = 10;
return t9;
}

int32_t LH$move (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4) {
int32_t t10, t11, t12, t13, t14, t15, t16, t17, t18;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
/* CJUMP(LT, PARAM(1), CONST(2), L$$8, L$$9) */
if (p1 < 2) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t12), CONST(1)) */
t12 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t12), CONST(1), L$$6, L$$5) */
if (t12 == 1) goto L$$6; else goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, TEMP(t10), MEM(PARAM(2)), L$$16, L$$17) */
if (t10 < MEM(p2)) goto L$$16; else goto L$$17;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$17) */
L$$17: ;
/* CJUMP(EQ, TEMP(t15), CONST(1), L$$13, L$$14) */
if (t15 == 1) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, CONST(0), MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1))))), L$$18, L$$19) */
if (0 < MEM((p2 + (4 * (t10 + 1))))) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t14), TEMP(t16)) */
t14 = t16;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t13), TEMP(t14)), CONST(1), L$$12, L$$11) */
if ((t13 & t14) == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t10), BINOP(PLUS, TEMP(t10), CONST(1))) */
t10 = (t10 + 1);
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t10), BINOP(MINUS, TEMP(t10), CONST(1))) */
t10 = (t10 - 1);
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
/* CJUMP(LT, CONST(0), MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t11), CONST(1))))), L$$23, L$$24) */
if (0 < MEM((p3 + (4 * (t11 + 1))))) goto L$$23; else goto L$$24;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t17), CONST(1)) */
t17 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t17), CONST(1), L$$22, L$$21) */
if (t17 == 1) goto L$$22; else goto L$$21;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t11), BINOP(PLUS, TEMP(t11), CONST(1))) */
t11 = (t11 + 1);
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t11), CONST(1))))), MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1)))))) */
int32_t t0 = (p3 + (4 * (t11 + 1)));
MEM(t0) = MEM((p2 + (4 * (t10 + 1))));
/* MOVE(MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1))))), CONST(0)) */
int32_t t1 = (p2 + (4 * (t10 + 1)));
MEM(t1) = 0;
/* MOVE(TEMP(t10), CALL(NAME(LH$display), PARAM(0))) */
int32_t t2 = LH$display(p0);
t10 = t2;
/* JUMP(NAME(L$$7), L$$7) */
goto L$$7;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t10), CALL(NAME(LH$move), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)), PARAM(2), PARAM(4), PARAM(3))) */
int32_t t3 = LH$move(p0, (p1 - 1), p2, p4, p3);
t10 = t3;
/* MOVE(TEMP(t10), CALL(NAME(LH$move), PARAM(0), CONST(1), PARAM(2), PARAM(3), PARAM(4))) */
int32_t t4 = LH$move(p0, 1, p2, p3, p4);
t10 = t4;
/* MOVE(TEMP(t10), CALL(NAME(LH$move), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)), PARAM(4), PARAM(3), PARAM(2))) */
int32_t t5 = LH$move(p0, (p1 - 1), p4, p3, p2);
t10 = t5;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
return t18;
}

int32_t LH$display (int32_t p0) {
int32_t t19, t20, t21, t22, t23, t24, t25, t26;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, TEMP(t19), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), L$$28, L$$29) */
if (t19 < MEM((p0 + (0 * 4)))) goto L$$28; else goto L$$29;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$29) */
L$$29: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$27, L$$26) */
if (t21 == 1) goto L$$27; else goto L$$26;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t20), CALL(NAME(LH$drawbar), PARAM(0), CONST(111), BINOP(MUL, CONST(2), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), TEMP(t19)), CONST(1)), CONST(1)))))), BINOP(PLUS, BINOP(MUL, CONST(2), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), CONST(2)))) */
int32_t t0 = LH$drawbar(p0, 111, (2 * MEM((MEM((p0 + (1 * 4))) + (4 * (((MEM((p0 + (0 * 4))) - t19) - 1) + 1))))), ((2 * MEM((p0 + (0 * 4)))) + 2));
t20 = t0;
/* MOVE(TEMP(t20), CALL(NAME(LH$drawbar), PARAM(0), CONST(111), BINOP(MUL, CONST(2), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), TEMP(t19)), CONST(1)), CONST(1)))))), BINOP(PLUS, BINOP(MUL, CONST(2), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), CONST(2)))) */
int32_t t1 = LH$drawbar(p0, 111, (2 * MEM((MEM((p0 + (2 * 4))) + (4 * (((MEM((p0 + (0 * 4))) - t19) - 1) + 1))))), ((2 * MEM((p0 + (0 * 4)))) + 2));
t20 = t1;
/* MOVE(TEMP(t20), CALL(NAME(LH$drawbar), PARAM(0), CONST(111), BINOP(MUL, CONST(2), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), TEMP(t19)), CONST(1)), CONST(1)))))), BINOP(PLUS, BINOP(MUL, CONST(2), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), CONST(2)))) */
int32_t t2 = LH$drawbar(p0, 111, (2 * MEM((MEM((p0 + (3 * 4))) + (4 * (((MEM((p0 + (0 * 4))) - t19) - 1) + 1))))), ((2 * MEM((p0 + (0 * 4)))) + 2));
t20 = t2;
/* MOVE(TEMP(t22), CALL(NAME(L_write), CONST(10))) */
int32_t t3 = L_write(10);
t22 = t3;
/* MOVE(TEMP(t19), BINOP(PLUS, TEMP(t19), CONST(1))) */
t19 = (t19 + 1);
/* JUMP(NAME(L$$25), L$$25) */
goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t20), CALL(NAME(LH$drawbar), PARAM(0), CONST(61), BINOP(PLUS, BINOP(MUL, BINOP(MUL, CONST(3), CONST(2)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), BINOP(MUL, CONST(3), CONST(2))), BINOP(PLUS, BINOP(MUL, BINOP(MUL, CONST(3), CONST(2)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), BINOP(MUL, CONST(3), CONST(2))))) */
int32_t t4 = LH$drawbar(p0, 61, (((3 * 2) * MEM((p0 + (0 * 4)))) + (3 * 2)), (((3 * 2) * MEM((p0 + (0 * 4)))) + (3 * 2)));
t20 = t4;
/* MOVE(TEMP(t23), CALL(NAME(L_write), CONST(10))) */
int32_t t5 = L_write(10);
t23 = t5;
/* MOVE(TEMP(t24), CALL(NAME(L_write), CONST(10))) */
int32_t t6 = L_write(10);
t24 = t6;
/* MOVE(TEMP(t25), CALL(NAME(L_write), CONST(10))) */
int32_t t7 = L_write(10);
t25 = t7;
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
return t26;
}

int32_t LH$drawbar (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t28, t29, t30, t31, t32, t33, t34, t35, t36;
/* MOVE(TEMP(t28), BINOP(DIV, BINOP(MINUS, PARAM(3), PARAM(2)), CONST(2))) */
t28 = ((p3 - p2) / 2);
/* MOVE(TEMP(t29), BINOP(MINUS, BINOP(MINUS, PARAM(3), PARAM(2)), TEMP(t28))) */
t29 = ((p3 - p2) - t28);
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t30), CONST(0)) */
t30 = 0;
/* CJUMP(LT, CONST(0), TEMP(t28), L$$33, L$$34) */
if (0 < t28) goto L$$33; else goto L$$34;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t30), CONST(1)) */
t30 = 1;
/* LABEL(L$$34) */
L$$34: ;
/* CJUMP(EQ, TEMP(t30), CONST(1), L$$32, L$$31) */
if (t30 == 1) goto L$$32; else goto L$$31;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t31), CALL(NAME(L_write), CONST(32))) */
int32_t t0 = L_write(32);
t31 = t0;
/* MOVE(TEMP(t28), BINOP(MINUS, TEMP(t28), CONST(1))) */
t28 = (t28 - 1);
/* JUMP(NAME(L$$30), L$$30) */
goto L$$30;
/* LABEL(L$$31) */
L$$31: ;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* CJUMP(LT, CONST(0), PARAM(2), L$$38, L$$39) */
if (0 < p2) goto L$$38; else goto L$$39;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t32), CONST(1)) */
t32 = 1;
/* LABEL(L$$39) */
L$$39: ;
/* CJUMP(EQ, TEMP(t32), CONST(1), L$$37, L$$36) */
if (t32 == 1) goto L$$37; else goto L$$36;
/* LABEL(L$$37) */
L$$37: ;
/* MOVE(TEMP(t33), CALL(NAME(L_write), PARAM(1))) */
int32_t t1 = L_write(p1);
t33 = t1;
/* MOVE(PARAM(2), BINOP(MINUS, PARAM(2), CONST(1))) */
p2 = (p2 - 1);
/* JUMP(NAME(L$$35), L$$35) */
goto L$$35;
/* LABEL(L$$36) */
L$$36: ;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t34), CONST(0)) */
t34 = 0;
/* CJUMP(LT, CONST(0), TEMP(t29), L$$43, L$$44) */
if (0 < t29) goto L$$43; else goto L$$44;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t34), CONST(1)) */
t34 = 1;
/* LABEL(L$$44) */
L$$44: ;
/* CJUMP(EQ, TEMP(t34), CONST(1), L$$42, L$$41) */
if (t34 == 1) goto L$$42; else goto L$$41;
/* LABEL(L$$42) */
L$$42: ;
/* MOVE(TEMP(t35), CALL(NAME(L_write), CONST(32))) */
int32_t t2 = L_write(32);
t35 = t2;
/* MOVE(TEMP(t29), BINOP(MINUS, TEMP(t29), CONST(1))) */
t29 = (t29 - 1);
/* JUMP(NAME(L$$40), L$$40) */
goto L$$40;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t36), CONST(0)) */
t36 = 0;
return t36;
}

