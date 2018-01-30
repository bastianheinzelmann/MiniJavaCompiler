#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LFibAux$nfib (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t5, t6;
/* MOVE(TEMP(t5), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t5 = t2;
/* MOVE(TEMP(t6), CALL(NAME(LFibAux$nfib), TEMP(t5), CONST(15))) */
int32_t t3 = LFibAux$nfib(t5, 15);
t6 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t6))) */
int32_t t4 = L_println_int(t6);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LFibAux$nfib (int32_t p0, int32_t p1) {
int32_t t2, t3, t4, t7, t8, t9;
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
/* MOVE(TEMP(t7), CALL(NAME(LFibAux$nfib), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)))) */
int32_t t0 = LFibAux$nfib(p0, (p1 - 1));
t7 = t0;
/* MOVE(TEMP(t9), TEMP(t7)) */
t9 = t7;
/* MOVE(TEMP(t8), CALL(NAME(LFibAux$nfib), PARAM(0), BINOP(MINUS, PARAM(1), CONST(2)))) */
int32_t t1 = LFibAux$nfib(p0, (p1 - 2));
t8 = t1;
/* MOVE(TEMP(t2), BINOP(PLUS, BINOP(PLUS, TEMP(t9), TEMP(t8)), CONST(1))) */
t2 = ((t9 + t8) + 1);
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t4), TEMP(t2)) */
t4 = t2;
return t4;
}

