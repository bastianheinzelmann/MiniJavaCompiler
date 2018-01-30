#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LE1$run (int32_t p0) ;

int32_t LE1$print (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t18, t19;
/* MOVE(TEMP(t18), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t18 = t2;
/* MOVE(TEMP(t19), CALL(NAME(LE1$run), TEMP(t18))) */
int32_t t3 = LE1$run(t18);
t19 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t19))) */
int32_t t4 = L_println_int(t19);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LE1$run (int32_t p0) {
int32_t t10, t11, t12, t2, t3, t4, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t2), CONST(9000)) */
t2 = 9000;
/* MOVE(TEMP(t5), BINOP(PLUS, TEMP(t2), CONST(9))) */
t5 = (t2 + 9);
/* MOVE(TEMP(t8), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, BINOP(PLUS, TEMP(t2), CONST(9)), CONST(1)), CONST(4)))) */
int32_t t0 = L_halloc((((t2 + 9) + 1) * 4));
t8 = t0;
/* MOVE(MEM(TEMP(t8)), BINOP(PLUS, TEMP(t2), CONST(9))) */
int32_t t1 = t8;
MEM(t1) = (t2 + 9);
/* MOVE(TEMP(t3), TEMP(t8)) */
t3 = t8;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* MOVE(MEM(BINOP(PLUS, TEMP(t3), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(0)) */
int32_t t13 = (t3 + (4 * (0 + 1)));
MEM(t13) = 0;
/* MOVE(MEM(BINOP(PLUS, TEMP(t3), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1))))), CONST(2)) */
int32_t t14 = (t3 + (4 * (1 + 1)));
MEM(t14) = 2;
/* MOVE(TEMP(t6), CONST(2)) */
t6 = 2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* CJUMP(LT, TEMP(t6), TEMP(t5), L$$3, L$$4) */
if (t6 < t5) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t9), CONST(1)) */
t9 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t9), CONST(1), L$$2, L$$1) */
if (t9 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(MEM(BINOP(PLUS, TEMP(t3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1))))), CONST(1)) */
int32_t t15 = (t3 + (4 * (t6 + 1)));
MEM(t15) = 1;
/* MOVE(TEMP(t6), BINOP(PLUS, TEMP(t6), CONST(1))) */
t6 = (t6 + 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* CJUMP(LT, CONST(9), TEMP(t5), L$$8, L$$9) */
if (9 < t5) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t10), CONST(1), L$$7, L$$6) */
if (t10 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t6), BINOP(MINUS, TEMP(t5), CONST(1))) */
t6 = (t5 - 1);
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* CJUMP(LT, CONST(0), TEMP(t6), L$$13, L$$14) */
if (0 < t6) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t11), CONST(1), L$$12, L$$11) */
if (t11 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(MEM(BINOP(PLUS, TEMP(t3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t6), CONST(1))))), BINOP(MINUS, TEMP(t4), BINOP(MUL, BINOP(DIV, TEMP(t4), TEMP(t6)), TEMP(t6)))) */
int32_t t16 = (t3 + (4 * (t6 + 1)));
MEM(t16) = (t4 - ((t4 / t6) * t6));
/* MOVE(TEMP(t4), BINOP(PLUS, BINOP(MUL, CONST(10), MEM(BINOP(PLUS, TEMP(t3), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t6), CONST(1)), CONST(1)))))), BINOP(DIV, TEMP(t4), TEMP(t6)))) */
t4 = ((10 * MEM((t3 + (4 * ((t6 - 1) + 1))))) + (t4 / t6));
/* MOVE(TEMP(t6), BINOP(MINUS, TEMP(t6), CONST(1))) */
t6 = (t6 - 1);
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t7), CALL(NAME(LE1$print), PARAM(0), TEMP(t4))) */
int32_t t17 = LE1$print(p0, t4);
t7 = t17;
/* MOVE(TEMP(t5), BINOP(MINUS, TEMP(t5), CONST(1))) */
t5 = (t5 - 1);
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
return t12;
}

int32_t LE1$print (int32_t p0, int32_t p1) {
int32_t t13, t14, t15, t16, t17;
/* MOVE(TEMP(t13), BINOP(MINUS, CONST(0), CONST(1))) */
t13 = (0 - 1);
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* CJUMP(LT, BINOP(DIV, PARAM(1), TEMP(t13)), BINOP(MINUS, CONST(0), CONST(9)), L$$18, L$$19) */
if ((p1 / t13) < (0 - 9)) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, TEMP(t14), CONST(1), L$$17, L$$16) */
if (t14 == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t13), BINOP(MUL, TEMP(t13), CONST(10))) */
t13 = (t13 * 10);
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, TEMP(t13), CONST(0), L$$23, L$$24) */
if (t13 < 0) goto L$$23; else goto L$$24;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t15), CONST(1), L$$22, L$$21) */
if (t15 == 1) goto L$$22; else goto L$$21;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t16), CALL(NAME(L_write), BINOP(MINUS, CONST(48), BINOP(DIV, PARAM(1), TEMP(t13))))) */
int32_t t0 = L_write((48 - (p1 / t13)));
t16 = t0;
/* MOVE(PARAM(1), BINOP(MINUS, PARAM(1), BINOP(MUL, BINOP(DIV, PARAM(1), TEMP(t13)), TEMP(t13)))) */
p1 = (p1 - ((p1 / t13) * t13));
/* MOVE(TEMP(t13), BINOP(DIV, TEMP(t13), CONST(10))) */
t13 = (t13 / 10);
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
return t17;
}

