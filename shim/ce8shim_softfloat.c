#include "ce8shim_softfloat.h"

void CerfSfUnpack(double x, CerfSf* o) {
    CerfDw u;
    u.d = x;
    o->sign = u.w.hi >> 31;
    o->exp  = (int)((u.w.hi >> 20) & 0x7FF);
    o->sh   = u.w.hi & 0x000FFFFFu;
    o->sl   = u.w.lo;
    if (o->exp == 0) {
        o->cls = (o->sh | o->sl) ? CERF_SF_SUB : CERF_SF_ZERO;
        o->exp = 1;
    } else if (o->exp == 0x7FF) {
        o->cls = (o->sh | o->sl) ? CERF_SF_NAN : CERF_SF_INF;
    } else {
        o->cls = CERF_SF_NORM;
        o->sh |= 0x00100000u;
    }
    o->sh = (o->sh << 3) | (o->sl >> 29);
    o->sl = o->sl << 3;
}

void CerfSfNormSub(CerfSf* v) {
    if (v->cls != CERF_SF_SUB) return;
    while (v->sh < 0x00800000u) {
        v->sh = (v->sh << 1) | (v->sl >> 31);
        v->sl <<= 1;
        --v->exp;
    }
}

void CerfSfShrSticky(unsigned* hi, unsigned* lo, int n) {
    unsigned h = *hi, l = *lo, s = 0;
    if (n <= 0) return;
    if (n >= 64) {
        s = (h | l) != 0;
        h = 0; l = 0;
    } else if (n == 32) {
        s = (l != 0);
        l = h; h = 0;
    } else if (n > 32) {
        s = (l != 0) | ((h << (64 - n)) != 0);
        l = h >> (n - 32); h = 0;
    } else {
        s = (l << (32 - n)) != 0;
        l = (l >> n) | (h << (32 - n));
        h = h >> n;
    }
    *hi = h; *lo = l | s;
}

double CerfSfMakeNan(void) {
    CerfDw u;
    u.w.hi = 0x7FF80000u; u.w.lo = 0;
    return u.d;
}

double CerfSfMakeInf(unsigned sign) {
    CerfDw u;
    u.w.hi = (sign << 31) | 0x7FF00000u; u.w.lo = 0;
    return u.d;
}

double CerfSfMakeZero(unsigned sign) {
    CerfDw u;
    u.w.hi = sign << 31; u.w.lo = 0;
    return u.d;
}

double CerfSfRound(unsigned sign, int exp, unsigned sh, unsigned sl) {
    CerfDw u;
    unsigned round;

    if ((sh | sl) == 0) return CerfSfMakeZero(sign);

    while (sh >= 0x01000000u) {
        CerfSfShrSticky(&sh, &sl, 1);
        ++exp;
    }
    while (sh < 0x00800000u) {
        if (exp < 2) break;
        sh = (sh << 1) | (sl >> 31);
        sl <<= 1;
        --exp;
    }

    if (exp < 1) {
        CerfSfShrSticky(&sh, &sl, 1 - exp);
        exp = 1;
    }

    round = sl & 7;
    if (round > 4 || (round == 4 && (sl & 8))) {
        sl += 8;
        if (sl < 8) ++sh;
        if (sh >= 0x01000000u) {
            CerfSfShrSticky(&sh, &sl, 1);
            ++exp;
        }
    }

    if (sh < 0x00800000u) exp = 0;
    else if (exp >= 0x7FF) return CerfSfMakeInf(sign);

    u.w.hi = (sign << 31) | ((unsigned)exp << 20) | ((sh >> 3) & 0x000FFFFFu);
    u.w.lo = (sh << 29) | (sl >> 3);
    return u.d;
}
