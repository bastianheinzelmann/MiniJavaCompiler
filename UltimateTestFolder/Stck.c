#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LStckClass$stckme (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t6, t7;
/* MOVE(TEMP(t6), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t6 = t2;
/* MOVE(TEMP(t7), CALL(NAME(LStckClass$stckme), TEMP(t6), CONST(55))) */
int32_t t3 = LStckClass$stckme(t6, 55);
t7 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t7))) */
int32_t t4 = L_println_int(t7);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LStckClass$stckme (int32_t p0, int32_t p1) {
int32_t t2, t3, t4, t5;
/* MOVE(TEMP(t2), PARAM(1)) */
t2 = p1;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* CJUMP(LT, PARAM(1), CONST(1), L$$3, L$$4) */
if (p1 < 1) goto L$$3; else goto L$$4;
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
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t3), CALL(NAME(LStckClass$stckme), PARAM(0), BINOP(MINUS, PARAM(1), CONST(1)))) */
int32_t t0 = LStckClass$stckme(p0, (p1 - 1));
t3 = t0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), TEMP(t2)) */
t5 = t2;
return t5;
}

