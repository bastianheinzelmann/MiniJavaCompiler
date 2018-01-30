#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LPiDigits$base (int32_t p0) ;

int32_t LPiDigits$places (int32_t p0) ;

int32_t LPiDigits$reserve (int32_t p0) ;

int32_t LPiDigits$equals (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPiDigits$mod (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPiDigits$div (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPiDigits$shownum (int32_t p0, int32_t p1) ;

int32_t LPiDigits$overflow (int32_t p0, int32_t p1) ;

int32_t LPiDigits$add (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LPiDigits$sub (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LPiDigits$neg (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPiDigits$longdiv (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LPiDigits$mult (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LPiDigits$mv (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPiDigits$nullify (int32_t p0, int32_t p1) ;

int32_t LPiDigits$iszero (int32_t p0, int32_t p1) ;

int32_t LPiDigits$sin (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4) ;

int32_t LPiDigits$pi (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t79, t80;
/* MOVE(TEMP(t79), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t79 = t2;
/* MOVE(TEMP(t80), CALL(NAME(LPiDigits$pi), TEMP(t79))) */
int32_t t3 = LPiDigits$pi(t79);
t80 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_write), TEMP(t80))) */
int32_t t4 = L_write(t80);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LPiDigits$base (int32_t p0) {
int32_t t2;
/* MOVE(TEMP(t2), CONST(1000)) */
t2 = 1000;
return t2;
}

int32_t LPiDigits$places (int32_t p0) {
int32_t t3;
/* MOVE(TEMP(t3), CONST(40)) */
t3 = 40;
return t3;
}

int32_t LPiDigits$reserve (int32_t p0) {
int32_t t4;
/* MOVE(TEMP(t4), CONST(5)) */
t4 = 5;
return t4;
}

int32_t LPiDigits$equals (int32_t p0, int32_t p1, int32_t p2) {
int32_t t5, t6, t7, t8, t9;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t8), CONST(1)) */
t8 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t8)), CONST(1), L$$0, L$$1) */
if ((1 - t8) == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* CJUMP(LT, PARAM(2), PARAM(1), L$$5, L$$6) */
if (p2 < p1) goto L$$5; else goto L$$6;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t9), CONST(1)) */
t9 = 1;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t7), BINOP(MINUS, CONST(1), TEMP(t9))) */
t7 = (1 - t9);
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), BINOP(AND, TEMP(t6), TEMP(t7))) */
t5 = (t6 & t7);
return t5;
}

int32_t LPiDigits$mod (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10;
/* MOVE(TEMP(t10), BINOP(MINUS, PARAM(1), BINOP(MUL, PARAM(2), BINOP(DIV, PARAM(1), PARAM(2))))) */
t10 = (p1 - (p2 * (p1 / p2)));
return t10;
}

int32_t LPiDigits$div (int32_t p0, int32_t p1, int32_t p2) {
int32_t t11, t12, t13, t81;
/* MOVE(TEMP(t81), CALL(NAME(LPiDigits$equals), PARAM(0), PARAM(2), CONST(0))) */
int32_t t0 = LPiDigits$equals(p0, p2, 0);
t81 = t0;
/* CJUMP(EQ, TEMP(t81), CONST(1), L$$8, L$$7) */
if (t81 == 1) goto L$$8; else goto L$$7;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* JUMP(NAME(L$$9), L$$9) */
goto L$$9;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
/* CJUMP(LT, CONST(0), BINOP(PLUS, BINOP(MINUS, PARAM(1), PARAM(2)), CONST(1)), L$$13, L$$14) */
if (0 < ((p1 - p2) + 1)) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t12), CONST(1)) */
t12 = 1;
/* LABEL(L$$14) */
L$$14: ;
/* CJUMP(EQ, TEMP(t12), CONST(1), L$$12, L$$11) */
if (t12 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t11), BINOP(PLUS, TEMP(t11), CONST(1))) */
t11 = (t11 + 1);
/* MOVE(PARAM(1), BINOP(MINUS, PARAM(1), PARAM(2))) */
p1 = (p1 - p2);
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t13), TEMP(t11)) */
t13 = t11;
return t13;
}

int32_t LPiDigits$shownum (int32_t p0, int32_t p1) {
int32_t t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t82, t83, t84, t85, t86, t87, t88;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* MOVE(TEMP(t85), TEMP(t14)) */
t85 = t14;
/* MOVE(TEMP(t82), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t82 = t0;
/* MOVE(TEMP(t84), TEMP(t82)) */
t84 = t82;
/* MOVE(TEMP(t83), CALL(NAME(LPiDigits$reserve), PARAM(0))) */
int32_t t1 = LPiDigits$reserve(p0);
t83 = t1;
/* CJUMP(LT, TEMP(t85), BINOP(MINUS, TEMP(t84), TEMP(t83)), L$$18, L$$19) */
if (t85 < (t84 - t83)) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, TEMP(t15), CONST(1), L$$17, L$$16) */
if (t15 == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t16), CALL(NAME(L_write), BINOP(PLUS, CONST(48), BINOP(DIV, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t14), CONST(1))))), CONST(100))))) */
int32_t t2 = L_write((48 + (MEM((p1 + (4 * (t14 + 1)))) / 100)));
t16 = t2;
/* MOVE(TEMP(t86), CALL(NAME(LPiDigits$mod), PARAM(0), BINOP(DIV, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t14), CONST(1))))), CONST(10)), CONST(10))) */
int32_t t3 = LPiDigits$mod(p0, (MEM((p1 + (4 * (t14 + 1)))) / 10), 10);
t86 = t3;
/* MOVE(TEMP(t17), CALL(NAME(L_write), BINOP(PLUS, CONST(48), TEMP(t86)))) */
int32_t t4 = L_write((48 + t86));
t17 = t4;
/* MOVE(TEMP(t87), CALL(NAME(LPiDigits$mod), PARAM(0), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t14), CONST(1))))), CONST(10))) */
int32_t t5 = LPiDigits$mod(p0, MEM((p1 + (4 * (t14 + 1)))), 10);
t87 = t5;
/* MOVE(TEMP(t18), CALL(NAME(L_write), BINOP(PLUS, CONST(48), TEMP(t87)))) */
int32_t t6 = L_write((48 + t87));
t18 = t6;
/* MOVE(TEMP(t88), CALL(NAME(LPiDigits$equals), PARAM(0), CONST(0), TEMP(t14))) */
int32_t t7 = LPiDigits$equals(p0, 0, t14);
t88 = t7;
/* CJUMP(EQ, TEMP(t88), CONST(1), L$$21, L$$20) */
if (t88 == 1) goto L$$21; else goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t19), CALL(NAME(L_write), CONST(46))) */
int32_t t8 = L_write(46);
t19 = t8;
/* JUMP(NAME(L$$22), L$$22) */
goto L$$22;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t20), CALL(NAME(L_write), CONST(32))) */
int32_t t9 = L_write(32);
t20 = t9;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t14), BINOP(PLUS, TEMP(t14), CONST(1))) */
t14 = (t14 + 1);
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t21), CALL(NAME(L_write), CONST(10))) */
int32_t t10 = L_write(10);
t21 = t10;
/* MOVE(TEMP(t22), CALL(NAME(L_write), CONST(13))) */
int32_t t11 = L_write(13);
t22 = t11;
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
return t23;
}

int32_t LPiDigits$overflow (int32_t p0, int32_t p1) {
int32_t t24, t25, t26, t27, t28, t89, t90, t91, t92, t93, t94, t95, t96;
/* MOVE(TEMP(t89), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t89 = t0;
/* MOVE(TEMP(t24), BINOP(MINUS, TEMP(t89), CONST(1))) */
t24 = (t89 - 1);
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* CJUMP(LT, CONST(0), TEMP(t24), L$$26, L$$27) */
if (0 < t24) goto L$$26; else goto L$$27;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* LABEL(L$$27) */
L$$27: ;
/* CJUMP(EQ, TEMP(t25), CONST(1), L$$25, L$$24) */
if (t25 == 1) goto L$$25; else goto L$$24;
/* LABEL(L$$25) */
L$$25: ;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
/* MOVE(TEMP(t90), CALL(NAME(LPiDigits$base), PARAM(0))) */
int32_t t1 = LPiDigits$base(p0);
t90 = t1;
/* CJUMP(LT, TEMP(t90), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))), CONST(1)), L$$31, L$$32) */
if (t90 < (MEM((p1 + (4 * (t24 + 1)))) + 1)) goto L$$31; else goto L$$32;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t26), CONST(1)) */
t26 = 1;
/* LABEL(L$$32) */
L$$32: ;
/* CJUMP(EQ, TEMP(t26), CONST(1), L$$30, L$$29) */
if (t26 == 1) goto L$$30; else goto L$$29;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t93), BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))) */
t93 = (p1 + (4 * (t24 + 1)));
/* MOVE(TEMP(t92), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1)))))) */
t92 = MEM((p1 + (4 * (t24 + 1))));
/* MOVE(TEMP(t91), CALL(NAME(LPiDigits$base), PARAM(0))) */
int32_t t2 = LPiDigits$base(p0);
t91 = t2;
/* MOVE(MEM(TEMP(t93)), BINOP(MINUS, TEMP(t92), TEMP(t91))) */
int32_t t3 = t93;
MEM(t3) = (t92 - t91);
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t24), CONST(1)), CONST(1))))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t24), CONST(1)), CONST(1))))), CONST(1))) */
int32_t t4 = (p1 + (4 * ((t24 - 1) + 1)));
MEM(t4) = (MEM((p1 + (4 * ((t24 - 1) + 1)))) + 1);
/* JUMP(NAME(L$$28), L$$28) */
goto L$$28;
/* LABEL(L$$29) */
L$$29: ;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t27), CONST(0)) */
t27 = 0;
/* CJUMP(LT, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))), CONST(0), L$$36, L$$37) */
if (MEM((p1 + (4 * (t24 + 1)))) < 0) goto L$$36; else goto L$$37;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t27), CONST(1)) */
t27 = 1;
/* LABEL(L$$37) */
L$$37: ;
/* CJUMP(EQ, TEMP(t27), CONST(1), L$$35, L$$34) */
if (t27 == 1) goto L$$35; else goto L$$34;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t96), BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1))))) */
t96 = (p1 + (4 * (t24 + 1)));
/* MOVE(TEMP(t95), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t24), CONST(1)))))) */
t95 = MEM((p1 + (4 * (t24 + 1))));
/* MOVE(TEMP(t94), CALL(NAME(LPiDigits$base), PARAM(0))) */
int32_t t5 = LPiDigits$base(p0);
t94 = t5;
/* MOVE(MEM(TEMP(t96)), BINOP(PLUS, TEMP(t95), TEMP(t94))) */
int32_t t6 = t96;
MEM(t6) = (t95 + t94);
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t24), CONST(1)), CONST(1))))), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(MINUS, TEMP(t24), CONST(1)), CONST(1))))), CONST(1))) */
int32_t t7 = (p1 + (4 * ((t24 - 1) + 1)));
MEM(t7) = (MEM((p1 + (4 * ((t24 - 1) + 1)))) - 1);
/* JUMP(NAME(L$$33), L$$33) */
goto L$$33;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t24), BINOP(MINUS, TEMP(t24), CONST(1))) */
t24 = (t24 - 1);
/* JUMP(NAME(L$$23), L$$23) */
goto L$$23;
/* LABEL(L$$24) */
L$$24: ;
/* MOVE(TEMP(t28), CONST(0)) */
t28 = 0;
return t28;
}

int32_t LPiDigits$add (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t29, t30, t31, t97, t98;
/* MOVE(TEMP(t29), CONST(0)) */
t29 = 0;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t30), CONST(0)) */
t30 = 0;
/* MOVE(TEMP(t98), TEMP(t29)) */
t98 = t29;
/* MOVE(TEMP(t97), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t97 = t0;
/* CJUMP(LT, TEMP(t98), TEMP(t97), L$$41, L$$42) */
if (t98 < t97) goto L$$41; else goto L$$42;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t30), CONST(1)) */
t30 = 1;
/* LABEL(L$$42) */
L$$42: ;
/* CJUMP(EQ, TEMP(t30), CONST(1), L$$40, L$$39) */
if (t30 == 1) goto L$$40; else goto L$$39;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t29), CONST(1))))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t29), CONST(1))))), MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t29), CONST(1))))))) */
int32_t t1 = (p1 + (4 * (t29 + 1)));
MEM(t1) = (MEM((p2 + (4 * (t29 + 1)))) + MEM((p3 + (4 * (t29 + 1)))));
/* MOVE(TEMP(t29), BINOP(PLUS, TEMP(t29), CONST(1))) */
t29 = (t29 + 1);
/* JUMP(NAME(L$$38), L$$38) */
goto L$$38;
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
return t31;
}

int32_t LPiDigits$sub (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t100, t32, t33, t34, t99;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t33), CONST(0)) */
t33 = 0;
/* MOVE(TEMP(t100), TEMP(t32)) */
t100 = t32;
/* MOVE(TEMP(t99), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t99 = t0;
/* CJUMP(LT, TEMP(t100), TEMP(t99), L$$46, L$$47) */
if (t100 < t99) goto L$$46; else goto L$$47;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t33), CONST(1)) */
t33 = 1;
/* LABEL(L$$47) */
L$$47: ;
/* CJUMP(EQ, TEMP(t33), CONST(1), L$$45, L$$44) */
if (t33 == 1) goto L$$45; else goto L$$44;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t32), CONST(1))))), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t32), CONST(1))))), MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t32), CONST(1))))))) */
int32_t t1 = (p1 + (4 * (t32 + 1)));
MEM(t1) = (MEM((p2 + (4 * (t32 + 1)))) - MEM((p3 + (4 * (t32 + 1)))));
/* MOVE(TEMP(t32), BINOP(PLUS, TEMP(t32), CONST(1))) */
t32 = (t32 + 1);
/* JUMP(NAME(L$$43), L$$43) */
goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t34), CONST(0)) */
t34 = 0;
return t34;
}

int32_t LPiDigits$neg (int32_t p0, int32_t p1, int32_t p2) {
int32_t t101, t102, t35, t36, t37;
/* MOVE(TEMP(t35), CONST(0)) */
t35 = 0;
/* LABEL(L$$48) */
L$$48: ;
/* MOVE(TEMP(t36), CONST(0)) */
t36 = 0;
/* MOVE(TEMP(t102), TEMP(t35)) */
t102 = t35;
/* MOVE(TEMP(t101), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t101 = t0;
/* CJUMP(LT, TEMP(t102), TEMP(t101), L$$51, L$$52) */
if (t102 < t101) goto L$$51; else goto L$$52;
/* LABEL(L$$51) */
L$$51: ;
/* MOVE(TEMP(t36), CONST(1)) */
t36 = 1;
/* LABEL(L$$52) */
L$$52: ;
/* CJUMP(EQ, TEMP(t36), CONST(1), L$$50, L$$49) */
if (t36 == 1) goto L$$50; else goto L$$49;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t35), CONST(1))))), BINOP(MINUS, CONST(0), MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t35), CONST(1))))))) */
int32_t t1 = (p1 + (4 * (t35 + 1)));
MEM(t1) = (0 - MEM((p2 + (4 * (t35 + 1)))));
/* MOVE(TEMP(t35), BINOP(PLUS, TEMP(t35), CONST(1))) */
t35 = (t35 + 1);
/* JUMP(NAME(L$$48), L$$48) */
goto L$$48;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(TEMP(t37), CONST(0)) */
t37 = 0;
return t37;
}

int32_t LPiDigits$longdiv (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t103, t104, t105, t106, t107, t38, t39, t40, t41, t42, t43;
/* MOVE(TEMP(t38), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(2))) */
int32_t t0 = LPiDigits$overflow(p0, p2);
t38 = t0;
/* MOVE(TEMP(t39), CONST(0)) */
t39 = 0;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(0)) */
int32_t t1 = (p1 + (4 * (0 + 1)));
MEM(t1) = 0;
/* LABEL(L$$53) */
L$$53: ;
/* MOVE(TEMP(t42), CONST(0)) */
t42 = 0;
/* MOVE(TEMP(t104), TEMP(t39)) */
t104 = t39;
/* MOVE(TEMP(t103), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t2 = LPiDigits$places(p0);
t103 = t2;
/* CJUMP(LT, TEMP(t104), BINOP(MINUS, TEMP(t103), CONST(1)), L$$56, L$$57) */
if (t104 < (t103 - 1)) goto L$$56; else goto L$$57;
/* LABEL(L$$56) */
L$$56: ;
/* MOVE(TEMP(t42), CONST(1)) */
t42 = 1;
/* LABEL(L$$57) */
L$$57: ;
/* CJUMP(EQ, TEMP(t42), CONST(1), L$$55, L$$54) */
if (t42 == 1) goto L$$55; else goto L$$54;
/* LABEL(L$$55) */
L$$55: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))), MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))))) */
int32_t t3 = (p1 + (4 * (t39 + 1)));
MEM(t3) = (MEM((p1 + (4 * (t39 + 1)))) + MEM((p2 + (4 * (t39 + 1)))));
/* MOVE(TEMP(t40), CALL(NAME(LPiDigits$div), PARAM(0), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))), PARAM(3))) */
int32_t t4 = LPiDigits$div(p0, MEM((p1 + (4 * (t39 + 1)))), p3);
t40 = t4;
/* MOVE(TEMP(t41), BINOP(MINUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))), BINOP(MUL, TEMP(t40), PARAM(3)))) */
t41 = (MEM((p1 + (4 * (t39 + 1)))) - (t40 * p3));
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t39), CONST(1))))), TEMP(t40)) */
int32_t t5 = (p1 + (4 * (t39 + 1)));
MEM(t5) = t40;
/* MOVE(TEMP(t107), BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, TEMP(t39), CONST(1)), CONST(1))))) */
t107 = (p1 + (4 * ((t39 + 1) + 1)));
/* MOVE(TEMP(t106), TEMP(t41)) */
t106 = t41;
/* MOVE(TEMP(t105), CALL(NAME(LPiDigits$base), PARAM(0))) */
int32_t t6 = LPiDigits$base(p0);
t105 = t6;
/* MOVE(MEM(TEMP(t107)), BINOP(MUL, TEMP(t106), TEMP(t105))) */
int32_t t7 = t107;
MEM(t7) = (t106 * t105);
/* MOVE(TEMP(t39), BINOP(PLUS, TEMP(t39), CONST(1))) */
t39 = (t39 + 1);
/* JUMP(NAME(L$$53), L$$53) */
goto L$$53;
/* LABEL(L$$54) */
L$$54: ;
/* MOVE(TEMP(t38), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(1))) */
int32_t t8 = LPiDigits$overflow(p0, p1);
t38 = t8;
/* MOVE(TEMP(t43), CONST(0)) */
t43 = 0;
return t43;
}

int32_t LPiDigits$mult (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t108, t109, t110, t111, t112, t113, t44, t45, t46, t47, t48, t49, t50, t51;
/* MOVE(TEMP(t44), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(2))) */
int32_t t0 = LPiDigits$overflow(p0, p2);
t44 = t0;
/* MOVE(TEMP(t44), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(3))) */
int32_t t1 = LPiDigits$overflow(p0, p3);
t44 = t1;
/* MOVE(TEMP(t45), CONST(0)) */
t45 = 0;
/* LABEL(L$$58) */
L$$58: ;
/* MOVE(TEMP(t48), CONST(0)) */
t48 = 0;
/* MOVE(TEMP(t109), TEMP(t45)) */
t109 = t45;
/* MOVE(TEMP(t108), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t2 = LPiDigits$places(p0);
t108 = t2;
/* CJUMP(LT, TEMP(t109), TEMP(t108), L$$61, L$$62) */
if (t109 < t108) goto L$$61; else goto L$$62;
/* LABEL(L$$61) */
L$$61: ;
/* MOVE(TEMP(t48), CONST(1)) */
t48 = 1;
/* LABEL(L$$62) */
L$$62: ;
/* CJUMP(EQ, TEMP(t48), CONST(1), L$$60, L$$59) */
if (t48 == 1) goto L$$60; else goto L$$59;
/* LABEL(L$$60) */
L$$60: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t45), CONST(1))))), CONST(0)) */
int32_t t3 = (p1 + (4 * (t45 + 1)));
MEM(t3) = 0;
/* MOVE(TEMP(t45), BINOP(PLUS, TEMP(t45), CONST(1))) */
t45 = (t45 + 1);
/* JUMP(NAME(L$$58), L$$58) */
goto L$$58;
/* LABEL(L$$59) */
L$$59: ;
/* MOVE(TEMP(t46), CONST(0)) */
t46 = 0;
/* LABEL(L$$63) */
L$$63: ;
/* MOVE(TEMP(t49), CONST(0)) */
t49 = 0;
/* MOVE(TEMP(t111), TEMP(t46)) */
t111 = t46;
/* MOVE(TEMP(t110), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t4 = LPiDigits$places(p0);
t110 = t4;
/* CJUMP(LT, TEMP(t111), TEMP(t110), L$$66, L$$67) */
if (t111 < t110) goto L$$66; else goto L$$67;
/* LABEL(L$$66) */
L$$66: ;
/* MOVE(TEMP(t49), CONST(1)) */
t49 = 1;
/* LABEL(L$$67) */
L$$67: ;
/* CJUMP(EQ, TEMP(t49), CONST(1), L$$65, L$$64) */
if (t49 == 1) goto L$$65; else goto L$$64;
/* LABEL(L$$65) */
L$$65: ;
/* MOVE(TEMP(t47), CONST(0)) */
t47 = 0;
/* LABEL(L$$68) */
L$$68: ;
/* MOVE(TEMP(t50), CONST(0)) */
t50 = 0;
/* MOVE(TEMP(t113), BINOP(PLUS, TEMP(t46), TEMP(t47))) */
t113 = (t46 + t47);
/* MOVE(TEMP(t112), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t5 = LPiDigits$places(p0);
t112 = t5;
/* CJUMP(LT, TEMP(t113), TEMP(t112), L$$71, L$$72) */
if (t113 < t112) goto L$$71; else goto L$$72;
/* LABEL(L$$71) */
L$$71: ;
/* MOVE(TEMP(t50), CONST(1)) */
t50 = 1;
/* LABEL(L$$72) */
L$$72: ;
/* CJUMP(EQ, TEMP(t50), CONST(1), L$$70, L$$69) */
if (t50 == 1) goto L$$70; else goto L$$69;
/* LABEL(L$$70) */
L$$70: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, TEMP(t46), TEMP(t47)), CONST(1))))), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, BINOP(PLUS, TEMP(t46), TEMP(t47)), CONST(1))))), BINOP(MUL, MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t46), CONST(1))))), MEM(BINOP(PLUS, PARAM(3), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t47), CONST(1)))))))) */
int32_t t6 = (p1 + (4 * ((t46 + t47) + 1)));
MEM(t6) = (MEM((p1 + (4 * ((t46 + t47) + 1)))) + (MEM((p2 + (4 * (t46 + 1)))) * MEM((p3 + (4 * (t47 + 1))))));
/* MOVE(TEMP(t47), BINOP(PLUS, TEMP(t47), CONST(1))) */
t47 = (t47 + 1);
/* JUMP(NAME(L$$68), L$$68) */
goto L$$68;
/* LABEL(L$$69) */
L$$69: ;
/* MOVE(TEMP(t46), BINOP(PLUS, TEMP(t46), CONST(1))) */
t46 = (t46 + 1);
/* JUMP(NAME(L$$63), L$$63) */
goto L$$63;
/* LABEL(L$$64) */
L$$64: ;
/* MOVE(TEMP(t44), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(1))) */
int32_t t7 = LPiDigits$overflow(p0, p1);
t44 = t7;
/* MOVE(TEMP(t51), CONST(0)) */
t51 = 0;
return t51;
}

int32_t LPiDigits$mv (int32_t p0, int32_t p1, int32_t p2) {
int32_t t114, t115, t52, t53, t54;
/* MOVE(TEMP(t52), CONST(0)) */
t52 = 0;
/* LABEL(L$$73) */
L$$73: ;
/* MOVE(TEMP(t53), CONST(0)) */
t53 = 0;
/* MOVE(TEMP(t115), TEMP(t52)) */
t115 = t52;
/* MOVE(TEMP(t114), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t114 = t0;
/* CJUMP(LT, TEMP(t115), TEMP(t114), L$$76, L$$77) */
if (t115 < t114) goto L$$76; else goto L$$77;
/* LABEL(L$$76) */
L$$76: ;
/* MOVE(TEMP(t53), CONST(1)) */
t53 = 1;
/* LABEL(L$$77) */
L$$77: ;
/* CJUMP(EQ, TEMP(t53), CONST(1), L$$75, L$$74) */
if (t53 == 1) goto L$$75; else goto L$$74;
/* LABEL(L$$75) */
L$$75: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t52), CONST(1))))), MEM(BINOP(PLUS, PARAM(2), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t52), CONST(1)))))) */
int32_t t1 = (p1 + (4 * (t52 + 1)));
MEM(t1) = MEM((p2 + (4 * (t52 + 1))));
/* MOVE(TEMP(t52), BINOP(PLUS, TEMP(t52), CONST(1))) */
t52 = (t52 + 1);
/* JUMP(NAME(L$$73), L$$73) */
goto L$$73;
/* LABEL(L$$74) */
L$$74: ;
/* MOVE(TEMP(t54), CONST(0)) */
t54 = 0;
return t54;
}

int32_t LPiDigits$nullify (int32_t p0, int32_t p1) {
int32_t t116, t117, t55, t56, t57;
/* MOVE(TEMP(t55), CONST(0)) */
t55 = 0;
/* LABEL(L$$78) */
L$$78: ;
/* MOVE(TEMP(t56), CONST(0)) */
t56 = 0;
/* MOVE(TEMP(t117), TEMP(t55)) */
t117 = t55;
/* MOVE(TEMP(t116), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t116 = t0;
/* CJUMP(LT, TEMP(t117), TEMP(t116), L$$81, L$$82) */
if (t117 < t116) goto L$$81; else goto L$$82;
/* LABEL(L$$81) */
L$$81: ;
/* MOVE(TEMP(t56), CONST(1)) */
t56 = 1;
/* LABEL(L$$82) */
L$$82: ;
/* CJUMP(EQ, TEMP(t56), CONST(1), L$$80, L$$79) */
if (t56 == 1) goto L$$80; else goto L$$79;
/* LABEL(L$$80) */
L$$80: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t55), CONST(1))))), CONST(0)) */
int32_t t1 = (p1 + (4 * (t55 + 1)));
MEM(t1) = 0;
/* MOVE(TEMP(t55), BINOP(PLUS, TEMP(t55), CONST(1))) */
t55 = (t55 + 1);
/* JUMP(NAME(L$$78), L$$78) */
goto L$$78;
/* LABEL(L$$79) */
L$$79: ;
/* MOVE(TEMP(t57), CONST(0)) */
t57 = 0;
return t57;
}

int32_t LPiDigits$iszero (int32_t p0, int32_t p1) {
int32_t t118, t119, t120, t121, t122, t58, t59, t60, t61, t62, t63;
/* MOVE(TEMP(t58), CONST(0)) */
t58 = 0;
/* MOVE(TEMP(t59), CONST(1)) */
t59 = 1;
/* LABEL(L$$83) */
L$$83: ;
/* CJUMP(EQ, TEMP(t59), CONST(1), L$$86, L$$87) */
if (t59 == 1) goto L$$86; else goto L$$87;
/* LABEL(L$$86) */
L$$86: ;
/* MOVE(TEMP(t62), CONST(0)) */
t62 = 0;
/* MOVE(TEMP(t121), TEMP(t58)) */
t121 = t58;
/* MOVE(TEMP(t118), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t118 = t0;
/* MOVE(TEMP(t120), TEMP(t118)) */
t120 = t118;
/* MOVE(TEMP(t119), CALL(NAME(LPiDigits$reserve), PARAM(0))) */
int32_t t1 = LPiDigits$reserve(p0);
t119 = t1;
/* CJUMP(LT, TEMP(t121), BINOP(MINUS, TEMP(t120), TEMP(t119)), L$$89, L$$90) */
if (t121 < (t120 - t119)) goto L$$89; else goto L$$90;
/* LABEL(L$$89) */
L$$89: ;
/* MOVE(TEMP(t62), CONST(1)) */
t62 = 1;
/* LABEL(L$$90) */
L$$90: ;
/* MOVE(TEMP(t61), TEMP(t62)) */
t61 = t62;
/* MOVE(TEMP(t60), CONST(1)) */
t60 = 1;
/* JUMP(NAME(L$$88), L$$88) */
goto L$$88;
/* LABEL(L$$87) */
L$$87: ;
/* MOVE(TEMP(t61), CONST(0)) */
t61 = 0;
/* MOVE(TEMP(t60), CONST(0)) */
t60 = 0;
/* LABEL(L$$88) */
L$$88: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t60), TEMP(t61)), CONST(1), L$$85, L$$84) */
if ((t60 & t61) == 1) goto L$$85; else goto L$$84;
/* LABEL(L$$85) */
L$$85: ;
/* MOVE(TEMP(t122), CALL(NAME(LPiDigits$equals), PARAM(0), MEM(BINOP(PLUS, PARAM(1), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t58), CONST(1))))), CONST(0))) */
int32_t t2 = LPiDigits$equals(p0, MEM((p1 + (4 * (t58 + 1)))), 0);
t122 = t2;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t122)), CONST(1), L$$92, L$$91) */
if ((1 - t122) == 1) goto L$$92; else goto L$$91;
/* LABEL(L$$92) */
L$$92: ;
/* MOVE(TEMP(t59), CONST(0)) */
t59 = 0;
/* JUMP(NAME(L$$93), L$$93) */
goto L$$93;
/* LABEL(L$$91) */
L$$91: ;
/* LABEL(L$$93) */
L$$93: ;
/* MOVE(TEMP(t58), BINOP(PLUS, TEMP(t58), CONST(1))) */
t58 = (t58 + 1);
/* JUMP(NAME(L$$83), L$$83) */
goto L$$83;
/* LABEL(L$$84) */
L$$84: ;
/* MOVE(TEMP(t63), TEMP(t59)) */
t63 = t59;
return t63;
}

int32_t LPiDigits$sin (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4) {
int32_t t123, t64, t65, t66;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(2))) */
int32_t t0 = LPiDigits$overflow(p0, p2);
t64 = t0;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$mv), PARAM(0), PARAM(3), PARAM(2))) */
int32_t t1 = LPiDigits$mv(p0, p3, p2);
t64 = t1;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$nullify), PARAM(0), PARAM(1))) */
int32_t t2 = LPiDigits$nullify(p0, p1);
t64 = t2;
/* MOVE(TEMP(t65), CONST(1)) */
t65 = 1;
/* LABEL(L$$94) */
L$$94: ;
/* MOVE(TEMP(t123), CALL(NAME(LPiDigits$iszero), PARAM(0), PARAM(3))) */
int32_t t3 = LPiDigits$iszero(p0, p3);
t123 = t3;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t123)), CONST(1), L$$96, L$$95) */
if ((1 - t123) == 1) goto L$$96; else goto L$$95;
/* LABEL(L$$96) */
L$$96: ;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$add), PARAM(0), PARAM(1), PARAM(1), PARAM(3))) */
int32_t t4 = LPiDigits$add(p0, p1, p1, p3);
t64 = t4;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$mult), PARAM(0), PARAM(4), PARAM(3), PARAM(2))) */
int32_t t5 = LPiDigits$mult(p0, p4, p3, p2);
t64 = t5;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$longdiv), PARAM(0), PARAM(3), PARAM(4), BINOP(PLUS, TEMP(t65), CONST(1)))) */
int32_t t6 = LPiDigits$longdiv(p0, p3, p4, (t65 + 1));
t64 = t6;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$mult), PARAM(0), PARAM(4), PARAM(3), PARAM(2))) */
int32_t t7 = LPiDigits$mult(p0, p4, p3, p2);
t64 = t7;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$longdiv), PARAM(0), PARAM(3), PARAM(4), BINOP(PLUS, TEMP(t65), CONST(2)))) */
int32_t t8 = LPiDigits$longdiv(p0, p3, p4, (t65 + 2));
t64 = t8;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$sub), PARAM(0), PARAM(1), PARAM(1), PARAM(3))) */
int32_t t9 = LPiDigits$sub(p0, p1, p1, p3);
t64 = t9;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$mult), PARAM(0), PARAM(4), PARAM(3), PARAM(2))) */
int32_t t10 = LPiDigits$mult(p0, p4, p3, p2);
t64 = t10;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$longdiv), PARAM(0), PARAM(3), PARAM(4), BINOP(PLUS, TEMP(t65), CONST(3)))) */
int32_t t11 = LPiDigits$longdiv(p0, p3, p4, (t65 + 3));
t64 = t11;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$mult), PARAM(0), PARAM(4), PARAM(3), PARAM(2))) */
int32_t t12 = LPiDigits$mult(p0, p4, p3, p2);
t64 = t12;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$longdiv), PARAM(0), PARAM(3), PARAM(4), BINOP(PLUS, TEMP(t65), CONST(4)))) */
int32_t t13 = LPiDigits$longdiv(p0, p3, p4, (t65 + 4));
t64 = t13;
/* MOVE(TEMP(t65), BINOP(PLUS, TEMP(t65), CONST(4))) */
t65 = (t65 + 4);
/* JUMP(NAME(L$$94), L$$94) */
goto L$$94;
/* LABEL(L$$95) */
L$$95: ;
/* MOVE(TEMP(t64), CALL(NAME(LPiDigits$overflow), PARAM(0), PARAM(1))) */
int32_t t14 = LPiDigits$overflow(p0, p1);
t64 = t14;
/* MOVE(TEMP(t66), CONST(0)) */
t66 = 0;
return t66;
}

int32_t LPiDigits$pi (int32_t p0) {
int32_t t124, t125, t126, t127, t128, t129, t130, t131, t132, t133, t134, t135, t67, t68, t69, t70, t71, t72, t73, t74, t75, t76, t77, t78;
/* MOVE(TEMP(t124), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t0 = LPiDigits$places(p0);
t124 = t0;
/* MOVE(TEMP(t73), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, TEMP(t124), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc(((t124 + 1) * 4));
t73 = t1;
/* MOVE(TEMP(t126), TEMP(t73)) */
t126 = t73;
/* MOVE(TEMP(t125), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t2 = LPiDigits$places(p0);
t125 = t2;
/* MOVE(MEM(TEMP(t126)), TEMP(t125)) */
int32_t t3 = t126;
MEM(t3) = t125;
/* MOVE(TEMP(t68), TEMP(t73)) */
t68 = t73;
/* MOVE(TEMP(t127), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t4 = LPiDigits$places(p0);
t127 = t4;
/* MOVE(TEMP(t74), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, TEMP(t127), CONST(1)), CONST(4)))) */
int32_t t5 = L_halloc(((t127 + 1) * 4));
t74 = t5;
/* MOVE(TEMP(t129), TEMP(t74)) */
t129 = t74;
/* MOVE(TEMP(t128), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t6 = LPiDigits$places(p0);
t128 = t6;
/* MOVE(MEM(TEMP(t129)), TEMP(t128)) */
int32_t t7 = t129;
MEM(t7) = t128;
/* MOVE(TEMP(t69), TEMP(t74)) */
t69 = t74;
/* MOVE(TEMP(t130), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t8 = LPiDigits$places(p0);
t130 = t8;
/* MOVE(TEMP(t75), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, TEMP(t130), CONST(1)), CONST(4)))) */
int32_t t9 = L_halloc(((t130 + 1) * 4));
t75 = t9;
/* MOVE(TEMP(t132), TEMP(t75)) */
t132 = t75;
/* MOVE(TEMP(t131), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t10 = LPiDigits$places(p0);
t131 = t10;
/* MOVE(MEM(TEMP(t132)), TEMP(t131)) */
int32_t t11 = t132;
MEM(t11) = t131;
/* MOVE(TEMP(t70), TEMP(t75)) */
t70 = t75;
/* MOVE(TEMP(t133), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t12 = LPiDigits$places(p0);
t133 = t12;
/* MOVE(TEMP(t76), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, TEMP(t133), CONST(1)), CONST(4)))) */
int32_t t13 = L_halloc(((t133 + 1) * 4));
t76 = t13;
/* MOVE(TEMP(t135), TEMP(t76)) */
t135 = t76;
/* MOVE(TEMP(t134), CALL(NAME(LPiDigits$places), PARAM(0))) */
int32_t t14 = LPiDigits$places(p0);
t134 = t14;
/* MOVE(MEM(TEMP(t135)), TEMP(t134)) */
int32_t t15 = t135;
MEM(t15) = t134;
/* MOVE(TEMP(t71), TEMP(t76)) */
t71 = t76;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$nullify), PARAM(0), TEMP(t68))) */
int32_t t16 = LPiDigits$nullify(p0, t68);
t67 = t16;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$nullify), PARAM(0), TEMP(t69))) */
int32_t t17 = LPiDigits$nullify(p0, t69);
t67 = t17;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$nullify), PARAM(0), TEMP(t70))) */
int32_t t18 = LPiDigits$nullify(p0, t70);
t67 = t18;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$nullify), PARAM(0), TEMP(t71))) */
int32_t t19 = LPiDigits$nullify(p0, t71);
t67 = t19;
/* MOVE(MEM(BINOP(PLUS, TEMP(t71), BINOP(MUL, CONST(4), BINOP(PLUS, CONST(0), CONST(1))))), CONST(1)) */
int32_t t20 = (t71 + (4 * (0 + 1)));
MEM(t20) = 1;
/* MOVE(TEMP(t72), CONST(0)) */
t72 = 0;
/* LABEL(L$$97) */
L$$97: ;
/* MOVE(TEMP(t77), CONST(0)) */
t77 = 0;
/* CJUMP(LT, TEMP(t72), CONST(10), L$$100, L$$101) */
if (t72 < 10) goto L$$100; else goto L$$101;
/* LABEL(L$$100) */
L$$100: ;
/* MOVE(TEMP(t77), CONST(1)) */
t77 = 1;
/* LABEL(L$$101) */
L$$101: ;
/* CJUMP(EQ, TEMP(t77), CONST(1), L$$99, L$$98) */
if (t77 == 1) goto L$$99; else goto L$$98;
/* LABEL(L$$99) */
L$$99: ;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$overflow), PARAM(0), TEMP(t71))) */
int32_t t21 = LPiDigits$overflow(p0, t71);
t67 = t21;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$shownum), PARAM(0), TEMP(t71))) */
int32_t t22 = LPiDigits$shownum(p0, t71);
t67 = t22;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$sin), PARAM(0), TEMP(t68), TEMP(t71), TEMP(t69), TEMP(t70))) */
int32_t t23 = LPiDigits$sin(p0, t68, t71, t69, t70);
t67 = t23;
/* MOVE(TEMP(t67), CALL(NAME(LPiDigits$add), PARAM(0), TEMP(t71), TEMP(t71), TEMP(t68))) */
int32_t t24 = LPiDigits$add(p0, t71, t71, t68);
t67 = t24;
/* MOVE(TEMP(t72), BINOP(PLUS, TEMP(t72), CONST(1))) */
t72 = (t72 + 1);
/* JUMP(NAME(L$$97), L$$97) */
goto L$$97;
/* LABEL(L$$98) */
L$$98: ;
/* MOVE(TEMP(t78), CONST(10)) */
t78 = 10;
return t78;
}

