#include <windows.h>

void* g_CerfMsvcrtGcvt;

extern void* CerfCallAligned1(void* target, void* a);
extern void* CerfCallAligned2(void* target, void* a, void* b);

BOOL WINAPI DllMain(HANDLE h, DWORD r, LPVOID p) {
    HMODULE m;
    (void)h; (void)p;

    if (r == DLL_PROCESS_ATTACH) {
        m = (HMODULE)CerfCallAligned1((void*)LoadLibraryW, (void*)L"msvcrt.dll");
        if (m)
            g_CerfMsvcrtGcvt = CerfCallAligned2((void*)GetProcAddressW, (void*)m,
                                                (void*)L"_gcvt");
    }
    return TRUE;
}
