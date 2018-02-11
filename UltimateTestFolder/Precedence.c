#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LB$run (int32_t p0, int32_t p1, int32_t p2) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t8, t9;
/* MOVE(TEMP(t8), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t8 = t2;
/* MOVE(TEMP(t9), CALL(NAME(LB$run), TEMP(t8), CONST(5), CONST(10))) */
int32_t t3 = LB$run(t8, 5, 10);
t9 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t9))) */
int32_t t4 = L_println_int(t9);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LB$run (int32_t p0, int32_t p1, int32_t p2) {
int32_t t2, t3, t4, t5, t6, t7;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* CJUMP(LT, CONST(0), CONST(1), L$$6, L$$7) */
if (0 < 1) goto L$$6; else goto L$$7;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* LABEL(L$$7) */
L$$7: ;
/* CJUMP(EQ, TEMP(t5), CONST(1), L$$3, L$$4) */
if (t5 == 1) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* CJUMP(LT, BINOP(PLUS, PARAM(1), BINOP(MUL, PARAM(2), PARAM(2))), BINOP(MUL, BINOP(PLUS, PARAM(1), PARAM(2)), PARAM(2)), L$$8, L$$9) */
if ((p1 + (p2 * p2)) < ((p1 + p2) * p2)) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t4), TEMP(t6)) */
t4 = t6;
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
/* MOVE(TEMP(t2), PARAM(1)) */
t2 = p1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t2), PARAM(2)) */
t2 = p2;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t7), TEMP(t2)) */
t7 = t2;
return t7;
}

