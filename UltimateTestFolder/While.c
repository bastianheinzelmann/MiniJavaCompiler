#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LWhileClass$run (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t7, t8;
/* MOVE(TEMP(t7), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t7 = t2;
/* MOVE(TEMP(t8), CALL(NAME(LWhileClass$run), TEMP(t7))) */
int32_t t3 = LWhileClass$run(t7);
t8 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t8))) */
int32_t t4 = L_println_int(t8);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LWhileClass$run (int32_t p0) {
int32_t t2, t3, t4, t5, t6;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* CJUMP(LT, TEMP(t2), CONST(11), L$$3, L$$4) */
if (t2 < 11) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t4), CONST(1)) */
t4 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t4), CONST(1), L$$2, L$$1) */
if (t4 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t3), BINOP(PLUS, TEMP(t3), TEMP(t2))) */
t3 = (t3 + t2);
/* MOVE(TEMP(t5), CALL(NAME(L_println_int), TEMP(t3))) */
int32_t t0 = L_println_int(t3);
t5 = t0;
/* MOVE(TEMP(t2), BINOP(PLUS, TEMP(t2), CONST(1))) */
t2 = (t2 + 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
return t6;
}

