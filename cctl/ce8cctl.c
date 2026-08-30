#include <windows.h>

extern void CommandBar_Create(void);
extern void CommandBar_Show(void);
extern void CommandBar_AddBitmap(void);
extern void CommandBar_InsertMenubar(void);
extern void CommandBar_AddAdornments(void);

void* g_CerfCctlTargets[5] = {
    (void*)CommandBar_Create,
    (void*)CommandBar_Show,
    (void*)CommandBar_AddBitmap,
    (void*)CommandBar_InsertMenubar,
    (void*)CommandBar_AddAdornments,
};

BOOL WINAPI DllMain(HANDLE h, DWORD r, LPVOID p) {
    (void)h; (void)r; (void)p;
    return TRUE;
}
