#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LC$value (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t3, t4;
/* MOVE(TEMP(t3), CALL(NAME(L_halloc), CONST(4))) */
int32_t t2 = L_halloc(4);
t3 = t2;
/* MOVE(TEMP(t4), CALL(NAME(LC$value), TEMP(t3))) */
int32_t t5 = LC$value(t3);
t4 = t5;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t4))) */
int32_t t6 = L_println_int(t4);
t1 = t6;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LC$value (int32_t p0) {
int32_t t2;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(555)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = 555;
/* MOVE(TEMP(t2), BINOP(DIV, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(2))) */
t2 = (MEM((p0 + (0 * 4))) / 2);
return t2;
}

