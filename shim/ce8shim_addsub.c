#include "ce8shim_softfloat.h"

static double CerfSfAddMag(const CerfSf* a, const CerfSf* b, unsigned sign) {
    unsigned ah = a->sh, al = a->sl, bh = b->sh, bl = b->sl;
    int exp;
    if (a->exp >= b->exp) {
        exp = a->exp;
        CerfSfShrSticky(&bh, &bl, a->exp - b->exp);
    } else {
        exp = b->exp;
        CerfSfShrSticky(&ah, &al, b->exp - a->exp);
    }
    al = al + bl;
    ah = ah + bh + (al < bl ? 1u : 0u);
    return CerfSfRound(sign, exp, ah, al);
}

static double CerfSfSubMag(const CerfSf* a, const CerfSf* b) {
    unsigned ah, al, bh, bl, rh, rl;
    unsigned sign;
    int exp, d;

    d = a->exp - b->exp;
    if (d > 0 || (d == 0 && (a->sh > b->sh || (a->sh == b->sh && a->sl >= b->sl)))) {
        sign = a->sign; exp = a->exp;
        ah = a->sh; al = a->sl; bh = b->sh; bl = b->sl;
        CerfSfShrSticky(&bh, &bl, d);
    } else {
        sign = b->sign; exp = b->exp;
        ah = b->sh; al = b->sl; bh = a->sh; bl = a->sl;
        CerfSfShrSticky(&bh, &bl, -d);
    }

    rl = al - bl;
    rh = ah - bh - (al < bl ? 1u : 0u);
    if ((rh | rl) == 0) return CerfSfMakeZero(0);
    return CerfSfRound(sign, exp, rh, rl);
}

static double CerfSfAddSub(double x, double y, unsigned flip) {
    CerfSf a, b;
    CerfSfUnpack(x, &a);
    CerfSfUnpack(y, &b);
    b.sign ^= flip;

    if (a.cls == CERF_SF_NAN || b.cls == CERF_SF_NAN) return CerfSfMakeNan();
    if (a.cls == CERF_SF_INF) {
        if (b.cls == CERF_SF_INF && a.sign != b.sign) return CerfSfMakeNan();
        return CerfSfMakeInf(a.sign);
    }
    if (b.cls == CERF_SF_INF) return CerfSfMakeInf(b.sign);
    if (a.cls == CERF_SF_ZERO && b.cls == CERF_SF_ZERO)
        return CerfSfMakeZero(a.sign & b.sign);
    if (a.cls == CERF_SF_ZERO) return CerfSfRound(b.sign, b.exp, b.sh, b.sl);
    if (b.cls == CERF_SF_ZERO) return CerfSfRound(a.sign, a.exp, a.sh, a.sl);

    if (a.sign == b.sign) return CerfSfAddMag(&a, &b, a.sign);
    return CerfSfSubMag(&a, &b);
}

double __addd(double x, double y) { return CerfSfAddSub(x, y, 0); }
double __subd(double x, double y) { return CerfSfAddSub(x, y, 1); }

double __negd(double x) {
    CerfDw u;
    u.d = x;
    u.w.hi ^= 0x80000000u;
    return u.d;
}
