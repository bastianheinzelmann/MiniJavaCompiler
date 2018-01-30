#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LQS$Start (int32_t p0, int32_t p1) ;

int32_t LQS$Sort (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LQS$Print (int32_t p0) ;

int32_t LQS$Init (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t24, t25;
/* MOVE(TEMP(t24), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t24 = t2;
/* MOVE(TEMP(t25), CALL(NAME(LQS$Start), TEMP(t24), CONST(10))) */
int32_t t3 = LQS$Start(t24, 10);
t25 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t25))) */
int32_t t4 = L_println_int(t25);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LQS$Start (int32_t p0, int32_t p1) {
int32_t t2, t3, t4;
/* MOVE(TEMP(t2), CALL(NAME(LQS$Init), PARAM(0), PARAM(1))) */
int32_t t0 = LQS$Init(p0, p1);
t2 = t0;
/* MOVE(TEMP(t2), CALL(NAME(LQS$Print), PARAM(0))) */
int32_t t1 = LQS$Print(p0);
t2 = t1;
/* MOVE(TEMP(t3), CALL(NAME(L_println_int), CONST(9999))) */
int32_t t5 = L_println_int(9999);
t3 = t5;
/* MOVE(TEMP(t2), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))) */
t2 = (MEM((p0 + (1 * 4))) - 1);
/* MOVE(TEMP(t2), CALL(NAME(LQS$Sort), PARAM(0), CONST(0), TEMP(t2))) */
int32_t t6 = LQS$Sort(p0, 0, t2);
t2 = t6;
/* MOVE(TEMP(t2), CALL(NAME(LQS$Print), PARAM(0))) */
int32_t t7 = LQS$Print(p0);
t2 = t7;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
return t4;
}

int32_t LQS$Sort (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10, t11, t12, t13, t14, t15, t16, t17, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t13), CONST(1), L$$1, L$$0) */
if (t13 == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t5), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1)))))) */
t5 = MEM((MEM((p0 + (0 * 4))) + (4 * (p2 + 1))));
/* MOVE(TEMP(t6), BINOP(MINUS, PARAM(1), CONST(1))) */
t6 = (p1 - 1);
/* MOVE(TEMP(t7), PARAM(2)) */
t7 = p2;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$5) */
L$$5: ;
/* CJUMP(EQ, TEMP(t10), CONST(1), L$$7, L$$6) */
if (t10 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$8) */
L$$8: ;
/* CJUMP(EQ, TEMP(t11), CONST(1), L$$10, L$$9) */
if (t11 == 1) goto L$$10; else goto L$$9;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t6), BINOP(PLUS, TEMP(t6), CONST(1))) */
t6 = (t6 + 1);
/* MOVE(TEMP(t12), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1)))))) */
t12 = MEM((MEM((p0 + (0 * 4))) + (4 * (t6 + 1))));
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* CJUMP(LT, TEMP(t12), TEMP(t5), L$$14, L$$15) */
if (t12 < t5) goto L$$14; else goto L$$15;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* LABEL(L$$15) */
L$$15: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t14)), CONST(1), L$$12, L$$11) */
if ((1 - t14) == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* JUMP(NAME(L$$13), L$$13) */
goto L$$13;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$13) */
L$$13: ;
/* JUMP(NAME(L$$8), L$$8) */
goto L$$8;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$16) */
L$$16: ;
/* CJUMP(EQ, TEMP(t11), CONST(1), L$$18, L$$17) */
if (t11 == 1) goto L$$18; else goto L$$17;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t7), BINOP(MINUS, TEMP(t7), CONST(1))) */
t7 = (t7 - 1);
/* MOVE(TEMP(t12), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t7), CONST(1)))))) */
t12 = MEM((MEM((p0 + (0 * 4))) + (4 * (t7 + 1))));
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, TEMP(t5), TEMP(t12), L$$22, L$$23) */
if (t5 < t12) goto L$$22; else goto L$$23;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$23) */
L$$23: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t15)), CONST(1), L$$20, L$$19) */
if ((1 - t15) == 1) goto L$$20; else goto L$$19;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* JUMP(NAME(L$$21), L$$21) */
goto L$$21;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$21) */
L$$21: ;
/* JUMP(NAME(L$$16), L$$16) */
goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t9), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1)))))) */
t9 = MEM((MEM((p0 + (0 * 4))) + (4 * (t6 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t7), CONST(1)))))) */
int32_t t0 = (MEM((p0 + (0 * 4))) + (4 * (t6 + 1)));
MEM(t0) = MEM((MEM((p0 + (0 * 4))) + (4 * (t7 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t7), CONST(1))))), TEMP(t9)) */
int32_t t1 = (MEM((p0 + (0 * 4))) + (4 * (t7 + 1)));
MEM(t1) = t9;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, TEMP(t7), BINOP(PLUS, TEMP(t6), CONST(1)), L$$27, L$$28) */
if (t7 < (t6 + 1)) goto L$$27; else goto L$$28;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$28) */
L$$28: ;
/* CJUMP(EQ, TEMP(t16), CONST(1), L$$25, L$$24) */
if (t16 == 1) goto L$$25; else goto L$$24;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* JUMP(NAME(L$$26), L$$26) */
goto L$$26;
/* LABEL(L$$24) */
L$$24: ;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$26) */
L$$26: ;
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t7), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1)))))) */
int32_t t2 = (MEM((p0 + (0 * 4))) + (4 * (t7 + 1)));
MEM(t2) = MEM((MEM((p0 + (0 * 4))) + (4 * (t6 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1)))))) */
int32_t t3 = (MEM((p0 + (0 * 4))) + (4 * (t6 + 1)));
MEM(t3) = MEM((MEM((p0 + (0 * 4))) + (4 * (p2 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(2), CONST(1))))), TEMP(t9)) */
int32_t t4 = (MEM((p0 + (0 * 4))) + (4 * (p2 + 1)));
MEM(t4) = t9;
/* MOVE(TEMP(t8), CALL(NAME(LQS$Sort), PARAM(0), PARAM(1), BINOP(MINUS, TEMP(t6), CONST(1)))) */
int32_t t18 = LQS$Sort(p0, p1, (t6 - 1));
t8 = t18;
/* MOVE(TEMP(t8), CALL(NAME(LQS$Sort), PARAM(0), BINOP(PLUS, TEMP(t6), CONST(1)), PARAM(2))) */
int32_t t19 = LQS$Sort(p0, (t6 + 1), p2);
t8 = t19;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
return t17;
}

int32_t LQS$Print (int32_t p0) {
int32_t t18, t19, t20, t21;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* CJUMP(LT, TEMP(t18), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$32, L$$33) */
if (t18 < MEM((p0 + (1 * 4)))) goto L$$32; else goto L$$33;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t19), CONST(1)) */
t19 = 1;
/* LABEL(L$$33) */
L$$33: ;
/* CJUMP(EQ, TEMP(t19), CONST(1), L$$31, L$$30) */
if (t19 == 1) goto L$$31; else goto L$$30;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t20), CALL(NAME(L_println_int), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))))) */
int32_t t0 = L_println_int(MEM((MEM((p0 + (0 * 4))) + (4 * (t18 + 1)))));
t20 = t0;
/* MOVE(TEMP(t18), BINOP(PLUS, TEMP(t18), CONST(1))) */
t18 = (t18 + 1);
/* JUMP(NAME(L$$29), L$$29) */
goto L$$29;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
return t21;
}

int32_t LQS$Init (int32_t p0, int32_t p1) {
int32_t t22, t23, t26;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t26), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t26 = (p0 + (0 * 4));
/* MOVE(TEMP(t22), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc(((p1 + 1) * 4));
t22 = t1;
/* MOVE(MEM(TEMP(t22)), PARAM(1)) */
int32_t t2 = t22;
MEM(t2) = p1;
/* MOVE(MEM(TEMP(t26)), TEMP(t22)) */
int32_t t3 = t26;
MEM(t3) = t22;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(20)) */
int32_t t4 = (MEM((p0 + (0 * 4))) + (4 * (0 + 1)));
MEM(t4) = 20;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1))))), CONST(7)) */
int32_t t5 = (MEM((p0 + (0 * 4))) + (4 * (1 + 1)));
MEM(t5) = 7;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(2), CONST(1))))), CONST(12)) */
int32_t t6 = (MEM((p0 + (0 * 4))) + (4 * (2 + 1)));
MEM(t6) = 12;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(3), CONST(1))))), CONST(18)) */
int32_t t7 = (MEM((p0 + (0 * 4))) + (4 * (3 + 1)));
MEM(t7) = 18;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(4), CONST(1))))), CONST(2)) */
int32_t t8 = (MEM((p0 + (0 * 4))) + (4 * (4 + 1)));
MEM(t8) = 2;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(5), CONST(1))))), CONST(11)) */
int32_t t9 = (MEM((p0 + (0 * 4))) + (4 * (5 + 1)));
MEM(t9) = 11;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(6), CONST(1))))), CONST(6)) */
int32_t t10 = (MEM((p0 + (0 * 4))) + (4 * (6 + 1)));
MEM(t10) = 6;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(7), CONST(1))))), CONST(9)) */
int32_t t11 = (MEM((p0 + (0 * 4))) + (4 * (7 + 1)));
MEM(t11) = 9;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(8), CONST(1))))), CONST(19)) */
int32_t t12 = (MEM((p0 + (0 * 4))) + (4 * (8 + 1)));
MEM(t12) = 19;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(9), CONST(1))))), CONST(5)) */
int32_t t13 = (MEM((p0 + (0 * 4))) + (4 * (9 + 1)));
MEM(t13) = 5;
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
return t23;
}

