#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LArr$init (int32_t p0, int32_t p1) ;

int32_t LArr$sum (int32_t p0) ;

int32_t LArr$do_it (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t16, t17;
/* MOVE(TEMP(t16), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t16 = t2;
/* MOVE(TEMP(t17), CALL(NAME(LArr$do_it), TEMP(t16), CONST(10))) */
int32_t t3 = LArr$do_it(t16, 10);
t17 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t17))) */
int32_t t4 = L_println_int(t17);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LArr$init (int32_t p0, int32_t p1) {
int32_t t2, t3, t4;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* CJUMP(LT, TEMP(t2), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1)), L$$3, L$$4) */
if (t2 < (MEM((p0 + (1 * 4))) + 1)) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t3), CONST(1)) */
t3 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t3), CONST(1), L$$2, L$$1) */
if (t3 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t2), CONST(1)), CONST(1))))), TEMP(t2)) */
int32_t t1 = (MEM((p0 + (0 * 4))) + (4 * ((t2 - 1) + 1)));
MEM(t1) = t2;
/* MOVE(TEMP(t2), BINOP(PLUS, TEMP(t2), CONST(1))) */
t2 = (t2 + 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
return t4;
}

int32_t LArr$sum (int32_t p0) {
int32_t t11, t12, t18, t19, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* CJUMP(LT, TEMP(t5), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1)), L$$8, L$$9) */
if (t5 < (MEM((p0 + (1 * 4))) + 1)) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t7), CONST(1)) */
t7 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t7), CONST(1), L$$7, L$$6) */
if (t7 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t19), TEMP(t6)) */
t19 = t6;
/* CJUMP(LT, BINOP(MINUS, TEMP(t5), CONST(1)), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))), L$$10, L$$11) */
if ((t5 - 1) < MEM(MEM((p0 + (0 * 4))))) goto L$$10; else goto L$$11;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t8), CONST(1)) */
t8 = 1;
/* JUMP(NAME(L$$12), L$$12) */
goto L$$12;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t18), TEMP(t8)) */
t18 = t8;
/* CJUMP(GE, BINOP(MINUS, TEMP(t5), CONST(1)), CONST(0), L$$13, L$$14) */
if ((t5 - 1) >= 0) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t9), CONST(1)) */
t9 = 1;
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t18), TEMP(t9)), CONST(1), L$$16, L$$17) */
if ((t18 & t9) == 1) goto L$$16; else goto L$$17;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t11), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t5), CONST(1)), CONST(1)))))) */
t11 = MEM((MEM((p0 + (0 * 4))) + (4 * ((t5 - 1) + 1))));
/* JUMP(NAME(L$$18), L$$18) */
goto L$$18;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t11), CALL(NAME(L_raise), CONST(1))) */
int32_t t0 = L_raise(1);
t11 = t0;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t6), BINOP(PLUS, TEMP(t19), TEMP(t11))) */
t6 = (t19 + t11);
/* MOVE(TEMP(t5), BINOP(PLUS, TEMP(t5), CONST(1))) */
t5 = (t5 + 1);
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t12), TEMP(t6)) */
t12 = t6;
return t12;
}

int32_t LArr$do_it (int32_t p0, int32_t p1) {
int32_t t13, t14, t15, t20;
/* MOVE(TEMP(t20), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t20 = (p0 + (0 * 4));
/* MOVE(TEMP(t14), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t0 = L_halloc(((p1 + 1) * 4));
t14 = t0;
/* MOVE(MEM(TEMP(t14)), PARAM(1)) */
int32_t t1 = t14;
MEM(t1) = p1;
/* MOVE(MEM(TEMP(t20)), TEMP(t14)) */
int32_t t2 = t20;
MEM(t2) = t14;
/* MOVE(TEMP(t13), CALL(NAME(LArr$init), PARAM(0), PARAM(1))) */
int32_t t3 = LArr$init(p0, p1);
t13 = t3;
/* MOVE(TEMP(t15), CALL(NAME(LArr$sum), PARAM(0))) */
int32_t t4 = LArr$sum(p0);
t15 = t4;
return t15;
}

