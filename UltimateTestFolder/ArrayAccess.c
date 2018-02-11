#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LAA$run (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t10, t9;
/* MOVE(TEMP(t9), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t9 = t2;
/* MOVE(TEMP(t10), CALL(NAME(LAA$run), TEMP(t9))) */
int32_t t3 = LAA$run(t9);
t10 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t10))) */
int32_t t4 = L_println_int(t10);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LAA$run (int32_t p0) {
int32_t t11, t2, t3, t4, t5, t6, t8;
/* MOVE(TEMP(t3), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, CONST(2), CONST(1)), CONST(4)))) */
int32_t t0 = L_halloc(((2 + 1) * 4));
t3 = t0;
/* MOVE(MEM(TEMP(t3)), CONST(2)) */
int32_t t1 = t3;
MEM(t1) = 2;
/* MOVE(TEMP(t2), TEMP(t3)) */
t2 = t3;
/* MOVE(MEM(BINOP(PLUS, TEMP(t2), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(5)) */
int32_t t7 = (t2 + (4 * (0 + 1)));
MEM(t7) = 5;
/* MOVE(MEM(BINOP(PLUS, TEMP(t2), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(1), CONST(1))))), CONST(10)) */
int32_t t9 = (t2 + (4 * (1 + 1)));
MEM(t9) = 10;
/* CJUMP(LT, CONST(0), MEM(TEMP(t2)), L$$0, L$$1) */
if (0 < MEM(t2)) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t11), TEMP(t5)) */
t11 = t5;
/* CJUMP(GE, CONST(0), CONST(0), L$$3, L$$4) */
if (0 >= 0) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$4) */
L$$4: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* LABEL(L$$5) */
L$$5: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t11), TEMP(t6)), CONST(1), L$$6, L$$7) */
if ((t11 & t6) == 1) goto L$$6; else goto L$$7;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t8), MEM(BINOP(PLUS, TEMP(t2), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1)))))) */
t8 = MEM((t2 + (4 * (0 + 1))));
/* JUMP(NAME(L$$8), L$$8) */
goto L$$8;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t8), CALL(NAME(L_raise), CONST(1))) */
int32_t t10 = L_raise(1);
t8 = t10;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t4), TEMP(t8)) */
t4 = t8;
return t4;
}

