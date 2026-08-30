#pragma once

typedef union {
    double d;
    struct { unsigned lo, hi; } w;
} CerfDw;

enum { CERF_SF_ZERO = 0, CERF_SF_SUB = 1, CERF_SF_NORM = 2, CERF_SF_INF = 3, CERF_SF_NAN = 4 };

typedef struct {
    unsigned sign;
    int      exp;
    unsigned sh, sl;
    int      cls;
} CerfSf;

void   CerfSfUnpack(double x, CerfSf* o);
void   CerfSfNormSub(CerfSf* v);
void   CerfSfShrSticky(unsigned* hi, unsigned* lo, int n);
double CerfSfMakeNan(void);
double CerfSfMakeInf(unsigned sign);
double CerfSfMakeZero(unsigned sign);
double CerfSfRound(unsigned sign, int exp, unsigned sh, unsigned sl);
