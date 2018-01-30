#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LBBS$Start (int32_t p0, int32_t p1) ;

int32_t LBBS$Sort (int32_t p0) ;

int32_t LBBS$Print (int32_t p0) ;

int32_t LBBS$Init (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t24, t25;
/* MOVE(TEMP(t24), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t24 = t2;
/* MOVE(TEMP(t25), CALL(NAME(LBBS$Start), TEMP(t24), CONST(10))) */
int32_t t3 = LBBS$Start(t24, 10);
t25 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t25))) */
int32_t t4 = L_println_int(t25);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LBBS$Start (int32_t p0, int32_t p1) {
int32_t t2, t3, t4;
/* MOVE(TEMP(t2), CALL(NAME(LBBS$Init), PARAM(0), PARAM(1))) */
int32_t t0 = LBBS$Init(p0, p1);
t2 = t0;
/* MOVE(TEMP(t2), CALL(NAME(LBBS$Print), PARAM(0))) */
int32_t t1 = LBBS$Print(p0);
t2 = t1;
/* MOVE(TEMP(t3), CALL(NAME(L_println_int), CONST(99999))) */
int32_t t5 = L_println_int(99999);
t3 = t5;
/* MOVE(TEMP(t2), CALL(NAME(LBBS$Sort), PARAM(0))) */
int32_t t6 = LBBS$Sort(p0);
t2 = t6;
/* MOVE(TEMP(t2), CALL(NAME(LBBS$Print), PARAM(0))) */
int32_t t7 = LBBS$Print(p0);
t2 = t7;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
return t4;
}

int32_t LBBS$Sort (int32_t p0) {
int32_t t10, t11, t12, t13, t14, t15, t16, t17, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t6), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))) */
t6 = (MEM((p0 + (1 * 4))) - 1);
/* MOVE(TEMP(t7), BINOP(MINUS, CONST(0), CONST(1))) */
t7 = (0 - 1);
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* CJUMP(LT, TEMP(t7), TEMP(t6), L$$3, L$$4) */
if (t7 < t6) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t14), CONST(1), L$$2, L$$1) */
if (t14 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t12), CONST(1)) */
t12 = 1;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, TEMP(t12), BINOP(PLUS, TEMP(t6), CONST(1)), L$$8, L$$9) */
if (t12 < (t6 + 1)) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t15), CONST(1), L$$7, L$$6) */
if (t15 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t11), BINOP(MINUS, TEMP(t12), CONST(1))) */
t11 = (t12 - 1);
/* MOVE(TEMP(t8), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t11), CONST(1)))))) */
t8 = MEM((MEM((p0 + (0 * 4))) + (4 * (t11 + 1))));
/* MOVE(TEMP(t9), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t12), CONST(1)))))) */
t9 = MEM((MEM((p0 + (0 * 4))) + (4 * (t12 + 1))));
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, TEMP(t9), TEMP(t8), L$$13, L$$14) */
if (t9 < t8) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t16), CONST(1), L$$11, L$$10) */
if (t16 == 1) goto L$$11; else goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t10), BINOP(MINUS, TEMP(t12), CONST(1))) */
t10 = (t12 - 1);
/* MOVE(TEMP(t13), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1)))))) */
t13 = MEM((MEM((p0 + (0 * 4))) + (4 * (t10 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1))))), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t12), CONST(1)))))) */
int32_t t0 = (MEM((p0 + (0 * 4))) + (4 * (t10 + 1)));
MEM(t0) = MEM((MEM((p0 + (0 * 4))) + (4 * (t12 + 1))));
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t12), CONST(1))))), TEMP(t13)) */
int32_t t1 = (MEM((p0 + (0 * 4))) + (4 * (t12 + 1)));
MEM(t1) = t13;
/* JUMP(NAME(L$$12), L$$12) */
goto L$$12;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t12), BINOP(PLUS, TEMP(t12), CONST(1))) */
t12 = (t12 + 1);
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t6), BINOP(MINUS, TEMP(t6), CONST(1))) */
t6 = (t6 - 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
return t17;
}

int32_t LBBS$Print (int32_t p0) {
int32_t t18, t19, t20, t21;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* CJUMP(LT, TEMP(t18), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$18, L$$19) */
if (t18 < MEM((p0 + (1 * 4)))) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t19), CONST(1)) */
t19 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, TEMP(t19), CONST(1), L$$17, L$$16) */
if (t19 == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t20), CALL(NAME(L_println_int), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t18), CONST(1))))))) */
int32_t t0 = L_println_int(MEM((MEM((p0 + (0 * 4))) + (4 * (t18 + 1)))));
t20 = t0;
/* MOVE(TEMP(t18), BINOP(PLUS, TEMP(t18), CONST(1))) */
t18 = (t18 + 1);
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
return t21;
}

int32_t LBBS$Init (int32_t p0, int32_t p1) {
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

