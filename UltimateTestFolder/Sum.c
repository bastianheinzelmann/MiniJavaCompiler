#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LSumClass$f (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LSumClass$g (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t7, t8;
/* MOVE(TEMP(t7), CALL(NAME(L_halloc), CONST(4))) */
int32_t t2 = L_halloc(4);
t7 = t2;
/* MOVE(TEMP(t8), CALL(NAME(LSumClass$f), TEMP(t7), CONST(0), CONST(5))) */
int32_t t3 = LSumClass$f(t7, 0, 5);
t8 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t8))) */
int32_t t4 = L_println_int(t8);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LSumClass$f (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10, t2, t3, t4, t5, t9;
/* MOVE(TEMP(t2), BINOP(PLUS, PARAM(1), PARAM(2))) */
t2 = (p1 + p2);
/* MOVE(TEMP(t10), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t10 = (p0 + (0 * 4));
/* MOVE(TEMP(t9), CALL(NAME(LSumClass$g), PARAM(0), TEMP(t2))) */
int32_t t0 = LSumClass$g(p0, t2);
t9 = t0;
/* MOVE(MEM(TEMP(t10)), TEMP(t9)) */
int32_t t1 = t10;
MEM(t1) = t9;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* CJUMP(LT, PARAM(2), CONST(1), L$$3, L$$4) */
if (p2 < 1) goto L$$3; else goto L$$4;
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
/* MOVE(TEMP(t3), TEMP(t2)) */
t3 = t2;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t3), CALL(NAME(LSumClass$f), PARAM(0), TEMP(t2), BINOP(MINUS, PARAM(2), CONST(1)))) */
int32_t t6 = LSumClass$f(p0, t2, (p2 - 1));
t3 = t6;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), TEMP(t3)) */
t5 = t3;
return t5;
}

int32_t LSumClass$g (int32_t p0, int32_t p1) {
int32_t t6;
/* MOVE(TEMP(t6), PARAM(1)) */
t6 = p1;
return t6;
}

