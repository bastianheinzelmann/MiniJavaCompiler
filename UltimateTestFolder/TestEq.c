#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LTestEqMain$run (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t10, t11;
/* MOVE(TEMP(t10), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t10 = t2;
/* MOVE(TEMP(t11), CALL(NAME(LTestEqMain$run), TEMP(t10))) */
int32_t t3 = LTestEqMain$run(t10);
t11 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t11))) */
int32_t t4 = L_println_int(t11);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LTestEqMain$run (int32_t p0) {
int32_t t2, t3, t4, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* CJUMP(LT, CONST(4), BINOP(PLUS, CONST(4), CONST(1)), L$$3, L$$4) */
if (4 < (4 + 1)) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t5), CONST(1), L$$0, L$$1) */
if (t5 == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* CJUMP(LT, CONST(4), BINOP(PLUS, CONST(4), CONST(1)), L$$5, L$$6) */
if (4 < (4 + 1)) goto L$$5; else goto L$$6;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t4), TEMP(t6)) */
t4 = t6;
/* MOVE(TEMP(t3), CONST(1)) */
t3 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t2), BINOP(AND, TEMP(t3), TEMP(t4))) */
t2 = (t3 & t4);
/* CJUMP(EQ, TEMP(t2), CONST(1), L$$8, L$$7) */
if (t2 == 1) goto L$$8; else goto L$$7;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), CONST(1))) */
int32_t t0 = L_println_int(1);
t7 = t0;
/* JUMP(NAME(L$$9), L$$9) */
goto L$$9;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), CONST(0))) */
int32_t t1 = L_println_int(0);
t8 = t1;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
return t9;
}

