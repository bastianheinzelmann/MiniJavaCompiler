#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LFibAux$nfib (int32_t p0, int32_t p1) ;

int32_t LFibAux$nfib_lazy (int32_t p0, int32_t p1) ;

int32_t LLazyArray$init (int32_t p0, int32_t p1) ;

int32_t LLazyArray$defined (int32_t p0, int32_t p1) ;

int32_t LLazyArray$get (int32_t p0, int32_t p1) ;

int32_t LLazyArray$f (int32_t p0, int32_t p1) ;

int32_t LLazyArray$nfib (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t27, t28;
/* MOVE(TEMP(t27), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t27 = t2;
/* MOVE(TEMP(t28), CALL(NAME(LFibAux$nfib_lazy), TEMP(t27), CONST(15))) */
int32_t t3 = LFibAux$nfib_lazy(t27, 15);
t28 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t28))) */
int32_t t4 = L_println_int(t28);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LFibAux$nfib (int32_t p0, int32_t p1) {
int32_t t2, t29, t3, t30, t31, t4;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* CJUMP(LT, PARAM(1), CONST(2), L$$3, L$$4) */
if (p1 < 2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t3), CONST(1)) */
t3 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t3), CONST(1), L$$1, L$$0) */
if (t3 == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t29), CALL(NAME(LFibAux$nfib), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)))) */
int32_t t0 = LFibAux$nfib(p0, (p1 - 1));
t29 = t0;
/* MOVE(TEMP(t31), TEMP(t29)) */
t31 = t29;
/* MOVE(TEMP(t30), CALL(NAME(LFibAux$nfib), PARAM(0), BINOP(MINUS, PARAM(1), CONST(2)))) */
int32_t t1 = LFibAux$nfib(p0, (p1 - 2));
t30 = t1;
/* MOVE(TEMP(t2), BINOP(PLUS, BINOP(PLUS, TEMP(t31), TEMP(t30)), CONST(1))) */
t2 = ((t31 + t30) + 1);
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t4), TEMP(t2)) */
t4 = t2;
return t4;
}

int32_t LFibAux$nfib_lazy (int32_t p0, int32_t p1) {
int32_t t5, t6, t7, t8, t9;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* CJUMP(LT, PARAM(1), CONST(1), L$$8, L$$9) */
if (p1 < 1) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t8), CONST(1)) */
t8 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t8), CONST(1), L$$6, L$$5) */
if (t8 == 1) goto L$$6; else goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* JUMP(NAME(L$$7), L$$7) */
goto L$$7;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t7), CALL(NAME(L_halloc), CONST(4))) */
int32_t t0 = L_halloc(4);
t7 = t0;
/* MOVE(TEMP(t6), CALL(NAME(LLazyArray$init), TEMP(t7), PARAM(1))) */
int32_t t1 = LLazyArray$init(t7, p1);
t6 = t1;
/* MOVE(TEMP(t5), CALL(NAME(LLazyArray$nfib), TEMP(t7), PARAM(1))) */
int32_t t2 = LLazyArray$nfib(t7, p1);
t5 = t2;
/* MOVE(TEMP(t9), TEMP(t5)) */
t9 = t5;
return t9;
}

int32_t LLazyArray$init (int32_t p0, int32_t p1) {
int32_t t10, t11, t12, t13, t32;
/* MOVE(TEMP(t32), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t32 = (p0 + (0 * 4));
/* MOVE(TEMP(t11), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t0 = L_halloc(((p1 + 1) * 4));
t11 = t0;
/* MOVE(MEM(TEMP(t11)), PARAM(1)) */
int32_t t1 = t11;
MEM(t1) = p1;
/* MOVE(MEM(TEMP(t32)), TEMP(t11)) */
int32_t t2 = t32;
MEM(t2) = t11;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
/* CJUMP(LT, TEMP(t10), PARAM(1), L$$13, L$$14) */
if (t10 < p1) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t12), CONST(1)) */
t12 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t12), CONST(1), L$$12, L$$11) */
if (t12 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1))))), CONST(0)) */
int32_t t3 = (MEM((p0 + (0 * 4))) + (4 * (t10 + 1)));
MEM(t3) = 0;
/* MOVE(TEMP(t10), BINOP(PLUS, TEMP(t10), CONST(1))) */
t10 = (t10 + 1);
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
return t13;
}

int32_t LLazyArray$defined (int32_t p0, int32_t p1) {
int32_t t14, t15, t16, t17;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* CJUMP(LT, PARAM(1), CONST(0), L$$18, L$$19) */
if (p1 < 0) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, TEMP(t15), CONST(1), L$$16, L$$15) */
if (t15 == 1) goto L$$16; else goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* JUMP(NAME(L$$17), L$$17) */
goto L$$17;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, CONST(0), PARAM(1), L$$23, L$$24) */
if (0 < p1) goto L$$23; else goto L$$24;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t16), CONST(1), L$$21, L$$20) */
if (t16 == 1) goto L$$21; else goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* JUMP(NAME(L$$22), L$$22) */
goto L$$22;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* LABEL(L$$22) */
L$$22: ;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t17), TEMP(t14)) */
t17 = t14;
return t17;
}

int32_t LLazyArray$get (int32_t p0, int32_t p1) {
int32_t t18, t19, t20, t21, t22, t33;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, PARAM(1), CONST(1), L$$28, L$$29) */
if (p1 < 1) goto L$$28; else goto L$$29;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$29) */
L$$29: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$26, L$$25) */
if (t21 == 1) goto L$$26; else goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* JUMP(NAME(L$$27), L$$27) */
goto L$$27;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t18), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(1), CONST(1)))))) */
t18 = MEM((MEM((p0 + (0 * 4))) + (4 * (p1 + 1))));
/* MOVE(TEMP(t33), CALL(NAME(LLazyArray$defined), PARAM(0), TEMP(t18))) */
int32_t t0 = LLazyArray$defined(p0, t18);
t33 = t0;
/* CJUMP(EQ, TEMP(t33), CONST(1), L$$31, L$$30) */
if (t33 == 1) goto L$$31; else goto L$$30;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t20), TEMP(t18)) */
t20 = t18;
/* JUMP(NAME(L$$32), L$$32) */
goto L$$32;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t19), CALL(NAME(LLazyArray$f), PARAM(0), PARAM(1))) */
int32_t t1 = LLazyArray$f(p0, p1);
t19 = t1;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, PARAM(1), CONST(1))))), TEMP(t19)) */
int32_t t2 = (MEM((p0 + (0 * 4))) + (4 * (p1 + 1)));
MEM(t2) = t19;
/* MOVE(TEMP(t20), TEMP(t19)) */
t20 = t19;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t22), TEMP(t20)) */
t22 = t20;
return t22;
}

int32_t LLazyArray$f (int32_t p0, int32_t p1) {
int32_t t23;
/* MOVE(TEMP(t23), CALL(NAME(LLazyArray$nfib), PARAM(0), PARAM(1))) */
int32_t t0 = LLazyArray$nfib(p0, p1);
t23 = t0;
return t23;
}

int32_t LLazyArray$nfib (int32_t p0, int32_t p1) {
int32_t t24, t25, t26, t34, t35, t36;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* CJUMP(LT, PARAM(1), CONST(2), L$$36, L$$37) */
if (p1 < 2) goto L$$36; else goto L$$37;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* LABEL(L$$37) */
L$$37: ;
/* CJUMP(EQ, TEMP(t25), CONST(1), L$$34, L$$33) */
if (t25 == 1) goto L$$34; else goto L$$33;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* JUMP(NAME(L$$35), L$$35) */
goto L$$35;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t34), CALL(NAME(LLazyArray$get), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)))) */
int32_t t0 = LLazyArray$get(p0, (p1 - 1));
t34 = t0;
/* MOVE(TEMP(t36), TEMP(t34)) */
t36 = t34;
/* MOVE(TEMP(t35), CALL(NAME(LLazyArray$get), PARAM(0), BINOP(MINUS, PARAM(1), CONST(2)))) */
int32_t t1 = LLazyArray$get(p0, (p1 - 2));
t35 = t1;
/* MOVE(TEMP(t24), BINOP(PLUS, BINOP(PLUS, TEMP(t36), TEMP(t35)), CONST(1))) */
t24 = ((t36 + t35) + 1);
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t26), TEMP(t24)) */
t26 = t24;
return t26;
}

