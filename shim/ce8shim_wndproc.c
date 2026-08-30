#include <windows.h>

#define CERF_MAX_CLASSES 8

WNDPROC g_CerfAppWndProc[CERF_MAX_CLASSES];

extern LRESULT CALLBACK CerfWndThunk0(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk1(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk2(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk3(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk4(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk5(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk6(HWND, UINT, WPARAM, LPARAM);
extern LRESULT CALLBACK CerfWndThunk7(HWND, UINT, WPARAM, LPARAM);

extern void* CerfCallAligned1(void* target, void* a);
extern void* CerfCallAligned2(void* target, void* a, void* b);
extern void* CerfCallAligned3(void* target, void* a, void* b, void* c);

static int g_cerf_next_class;

static WNDPROC CerfThunkAt(int i) {
    switch (i) {
    case 0:  return &CerfWndThunk0;
    case 1:  return &CerfWndThunk1;
    case 2:  return &CerfWndThunk2;
    case 3:  return &CerfWndThunk3;
    case 4:  return &CerfWndThunk4;
    case 5:  return &CerfWndThunk5;
    case 6:  return &CerfWndThunk6;
    default: return &CerfWndThunk7;
    }
}

static WNDPROC CerfWrapWndProc(WNDPROC app) {
    int i;
    if (!app || g_cerf_next_class >= CERF_MAX_CLASSES)
        return app;
    for (i = 0; i < g_cerf_next_class; ++i) {
        if (g_CerfAppWndProc[i] == app)
            return CerfThunkAt(i);
    }
    i = g_cerf_next_class++;
    g_CerfAppWndProc[i] = app;
    return CerfThunkAt(i);
}

static WNDPROC CerfUnwrapWndProc(WNDPROC thunk) {
    int i;
    for (i = 0; i < g_cerf_next_class; ++i) {
        if (CerfThunkAt(i) == thunk)
            return g_CerfAppWndProc[i];
    }
    return thunk;
}

ATOM WINAPI CerfRegisterClassW(const WNDCLASSW* wc) {
    WNDCLASSW tmp;

    if (!wc)
        return 0;

    tmp.style         = wc->style;
    tmp.lpfnWndProc   = CerfWrapWndProc(wc->lpfnWndProc);
    tmp.cbClsExtra    = wc->cbClsExtra;
    tmp.cbWndExtra    = wc->cbWndExtra;
    tmp.hInstance     = wc->hInstance;
    tmp.hIcon         = wc->hIcon;
    tmp.hCursor       = wc->hCursor;
    tmp.hbrBackground = wc->hbrBackground;
    tmp.lpszMenuName  = wc->lpszMenuName;
    tmp.lpszClassName = wc->lpszClassName;

    return (ATOM)(DWORD)CerfCallAligned1((void*)RegisterClassW, &tmp);
}

LONG WINAPI CerfSetWindowLongW(HWND h, int idx, LONG v) {
    LONG out;

    if (idx == GWL_WNDPROC)
        v = (LONG)CerfWrapWndProc((WNDPROC)v);

    out = (LONG)CerfCallAligned3((void*)SetWindowLongW, (void*)h, (void*)idx,
                                 (void*)v);

    if (idx == GWL_WNDPROC)
        out = (LONG)CerfUnwrapWndProc((WNDPROC)out);
    return out;
}

LONG WINAPI CerfGetWindowLongW(HWND h, int idx) {
    LONG out = (LONG)CerfCallAligned2((void*)GetWindowLongW, (void*)h,
                                      (void*)idx);
    if (idx == GWL_WNDPROC)
        out = (LONG)CerfUnwrapWndProc((WNDPROC)out);
    return out;
}
