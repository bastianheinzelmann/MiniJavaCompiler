#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LPrimesClass$eq (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$div (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$rem (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$dividess (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$divides (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$hcf (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrimesClass$isprime (int32_t p0, int32_t p1) ;

int32_t LPrimesClass$primes (int32_t p0, int32_t p1) ;

int32_t LPrimesClass$test_it (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t44, t45;
/* MOVE(TEMP(t44), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t44 = t2;
/* MOVE(TEMP(t45), CALL(NAME(LPrimesClass$test_it), TEMP(t44), CONST(22))) */
int32_t t3 = LPrimesClass$test_it(t44, 22);
t45 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t45))) */
int32_t t4 = L_println_int(t45);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LPrimesClass$eq (int32_t p0, int32_t p1, int32_t p2) {
int32_t t2, t3, t4, t5, t6;
/* MOVE(TEMP(t5), CONST(0)) */
t5 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t5)), CONST(1), L$$0, L$$1) */
if ((1 - t5) == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* CJUMP(LT, PARAM(2), PARAM(1), L$$5, L$$6) */
if (p2 < p1) goto L$$5; else goto L$$6;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t4), BINOP(MINUS, CONST(1), TEMP(t6))) */
t4 = (1 - t6);
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
return t2;
}

int32_t LPrimesClass$div (int32_t p0, int32_t p1, int32_t p2) {
int32_t t46, t47, t7, t8, t9;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$10, L$$11) */
if (p1 < p2) goto L$$10; else goto L$$11;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t8), CONST(1)) */
t8 = 1;
/* LABEL(L$$11) */
L$$11: ;
/* CJUMP(EQ, TEMP(t8), CONST(1), L$$8, L$$7) */
if (t8 == 1) goto L$$8; else goto L$$7;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* JUMP(NAME(L$$9), L$$9) */
goto L$$9;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t46), CALL(NAME(LPrimesClass$eq), PARAM(0), PARAM(2), CONST(1))) */
int32_t t0 = LPrimesClass$eq(p0, p2, 1);
t46 = t0;
/* CJUMP(EQ, TEMP(t46), CONST(1), L$$13, L$$12) */
if (t46 == 1) goto L$$13; else goto L$$12;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t7), PARAM(1)) */
t7 = p1;
/* JUMP(NAME(L$$14), L$$14) */
goto L$$14;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t47), CALL(NAME(LPrimesClass$div), PARAM(0), BINOP(MINUS, PARAM(1), PARAM(2)), PARAM(2))) */
int32_t t1 = LPrimesClass$div(p0, (p1 - p2), p2);
t47 = t1;
/* MOVE(TEMP(t7), BINOP(PLUS, CONST(1), TEMP(t47))) */
t7 = (1 + t47);
/* LABEL(L$$14) */
L$$14: ;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t9), TEMP(t7)) */
t9 = t7;
return t9;
}

int32_t LPrimesClass$rem (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10, t48, t49, t50;
/* MOVE(TEMP(t50), PARAM(2)) */
t50 = p2;
/* MOVE(TEMP(t49), PARAM(1)) */
t49 = p1;
/* MOVE(TEMP(t48), CALL(NAME(LPrimesClass$div), PARAM(0), PARAM(2), PARAM(1))) */
int32_t t0 = LPrimesClass$div(p0, p2, p1);
t48 = t0;
/* MOVE(TEMP(t10), BINOP(MINUS, TEMP(t50), BINOP(MUL, TEMP(t49), TEMP(t48)))) */
t10 = (t50 - (t49 * t48));
return t10;
}

int32_t LPrimesClass$dividess (int32_t p0, int32_t p1, int32_t p2) {
int32_t t11, t51, t52, t53, t54;
/* MOVE(TEMP(t54), PARAM(0)) */
t54 = p0;
/* MOVE(TEMP(t53), PARAM(2)) */
t53 = p2;
/* MOVE(TEMP(t52), PARAM(1)) */
t52 = p1;
/* MOVE(TEMP(t51), CALL(NAME(LPrimesClass$div), PARAM(0), PARAM(2), PARAM(1))) */
int32_t t0 = LPrimesClass$div(p0, p2, p1);
t51 = t0;
/* MOVE(TEMP(t11), CALL(NAME(LPrimesClass$eq), TEMP(t54), TEMP(t53), BINOP(MUL, TEMP(t52), TEMP(t51)))) */
int32_t t1 = LPrimesClass$eq(t54, t53, (t52 * t51));
t11 = t1;
return t11;
}

int32_t LPrimesClass$divides (int32_t p0, int32_t p1, int32_t p2) {
int32_t t12, t13, t14, t15, t16, t17, t18, t19;
/* MOVE(TEMP(t12), CONST(1)) */
t12 = 1;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t13)), CONST(1), L$$18, L$$19) */
if ((1 - t13) == 1) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, TEMP(t12), PARAM(2), L$$21, L$$22) */
if (t12 < p2) goto L$$21; else goto L$$22;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t15), TEMP(t16)) */
t15 = t16;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* LABEL(L$$20) */
L$$20: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t14), TEMP(t15)), CONST(1), L$$17, L$$16) */
if ((t14 & t15) == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
/* CJUMP(LT, BINOP(MUL, TEMP(t12), PARAM(1)), PARAM(2), L$$26, L$$27) */
if ((t12 * p1) < p2) goto L$$26; else goto L$$27;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t17), CONST(1)) */
t17 = 1;
/* LABEL(L$$27) */
L$$27: ;
/* CJUMP(EQ, TEMP(t17), CONST(1), L$$24, L$$23) */
if (t17 == 1) goto L$$24; else goto L$$23;
/* LABEL(L$$24) */
L$$24: ;
/* MOVE(TEMP(t12), BINOP(PLUS, TEMP(t12), CONST(1))) */
t12 = (t12 + 1);
/* JUMP(NAME(L$$25), L$$25) */
goto L$$25;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
/* CJUMP(LT, PARAM(2), BINOP(MUL, TEMP(t12), PARAM(1)), L$$31, L$$32) */
if (p2 < (t12 * p1)) goto L$$31; else goto L$$32;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t18), CONST(1)) */
t18 = 1;
/* LABEL(L$$32) */
L$$32: ;
/* CJUMP(EQ, TEMP(t18), CONST(1), L$$29, L$$28) */
if (t18 == 1) goto L$$29; else goto L$$28;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t12), PARAM(2)) */
t12 = p2;
/* JUMP(NAME(L$$30), L$$30) */
goto L$$30;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* LABEL(L$$30) */
L$$30: ;
/* LABEL(L$$25) */
L$$25: ;
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t19), TEMP(t13)) */
t19 = t13;
return t19;
}

int32_t LPrimesClass$hcf (int32_t p0, int32_t p1, int32_t p2) {
int32_t t20, t21, t22, t23;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$36, L$$37) */
if (p1 < p2) goto L$$36; else goto L$$37;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$37) */
L$$37: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$34, L$$33) */
if (t21 == 1) goto L$$34; else goto L$$33;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t20), CALL(NAME(LPrimesClass$hcf), PARAM(0), PARAM(2), PARAM(1))) */
int32_t t0 = LPrimesClass$hcf(p0, p2, p1);
t20 = t0;
/* JUMP(NAME(L$$35), L$$35) */
goto L$$35;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t22), CONST(0)) */
t22 = 0;
/* CJUMP(LT, PARAM(2), CONST(1), L$$41, L$$42) */
if (p2 < 1) goto L$$41; else goto L$$42;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
/* LABEL(L$$42) */
L$$42: ;
/* CJUMP(EQ, TEMP(t22), CONST(1), L$$39, L$$38) */
if (t22 == 1) goto L$$39; else goto L$$38;
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t20), PARAM(1)) */
t20 = p1;
/* JUMP(NAME(L$$40), L$$40) */
goto L$$40;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t20), CALL(NAME(LPrimesClass$hcf), PARAM(0), PARAM(2), BINOP(MINUS, PARAM(1), PARAM(2)))) */
int32_t t1 = LPrimesClass$hcf(p0, p2, (p1 - p2));
t20 = t1;
/* LABEL(L$$40) */
L$$40: ;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t23), TEMP(t20)) */
t23 = t20;
return t23;
}

int32_t LPrimesClass$isprime (int32_t p0, int32_t p1) {
int32_t t24, t25, t26, t27, t28, t29, t30, t31, t32, t33, t34, t55;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* LABEL(L$$43) */
L$$43: ;
/* CJUMP(EQ, TEMP(t25), CONST(1), L$$49, L$$50) */
if (t25 == 1) goto L$$49; else goto L$$50;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(TEMP(t30), CONST(0)) */
t30 = 0;
/* CJUMP(LT, TEMP(t24), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$52, L$$53) */
if (t24 < MEM((p0 + (1 * 4)))) goto L$$52; else goto L$$53;
/* LABEL(L$$52) */
L$$52: ;
/* MOVE(TEMP(t30), CONST(1)) */
t30 = 1;
/* LABEL(L$$53) */
L$$53: ;
/* MOVE(TEMP(t29), TEMP(t30)) */
t29 = t30;
/* MOVE(TEMP(t28), CONST(1)) */
t28 = 1;
/* JUMP(NAME(L$$51), L$$51) */
goto L$$51;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(TEMP(t29), CONST(0)) */
t29 = 0;
/* MOVE(TEMP(t28), CONST(0)) */
t28 = 0;
/* LABEL(L$$51) */
L$$51: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t28), TEMP(t29)), CONST(1), L$$46, L$$47) */
if ((t28 & t29) == 1) goto L$$46; else goto L$$47;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* CJUMP(LT, TEMP(t24), PARAM(1), L$$54, L$$55) */
if (t24 < p1) goto L$$54; else goto L$$55;
/* LABEL(L$$54) */
L$$54: ;
/* MOVE(TEMP(t31), CONST(1)) */
t31 = 1;
/* LABEL(L$$55) */
L$$55: ;
/* MOVE(TEMP(t27), TEMP(t31)) */
t27 = t31;
/* MOVE(TEMP(t26), CONST(1)) */
t26 = 1;
/* JUMP(NAME(L$$48), L$$48) */
goto L$$48;
/* LABEL(L$$47) */
L$$47: ;
/* MOVE(TEMP(t27), CONST(0)) */
t27 = 0;
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
/* LABEL(L$$48) */
L$$48: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t26), TEMP(t27)), CONST(1), L$$45, L$$44) */
if ((t26 & t27) == 1) goto L$$45; else goto L$$44;
/* LABEL(L$$45) */
L$$45: ;
/* CJUMP(EQ, TEMP(t25), CONST(1), L$$56, L$$57) */
if (t25 == 1) goto L$$56; else goto L$$57;
/* LABEL(L$$56) */
L$$56: ;
/* MOVE(TEMP(t55), CALL(NAME(LPrimesClass$divides), PARAM(0), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))), PARAM(1))) */
int32_t t0 = LPrimesClass$divides(p0, MEM((MEM((p0 + (0 * 4))) + (4 * (t24 + 1)))), p1);
t55 = t0;
/* MOVE(TEMP(t33), BINOP(MINUS, CONST(1), TEMP(t55))) */
t33 = (1 - t55);
/* MOVE(TEMP(t32), CONST(1)) */
t32 = 1;
/* JUMP(NAME(L$$58), L$$58) */
goto L$$58;
/* LABEL(L$$57) */
L$$57: ;
/* MOVE(TEMP(t33), CONST(0)) */
t33 = 0;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* LABEL(L$$58) */
L$$58: ;
/* MOVE(TEMP(t25), BINOP(AND, TEMP(t32), TEMP(t33))) */
t25 = (t32 & t33);
/* MOVE(TEMP(t24), BINOP(PLUS, TEMP(t24), CONST(1))) */
t24 = (t24 + 1);
/* JUMP(NAME(L$$43), L$$43) */
goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t34), TEMP(t25)) */
t34 = t25;
return t34;
}

int32_t LPrimesClass$primes (int32_t p0, int32_t p1) {
int32_t t35, t36, t37, t38, t39, t56;
/* MOVE(TEMP(t35), CONST(0)) */
t35 = 0;
/* MOVE(TEMP(t36), CONST(2)) */
t36 = 2;
/* LABEL(L$$59) */
L$$59: ;
/* MOVE(TEMP(t37), CONST(0)) */
t37 = 0;
/* CJUMP(LT, TEMP(t36), PARAM(1), L$$62, L$$63) */
if (t36 < p1) goto L$$62; else goto L$$63;
/* LABEL(L$$62) */
L$$62: ;
/* MOVE(TEMP(t37), CONST(1)) */
t37 = 1;
/* LABEL(L$$63) */
L$$63: ;
/* CJUMP(EQ, TEMP(t37), CONST(1), L$$61, L$$60) */
if (t37 == 1) goto L$$61; else goto L$$60;
/* LABEL(L$$61) */
L$$61: ;
/* MOVE(TEMP(t56), CALL(NAME(LPrimesClass$isprime), PARAM(0), TEMP(t36))) */
int32_t t0 = LPrimesClass$isprime(p0, t36);
t56 = t0;
/* CJUMP(EQ, TEMP(t56), CONST(1), L$$65, L$$64) */
if (t56 == 1) goto L$$65; else goto L$$64;
/* LABEL(L$$65) */
L$$65: ;
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))))), TEMP(t36)) */
int32_t t1 = (MEM((p0 + (0 * 4))) + (4 * (MEM((p0 + (1 * 4))) + 1)));
MEM(t1) = t36;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))) */
int32_t t2 = (p0 + (1 * 4));
MEM(t2) = (MEM((p0 + (1 * 4))) + 1);
/* MOVE(TEMP(t38), CALL(NAME(L_println_int), TEMP(t36))) */
int32_t t3 = L_println_int(t36);
t38 = t3;
/* MOVE(TEMP(t36), BINOP(PLUS, TEMP(t36), CONST(1))) */
t36 = (t36 + 1);
/* MOVE(TEMP(t35), BINOP(PLUS, TEMP(t35), CONST(1))) */
t35 = (t35 + 1);
/* JUMP(NAME(L$$66), L$$66) */
goto L$$66;
/* LABEL(L$$64) */
L$$64: ;
/* MOVE(TEMP(t36), BINOP(PLUS, TEMP(t36), CONST(1))) */
t36 = (t36 + 1);
/* LABEL(L$$66) */
L$$66: ;
/* JUMP(NAME(L$$59), L$$59) */
goto L$$59;
/* LABEL(L$$60) */
L$$60: ;
/* MOVE(TEMP(t39), TEMP(t35)) */
t39 = t35;
return t39;
}

int32_t LPrimesClass$test_it (int32_t p0, int32_t p1) {
int32_t t40, t41, t42, t43, t57;
/* MOVE(TEMP(t57), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t57 = (p0 + (0 * 4));
/* MOVE(TEMP(t41), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t0 = L_halloc(((p1 + 1) * 4));
t41 = t0;
/* MOVE(MEM(TEMP(t41)), PARAM(1)) */
int32_t t1 = t41;
MEM(t1) = p1;
/* MOVE(MEM(TEMP(t57)), TEMP(t41)) */
int32_t t2 = t57;
MEM(t2) = t41;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(0)) */
int32_t t3 = (p0 + (1 * 4));
MEM(t3) = 0;
/* MOVE(TEMP(t40), CALL(NAME(LPrimesClass$primes), PARAM(0), PARAM(1))) */
int32_t t4 = LPrimesClass$primes(p0, p1);
t40 = t4;
/* MOVE(TEMP(t42), CALL(NAME(L_println_int), CONST(999))) */
int32_t t5 = L_println_int(999);
t42 = t5;
/* MOVE(TEMP(t43), TEMP(t40)) */
t43 = t40;
return t43;
}

