#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), CONST(23))) */
int32_t t2 = L_println_int(23);
t1 = t2;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

