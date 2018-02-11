#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LEffectsClass$run (int32_t p0) ;

int32_t LBit$set (int32_t p0, int32_t p1) ;

int32_t LBit$value (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t6, t7;
/* MOVE(TEMP(t6), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t6 = t2;
/* MOVE(TEMP(t7), CALL(NAME(LEffectsClass$run), TEMP(t6))) */
int32_t t3 = LEffectsClass$run(t6);
t7 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t7))) */
int32_t t4 = L_println_int(t7);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LEffectsClass$run (int32_t p0) {
int32_t t10, t11, t12, t2, t3, t8, t9;
/* MOVE(TEMP(t2), CALL(NAME(L_halloc), CONST(4))) */
int32_t t0 = L_halloc(4);
t2 = t0;
/* MOVE(TEMP(t8), CALL(NAME(LBit$set), TEMP(t2), CONST(1))) */
int32_t t1 = LBit$set(t2, 1);
t8 = t1;
/* MOVE(TEMP(t12), BINOP(MINUS, TEMP(t8), CONST(1))) */
t12 = (t8 - 1);
/* MOVE(TEMP(t9), CALL(NAME(LBit$set), TEMP(t2), CONST(0))) */
int32_t t4 = LBit$set(t2, 0);
t9 = t4;
/* MOVE(TEMP(t11), TEMP(t9)) */
t11 = t9;
/* MOVE(TEMP(t10), CALL(NAME(LBit$value), TEMP(t2))) */
int32_t t5 = LBit$value(t2);
t10 = t5;
/* MOVE(TEMP(t3), BINOP(MINUS, TEMP(t12), BINOP(MINUS, TEMP(t11), BINOP(MINUS, CONST(0), TEMP(t10))))) */
t3 = (t12 - (t11 - (0 - t10)));
return t3;
}

int32_t LBit$set (int32_t p0, int32_t p1) {
int32_t t4;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t4), PARAM(1)) */
t4 = p1;
return t4;
}

int32_t LBit$value (int32_t p0) {
int32_t t5;
/* MOVE(TEMP(t5), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t5 = MEM((p0 + (0 * 4)));
return t5;
}

