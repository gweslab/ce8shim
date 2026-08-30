#include "ce8shim_softfloat.h"

enum { CERF_CMP_LT = -1, CERF_CMP_EQ = 0, CERF_CMP_GT = 1, CERF_CMP_UN = 2 };

static int CerfSfCompare(double x, double y) {
    CerfDw a, b;
    unsigned amag_hi, bmag_hi;
    int asign, bsign;

    a.d = x; b.d = y;

    amag_hi = a.w.hi & 0x7FFFFFFFu;
    bmag_hi = b.w.hi & 0x7FFFFFFFu;

    if ((amag_hi > 0x7FF00000u) || (amag_hi == 0x7FF00000u && a.w.lo != 0)) return CERF_CMP_UN;
    if ((bmag_hi > 0x7FF00000u) || (bmag_hi == 0x7FF00000u && b.w.lo != 0)) return CERF_CMP_UN;

    if ((amag_hi | a.w.lo) == 0 && (bmag_hi | b.w.lo) == 0) return CERF_CMP_EQ;

    asign = (int)(a.w.hi >> 31);
    bsign = (int)(b.w.hi >> 31);
    if (asign != bsign) return asign ? CERF_CMP_LT : CERF_CMP_GT;

    if (amag_hi != bmag_hi)
        return (amag_hi < bmag_hi) ? (asign ? CERF_CMP_GT : CERF_CMP_LT)
                                   : (asign ? CERF_CMP_LT : CERF_CMP_GT);
    if (a.w.lo != b.w.lo)
        return (a.w.lo < b.w.lo) ? (asign ? CERF_CMP_GT : CERF_CMP_LT)
                                 : (asign ? CERF_CMP_LT : CERF_CMP_GT);
    return CERF_CMP_EQ;
}

int __eqd(double x, double y) { return CerfSfCompare(x, y) == CERF_CMP_EQ; }
int __ned(double x, double y) { return CerfSfCompare(x, y) != CERF_CMP_EQ; }

int __ltd(double x, double y) { return CerfSfCompare(x, y) == CERF_CMP_LT; }
int __gtd(double x, double y) { return CerfSfCompare(x, y) == CERF_CMP_GT; }

int __led(double x, double y) {
    int c = CerfSfCompare(x, y);
    return c == CERF_CMP_LT || c == CERF_CMP_EQ;
}

int __ged(double x, double y) {
    int c = CerfSfCompare(x, y);
    return c == CERF_CMP_GT || c == CERF_CMP_EQ;
}

int __dtoi(double x) {
    CerfSf a;
    unsigned mag;
    int exp, shift;

    CerfSfUnpack(x, &a);
    if (a.cls == CERF_SF_NAN || a.cls == CERF_SF_ZERO || a.cls == CERF_SF_SUB) return 0;
    if (a.cls == CERF_SF_INF) return a.sign ? (int)0x80000000u : 0x7FFFFFFF;

    exp = a.exp - 1023;
    if (exp < 0) return 0;
    if (exp > 30) return a.sign ? (int)0x80000000u : 0x7FFFFFFF;

    shift = 55 - exp;
    if (shift >= 32) {
        mag = a.sh >> (shift - 32);
    } else {
        mag = (a.sh << (32 - shift)) | (a.sl >> shift);
    }
    return a.sign ? -(int)mag : (int)mag;
}
