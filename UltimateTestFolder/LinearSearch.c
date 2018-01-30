#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LLS$Start (int32_t p0, int32_t p1) ;

int32_t LLS$Print (int32_t p0) ;

int32_t LLS$Search (int32_t p0, int32_t p1) ;

int32_t LLS$Init (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t31, t32;
/* MOVE(TEMP(t31), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t31 = t2;
/* MOVE(TEMP(t32), CALL(NAME(LLS$Start), TEMP(t31), CONST(10))) */
int32_t t3 = LLS$Start(t31, 10);
t32 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t32))) */
int32_t t4 = L_println_int(t32);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LLS$Start (int32_t p0, int32_t p1) {
int32_t t2, t3, t33, t34, t35, t36, t4, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t2), CALL(NAME(LLS$Init), PARAM(0), PARAM(1))) */
int32_t t0 = LLS$Init(p0, p1);
t2 = t0;
/* MOVE(TEMP(t3), CALL(NAME(LLS$Print), PARAM(0))) */
int32_t t1 = LLS$Print(p0);
t3 = t1;
/* MOVE(TEMP(t4), CALL(NAME(L_println_int), CONST(9999))) */
int32_t t10 = L_println_int(9999);
t4 = t10;
/* MOVE(TEMP(t33), CALL(NAME(LLS$Search), PARAM(0), CONST(8))) */
int32_t t11 = LLS$Search(p0, 8);
t33 = t11;
/* MOVE(TEMP(t5), CALL(NAME(L_println_int), TEMP(t33))) */
int32_t t12 = L_println_int(t33);
t5 = t12;
/* MOVE(TEMP(t34), CALL(NAME(LLS$Search), PARAM(0), CONST(12))) */
int32_t t13 = LLS$Search(p0, 12);
t34 = t13;
/* MOVE(TEMP(t6), CALL(NAME(L_println_int), TEMP(t34))) */
int32_t t14 = L_println_int(t34);
t6 = t14;
/* MOVE(TEMP(t35), CALL(NAME(LLS$Search), PARAM(0), CONST(17))) */
int32_t t15 = LLS$Search(p0, 17);
t35 = t15;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), TEMP(t35))) */
int32_t t16 = L_println_int(t35);
t7 = t16;
/* MOVE(TEMP(t36), CALL(NAME(LLS$Search), PARAM(0), CONST(50))) */
int32_t t17 = LLS$Search(p0, 50);
t36 = t17;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), TEMP(t36))) */
int32_t t18 = L_println_int(t36);
t8 = t18;
/* MOVE(TEMP(t9), CONST(55)) */
t9 = 55;
return t9;
}

int32_t LLS$Print (int32_t p0) {
int32_t t10, t11, t12, t13;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* CJUMP(LT, TEMP(t10), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$3, L$$4) */
if (t10 < MEM((p0 + (1 * 4)))) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t11), CONST(1), L$$2, L$$1) */
if (t11 == 1) goto L$$2; else goto L$$1;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t12), CALL(NAME(L_println_int), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t10), CONST(1))))))) */
int32_t t0 = L_println_int(MEM((MEM((p0 + (0 * 4))) + (4 * (t10 + 1)))));
t12 = t0;
/* MOVE(TEMP(t10), BINOP(PLUS, TEMP(t10), CONST(1))) */
t10 = (t10 + 1);
/* JUMP(NAME(L$$0), L$$0) */
goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
return t13;
}

int32_t LLS$Search (int32_t p0, int32_t p1) {
int32_t t14, t15, t16, t17, t18, t19, t20, t21, t22, t23;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* CJUMP(LT, TEMP(t14), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$8, L$$9) */
if (t14 < MEM((p0 + (1 * 4)))) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t20), CONST(1)) */
t20 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, TEMP(t20), CONST(1), L$$7, L$$6) */
if (t20 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t17), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t14), CONST(1)))))) */
t17 = MEM((MEM((p0 + (0 * 4))) + (4 * (t14 + 1))));
/* MOVE(TEMP(t18), BINOP(PLUS, PARAM(1), CONST(1))) */
t18 = (p1 + 1);
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, TEMP(t17), PARAM(1), L$$13, L$$14) */
if (t17 < p1) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$11, L$$10) */
if (t21 == 1) goto L$$11; else goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* JUMP(NAME(L$$12), L$$12) */
goto L$$12;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t22), CONST(0)) */
t22 = 0;
/* CJUMP(LT, TEMP(t17), TEMP(t18), L$$18, L$$19) */
if (t17 < t18) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t22)), CONST(1), L$$16, L$$15) */
if ((1 - t22) == 1) goto L$$16; else goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* JUMP(NAME(L$$17), L$$17) */
goto L$$17;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* MOVE(TEMP(t14), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t14 = MEM((p0 + (1 * 4)));
/* LABEL(L$$17) */
L$$17: ;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t14), BINOP(PLUS, TEMP(t14), CONST(1))) */
t14 = (t14 + 1);
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t23), TEMP(t16)) */
t23 = t16;
return t23;
}

int32_t LLS$Init (int32_t p0, int32_t p1) {
int32_t t24, t25, t26, t27, t28, t29, t30, t37;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t37), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t37 = (p0 + (0 * 4));
/* MOVE(TEMP(t28), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc(((p1 + 1) * 4));
t28 = t1;
/* MOVE(MEM(TEMP(t28)), PARAM(1)) */
int32_t t2 = t28;
MEM(t2) = p1;
/* MOVE(MEM(TEMP(t37)), TEMP(t28)) */
int32_t t3 = t37;
MEM(t3) = t28;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* MOVE(TEMP(t25), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))) */
t25 = (MEM((p0 + (1 * 4))) + 1);
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t29), CONST(0)) */
t29 = 0;
/* CJUMP(LT, TEMP(t24), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$23, L$$24) */
if (t24 < MEM((p0 + (1 * 4)))) goto L$$23; else goto L$$24;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t29), CONST(1)) */
t29 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t29), CONST(1), L$$22, L$$21) */
if (t29 == 1) goto L$$22; else goto L$$21;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t26), BINOP(MUL, CONST(2), TEMP(t24))) */
t26 = (2 * t24);
/* MOVE(TEMP(t27), BINOP(MINUS, TEMP(t25), CONST(3))) */
t27 = (t25 - 3);
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))), BINOP(PLUS, TEMP(t26), TEMP(t27))) */
int32_t t4 = (MEM((p0 + (0 * 4))) + (4 * (t24 + 1)));
MEM(t4) = (t26 + t27);
/* MOVE(TEMP(t24), BINOP(PLUS, TEMP(t24), CONST(1))) */
t24 = (t24 + 1);
/* MOVE(TEMP(t25), BINOP(MINUS, TEMP(t25), CONST(1))) */
t25 = (t25 - 1);
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t30), CONST(0)) */
t30 = 0;
return t30;
}

