#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LFrac$init (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFrac$den (int32_t p0) ;

int32_t LFrac$num (int32_t p0) ;

int32_t LFrac$showFrac (int32_t p0) ;

int32_t LIntegral$eq (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$div (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$rem (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$gcd_rec (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$gcd_iter (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$gcd (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LIntegral$lcm (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$init (int32_t p0) ;

int32_t LFracOps$mkFrac (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$plus (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$times (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$recip (int32_t p0, int32_t p1) ;

int32_t LFracOps$divide (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$neg (int32_t p0, int32_t p1) ;

int32_t LFracOps$abs_minus (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LFracOps$lt (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LNewtonClass$newton_step (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LNewtonClass$newton (int32_t p0, int32_t p1) ;

int32_t LNewtonClass$test_it (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t73, t74;
/* MOVE(TEMP(t73), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t73 = t2;
/* MOVE(TEMP(t74), CALL(NAME(LNewtonClass$test_it), TEMP(t73), CONST(2))) */
int32_t t3 = LNewtonClass$test_it(t73, 2);
t74 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t74))) */
int32_t t4 = L_println_int(t74);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LFrac$init (int32_t p0, int32_t p1, int32_t p2) {
int32_t t2, t3;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(2)) */
int32_t t1 = (p0 + (1 * 4));
MEM(t1) = p2;
/* MOVE(TEMP(t3), TEMP(t2)) */
t3 = t2;
return t3;
}

int32_t LFrac$den (int32_t p0) {
int32_t t4;
/* MOVE(TEMP(t4), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t4 = MEM((p0 + (1 * 4)));
return t4;
}

int32_t LFrac$num (int32_t p0) {
int32_t t5;
/* MOVE(TEMP(t5), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t5 = MEM((p0 + (0 * 4)));
return t5;
}

int32_t LFrac$showFrac (int32_t p0) {
int32_t t6, t7, t8, t9;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
int32_t t0 = L_println_int(MEM((p0 + (0 * 4))));
t7 = t0;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))))) */
int32_t t1 = L_println_int(MEM((p0 + (1 * 4))));
t8 = t1;
/* MOVE(TEMP(t9), TEMP(t6)) */
t9 = t6;
return t9;
}

int32_t LIntegral$eq (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10, t11, t12, t13, t14;
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t13)), CONST(1), L$$0, L$$1) */
if ((1 - t13) == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* CJUMP(LT, PARAM(2), PARAM(1), L$$5, L$$6) */
if (p2 < p1) goto L$$5; else goto L$$6;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t12), BINOP(MINUS, CONST(1), TEMP(t14))) */
t12 = (1 - t14);
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t10), BINOP(AND, TEMP(t11), TEMP(t12))) */
t10 = (t11 & t12);
return t10;
}

int32_t LIntegral$div (int32_t p0, int32_t p1, int32_t p2) {
int32_t t15, t16, t17;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$10, L$$11) */
if (p1 < p2) goto L$$10; else goto L$$11;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
/* LABEL(L$$11) */
L$$11: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t16)), CONST(1), L$$9, L$$8) */
if ((1 - t16) == 1) goto L$$9; else goto L$$8;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t15), BINOP(PLUS, TEMP(t15), CONST(1))) */
t15 = (t15 + 1);
/* MOVE(PARAM(1), BINOP(MINUS, PARAM(1), PARAM(2))) */
p1 = (p1 - p2);
/* JUMP(NAME(L$$7), L$$7) */
goto L$$7;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t17), TEMP(t15)) */
t17 = t15;
return t17;
}

int32_t LIntegral$rem (int32_t p0, int32_t p1, int32_t p2) {
int32_t t18, t75, t76, t77;
/* MOVE(TEMP(t77), PARAM(1)) */
t77 = p1;
/* MOVE(TEMP(t76), PARAM(2)) */
t76 = p2;
/* MOVE(TEMP(t75), CALL(NAME(LIntegral$div), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t0 = LIntegral$div(p0, p1, p2);
t75 = t0;
/* MOVE(TEMP(t18), BINOP(MINUS, TEMP(t77), BINOP(MUL, TEMP(t76), TEMP(t75)))) */
t18 = (t77 - (t76 * t75));
return t18;
}

int32_t LIntegral$gcd_rec (int32_t p0, int32_t p1, int32_t p2) {
int32_t t19, t20, t21, t22, t78, t79, t80;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$15, L$$16) */
if (p1 < p2) goto L$$15; else goto L$$16;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t20), CONST(1)) */
t20 = 1;
/* LABEL(L$$16) */
L$$16: ;
/* CJUMP(EQ, TEMP(t20), CONST(1), L$$13, L$$12) */
if (t20 == 1) goto L$$13; else goto L$$12;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t19), CALL(NAME(LIntegral$gcd_rec), PARAM(0), PARAM(2), PARAM(1))) */
int32_t t0 = LIntegral$gcd_rec(p0, p2, p1);
t19 = t0;
/* JUMP(NAME(L$$14), L$$14) */
goto L$$14;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, PARAM(2), CONST(1), L$$20, L$$21) */
if (p2 < 1) goto L$$20; else goto L$$21;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$21) */
L$$21: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$18, L$$17) */
if (t21 == 1) goto L$$18; else goto L$$17;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t19), PARAM(1)) */
t19 = p1;
/* JUMP(NAME(L$$19), L$$19) */
goto L$$19;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t80), PARAM(0)) */
t80 = p0;
/* MOVE(TEMP(t79), PARAM(2)) */
t79 = p2;
/* MOVE(TEMP(t78), CALL(NAME(LIntegral$rem), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t1 = LIntegral$rem(p0, p1, p2);
t78 = t1;
/* MOVE(TEMP(t19), CALL(NAME(LIntegral$gcd_rec), TEMP(t80), TEMP(t79), TEMP(t78))) */
int32_t t2 = LIntegral$gcd_rec(t80, t79, t78);
t19 = t2;
/* LABEL(L$$19) */
L$$19: ;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t22), TEMP(t19)) */
t22 = t19;
return t22;
}

int32_t LIntegral$gcd_iter (int32_t p0, int32_t p1, int32_t p2) {
int32_t t23, t24, t25, t26;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$25, L$$26) */
if (p1 < p2) goto L$$25; else goto L$$26;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$26) */
L$$26: ;
/* CJUMP(EQ, TEMP(t24), CONST(1), L$$23, L$$22) */
if (t24 == 1) goto L$$23; else goto L$$22;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t23), PARAM(1)) */
t23 = p1;
/* MOVE(PARAM(1), PARAM(2)) */
p1 = p2;
/* MOVE(PARAM(2), TEMP(t23)) */
p2 = t23;
/* JUMP(NAME(L$$24), L$$24) */
goto L$$24;
/* LABEL(L$$22) */
L$$22: ;
/* LABEL(L$$24) */
L$$24: ;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* CJUMP(LT, CONST(0), PARAM(2), L$$30, L$$31) */
if (0 < p2) goto L$$30; else goto L$$31;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* LABEL(L$$31) */
L$$31: ;
/* CJUMP(EQ, TEMP(t25), CONST(1), L$$29, L$$28) */
if (t25 == 1) goto L$$29; else goto L$$28;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t23), PARAM(1)) */
t23 = p1;
/* MOVE(PARAM(1), PARAM(2)) */
p1 = p2;
/* MOVE(PARAM(2), CALL(NAME(LIntegral$rem), PARAM(0), TEMP(t23), PARAM(2))) */
int32_t t0 = LIntegral$rem(p0, t23, p2);
p2 = t0;
/* JUMP(NAME(L$$27), L$$27) */
goto L$$27;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t26), PARAM(1)) */
t26 = p1;
return t26;
}

int32_t LIntegral$gcd (int32_t p0, int32_t p1, int32_t p2) {
int32_t t27;
/* MOVE(TEMP(t27), CALL(NAME(LIntegral$gcd_rec), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t0 = LIntegral$gcd_rec(p0, p1, p2);
t27 = t0;
return t27;
}

int32_t LIntegral$lcm (int32_t p0, int32_t p1, int32_t p2) {
int32_t t28, t29, t81, t82, t83, t84, t85;
/* MOVE(TEMP(t85), PARAM(2)) */
t85 = p2;
/* MOVE(TEMP(t83), PARAM(0)) */
t83 = p0;
/* MOVE(TEMP(t82), PARAM(1)) */
t82 = p1;
/* MOVE(TEMP(t81), CALL(NAME(LIntegral$gcd), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t0 = LIntegral$gcd(p0, p1, p2);
t81 = t0;
/* MOVE(TEMP(t84), CALL(NAME(LIntegral$div), TEMP(t83), TEMP(t82), TEMP(t81))) */
int32_t t1 = LIntegral$div(t83, t82, t81);
t84 = t1;
/* MOVE(TEMP(t28), BINOP(MUL, TEMP(t85), TEMP(t84))) */
t28 = (t85 * t84);
/* MOVE(TEMP(t29), TEMP(t28)) */
t29 = t28;
return t29;
}

int32_t LFracOps$init (int32_t p0) {
int32_t t30, t31, t86, t87;
/* MOVE(TEMP(t87), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t87 = (p0 + (0 * 4));
/* MOVE(TEMP(t86), CALL(NAME(L_halloc), CONST(0))) */
int32_t t0 = L_halloc(0);
t86 = t0;
/* MOVE(MEM(TEMP(t87)), TEMP(t86)) */
int32_t t1 = t87;
MEM(t1) = t86;
/* MOVE(TEMP(t30), CONST(0)) */
t30 = 0;
/* MOVE(TEMP(t31), TEMP(t30)) */
t31 = t30;
return t31;
}

int32_t LFracOps$mkFrac (int32_t p0, int32_t p1, int32_t p2) {
int32_t t32, t33, t34;
/* MOVE(TEMP(t33), CALL(NAME(L_halloc), CONST(8))) */
int32_t t0 = L_halloc(8);
t33 = t0;
/* MOVE(TEMP(t32), CALL(NAME(LFrac$init), TEMP(t33), PARAM(1), PARAM(2))) */
int32_t t1 = LFrac$init(t33, p1, p2);
t32 = t1;
/* MOVE(TEMP(t34), TEMP(t33)) */
t34 = t33;
return t34;
}

int32_t LFracOps$plus (int32_t p0, int32_t p1, int32_t p2) {
int32_t t100, t101, t102, t103, t104, t35, t36, t37, t38, t39, t88, t89, t90, t91, t92, t93, t94, t95, t96, t97, t98, t99;
/* MOVE(TEMP(t91), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t91 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t88), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t0 = LFrac$den(p1);
t88 = t0;
/* MOVE(TEMP(t90), TEMP(t88)) */
t90 = t88;
/* MOVE(TEMP(t89), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t1 = LFrac$den(p2);
t89 = t1;
/* MOVE(TEMP(t35), CALL(NAME(LIntegral$lcm), TEMP(t91), TEMP(t90), TEMP(t89))) */
int32_t t2 = LIntegral$lcm(t91, t90, t89);
t35 = t2;
/* MOVE(TEMP(t92), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t3 = LFrac$num(p1);
t92 = t3;
/* MOVE(TEMP(t97), TEMP(t92)) */
t97 = t92;
/* MOVE(TEMP(t95), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t95 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t94), TEMP(t35)) */
t94 = t35;
/* MOVE(TEMP(t93), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t4 = LFrac$den(p1);
t93 = t4;
/* MOVE(TEMP(t96), CALL(NAME(LIntegral$div), TEMP(t95), TEMP(t94), TEMP(t93))) */
int32_t t5 = LIntegral$div(t95, t94, t93);
t96 = t5;
/* MOVE(TEMP(t104), BINOP(MUL, TEMP(t97), TEMP(t96))) */
t104 = (t97 * t96);
/* MOVE(TEMP(t98), CALL(NAME(LFrac$num), PARAM(2))) */
int32_t t6 = LFrac$num(p2);
t98 = t6;
/* MOVE(TEMP(t103), TEMP(t98)) */
t103 = t98;
/* MOVE(TEMP(t101), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t101 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t100), TEMP(t35)) */
t100 = t35;
/* MOVE(TEMP(t99), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t7 = LFrac$den(p2);
t99 = t7;
/* MOVE(TEMP(t102), CALL(NAME(LIntegral$div), TEMP(t101), TEMP(t100), TEMP(t99))) */
int32_t t8 = LIntegral$div(t101, t100, t99);
t102 = t8;
/* MOVE(TEMP(t36), BINOP(PLUS, TEMP(t104), BINOP(MUL, TEMP(t103), TEMP(t102)))) */
t36 = (t104 + (t103 * t102));
/* MOVE(TEMP(t37), TEMP(t35)) */
t37 = t35;
/* MOVE(TEMP(t38), CALL(NAME(LFracOps$mkFrac), PARAM(0), TEMP(t36), TEMP(t37))) */
int32_t t9 = LFracOps$mkFrac(p0, t36, t37);
t38 = t9;
/* MOVE(TEMP(t39), TEMP(t38)) */
t39 = t38;
return t39;
}

int32_t LFracOps$times (int32_t p0, int32_t p1, int32_t p2) {
int32_t t105, t106, t107, t108, t109, t110, t111, t112, t113, t114, t115, t116, t117, t118, t119, t120, t121, t122, t123, t124, t125, t126, t40, t41, t42, t43, t44, t45;
/* MOVE(TEMP(t108), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t108 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t105), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t0 = LFrac$den(p1);
t105 = t0;
/* MOVE(TEMP(t107), TEMP(t105)) */
t107 = t105;
/* MOVE(TEMP(t106), CALL(NAME(LFrac$num), PARAM(2))) */
int32_t t1 = LFrac$num(p2);
t106 = t1;
/* MOVE(TEMP(t40), CALL(NAME(LIntegral$gcd), TEMP(t108), TEMP(t107), TEMP(t106))) */
int32_t t2 = LIntegral$gcd(t108, t107, t106);
t40 = t2;
/* MOVE(TEMP(t112), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t112 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t109), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t3 = LFrac$num(p1);
t109 = t3;
/* MOVE(TEMP(t111), TEMP(t109)) */
t111 = t109;
/* MOVE(TEMP(t110), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t4 = LFrac$den(p2);
t110 = t4;
/* MOVE(TEMP(t41), CALL(NAME(LIntegral$gcd), TEMP(t112), TEMP(t111), TEMP(t110))) */
int32_t t5 = LIntegral$gcd(t112, t111, t110);
t41 = t5;
/* MOVE(TEMP(t114), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t114 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t113), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t6 = LFrac$num(p1);
t113 = t6;
/* MOVE(TEMP(t115), CALL(NAME(LIntegral$div), TEMP(t114), TEMP(t113), TEMP(t41))) */
int32_t t7 = LIntegral$div(t114, t113, t41);
t115 = t7;
/* MOVE(TEMP(t119), TEMP(t115)) */
t119 = t115;
/* MOVE(TEMP(t117), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t117 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t116), CALL(NAME(LFrac$num), PARAM(2))) */
int32_t t8 = LFrac$num(p2);
t116 = t8;
/* MOVE(TEMP(t118), CALL(NAME(LIntegral$div), TEMP(t117), TEMP(t116), TEMP(t40))) */
int32_t t9 = LIntegral$div(t117, t116, t40);
t118 = t9;
/* MOVE(TEMP(t42), BINOP(MUL, TEMP(t119), TEMP(t118))) */
t42 = (t119 * t118);
/* MOVE(TEMP(t121), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t121 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t120), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t10 = LFrac$den(p1);
t120 = t10;
/* MOVE(TEMP(t122), CALL(NAME(LIntegral$div), TEMP(t121), TEMP(t120), TEMP(t40))) */
int32_t t11 = LIntegral$div(t121, t120, t40);
t122 = t11;
/* MOVE(TEMP(t126), TEMP(t122)) */
t126 = t122;
/* MOVE(TEMP(t124), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t124 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t123), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t12 = LFrac$den(p2);
t123 = t12;
/* MOVE(TEMP(t125), CALL(NAME(LIntegral$div), TEMP(t124), TEMP(t123), TEMP(t41))) */
int32_t t13 = LIntegral$div(t124, t123, t41);
t125 = t13;
/* MOVE(TEMP(t43), BINOP(MUL, TEMP(t126), TEMP(t125))) */
t43 = (t126 * t125);
/* MOVE(TEMP(t44), CALL(NAME(LFracOps$mkFrac), PARAM(0), TEMP(t42), TEMP(t43))) */
int32_t t14 = LFracOps$mkFrac(p0, t42, t43);
t44 = t14;
/* MOVE(TEMP(t45), TEMP(t44)) */
t45 = t44;
return t45;
}

int32_t LFracOps$recip (int32_t p0, int32_t p1) {
int32_t t127, t128, t129, t130, t46, t47;
/* MOVE(TEMP(t130), PARAM(0)) */
t130 = p0;
/* MOVE(TEMP(t127), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t0 = LFrac$den(p1);
t127 = t0;
/* MOVE(TEMP(t129), TEMP(t127)) */
t129 = t127;
/* MOVE(TEMP(t128), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t1 = LFrac$num(p1);
t128 = t1;
/* MOVE(TEMP(t46), CALL(NAME(LFracOps$mkFrac), TEMP(t130), TEMP(t129), TEMP(t128))) */
int32_t t2 = LFracOps$mkFrac(t130, t129, t128);
t46 = t2;
/* MOVE(TEMP(t47), TEMP(t46)) */
t47 = t46;
return t47;
}

int32_t LFracOps$divide (int32_t p0, int32_t p1, int32_t p2) {
int32_t t48, t49, t50;
/* MOVE(TEMP(t48), CALL(NAME(LFracOps$recip), PARAM(0), PARAM(2))) */
int32_t t0 = LFracOps$recip(p0, p2);
t48 = t0;
/* MOVE(TEMP(t49), CALL(NAME(LFracOps$times), PARAM(0), PARAM(1), TEMP(t48))) */
int32_t t1 = LFracOps$times(p0, p1, t48);
t49 = t1;
/* MOVE(TEMP(t50), TEMP(t49)) */
t50 = t49;
return t50;
}

int32_t LFracOps$neg (int32_t p0, int32_t p1) {
int32_t t131, t132, t133, t134, t135, t51, t52;
/* MOVE(TEMP(t135), PARAM(0)) */
t135 = p0;
/* MOVE(TEMP(t132), BINOP(MINUS, CONST(0), CONST(1))) */
t132 = (0 - 1);
/* MOVE(TEMP(t131), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t0 = LFrac$num(p1);
t131 = t0;
/* MOVE(TEMP(t134), BINOP(MUL, TEMP(t132), TEMP(t131))) */
t134 = (t132 * t131);
/* MOVE(TEMP(t133), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t1 = LFrac$den(p1);
t133 = t1;
/* MOVE(TEMP(t51), CALL(NAME(LFracOps$mkFrac), TEMP(t135), TEMP(t134), TEMP(t133))) */
int32_t t2 = LFracOps$mkFrac(t135, t134, t133);
t51 = t2;
/* MOVE(TEMP(t52), TEMP(t51)) */
t52 = t51;
return t52;
}

int32_t LFracOps$abs_minus (int32_t p0, int32_t p1, int32_t p2) {
int32_t t136, t137, t138, t139, t140, t141, t142, t53, t54;
/* MOVE(TEMP(t136), CALL(NAME(LFracOps$lt), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t0 = LFracOps$lt(p0, p1, p2);
t136 = t0;
/* CJUMP(EQ, TEMP(t136), CONST(1), L$$33, L$$32) */
if (t136 == 1) goto L$$33; else goto L$$32;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t139), PARAM(0)) */
t139 = p0;
/* MOVE(TEMP(t138), PARAM(2)) */
t138 = p2;
/* MOVE(TEMP(t137), CALL(NAME(LFracOps$neg), PARAM(0), PARAM(1))) */
int32_t t1 = LFracOps$neg(p0, p1);
t137 = t1;
/* MOVE(TEMP(t53), CALL(NAME(LFracOps$plus), TEMP(t139), TEMP(t138), TEMP(t137))) */
int32_t t2 = LFracOps$plus(t139, t138, t137);
t53 = t2;
/* JUMP(NAME(L$$34), L$$34) */
goto L$$34;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t142), PARAM(0)) */
t142 = p0;
/* MOVE(TEMP(t141), PARAM(1)) */
t141 = p1;
/* MOVE(TEMP(t140), CALL(NAME(LFracOps$neg), PARAM(0), PARAM(2))) */
int32_t t3 = LFracOps$neg(p0, p2);
t140 = t3;
/* MOVE(TEMP(t53), CALL(NAME(LFracOps$plus), TEMP(t142), TEMP(t141), TEMP(t140))) */
int32_t t4 = LFracOps$plus(t142, t141, t140);
t53 = t4;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t54), TEMP(t53)) */
t54 = t53;
return t54;
}

int32_t LFracOps$lt (int32_t p0, int32_t p1, int32_t p2) {
int32_t t143, t144, t145, t146, t147, t148, t149, t150, t151, t152, t153, t154, t155, t156, t157, t158, t55, t56, t57, t58, t59, t60;
/* MOVE(TEMP(t146), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t146 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t143), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t0 = LFrac$den(p1);
t143 = t0;
/* MOVE(TEMP(t145), TEMP(t143)) */
t145 = t143;
/* MOVE(TEMP(t144), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t1 = LFrac$den(p2);
t144 = t1;
/* MOVE(TEMP(t55), CALL(NAME(LIntegral$lcm), TEMP(t146), TEMP(t145), TEMP(t144))) */
int32_t t2 = LIntegral$lcm(t146, t145, t144);
t55 = t2;
/* MOVE(TEMP(t147), CALL(NAME(LFrac$num), PARAM(1))) */
int32_t t3 = LFrac$num(p1);
t147 = t3;
/* MOVE(TEMP(t152), TEMP(t147)) */
t152 = t147;
/* MOVE(TEMP(t150), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t150 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t149), TEMP(t55)) */
t149 = t55;
/* MOVE(TEMP(t148), CALL(NAME(LFrac$den), PARAM(1))) */
int32_t t4 = LFrac$den(p1);
t148 = t4;
/* MOVE(TEMP(t151), CALL(NAME(LIntegral$div), TEMP(t150), TEMP(t149), TEMP(t148))) */
int32_t t5 = LIntegral$div(t150, t149, t148);
t151 = t5;
/* MOVE(TEMP(t56), BINOP(MUL, TEMP(t152), TEMP(t151))) */
t56 = (t152 * t151);
/* MOVE(TEMP(t153), CALL(NAME(LFrac$num), PARAM(2))) */
int32_t t6 = LFrac$num(p2);
t153 = t6;
/* MOVE(TEMP(t158), TEMP(t153)) */
t158 = t153;
/* MOVE(TEMP(t156), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t156 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t155), TEMP(t55)) */
t155 = t55;
/* MOVE(TEMP(t154), CALL(NAME(LFrac$den), PARAM(2))) */
int32_t t7 = LFrac$den(p2);
t154 = t7;
/* MOVE(TEMP(t157), CALL(NAME(LIntegral$div), TEMP(t156), TEMP(t155), TEMP(t154))) */
int32_t t8 = LIntegral$div(t156, t155, t154);
t157 = t8;
/* MOVE(TEMP(t57), BINOP(MUL, TEMP(t158), TEMP(t157))) */
t57 = (t158 * t157);
/* MOVE(TEMP(t59), CONST(0)) */
t59 = 0;
/* CJUMP(LT, TEMP(t56), TEMP(t57), L$$35, L$$36) */
if (t56 < t57) goto L$$35; else goto L$$36;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t59), CONST(1)) */
t59 = 1;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t58), TEMP(t59)) */
t58 = t59;
/* MOVE(TEMP(t60), TEMP(t58)) */
t60 = t58;
return t60;
}

int32_t LNewtonClass$newton_step (int32_t p0, int32_t p1, int32_t p2) {
int32_t t159, t160, t161, t162, t163, t164, t165, t166, t61;
/* MOVE(TEMP(t166), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t166 = MEM((p0 + (1 * 4)));
/* MOVE(TEMP(t165), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t165 = MEM((p0 + (0 * 4)));
/* MOVE(TEMP(t163), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t163 = MEM((p0 + (1 * 4)));
/* MOVE(TEMP(t162), PARAM(1)) */
t162 = p1;
/* MOVE(TEMP(t160), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t160 = MEM((p0 + (1 * 4)));
/* MOVE(TEMP(t159), CALL(NAME(LFracOps$mkFrac), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(2), CONST(1))) */
int32_t t0 = LFracOps$mkFrac(MEM((p0 + (1 * 4))), p2, 1);
t159 = t0;
/* MOVE(TEMP(t161), CALL(NAME(LFracOps$divide), TEMP(t160), TEMP(t159), PARAM(1))) */
int32_t t1 = LFracOps$divide(t160, t159, p1);
t161 = t1;
/* MOVE(TEMP(t164), CALL(NAME(LFracOps$plus), TEMP(t163), TEMP(t162), TEMP(t161))) */
int32_t t2 = LFracOps$plus(t163, t162, t161);
t164 = t2;
/* MOVE(TEMP(t61), CALL(NAME(LFracOps$times), TEMP(t166), TEMP(t165), TEMP(t164))) */
int32_t t3 = LFracOps$times(t166, t165, t164);
t61 = t3;
return t61;
}

int32_t LNewtonClass$newton (int32_t p0, int32_t p1) {
int32_t t167, t168, t169, t62, t63, t64, t65, t67;
/* MOVE(TEMP(t168), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t168 = (p0 + (0 * 4));
/* MOVE(TEMP(t167), CALL(NAME(LFracOps$mkFrac), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1), CONST(2))) */
int32_t t0 = LFracOps$mkFrac(MEM((p0 + (1 * 4))), 1, 2);
t167 = t0;
/* MOVE(MEM(TEMP(t168)), TEMP(t167)) */
int32_t t1 = t168;
MEM(t1) = t167;
/* MOVE(TEMP(t64), CALL(NAME(LFracOps$mkFrac), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1), CONST(100))) */
int32_t t2 = LFracOps$mkFrac(MEM((p0 + (1 * 4))), 1, 100);
t64 = t2;
/* MOVE(TEMP(t62), CALL(NAME(LFracOps$mkFrac), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1), CONST(1))) */
int32_t t3 = LFracOps$mkFrac(MEM((p0 + (1 * 4))), p1, 1);
t62 = t3;
/* MOVE(TEMP(t65), TEMP(t62)) */
t65 = t62;
/* LABEL(L$$37) */
L$$37: ;
/* MOVE(TEMP(t169), CALL(NAME(LFracOps$lt), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), TEMP(t64), TEMP(t65))) */
int32_t t4 = LFracOps$lt(MEM((p0 + (1 * 4))), t64, t65);
t169 = t4;
/* CJUMP(EQ, TEMP(t169), CONST(1), L$$39, L$$38) */
if (t169 == 1) goto L$$39; else goto L$$38;
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t63), TEMP(t62)) */
t63 = t62;
/* MOVE(TEMP(t62), CALL(NAME(LNewtonClass$newton_step), PARAM(0), TEMP(t62), PARAM(1))) */
int32_t t5 = LNewtonClass$newton_step(p0, t62, p1);
t62 = t5;
/* MOVE(TEMP(t65), CALL(NAME(LFracOps$abs_minus), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), TEMP(t62), TEMP(t63))) */
int32_t t6 = LFracOps$abs_minus(MEM((p0 + (1 * 4))), t62, t63);
t65 = t6;
/* JUMP(NAME(L$$37), L$$37) */
goto L$$37;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t67), TEMP(t62)) */
t67 = t62;
return t67;
}

int32_t LNewtonClass$test_it (int32_t p0, int32_t p1) {
int32_t t170, t171, t68, t69, t70, t71, t72;
/* MOVE(TEMP(t171), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))) */
t171 = (p0 + (1 * 4));
/* MOVE(TEMP(t170), CALL(NAME(L_halloc), CONST(4))) */
int32_t t0 = L_halloc(4);
t170 = t0;
/* MOVE(MEM(TEMP(t171)), TEMP(t170)) */
int32_t t1 = t171;
MEM(t1) = t170;
/* MOVE(TEMP(t69), CALL(NAME(LFracOps$init), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))))) */
int32_t t2 = LFracOps$init(MEM((p0 + (1 * 4))));
t69 = t2;
/* MOVE(TEMP(t68), CALL(NAME(LNewtonClass$newton), PARAM(0), PARAM(1))) */
int32_t t3 = LNewtonClass$newton(p0, p1);
t68 = t3;
/* MOVE(TEMP(t70), CALL(NAME(L_println_int), PARAM(1))) */
int32_t t4 = L_println_int(p1);
t70 = t4;
/* MOVE(TEMP(t71), CALL(NAME(L_println_int), CONST(999))) */
int32_t t5 = L_println_int(999);
t71 = t5;
/* MOVE(TEMP(t69), CALL(NAME(LFrac$showFrac), TEMP(t68))) */
int32_t t6 = LFrac$showFrac(t68);
t69 = t6;
/* MOVE(TEMP(t72), TEMP(t69)) */
t72 = t69;
return t72;
}

