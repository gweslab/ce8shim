#include <windows.h>

extern WNDPROC g_CerfAppWndProc[];

LRESULT CALLBACK CerfWndThunk0(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[0](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk1(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[1](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk2(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[2](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk3(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[3](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk4(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[4](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk5(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[5](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk6(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[6](h, m, w, l);
}
LRESULT CALLBACK CerfWndThunk7(HWND h, UINT m, WPARAM w, LPARAM l) {
    return g_CerfAppWndProc[7](h, m, w, l);
}
