#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LFannkuch1$mod (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFannkuch1$min (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFannkuch1$max (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFannkuch1$arraycopy (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4, int32_t p5) ;

int32_t LFannkuch1$equals (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFannkuch1$firstPermutation (int32_t p0, int32_t p1) ;

int32_t LFannkuch1$incAndGet (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFannkuch1$nextPermutation (int32_t p0) ;

int32_t LFannkuch1$countFlips (int32_t p0) ;

int32_t LFannkuch1$runTask (int32_t p0, int32_t p1) ;

int32_t LFannkuch1$printResult (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LFannkuch1$fannkuch (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t77, t78;
/* MOVE(TEMP(t77), CALL(NAME(L_halloc), CONST(40))) */
int32_t t2 = L_halloc(40);
t77 = t2;
/* MOVE(TEMP(t78), CALL(NAME(LFannkuch1$fannkuch), TEMP(t77))) */
int32_t t3 = LFannkuch1$fannkuch(t77);
t78 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_write), TEMP(t78))) */
int32_t t4 = L_write(t78);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LFannkuch1$mod (int32_t p0, int32_t p1, int32_t p2) {
int32_t t2;
/* MOVE(TEMP(t2), BINOP(MINUS, PARAM(1), BINOP(MUL, PARAM(2), BINOP(DIV, PARAM(1), PARAM(2))))) */
t2 = (p1 - (p2 * (p1 / p2)));
return t2;
}

int32_t LFannkuch1$min (int32_t p0, int32_t p1, int32_t p2) {
int32_t t3, t4, t5;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t4), CONST(1)) */
t4 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t4), CONST(1), L$$1, L$$0) */
if (t4 == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t3), PARAM(1)) */
t3 = p1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t3), PARAM(2)) */
t3 = p2;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), TEMP(t3)) */
t5 = t3;
return t5;
}

int32_t LFannkuch1$max (int32_t p0, int32_t p1, int32_t p2) {
int32_t t6, t7, t8;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$8, L$$9) */
if (p1 < p2) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t7), CONST(1)) */
t7 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t7), CONST(1), L$$6, L$$5) */
if (t7 == 1) goto L$$6; else goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t6), PARAM(2)) */
t6 = p2;
/* JUMP(NAME(L$$7), L$$7) */
goto L$$7;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t6), PARAM(1)) */
t6 = p1;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t8), TEMP(t6)) */
t8 = t6;
return t8;
}

int32_t LFannkuch1$arraycopy (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4, int32_t p5) {
int32_t t10, t11, t9;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* CJUMP(LT, TEMP(t9), PARAM(5), L$$13, L$$14) */
if (t9 < p5) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t10), CONST(1), L$$12, L$$11) */
if (t10 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, PARAM(4), TEMP(t9)), CONST(1))))), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, PARAM(2), TEMP(t9)), CONST(1)))))) */
int32_t t0 = (p3 + (4 * ((p4 + t9) + 1)));
MEM(t0) = MEM((p1 + (4 * ((p2 + t9) + 1))));
/* MOVE(TEMP(t9), BINOP(PLUS, TEMP(t9), CONST(1))) */
t9 = (t9 + 1);
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
return t11;
}

int32_t LFannkuch1$equals (int32_t p0, int32_t p1, int32_t p2) {
int32_t t12, t13, t14, t15, t16;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$18, L$$19) */
if (p1 < p2) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t15)), CONST(1), L$$15, L$$16) */
if ((1 - t15) == 1) goto L$$15; else goto L$$16;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, PARAM(2), PARAM(1), L$$20, L$$21) */
if (p2 < p1) goto L$$20; else goto L$$21;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t14), BINOP(MINUS, CONST(1), TEMP(t16))) */
t14 = (1 - t16);
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* JUMP(NAME(L$$17), L$$17) */
goto L$$17;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t12), BINOP(AND, TEMP(t13), TEMP(t14))) */
t12 = (t13 & t14);
return t12;
}

int32_t LFannkuch1$firstPermutation (int32_t p0, int32_t p1) {
int32_t t17, t18, t19, t20, t21, t22, t23, t24, t25;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, TEMP(t18), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4))))), L$$25, L$$26) */
if (t18 < MEM(MEM((p0 + (7 * 4))))) goto L$$25; else goto L$$26;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$26) */
L$$26: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$24, L$$23) */
if (t21 == 1) goto L$$24; else goto L$$23;
/* LABEL(L$$24) */
L$$24: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))), TEMP(t18)) */
int32_t t0 = (MEM((p0 + (7 * 4))) + (4 * (t18 + 1)));
MEM(t0) = t18;
/* MOVE(TEMP(t18), BINOP(PLUS, TEMP(t18), CONST(1))) */
t18 = (t18 + 1);
/* JUMP(NAME(L$$22), L$$22) */
goto L$$22;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t18), BINOP(MINUS, MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(9), CONST(4))))), CONST(1))) */
t18 = (MEM(MEM((p0 + (9 * 4)))) - 1);
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t22), CONST(0)) */
t22 = 0;
/* CJUMP(LT, CONST(0), TEMP(t18), L$$30, L$$31) */
if (0 < t18) goto L$$30; else goto L$$31;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
/* LABEL(L$$31) */
L$$31: ;
/* CJUMP(EQ, TEMP(t22), CONST(1), L$$29, L$$28) */
if (t22 == 1) goto L$$29; else goto L$$28;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t20), BINOP(DIV, PARAM(1), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))))) */
t20 = (p1 / MEM((MEM((p0 + (4 * 4))) + (4 * (t18 + 1)))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(9), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))), TEMP(t20)) */
int32_t t1 = (MEM((p0 + (9 * 4))) + (4 * (t18 + 1)));
MEM(t1) = t20;
/* MOVE(PARAM(1), CALL(NAME(LFannkuch1$mod), PARAM(0), PARAM(1), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))))) */
int32_t t2 = LFannkuch1$mod(p0, p1, MEM((MEM((p0 + (4 * 4))) + (4 * (t18 + 1)))));
p1 = t2;
/* MOVE(TEMP(t17), CALL(NAME(LFannkuch1$arraycopy), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), CONST(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), CONST(0), BINOP(PLUS, TEMP(t18), CONST(1)))) */
int32_t t3 = LFannkuch1$arraycopy(p0, MEM((p0 + (7 * 4))), 0, MEM((p0 + (8 * 4))), 0, (t18 + 1));
t17 = t3;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
/* CJUMP(LT, TEMP(t19), BINOP(PLUS, TEMP(t18), CONST(1)), L$$35, L$$36) */
if (t19 < (t18 + 1)) goto L$$35; else goto L$$36;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t23), CONST(1)) */
t23 = 1;
/* LABEL(L$$36) */
L$$36: ;
/* CJUMP(EQ, TEMP(t23), CONST(1), L$$34, L$$33) */
if (t23 == 1) goto L$$34; else goto L$$33;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* CJUMP(LT, BINOP(PLUS, TEMP(t19), TEMP(t20)), BINOP(PLUS, TEMP(t18), CONST(1)), L$$40, L$$41) */
if ((t19 + t20) < (t18 + 1)) goto L$$40; else goto L$$41;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$41) */
L$$41: ;
/* CJUMP(EQ, TEMP(t24), CONST(1), L$$38, L$$37) */
if (t24 == 1) goto L$$38; else goto L$$37;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t19), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, TEMP(t19), TEMP(t20)), CONST(1)))))) */
int32_t t4 = (MEM((p0 + (7 * 4))) + (4 * (t19 + 1)));
MEM(t4) = MEM((MEM((p0 + (8 * 4))) + (4 * ((t19 + t20) + 1))));
/* JUMP(NAME(L$$39), L$$39) */
goto L$$39;
/* LABEL(L$$37) */
L$$37: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t19), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, BINOP(MINUS, BINOP(PLUS, TEMP(t19), TEMP(t20)), TEMP(t18)), CONST(1)), CONST(1)))))) */
int32_t t5 = (MEM((p0 + (7 * 4))) + (4 * (t19 + 1)));
MEM(t5) = MEM((MEM((p0 + (8 * 4))) + (4 * ((((t19 + t20) - t18) - 1) + 1))));
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t19), BINOP(PLUS, TEMP(t19), CONST(1))) */
t19 = (t19 + 1);
/* JUMP(NAME(L$$32), L$$32) */
goto L$$32;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t18), BINOP(MINUS, TEMP(t18), CONST(1))) */
t18 = (t18 - 1);
/* JUMP(NAME(L$$27), L$$27) */
goto L$$27;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
return t25;
}

int32_t LFannkuch1$incAndGet (int32_t p0, int32_t p1, int32_t p2) {
int32_t t26;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1))))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1))))), CONST(1))) */
int32_t t0 = (p1 + (4 * (p2 + 1)));
MEM(t0) = (MEM((p1 + (4 * (p2 + 1)))) + 1);
/* MOVE(TEMP(t26), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1)))))) */
t26 = MEM((p1 + (4 * (p2 + 1))));
return t26;
}

int32_t LFannkuch1$nextPermutation (int32_t p0) {
int32_t t27, t28, t29, t30, t31, t32, t33, t79, t80;
/* MOVE(TEMP(t27), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1)))))) */
t27 = MEM((MEM((p0 + (7 * 4))) + (4 * (1 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1)))))) */
int32_t t0 = (MEM((p0 + (7 * 4))) + (4 * (1 + 1)));
MEM(t0) = MEM((MEM((p0 + (7 * 4))) + (4 * (0 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), TEMP(t27)) */
int32_t t1 = (MEM((p0 + (7 * 4))) + (4 * (0 + 1)));
MEM(t1) = t27;
/* MOVE(TEMP(t29), CONST(1)) */
t29 = 1;
/* LABEL(L$$42) */
L$$42: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* MOVE(TEMP(t80), TEMP(t29)) */
t80 = t29;
/* MOVE(TEMP(t79), CALL(NAME(LFannkuch1$incAndGet), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(9), CONST(4)))), TEMP(t29))) */
int32_t t2 = LFannkuch1$incAndGet(p0, MEM((p0 + (9 * 4))), t29);
t79 = t2;
/* CJUMP(LT, TEMP(t80), TEMP(t79), L$$45, L$$46) */
if (t80 < t79) goto L$$45; else goto L$$46;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(TEMP(t31), CONST(1)) */
t31 = 1;
/* LABEL(L$$46) */
L$$46: ;
/* CJUMP(EQ, TEMP(t31), CONST(1), L$$44, L$$43) */
if (t31 == 1) goto L$$44; else goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(9), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t29), CONST(1))))), CONST(0)) */
int32_t t3 = (MEM((p0 + (9 * 4))) + (4 * (t29 + 1)));
MEM(t3) = 0;
/* MOVE(TEMP(t29), BINOP(PLUS, TEMP(t29), CONST(1))) */
t29 = (t29 + 1);
/* MOVE(TEMP(t28), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1)))))) */
t28 = MEM((MEM((p0 + (7 * 4))) + (4 * (1 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1)))))) */
int32_t t4 = (MEM((p0 + (7 * 4))) + (4 * (0 + 1)));
MEM(t4) = MEM((MEM((p0 + (7 * 4))) + (4 * (1 + 1))));
/* MOVE(TEMP(t30), CONST(1)) */
t30 = 1;
/* LABEL(L$$47) */
L$$47: ;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* CJUMP(LT, TEMP(t30), TEMP(t29), L$$50, L$$51) */
if (t30 < t29) goto L$$50; else goto L$$51;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(TEMP(t32), CONST(1)) */
t32 = 1;
/* LABEL(L$$51) */
L$$51: ;
/* CJUMP(EQ, TEMP(t32), CONST(1), L$$49, L$$48) */
if (t32 == 1) goto L$$49; else goto L$$48;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t30), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, TEMP(t30), CONST(1)), CONST(1)))))) */
int32_t t5 = (MEM((p0 + (7 * 4))) + (4 * (t30 + 1)));
MEM(t5) = MEM((MEM((p0 + (7 * 4))) + (4 * ((t30 + 1) + 1))));
/* MOVE(TEMP(t30), BINOP(PLUS, TEMP(t30), CONST(1))) */
t30 = (t30 + 1);
/* JUMP(NAME(L$$47), L$$47) */
goto L$$47;
/* LABEL(L$$48) */
L$$48: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t29), CONST(1))))), TEMP(t27)) */
int32_t t6 = (MEM((p0 + (7 * 4))) + (4 * (t29 + 1)));
MEM(t6) = t27;
/* MOVE(TEMP(t27), TEMP(t28)) */
t27 = t28;
/* JUMP(NAME(L$$42), L$$42) */
goto L$$42;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t33), CONST(1)) */
t33 = 1;
return t33;
}

int32_t LFannkuch1$countFlips (int32_t p0) {
int32_t t34, t35, t36, t37, t38, t39, t40, t41, t42, t43, t44, t81, t82;
/* MOVE(TEMP(t35), CONST(1)) */
t35 = 1;
/* MOVE(TEMP(t36), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1)))))) */
t36 = MEM((MEM((p0 + (7 * 4))) + (4 * (0 + 1))));
/* MOVE(TEMP(t81), CALL(NAME(LFannkuch1$equals), PARAM(0), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t36), CONST(1))))), CONST(0))) */
int32_t t0 = LFannkuch1$equals(p0, MEM((MEM((p0 + (7 * 4))) + (4 * (t36 + 1)))), 0);
t81 = t0;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t81)), CONST(1), L$$53, L$$52) */
if ((1 - t81) == 1) goto L$$53; else goto L$$52;
/* LABEL(L$$53) */
L$$53: ;
/* MOVE(TEMP(t34), CALL(NAME(LFannkuch1$arraycopy), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), CONST(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), CONST(0), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4))))))) */
int32_t t1 = LFannkuch1$arraycopy(p0, MEM((p0 + (7 * 4))), 0, MEM((p0 + (8 * 4))), 0, MEM(MEM((p0 + (8 * 4)))));
t34 = t1;
/* MOVE(TEMP(t40), CONST(1)) */
t40 = 1;
/* LABEL(L$$55) */
L$$55: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t40)), CONST(1), L$$58, L$$59) */
if ((1 - t40) == 1) goto L$$58; else goto L$$59;
/* LABEL(L$$58) */
L$$58: ;
/* MOVE(TEMP(t82), CALL(NAME(LFannkuch1$equals), PARAM(0), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t36), CONST(1))))), CONST(0))) */
int32_t t2 = LFannkuch1$equals(p0, MEM((MEM((p0 + (8 * 4))) + (4 * (t36 + 1)))), 0);
t82 = t2;
/* MOVE(TEMP(t42), BINOP(MINUS, CONST(1), BINOP(MINUS, CONST(1), TEMP(t82)))) */
t42 = (1 - (1 - t82));
/* MOVE(TEMP(t41), CONST(1)) */
t41 = 1;
/* JUMP(NAME(L$$60), L$$60) */
goto L$$60;
/* LABEL(L$$59) */
L$$59: ;
/* MOVE(TEMP(t42), CONST(0)) */
t42 = 0;
/* MOVE(TEMP(t41), CONST(0)) */
t41 = 0;
/* LABEL(L$$60) */
L$$60: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), BINOP(AND, TEMP(t41), TEMP(t42))), CONST(1), L$$57, L$$56) */
if ((1 - (t41 & t42)) == 1) goto L$$57; else goto L$$56;
/* LABEL(L$$57) */
L$$57: ;
/* MOVE(TEMP(t40), CONST(0)) */
t40 = 0;
/* MOVE(TEMP(t35), BINOP(PLUS, TEMP(t35), CONST(1))) */
t35 = (t35 + 1);
/* MOVE(TEMP(t37), CONST(1)) */
t37 = 1;
/* MOVE(TEMP(t38), BINOP(MINUS, TEMP(t36), CONST(1))) */
t38 = (t36 - 1);
/* LABEL(L$$61) */
L$$61: ;
/* MOVE(TEMP(t43), CONST(0)) */
t43 = 0;
/* CJUMP(LT, TEMP(t37), TEMP(t38), L$$64, L$$65) */
if (t37 < t38) goto L$$64; else goto L$$65;
/* LABEL(L$$64) */
L$$64: ;
/* MOVE(TEMP(t43), CONST(1)) */
t43 = 1;
/* LABEL(L$$65) */
L$$65: ;
/* CJUMP(EQ, TEMP(t43), CONST(1), L$$63, L$$62) */
if (t43 == 1) goto L$$63; else goto L$$62;
/* LABEL(L$$63) */
L$$63: ;
/* MOVE(TEMP(t39), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t37), CONST(1)))))) */
t39 = MEM((MEM((p0 + (8 * 4))) + (4 * (t37 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t37), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t38), CONST(1)))))) */
int32_t t3 = (MEM((p0 + (8 * 4))) + (4 * (t37 + 1)));
MEM(t3) = MEM((MEM((p0 + (8 * 4))) + (4 * (t38 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t38), CONST(1))))), TEMP(t39)) */
int32_t t4 = (MEM((p0 + (8 * 4))) + (4 * (t38 + 1)));
MEM(t4) = t39;
/* MOVE(TEMP(t37), BINOP(PLUS, TEMP(t37), CONST(1))) */
t37 = (t37 + 1);
/* MOVE(TEMP(t38), BINOP(MINUS, TEMP(t38), CONST(1))) */
t38 = (t38 - 1);
/* JUMP(NAME(L$$61), L$$61) */
goto L$$61;
/* LABEL(L$$62) */
L$$62: ;
/* MOVE(TEMP(t39), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t36), CONST(1)))))) */
t39 = MEM((MEM((p0 + (8 * 4))) + (4 * (t36 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t36), CONST(1))))), TEMP(t36)) */
int32_t t5 = (MEM((p0 + (8 * 4))) + (4 * (t36 + 1)));
MEM(t5) = t36;
/* MOVE(TEMP(t36), TEMP(t39)) */
t36 = t39;
/* JUMP(NAME(L$$55), L$$55) */
goto L$$55;
/* LABEL(L$$56) */
L$$56: ;
/* JUMP(NAME(L$$54), L$$54) */
goto L$$54;
/* LABEL(L$$52) */
L$$52: ;
/* LABEL(L$$54) */
L$$54: ;
/* MOVE(TEMP(t44), TEMP(t35)) */
t44 = t35;
return t44;
}

int32_t LFannkuch1$runTask (int32_t p0, int32_t p1) {
int32_t t45, t46, t47, t48, t49, t50, t51, t52, t53, t54, t83, t84, t85, t86, t87;
/* MOVE(TEMP(t47), BINOP(MUL, PARAM(1), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))))) */
t47 = (p1 * MEM((p0 + (1 * 4))));
/* MOVE(TEMP(t48), CALL(NAME(LFannkuch1$min), PARAM(0), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1))))), BINOP(PLUS, TEMP(t47), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))))) */
int32_t t0 = LFannkuch1$min(p0, MEM((MEM((p0 + (4 * 4))) + (4 * (MEM((p0 + (3 * 4))) + 1)))), (t47 + MEM((p0 + (1 * 4)))));
t48 = t0;
/* MOVE(TEMP(t45), CALL(NAME(LFannkuch1$firstPermutation), PARAM(0), TEMP(t47))) */
int32_t t1 = LFannkuch1$firstPermutation(p0, t47);
t45 = t1;
/* MOVE(TEMP(t52), CONST(1)) */
t52 = 1;
/* MOVE(TEMP(t53), CONST(0)) */
t53 = 0;
/* MOVE(TEMP(t49), TEMP(t47)) */
t49 = t47;
/* MOVE(TEMP(t50), CONST(0)) */
t50 = 0;
/* LABEL(L$$66) */
L$$66: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t50)), CONST(1), L$$68, L$$67) */
if ((1 - t50) == 1) goto L$$68; else goto L$$67;
/* LABEL(L$$68) */
L$$68: ;
/* MOVE(TEMP(t83), CALL(NAME(LFannkuch1$equals), PARAM(0), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(0))) */
int32_t t2 = LFannkuch1$equals(p0, MEM((MEM((p0 + (7 * 4))) + (4 * (0 + 1)))), 0);
t83 = t2;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t83)), CONST(1), L$$70, L$$69) */
if ((1 - t83) == 1) goto L$$70; else goto L$$69;
/* LABEL(L$$70) */
L$$70: ;
/* MOVE(TEMP(t51), CALL(NAME(LFannkuch1$countFlips), PARAM(0))) */
int32_t t3 = LFannkuch1$countFlips(p0);
t51 = t3;
/* MOVE(TEMP(t52), CALL(NAME(LFannkuch1$max), PARAM(0), TEMP(t52), TEMP(t51))) */
int32_t t4 = LFannkuch1$max(p0, t52, t51);
t52 = t4;
/* MOVE(TEMP(t85), PARAM(0)) */
t85 = p0;
/* MOVE(TEMP(t84), CALL(NAME(LFannkuch1$mod), PARAM(0), TEMP(t49), CONST(2))) */
int32_t t5 = LFannkuch1$mod(p0, t49, 2);
t84 = t5;
/* MOVE(TEMP(t86), CALL(NAME(LFannkuch1$equals), TEMP(t85), TEMP(t84), CONST(0))) */
int32_t t6 = LFannkuch1$equals(t85, t84, 0);
t86 = t6;
/* CJUMP(EQ, TEMP(t86), CONST(1), L$$73, L$$72) */
if (t86 == 1) goto L$$73; else goto L$$72;
/* LABEL(L$$73) */
L$$73: ;
/* MOVE(TEMP(t53), BINOP(PLUS, TEMP(t53), TEMP(t51))) */
t53 = (t53 + t51);
/* JUMP(NAME(L$$74), L$$74) */
goto L$$74;
/* LABEL(L$$72) */
L$$72: ;
/* MOVE(TEMP(t53), BINOP(MINUS, TEMP(t53), TEMP(t51))) */
t53 = (t53 - t51);
/* LABEL(L$$74) */
L$$74: ;
/* JUMP(NAME(L$$71), L$$71) */
goto L$$71;
/* LABEL(L$$69) */
L$$69: ;
/* LABEL(L$$71) */
L$$71: ;
/* MOVE(TEMP(t49), BINOP(PLUS, TEMP(t49), CONST(1))) */
t49 = (t49 + 1);
/* MOVE(TEMP(t87), CALL(NAME(LFannkuch1$equals), PARAM(0), TEMP(t49), TEMP(t48))) */
int32_t t7 = LFannkuch1$equals(p0, t49, t48);
t87 = t7;
/* CJUMP(EQ, TEMP(t87), CONST(1), L$$76, L$$75) */
if (t87 == 1) goto L$$76; else goto L$$75;
/* LABEL(L$$76) */
L$$76: ;
/* MOVE(TEMP(t50), CONST(1)) */
t50 = 1;
/* JUMP(NAME(L$$77), L$$77) */
goto L$$77;
/* LABEL(L$$75) */
L$$75: ;
/* LABEL(L$$77) */
L$$77: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t50)), CONST(1), L$$79, L$$78) */
if ((1 - t50) == 1) goto L$$79; else goto L$$78;
/* LABEL(L$$79) */
L$$79: ;
/* MOVE(TEMP(t46), CALL(NAME(LFannkuch1$nextPermutation), PARAM(0))) */
int32_t t8 = LFannkuch1$nextPermutation(p0);
t46 = t8;
/* JUMP(NAME(L$$80), L$$80) */
goto L$$80;
/* LABEL(L$$78) */
L$$78: ;
/* LABEL(L$$80) */
L$$80: ;
/* JUMP(NAME(L$$66), L$$66) */
goto L$$66;
/* LABEL(L$$67) */
L$$67: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(1), CONST(1))))), TEMP(t52)) */
int32_t t9 = (MEM((p0 + (5 * 4))) + (4 * (p1 + 1)));
MEM(t9) = t52;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(6), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(1), CONST(1))))), TEMP(t53)) */
int32_t t10 = (MEM((p0 + (6 * 4))) + (4 * (p1 + 1)));
MEM(t10) = t53;
/* MOVE(TEMP(t54), CONST(0)) */
t54 = 0;
return t54;
}

int32_t LFannkuch1$printResult (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t55, t56, t57, t58, t59, t60;
/* MOVE(TEMP(t55), CALL(NAME(L_println_int), PARAM(3))) */
int32_t t0 = L_println_int(p3);
t55 = t0;
/* MOVE(TEMP(t56), CALL(NAME(L_write), CONST(80))) */
int32_t t1 = L_write(80);
t56 = t1;
/* MOVE(TEMP(t57), CALL(NAME(L_write), CONST(32))) */
int32_t t2 = L_write(32);
t57 = t2;
/* MOVE(TEMP(t58), CALL(NAME(L_println_int), PARAM(1))) */
int32_t t3 = L_println_int(p1);
t58 = t3;
/* MOVE(TEMP(t59), CALL(NAME(L_println_int), PARAM(2))) */
int32_t t4 = L_println_int(p2);
t59 = t4;
/* MOVE(TEMP(t60), CONST(0)) */
t60 = 0;
return t60;
}

int32_t LFannkuch1$fannkuch (int32_t p0) {
int32_t t61, t62, t63, t64, t65, t66, t67, t68, t69, t70, t71, t72, t73, t74, t75, t76, t88, t89, t90, t91, t92, t93;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(11)) */
int32_t t0 = (p0 + (3 * 4));
MEM(t0) = 11;
/* MOVE(TEMP(t88), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))) */
t88 = (p0 + (4 * 4));
/* MOVE(TEMP(t66), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1)), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc((((MEM((p0 + (3 * 4))) + 1) + 1) * 4));
t66 = t1;
/* MOVE(MEM(TEMP(t66)), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1))) */
int32_t t2 = t66;
MEM(t2) = (MEM((p0 + (3 * 4))) + 1);
/* MOVE(MEM(TEMP(t88)), TEMP(t66)) */
int32_t t3 = t88;
MEM(t3) = t66;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(1)) */
int32_t t4 = (MEM((p0 + (4 * 4))) + (4 * (0 + 1)));
MEM(t4) = 1;
/* MOVE(TEMP(t62), CONST(1)) */
t62 = 1;
/* LABEL(L$$81) */
L$$81: ;
/* MOVE(TEMP(t67), CONST(0)) */
t67 = 0;
/* CJUMP(LT, TEMP(t62), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4))))), L$$84, L$$85) */
if (t62 < MEM(MEM((p0 + (4 * 4))))) goto L$$84; else goto L$$85;
/* LABEL(L$$84) */
L$$84: ;
/* MOVE(TEMP(t67), CONST(1)) */
t67 = 1;
/* LABEL(L$$85) */
L$$85: ;
/* CJUMP(EQ, TEMP(t67), CONST(1), L$$83, L$$82) */
if (t67 == 1) goto L$$83; else goto L$$82;
/* LABEL(L$$83) */
L$$83: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t62), CONST(1))))), BINOP(MUL, MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t62), CONST(1)), CONST(1))))), TEMP(t62))) */
int32_t t5 = (MEM((p0 + (4 * 4))) + (4 * (t62 + 1)));
MEM(t5) = (MEM((MEM((p0 + (4 * 4))) + (4 * ((t62 - 1) + 1)))) * t62);
/* MOVE(TEMP(t62), BINOP(PLUS, TEMP(t62), CONST(1))) */
t62 = (t62 + 1);
/* JUMP(NAME(L$$81), L$$81) */
goto L$$81;
/* LABEL(L$$82) */
L$$82: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(150)) */
int32_t t6 = (p0 + (0 * 4));
MEM(t6) = 150;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), BINOP(DIV, BINOP(MINUS, BINOP(PLUS, MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1))))), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), CONST(1)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
int32_t t7 = (p0 + (1 * 4));
MEM(t7) = (((MEM((MEM((p0 + (4 * 4))) + (4 * (MEM((p0 + (3 * 4))) + 1)))) + MEM((p0 + (0 * 4)))) - 1) / MEM((p0 + (0 * 4))));
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), BINOP(DIV, BINOP(MINUS, BINOP(PLUS, MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1))))), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))), CONST(1)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))))) */
int32_t t8 = (p0 + (2 * 4));
MEM(t8) = (((MEM((MEM((p0 + (4 * 4))) + (4 * (MEM((p0 + (3 * 4))) + 1)))) + MEM((p0 + (1 * 4)))) - 1) / MEM((p0 + (1 * 4))));
/* MOVE(TEMP(t89), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))) */
t89 = (p0 + (5 * 4));
/* MOVE(TEMP(t68), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t9 = L_halloc(((MEM((p0 + (2 * 4))) + 1) * 4));
t68 = t9;
/* MOVE(MEM(TEMP(t68)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
int32_t t10 = t68;
MEM(t10) = MEM((p0 + (2 * 4)));
/* MOVE(MEM(TEMP(t89)), TEMP(t68)) */
int32_t t11 = t89;
MEM(t11) = t68;
/* MOVE(TEMP(t90), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(6), CONST(4)))) */
t90 = (p0 + (6 * 4));
/* MOVE(TEMP(t69), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t12 = L_halloc(((MEM((p0 + (2 * 4))) + 1) * 4));
t69 = t12;
/* MOVE(MEM(TEMP(t69)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
int32_t t13 = t69;
MEM(t13) = MEM((p0 + (2 * 4)));
/* MOVE(MEM(TEMP(t90)), TEMP(t69)) */
int32_t t14 = t90;
MEM(t14) = t69;
/* MOVE(TEMP(t91), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(7), CONST(4)))) */
t91 = (p0 + (7 * 4));
/* MOVE(TEMP(t70), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t15 = L_halloc(((MEM((p0 + (3 * 4))) + 1) * 4));
t70 = t15;
/* MOVE(MEM(TEMP(t70)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4))))) */
int32_t t16 = t70;
MEM(t16) = MEM((p0 + (3 * 4)));
/* MOVE(MEM(TEMP(t91)), TEMP(t70)) */
int32_t t17 = t91;
MEM(t17) = t70;
/* MOVE(TEMP(t92), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(8), CONST(4)))) */
t92 = (p0 + (8 * 4));
/* MOVE(TEMP(t71), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t18 = L_halloc(((MEM((p0 + (3 * 4))) + 1) * 4));
t71 = t18;
/* MOVE(MEM(TEMP(t71)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4))))) */
int32_t t19 = t71;
MEM(t19) = MEM((p0 + (3 * 4)));
/* MOVE(MEM(TEMP(t92)), TEMP(t71)) */
int32_t t20 = t92;
MEM(t20) = t71;
/* MOVE(TEMP(t93), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(9), CONST(4)))) */
t93 = (p0 + (9 * 4));
/* MOVE(TEMP(t72), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(1)), CONST(4)))) */
int32_t t21 = L_halloc(((MEM((p0 + (3 * 4))) + 1) * 4));
t72 = t21;
/* MOVE(MEM(TEMP(t72)), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4))))) */
int32_t t22 = t72;
MEM(t22) = MEM((p0 + (3 * 4)));
/* MOVE(MEM(TEMP(t93)), TEMP(t72)) */
int32_t t23 = t93;
MEM(t23) = t72;
/* MOVE(TEMP(t65), CONST(0)) */
t65 = 0;
/* LABEL(L$$86) */
L$$86: ;
/* MOVE(TEMP(t73), CONST(0)) */
t73 = 0;
/* CJUMP(LT, TEMP(t65), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), L$$89, L$$90) */
if (t65 < MEM((p0 + (2 * 4)))) goto L$$89; else goto L$$90;
/* LABEL(L$$89) */
L$$89: ;
/* MOVE(TEMP(t73), CONST(1)) */
t73 = 1;
/* LABEL(L$$90) */
L$$90: ;
/* CJUMP(EQ, TEMP(t73), CONST(1), L$$88, L$$87) */
if (t73 == 1) goto L$$88; else goto L$$87;
/* LABEL(L$$88) */
L$$88: ;
/* MOVE(TEMP(t61), CALL(NAME(LFannkuch1$runTask), PARAM(0), TEMP(t65))) */
int32_t t24 = LFannkuch1$runTask(p0, t65);
t61 = t24;
/* MOVE(TEMP(t65), BINOP(PLUS, TEMP(t65), CONST(1))) */
t65 = (t65 + 1);
/* JUMP(NAME(L$$86), L$$86) */
goto L$$86;
/* LABEL(L$$87) */
L$$87: ;
/* MOVE(TEMP(t63), CONST(0)) */
t63 = 0;
/* MOVE(TEMP(t62), CONST(0)) */
t62 = 0;
/* LABEL(L$$91) */
L$$91: ;
/* MOVE(TEMP(t74), CONST(0)) */
t74 = 0;
/* CJUMP(LT, TEMP(t62), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4))))), L$$94, L$$95) */
if (t62 < MEM(MEM((p0 + (5 * 4))))) goto L$$94; else goto L$$95;
/* LABEL(L$$94) */
L$$94: ;
/* MOVE(TEMP(t74), CONST(1)) */
t74 = 1;
/* LABEL(L$$95) */
L$$95: ;
/* CJUMP(EQ, TEMP(t74), CONST(1), L$$93, L$$92) */
if (t74 == 1) goto L$$93; else goto L$$92;
/* LABEL(L$$93) */
L$$93: ;
/* MOVE(TEMP(t63), CALL(NAME(LFannkuch1$max), PARAM(0), TEMP(t63), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t62), CONST(1))))))) */
int32_t t25 = LFannkuch1$max(p0, t63, MEM((MEM((p0 + (5 * 4))) + (4 * (t62 + 1)))));
t63 = t25;
/* MOVE(TEMP(t62), BINOP(PLUS, TEMP(t62), CONST(1))) */
t62 = (t62 + 1);
/* JUMP(NAME(L$$91), L$$91) */
goto L$$91;
/* LABEL(L$$92) */
L$$92: ;
/* MOVE(TEMP(t64), CONST(0)) */
t64 = 0;
/* MOVE(TEMP(t62), CONST(0)) */
t62 = 0;
/* LABEL(L$$96) */
L$$96: ;
/* MOVE(TEMP(t75), CONST(0)) */
t75 = 0;
/* CJUMP(LT, TEMP(t62), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(6), CONST(4))))), L$$99, L$$100) */
if (t62 < MEM(MEM((p0 + (6 * 4))))) goto L$$99; else goto L$$100;
/* LABEL(L$$99) */
L$$99: ;
/* MOVE(TEMP(t75), CONST(1)) */
t75 = 1;
/* LABEL(L$$100) */
L$$100: ;
/* CJUMP(EQ, TEMP(t75), CONST(1), L$$98, L$$97) */
if (t75 == 1) goto L$$98; else goto L$$97;
/* LABEL(L$$98) */
L$$98: ;
/* MOVE(TEMP(t64), BINOP(PLUS, TEMP(t64), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(6), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t62), CONST(1))))))) */
t64 = (t64 + MEM((MEM((p0 + (6 * 4))) + (4 * (t62 + 1)))));
/* MOVE(TEMP(t62), BINOP(PLUS, TEMP(t62), CONST(1))) */
t62 = (t62 + 1);
/* JUMP(NAME(L$$96), L$$96) */
goto L$$96;
/* LABEL(L$$97) */
L$$97: ;
/* MOVE(TEMP(t61), CALL(NAME(LFannkuch1$printResult), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), TEMP(t63), TEMP(t64))) */
int32_t t26 = LFannkuch1$printResult(p0, MEM((p0 + (3 * 4))), t63, t64);
t61 = t26;
/* MOVE(TEMP(t76), CONST(10)) */
t76 = 10;
return t76;
}

