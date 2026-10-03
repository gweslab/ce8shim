#include <windows.h>

extern void CommandBar_Create(void);
extern void CommandBar_Show(void);
extern void CommandBar_AddBitmap(void);
extern void CommandBar_InsertMenubar(void);
extern void CommandBar_AddAdornments(void);
extern void InitCommonControls(void);
extern void CommandBar_GetMenu(void);
extern void CommandBar_Height(void);
extern void IsCommandBarMessage(void);
extern void CommandBar_DrawMenuBar(void);

void* g_CerfCctlTargets[10] = {
    (void*)CommandBar_Create,
    (void*)CommandBar_Show,
    (void*)CommandBar_AddBitmap,
    (void*)CommandBar_InsertMenubar,
    (void*)CommandBar_AddAdornments,
    (void*)InitCommonControls,
    (void*)CommandBar_GetMenu,
    (void*)CommandBar_Height,
    (void*)IsCommandBarMessage,
    (void*)CommandBar_DrawMenuBar,
};

BOOL WINAPI DllMain(HANDLE h, DWORD r, LPVOID p) {
    (void)h; (void)r; (void)p;
    return TRUE;
}
