#include "ce8shim_softfloat.h"

static void CerfMul32(unsigned a, unsigned b, unsigned* hi, unsigned* lo) {
    unsigned al = a & 0xFFFFu, ah = a >> 16;
    unsigned bl = b & 0xFFFFu, bh = b >> 16;
    unsigned p0 = al * bl;
    unsigned p1 = al * bh;
    unsigned p2 = ah * bl;
    unsigned p3 = ah * bh;
    unsigned mid = p1 + p2;
    unsigned cy  = (mid < p1) ? 0x10000u : 0u;
    unsigned lo0 = p0 + (mid << 16);
    *lo = lo0;
    *hi = p3 + (mid >> 16) + cy + ((lo0 < p0) ? 1u : 0u);
}

static void CerfAccum(unsigned* w, int i, unsigned v) {
    while (v && i < 4) {
        unsigned t = w[i] + v;
        v = (t < v) ? 1u : 0u;
        w[i] = t;
        ++i;
    }
}

double __muld(double x, double y) {
    CerfSf a, b;
    unsigned sign, w[4], t0, t1, q0, q1, q2, r0, r1, sticky;
    int exp;

    CerfSfUnpack(x, &a);
    CerfSfUnpack(y, &b);
    sign = a.sign ^ b.sign;

    if (a.cls == CERF_SF_NAN || b.cls == CERF_SF_NAN) return CerfSfMakeNan();
    if (a.cls == CERF_SF_INF || b.cls == CERF_SF_INF) {
        if (a.cls == CERF_SF_ZERO || b.cls == CERF_SF_ZERO) return CerfSfMakeNan();
        return CerfSfMakeInf(sign);
    }
    if (a.cls == CERF_SF_ZERO || b.cls == CERF_SF_ZERO) return CerfSfMakeZero(sign);

    CerfSfNormSub(&a);
    CerfSfNormSub(&b);

    w[0] = w[1] = w[2] = w[3] = 0;
    CerfMul32(a.sl, b.sl, &t1, &t0); CerfAccum(w, 0, t0); CerfAccum(w, 1, t1);
    CerfMul32(a.sl, b.sh, &t1, &t0); CerfAccum(w, 1, t0); CerfAccum(w, 2, t1);
    CerfMul32(a.sh, b.sl, &t1, &t0); CerfAccum(w, 1, t0); CerfAccum(w, 2, t1);
    CerfMul32(a.sh, b.sh, &t1, &t0); CerfAccum(w, 2, t0); CerfAccum(w, 3, t1);

    sticky = (w[0] != 0) ? 1u : 0u;
    q0 = w[1]; q1 = w[2]; q2 = w[3];

    sticky |= ((q0 & 0x007FFFFFu) != 0) ? 1u : 0u;
    r0 = (q0 >> 23) | (q1 << 9);
    r1 = (q1 >> 23) | (q2 << 9);

    exp = a.exp + b.exp - 1023;
    return CerfSfRound(sign, exp, r1, r0 | sticky);
}

double __divd(double x, double y) {
    CerfSf a, b;
    unsigned sign, rh, rl, dh, dl, qh, ql;
    int exp, i;

    CerfSfUnpack(x, &a);
    CerfSfUnpack(y, &b);
    sign = a.sign ^ b.sign;

    if (a.cls == CERF_SF_NAN || b.cls == CERF_SF_NAN) return CerfSfMakeNan();
    if (a.cls == CERF_SF_INF) {
        if (b.cls == CERF_SF_INF) return CerfSfMakeNan();
        return CerfSfMakeInf(sign);
    }
    if (b.cls == CERF_SF_INF) return CerfSfMakeZero(sign);
    if (b.cls == CERF_SF_ZERO) {
        if (a.cls == CERF_SF_ZERO) return CerfSfMakeNan();
        return CerfSfMakeInf(sign);
    }
    if (a.cls == CERF_SF_ZERO) return CerfSfMakeZero(sign);

    CerfSfNormSub(&a);
    CerfSfNormSub(&b);

    rh = (a.sh >> 1);
    rl = (a.sl >> 1) | (a.sh << 31);
    dh = b.sh; dl = b.sl;
    qh = 0; ql = 0;

    for (i = 0; i < 56; ++i) {
        rh = (rh << 1) | (rl >> 31);
        rl <<= 1;
        qh = (qh << 1) | (ql >> 31);
        ql <<= 1;
        if (rh > dh || (rh == dh && rl >= dl)) {
            unsigned nl = rl - dl;
            rh = rh - dh - ((rl < dl) ? 1u : 0u);
            rl = nl;
            ql |= 1u;
        }
    }
    if ((rh | rl) != 0) ql |= 1u;

    exp = a.exp - b.exp + 1023;
    return CerfSfRound(sign, exp, qh, ql);
}
