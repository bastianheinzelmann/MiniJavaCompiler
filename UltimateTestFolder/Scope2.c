#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LS$Init (int32_t p0, int32_t p1) ;

int32_t LS$run (int32_t p0, int32_t p1, int32_t p2) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t5, t6;
/* MOVE(TEMP(t5), CALL(NAME(L_halloc), CONST(4))) */
int32_t t2 = L_halloc(4);
t5 = t2;
/* MOVE(TEMP(t6), CALL(NAME(LS$run), TEMP(t5), CONST(5), CONST(10))) */
int32_t t3 = LS$run(t5, 5, 10);
t6 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t6))) */
int32_t t4 = L_println_int(t6);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LS$Init (int32_t p0, int32_t p1) {
int32_t t2;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t2), CONST(0)) */
t2 = 0;
return t2;
}

int32_t LS$run (int32_t p0, int32_t p1, int32_t p2) {
int32_t t3, t4;
/* MOVE(TEMP(t3), CALL(NAME(LS$Init), PARAM(0), PARAM(2))) */
int32_t t0 = LS$Init(p0, p2);
t3 = t0;
/* MOVE(TEMP(t4), PARAM(1)) */
t4 = p1;
return t4;
}

