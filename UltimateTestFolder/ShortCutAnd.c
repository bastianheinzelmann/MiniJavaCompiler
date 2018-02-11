#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LTestAnd$run (int32_t p0, int32_t p1) ;

int32_t LTestAnd$sideEffect (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t12, t13;
/* MOVE(TEMP(t12), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t12 = t2;
/* MOVE(TEMP(t13), CALL(NAME(LTestAnd$run), TEMP(t12), CONST(0))) */
int32_t t3 = LTestAnd$run(t12, 0);
t13 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t13))) */
int32_t t4 = L_println_int(t13);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LTestAnd$run (int32_t p0, int32_t p1) {
int32_t t2, t3, t4, t5;
/* CJUMP(EQ, PARAM(1), CONST(1), L$$3, L$$4) */
if (p1 == 1) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t4), CALL(NAME(LTestAnd$sideEffect), PARAM(0))) */
int32_t t0 = LTestAnd$sideEffect(p0);
t4 = t0;
/* MOVE(TEMP(t3), CONST(1)) */
t3 = 1;
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$4) */
L$$4: ;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* LABEL(L$$5) */
L$$5: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t3), TEMP(t4)), CONST(1), L$$1, L$$0) */
if ((t3 & t4) == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t2), CONST(0)) */
t2 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), TEMP(t2)) */
t5 = t2;
return t5;
}

int32_t LTestAnd$sideEffect (int32_t p0) {
int32_t t10, t11, t6, t7, t8, t9;
/* MOVE(TEMP(t6), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(9999)))) */
int32_t t0 = L_println_int((0 - 9999));
t6 = t0;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(9999)))) */
int32_t t1 = L_println_int((0 - 9999));
t7 = t1;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(9999)))) */
int32_t t2 = L_println_int((0 - 9999));
t8 = t2;
/* MOVE(TEMP(t9), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(9999)))) */
int32_t t3 = L_println_int((0 - 9999));
t9 = t3;
/* MOVE(TEMP(t10), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(9999)))) */
int32_t t4 = L_println_int((0 - 9999));
t10 = t4;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
return t11;
}

