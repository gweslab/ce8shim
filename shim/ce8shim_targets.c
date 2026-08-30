extern void InitializeCriticalSection(void);
extern void DeleteCriticalSection(void);
extern void EnterCriticalSection(void);
extern void LeaveCriticalSection(void);
extern void ExitThread(void);
extern void PSLNotify(void);
extern void InitLocale(void);
extern void InterlockedTestExchange(void);
extern void InterlockedIncrement(void);
extern void InterlockedDecrement(void);
extern void InterlockedExchange(void);
extern void ThreadBaseFunc(void);
extern void MainThreadBaseFunc(void);
extern void TlsGetValue(void);
extern void TlsSetValue(void);
extern void GetVersionEx(void);
extern void CompareFileTime(void);
extern void SystemTimeToFileTime(void);
extern void FileTimeToSystemTime(void);
extern void FileTimeToLocalFileTime(void);
extern void LocalFileTimeToFileTime(void);
extern void GetLocalTime(void);
extern void SetLocalTime(void);
extern void GetSystemTime(void);
extern void SetSystemTime(void);
extern void GetTimeZoneInformation(void);
extern void SetTimeZoneInformation(void);
extern void GetCurrentFT(void);
extern void IsAPIReady(void);
extern void GetAPIAddress(void);
extern void LocalAlloc(void);
extern void LocalReAlloc(void);
extern void LocalSize(void);
extern void LocalFree(void);
extern void RemoteLocalAlloc(void);
extern void RemoteLocalReAlloc(void);
extern void RemoteLocalSize(void);
extern void RemoteLocalFree(void);
extern void LocalAllocInProcess(void);
extern void LocalFreeInProcess(void);
extern void LocalSizeInProcess(void);
extern void HeapCreate(void);
extern void HeapDestroy(void);
extern void HeapAlloc(void);
extern void HeapReAlloc(void);
extern void HeapSize(void);
extern void HeapFree(void);
extern void GetProcessHeap(void);
extern void HeapValidate(void);
extern void GetHeapSnapshot(void);
extern void CeModuleJit(void);
extern void CompactAllHeaps(void);
extern void wsprintfW(void);
extern void wvsprintfW(void);
extern void Random(void);
extern void ProfileStart(void);
extern void ProfileStop(void);
extern void GlobalMemoryStatus(void);
extern void SystemParametersInfoW(void);
extern void CreateDIBSection(void);
extern void EqualRgn(void);
extern void CreateAcceleratorTableW(void);
extern void DestroyAcceleratorTable(void);
extern void LoadAcceleratorsW(void);
extern void RegisterClassW(void);
extern void CopyRect(void);
extern void EqualRect(void);
extern void InflateRect(void);
extern void IntersectRect(void);
extern void IsRectEmpty(void);
extern void OffsetRect(void);
extern void PtInRect(void);
extern void SetRect(void);
extern void SetRectEmpty(void);
extern void SubtractRect(void);
extern void UnionRect(void);
extern void ClearCommBreak(void);
extern void ClearCommError(void);
extern void EscapeCommFunction(void);
extern void GetCommMask(void);
extern void GetCommModemStatus(void);
extern void GetCommProperties(void);
extern void GetCommState(void);
extern void GetCommTimeouts(void);
extern void PurgeComm(void);
extern void SetCommBreak(void);
extern void SetCommMask(void);
extern void SetCommState(void);
extern void SetCommTimeouts(void);
extern void SetupComm(void);
extern void TransmitCommChar(void);
extern void WaitCommEvent(void);
extern void EnumPnpIds(void);
extern void EnumDevices(void);
extern void GetDeviceKeys(void);
extern void CryptAcquireContextW(void);
extern void CryptReleaseContext(void);
extern void CryptGenKey(void);
extern void CryptDeriveKey(void);
extern void CryptDestroyKey(void);
extern void CryptSetKeyParam(void);
extern void CryptGetKeyParam(void);
extern void CryptExportKey(void);
extern void CryptImportKey(void);
extern void CryptEncrypt(void);
extern void CryptDecrypt(void);
extern void CryptCreateHash(void);
extern void CryptHashSessionKey(void);
extern void CryptHashData(void);
extern void CryptDestroyHash(void);
extern void CryptSignHashW(void);
extern void CryptVerifySignatureW(void);
extern void CryptGenRandom(void);
extern void CryptGetUserKey(void);
extern void CryptSetProviderW(void);
extern void CryptGetHashParam(void);
extern void CryptSetHashParam(void);
extern void CryptGetProvParam(void);
extern void CryptSetProvParam(void);
extern void CryptSetProviderExW(void);
extern void CryptGetDefaultProviderW(void);
extern void CryptEnumProviderTypesW(void);
extern void CryptEnumProvidersW(void);
extern void CryptContextAddRef(void);
extern void CryptDuplicateKey(void);
extern void CryptDuplicateHash(void);
extern void AttachDebugger(void);
extern void SetInterruptEvent(void);
extern void CreateDirectoryW(void);
extern void RemoveDirectoryW(void);
extern void GetTempPathW(void);
extern void MoveFileW(void);
extern void CopyFileW(void);
extern void DeleteFileW(void);
extern void GetFileAttributesW(void);
extern void FindFirstFileW(void);
extern void CreateFileW(void);
extern void SetFileAttributesW(void);
extern void ReadFile(void);
extern void WriteFile(void);
extern void GetFileSize(void);
extern void SetFilePointer(void);
extern void GetFileInformationByHandle(void);
extern void FlushFileBuffers(void);
extern void GetFileTime(void);
extern void SetFileTime(void);
extern void SetEndOfFile(void);
extern void DeviceIoControl(void);
extern void FindClose(void);
extern void FindNextFileW(void);
extern void CheckPassword(void);
extern void DeleteAndRenameFile(void);
extern void GetDiskFreeSpaceExW(void);
extern void IsValidCodePage(void);
extern void GetACP(void);
extern void GetOEMCP(void);
extern void GetCPInfo(void);
extern void SetACP(void);
extern void SetOEMCP(void);
extern void IsDBCSLeadByte(void);
extern void IsDBCSLeadByteEx(void);
extern void MultiByteToWideChar(void);
extern void WideCharToMultiByte(void);
extern void CompareStringW(void);
extern void LCMapStringW(void);
extern void GetLocaleInfoW(void);
extern void SetLocaleInfoW(void);
extern void GetTimeFormatW(void);
extern void GetDateFormatW(void);
extern void GetNumberFormatW(void);
extern void GetCurrencyFormatW(void);
extern void EnumCalendarInfoW(void);
extern void EnumTimeFormatsW(void);
extern void EnumDateFormatsW(void);
extern void IsValidLocale(void);
extern void ConvertDefaultLocale(void);
extern void GetSystemDefaultLangID(void);
extern void GetUserDefaultLangID(void);
extern void GetSystemDefaultLCID(void);
extern void SetSystemDefaultLCID(void);
extern void GetUserDefaultLCID(void);
extern void GetStringTypeW(void);
extern void GetStringTypeExW(void);
extern void FoldStringW(void);
extern void EnumSystemLocalesW(void);
extern void EnumSystemCodePagesW(void);
extern void CharLowerW(void);
extern void CharLowerBuffW(void);
extern void CharUpperBuffW(void);
extern void CharUpperW(void);
extern void CharPrevW(void);
extern void CharNextW(void);
extern void lstrcmpW(void);
extern void lstrcmpiW(void);
extern void DBCanonicalize(void);
extern void FormatMessageW(void);
extern void RegisterDevice(void);
extern void DeregisterDevice(void);
extern void LoadFSD(void);
extern void SetPassword(void);
extern void GetPasswordActive(void);
extern void SetPasswordActive(void);
extern void FileSystemPowerFunction(void);
extern void CloseAllFileHandles(void);
extern void ReadFileWithSeek(void);
extern void CreateWindowExW(void);
extern void SetWindowPos(void);
extern void GetWindowRect(void);
extern void GetClientRect(void);
extern void InvalidateRect(void);
extern void GetWindow(void);
extern void WindowFromPoint(void);
extern void ChildWindowFromPoint(void);
extern void ClientToScreen(void);
extern void ScreenToClient(void);
extern void SetWindowTextW(void);
extern void GetWindowTextW(void);
extern void SetWindowLongW(void);
extern void GetWindowLongW(void);
extern void BeginPaint(void);
extern void EndPaint(void);
extern void GetDC(void);
extern void ReleaseDC(void);
extern void DefWindowProcW(void);
extern void DestroyWindow(void);
extern void ShowWindow(void);
extern void UpdateWindow(void);
extern void SetParent(void);
extern void GetParent(void);
extern void GetWindowDC(void);
extern void IsWindow(void);
extern void MoveWindow(void);
extern void GetUpdateRgn(void);
extern void GetUpdateRect(void);
extern void BringWindowToTop(void);
extern void GetWindowTextLengthW(void);
extern void IsChild(void);
extern void ValidateRect(void);
extern void SetScrollInfo(void);
extern void SetScrollPos(void);
extern void SetScrollRange(void);
extern void GetScrollInfo(void);
extern void GetClassNameW(void);
extern void MapWindowPoints(void);
extern void CallWindowProcW(void);
extern void FindWindowW(void);
extern void EnableWindow(void);
extern void IsWindowEnabled(void);
extern void ScrollWindowEx(void);
extern void PostThreadMessageW(void);
extern void EnumWindows(void);
extern void GetWindowThreadProcessId(void);
extern void RegisterSIPanel(void);
extern void RectangleAnimation(void);
extern void SHGetSpecialFolderPath(void);
extern void GwesPowerOffSystem(void);
extern void BatteryDrvrGetLevels(void);
extern void BatteryDrvrSupportsChangeNotification(void);
extern void SetAssociatedMenu(void);
extern void GetAssociatedMenu(void);
extern void PegOidGetInfo(void);
extern void PegFindFirstDatabase(void);
extern void PegFindNextDatabase(void);
extern void PegCreateDatabase(void);
extern void PegSetDatabaseInfo(void);
extern void PegOpenDatabase(void);
extern void PegDeleteDatabase(void);
extern void PegSeekDatabase(void);
extern void PegDeleteRecord(void);
extern void PegReadRecordProps(void);
extern void PegWriteRecordProps(void);
extern void CeOidGetInfo(void);
extern void CeFindFirstDatabase(void);
extern void CeFindNextDatabase(void);
extern void CeCreateDatabase(void);
extern void CeSetDatabaseInfo(void);
extern void CeOpenDatabase(void);
extern void CeDeleteDatabase(void);
extern void CeSeekDatabase(void);
extern void CeDeleteRecord(void);
extern void CeReadRecordProps(void);
extern void CeWriteRecordProps(void);
extern void GetStoreInformation(void);
extern void CeRegisterFileSystemNotification(void);
extern void DeregisterAFS(void);
extern void GetSystemMemoryDivision(void);
extern void SetSystemMemoryDivision(void);
extern void RegisterAFSName(void);
extern void DeregisterAFSName(void);
extern void CeChangeDatabaseLCID(void);
extern void DumpFileSystemHeap(void);
extern void RasDial(void);
extern void RasHangup(void);
extern void RasHangUp(void);
extern void RasEnumEntries(void);
extern void RasGetEntryDialParams(void);
extern void RasSetEntryDialParams(void);
extern void RasGetEntryProperties(void);
extern void RasSetEntryProperties(void);
extern void RasValidateEntryName(void);
extern void RasDeleteEntry(void);
extern void RasRenameEntry(void);
extern void RasEnumConnections(void);
extern void RasGetConnectStatus(void);
extern void RasGetEntryDevConfig(void);
extern void RasSetEntryDevConfig(void);
extern void RasIOControl(void);
extern void AudioUpdateFromRegistry(void);
extern void sndPlaySoundW(void);
extern void PlaySoundW(void);
extern void waveOutGetNumDevs(void);
extern void waveOutGetDevCaps(void);
extern void waveOutGetVolume(void);
extern void waveOutSetVolume(void);
extern void waveOutGetErrorText(void);
extern void waveOutClose(void);
extern void waveOutPrepareHeader(void);
extern void waveOutUnprepareHeader(void);
extern void waveOutWrite(void);
extern void waveOutPause(void);
extern void waveOutRestart(void);
extern void waveOutReset(void);
extern void waveOutBreakLoop(void);
extern void waveOutGetPosition(void);
extern void waveOutGetPitch(void);
extern void waveOutSetPitch(void);
extern void waveOutGetPlaybackRate(void);
extern void waveOutSetPlaybackRate(void);
extern void waveOutGetID(void);
extern void waveOutMessage(void);
extern void waveOutOpen(void);
extern void waveInGetNumDevs(void);
extern void waveInGetDevCaps(void);
extern void waveInGetErrorText(void);
extern void waveInClose(void);
extern void waveInPrepareHeader(void);
extern void waveInUnprepareHeader(void);
extern void waveInAddBuffer(void);
extern void waveInStart(void);
extern void waveInStop(void);
extern void waveInReset(void);
extern void waveInGetPosition(void);
extern void waveInGetID(void);
extern void waveInMessage(void);
extern void waveInOpen(void);
extern void WNetAddConnection3W(void);
extern void WNetCancelConnection2W(void);
extern void WNetConnectionDialog1W(void);
extern void WNetDisconnectDialog(void);
extern void WNetDisconnectDialog1W(void);
extern void WNetGetConnectionW(void);
extern void WNetGetUniversalNameW(void);
extern void WNetGetUserW(void);
extern void WNetOpenEnumW(void);
extern void WNetCloseEnum(void);
extern void WNetEnumResourceW(void);
extern void RegCloseKey(void);
extern void RegCreateKeyExW(void);
extern void RegDeleteKeyW(void);
extern void RegDeleteValueW(void);
extern void RegEnumValueW(void);
extern void RegEnumKeyExW(void);
extern void RegOpenKeyExW(void);
extern void RegQueryInfoKeyW(void);
extern void RegQueryValueExW(void);
extern void RegSetValueExW(void);
extern void RegCopyFile(void);
extern void RegRestoreFile(void);
extern void PegSetUserNotification(void);
extern void PegClearUserNotification(void);
extern void PegRunAppAtTime(void);
extern void PegRunAppAtEvent(void);
extern void PegHandleAppNotifications(void);
extern void PegGetUserNotificationPreferences(void);
extern void CeSetUserNotification(void);
extern void CeClearUserNotification(void);
extern void CeRunAppAtTime(void);
extern void CeRunAppAtEvent(void);
extern void CeHandleAppNotifications(void);
extern void CeGetUserNotificationPreferences(void);
extern void CeEventHasOccurred(void);
extern void ShellExecuteEx(void);
extern void SHLoadDIBitmap(void);
extern void GetOpenFileNameW(void);
extern void GetSaveFileNameW(void);
extern void QueryAPISetID(void);
extern void TerminateThread(void);
extern void CreateThread(void);
extern void CreateProcessW(void);
extern void EventModify(void);
extern void CreateEventW(void);
extern void Sleep(void);
extern void WaitForSingleObject(void);
extern void WaitForMultipleObjects(void);
extern void SuspendThread(void);
extern void ResumeThread(void);
extern void SetThreadContext(void);
extern void WaitForDebugEvent(void);
extern void ContinueDebugEvent(void);
extern void DebugActiveProcess(void);
extern void ReadProcessMemory(void);
extern void WriteProcessMemory(void);
extern void FlushInstructionCache(void);
extern void OpenProcess(void);
extern void DumpKCallProfile(void);
extern void THCreateSnapshot(void);
extern void NotifyForceCleanboot(void);
extern void SetThreadPriority(void);
extern void GetThreadPriority(void);
extern void GetLastError(void);
extern void SetLastError(void);
extern void GetExitCodeThread(void);
extern void GetExitCodeProcess(void);
extern void TlsCall(void);
extern void IsBadCodePtr(void);
extern void IsBadReadPtr(void);
extern void IsBadWritePtr(void);
extern void VirtualAlloc(void);
extern void VirtualFree(void);
extern void VirtualProtect(void);
extern void VirtualQuery(void);
extern void LoadLibraryW(void);
extern void FreeLibrary(void);
extern void GetProcAddressW(void);
extern void FindResource(void);
extern void FindResourceW(void);
extern void LoadResource(void);
extern void SizeofResource(void);
extern void GetTickCount(void);
extern void GetProcessVersion(void);
extern void GetModuleFileNameW(void);
extern void QueryPerformanceCounter(void);
extern void QueryPerformanceFrequency(void);
extern void ForcePageout(void);
extern void OutputDebugStringW(void);
extern void GetSystemInfo(void);
extern void RaiseException(void);
extern void TerminateProcess(void);
extern void NKDbgPrintfW(void);
extern void RegisterDbgZones(void);
extern void SetDaylightTime(void);
extern void CreateFileMappingW(void);
extern void MapViewOfFile(void);
extern void UnmapViewOfFile(void);
extern void FlushViewOfFile(void);
extern void CreateFileForMapping(void);
extern void CloseHandle(void);
extern void CreateMutexW(void);
extern void ReleaseMutex(void);
extern void KernelIoControl(void);
extern void AddEventAccess(void);
extern void CreateAPISet(void);
extern void VirtualCopy(void);
extern void U_ropen(void);
extern void U_rread(void);
extern void U_rwrite(void);
extern void U_rlseek(void);
extern void U_rclose(void);
extern void NKvDbgPrintfW(void);
extern void ProfileSyscall(void);
extern void GetRealTime(void);
extern void SetRealTime(void);
extern void ExtractResource(void);
extern void KernExtractIcons(void);
extern void GetRomFileInfo(void);
extern void GetRomFileBytes(void);
extern void CacheSync(void);
extern void AddTrackedItem(void);
extern void DeleteTrackedItem(void);
extern void PrintTrackedItem(void);
extern void GetKPhys(void);
extern void GiveKPhys(void);
extern void SetExceptionHandler(void);
extern void RegisterTrackedItem(void);
extern void FilterTrackedItem(void);
extern void SetKernelAlarm(void);
extern void RefreshKernelAlarm(void);
extern void SetGwesOOMEvent(void);
extern void StringCompress(void);
extern void StringDecompress(void);
extern void BinaryCompress(void);
extern void BinaryDecompress(void);
extern void InputDebugCharW(void);
extern void MapPtrToProcess(void);
extern void MapPtrUnsecure(void);
extern void GetProcFromPtr(void);
extern void IsBadPtr(void);
extern void GetProcAddrBits(void);
extern void GetFSHeapInfo(void);
extern void GetOwnerProcess(void);
extern void GetCallerProcess(void);
extern void GetIdleTime(void);
extern void SetLowestScheduledPriority(void);
extern void IsPrimaryThread(void);
extern void SetProcPermissions(void);
extern void GetCurrentPermissions(void);
extern void IsEncryptionPermitted(void);
extern void SetTimeZoneBias(void);
extern void SetCleanRebootFlag(void);
extern void PowerOffSystem(void);
extern void SetDbgZone(void);
extern void TurnOnProfiling(void);
extern void TurnOffProfiling(void);
extern void CeSetThreadPriority(void);
extern void CeGetThreadPriority(void);
extern void GetProcName(void);
extern void SetHandleOwner(void);
extern void LoadDriver(void);
extern void InterruptInitialize(void);
extern void InterruptDone(void);
extern void InterruptDisable(void);
extern void SetKMode(void);
extern void SetPowerOffHandler(void);
extern void SetGwesPowerHandler(void);
extern void ConnectDebugger(void);
extern void SetHardwareWatch(void);
extern void RegisterAPISet(void);
extern void CreateAPIHandle(void);
extern void VerifyAPIHandle(void);
extern void PPSHRestart(void);
extern void SignalStarted(void);
extern void GetProcessIndexFromID(void);
extern void GetCallerProcessIndex(void);
extern void DebugNotify(void);
extern void AFS_Unmount(void);
extern void AFS_CreateDirectoryW(void);
extern void AFS_RemoveDirectoryW(void);
extern void AFS_GetFileAttributesW(void);
extern void AFS_SetFileAttributesW(void);
extern void AFS_CreateFileW(void);
extern void AFS_DeleteFileW(void);
extern void AFS_MoveFileW(void);
extern void AFS_FindFirstFileW(void);
extern void AFS_RegisterFileSystemFunction(void);
extern void AFS_PrestoChangoFileName(void);
extern void AFS_CloseAllFileHandles(void);
extern void AFS_GetDiskFreeSpace(void);
extern void AFS_NotifyMountedFS(void);
extern void CreateCaret(void);
extern void DestroyCaret(void);
extern void HideCaret(void);
extern void ShowCaret(void);
extern void SetCaretPos(void);
extern void GetCaretPos(void);
extern void SetCaretBlinkTime(void);
extern void GetCaretBlinkTime(void);
extern void DisableCaretSystemWide(void);
extern void EnableCaretSystemWide(void);
extern void OpenClipboard(void);
extern void CloseClipboard(void);
extern void GetClipboardOwner(void);
extern void SetClipboardData(void);
extern void GetClipboardData(void);
extern void RegisterClipboardFormatW(void);
extern void CountClipboardFormats(void);
extern void EnumClipboardFormats(void);
extern void GetClipboardFormatNameW(void);
extern void EmptyClipboard(void);
extern void IsClipboardFormatAvailable(void);
extern void GetPriorityClipboardFormat(void);
extern void GetOpenClipboardWindow(void);
extern void GetClipboardDataAlloc(void);
extern void SetCursor(void);
extern void LoadCursorW(void);
extern void CheckRadioButton(void);
extern void SendDlgItemMessageW(void);
extern void SetDlgItemTextW(void);
extern void GetDlgItemTextW(void);
extern void CreateDialogIndirectParamW(void);
extern void DefDlgProcW(void);
extern void DialogBoxIndirectParamW(void);
extern void EndDialog(void);
extern void GetDlgItem(void);
extern void GetDlgCtrlID(void);
extern void GetDialogBaseUnits(void);
extern void GetDlgItemInt(void);
extern void GetNextDlgTabItem(void);
extern void GetNextDlgGroupItem(void);
extern void IsDialogMessageW(void);
extern void MapDialogRect(void);
extern void SetDlgItemInt(void);
extern void GetForegroundWindow(void);
extern void SetForegroundWindow(void);
extern void SetActiveWindow(void);
extern void SetFocus(void);
extern void GetFocus(void);
extern void GetActiveWindow(void);
extern void GetCapture(void);
extern void SetCapture(void);
extern void ReleaseCapture(void);
extern void SetKeyboardTarget(void);
extern void GetKeyboardTarget(void);
extern void ShellModalEnd(void);
extern void BatteryGetLifeTimeInfo(void);
extern void BatteryNotifyOfTimeChange(void);
extern void GetSystemPowerStatusEx(void);
extern void NotifyWinUserSystem(void);
extern void GetVersionExW(void);
extern void WriteFileWithSeek(void);
extern void SystemMemoryLow(void);
extern void CreateIconIndirect(void);
extern void DestroyIcon(void);
extern void DrawIconEx(void);
extern void ExtractIconExW(void);
extern void LoadIconW(void);
extern void LoadImageW(void);
extern void ClipCursor(void);
extern void GetClipCursor(void);
extern void GetCursor(void);
extern void GetCursorPos(void);
extern void SetCursorPos(void);
extern void ShowCursor(void);
extern void ImageList_Add(void);
extern void ImageList_AddMasked(void);
extern void ImageList_BeginDrag(void);
extern void ImageList_CopyDitherImage(void);
extern void ImageList_Create(void);
extern void ImageList_Destroy(void);
extern void ImageList_DragEnter(void);
extern void ImageList_DragLeave(void);
extern void ImageList_DragMove(void);
extern void ImageList_DragShowNolock(void);
extern void ImageList_Draw(void);
extern void ImageList_DrawEx(void);
extern void ImageList_DrawIndirect(void);
extern void ImageList_EndDrag(void);
extern void ImageList_GetBkColor(void);
extern void ImageList_GetDragImage(void);
extern void ImageList_GetIcon(void);
extern void ImageList_GetIconSize(void);
extern void ImageList_GetImageCount(void);
extern void ImageList_GetImageInfo(void);
extern void ImageList_LoadImage(void);
extern void ImageList_Merge(void);
extern void ImageList_Remove(void);
extern void ImageList_Replace(void);
extern void ImageList_ReplaceIcon(void);
extern void ImageList_SetBkColor(void);
extern void ImageList_SetDragCursorImage(void);
extern void ImageList_SetIconSize(void);
extern void ImageList_SetOverlayImage(void);
extern void ImageList_Copy(void);
extern void ImageList_Duplicate(void);
extern void ImageList_SetImageCount(void);
extern void ImmAssociateContext(void);
extern void ImmConfigureIMEW(void);
extern void ImmCreateIMCC(void);
extern void ImmDestroyIMCC(void);
extern void ImmEnumRegisterWordW(void);
extern void ImmEscapeW(void);
extern void ImmGenerateMessage(void);
extern void ImmGetCandidateListW(void);
extern void ImmGetCandidateListCountW(void);
extern void ImmGetCandidateWindow(void);
extern void ImmGetCompositionFontW(void);
extern void ImmGetCompositionStringW(void);
extern void ImmGetCompositionWindow(void);
extern void ImmGetContext(void);
extern void ImmGetConversionListW(void);
extern void ImmGetConversionStatus(void);
extern void ImmGetDefaultIMEWnd(void);
extern void ImmGetDescriptionW(void);
extern void ImmGetGuideLineW(void);
extern void ImmGetIMCCLockCount(void);
extern void ImmGetIMCCSize(void);
extern void ImmGetIMCLockCount(void);
extern void ImmGetOpenStatus(void);
extern void ImmGetProperty(void);
extern void ImmGetRegisterWordStyleW(void);
extern void ImmIsUIMessageW(void);
extern void ImmLockIMC(void);
extern void ImmLockIMCC(void);
extern void ImmNotifyIME(void);
extern void ImmReSizeIMCC(void);
extern void ImmRegisterWordW(void);
extern void ImmReleaseContext(void);
extern void ImmSIPanelState(void);
extern void ImmSetActiveContext(void);
extern void ImmSetCandidateWindow(void);
extern void ImmSetCompositionFontW(void);
extern void ImmSetCompositionStringW(void);
extern void ImmSetCompositionWindow(void);
extern void ImmSetConversionStatus(void);
extern void ImmSetHotKey(void);
extern void ImmGetHotKey(void);
extern void ImmSetOpenStatus(void);
extern void ImmSetStatusWindowPos(void);
extern void ImmSimulateHotKey(void);
extern void ImmUnlockIMC(void);
extern void ImmUnlockIMCC(void);
extern void ImmUnregisterWordW(void);
extern void GetMouseMovePoints(void);
extern void QASetWindowsJournalHook(void);
extern void QAUnhookWindowsJournalHook(void);
extern void SendInput(void);
extern void mouse_event(void);
extern void EnableHardwareKeyboard(void);
extern void GetAsyncKeyState(void);
extern void GetKeyboardStatus(void);
extern void KeybdGetDeviceInfo(void);
extern void KeybdInitStates(void);
extern void KeybdVKeyToUnicode(void);
extern void MapVirtualKeyW(void);
extern void PostKeybdMessage(void);
extern void keybd_event(void);
extern void GetAsyncShiftFlags(void);
extern void RegisterHotKey(void);
extern void UnregisterHotKey(void);
extern void SystemIdleTimerReset(void);
extern void TranslateAcceleratorW(void);
extern void NLedGetDeviceInfo(void);
extern void NLedSetDevice(void);
extern void InsertMenuW(void);
extern void AppendMenuW(void);
extern void RemoveMenu(void);
extern void DestroyMenu(void);
extern void TrackPopupMenuEx(void);
extern void LoadMenuW(void);
extern void EnableMenuItem(void);
extern void CheckMenuItem(void);
extern void CheckMenuRadioItem(void);
extern void DeleteMenu(void);
extern void CreateMenu(void);
extern void CreatePopupMenu(void);
extern void SetMenuItemInfoW(void);
extern void GetMenuItemInfoW(void);
extern void GetSubMenu(void);
extern void DrawMenuBar(void);
extern void MessageBeep(void);
extern void MessageBoxW(void);
extern void DispatchMessageW(void);
extern void GetKeyState(void);
extern void GetMessageW(void);
extern void GetMessagePos(void);
extern void GetMessageWNoWait(void);
extern void PeekMessageW(void);
extern void PostMessageW(void);
extern void PostQuitMessage(void);
extern void SendMessageW(void);
extern void SendNotifyMessageW(void);
extern void TranslateMessage(void);
extern void MsgWaitForMultipleObjectsEx(void);
extern void GetMessageSource(void);
extern void LoadBitmapW(void);
extern void LoadStringW(void);
extern void SetTimer(void);
extern void KillTimer(void);
extern void TouchCalibrate(void);
extern void GetClassInfoW(void);
extern void GetClassLongW(void);
extern void SetClassLongW(void);
extern void GetClassLong(void);
extern void SetClassLong(void);
extern void UnregisterClassW(void);
extern void GetSystemMetrics(void);
extern void IsWindowVisible(void);
extern void AdjustWindowRectEx(void);
extern void GetDoubleClickTime(void);
extern void GetSysColor(void);
extern void SetSysColors(void);
extern void RegisterWindowMessageW(void);
extern void RegisterTaskBar(void);
extern void AddFontResourceW(void);
extern void CeRemoveFontResource(void);
extern void CreateFontIndirectW(void);
extern void ExtTextOutW(void);
extern void GetTextExtentExPointW(void);
extern void GetTextMetricsW(void);
extern void PegRemoveFontResource(void);
extern void RemoveFontResourceW(void);
extern void CreateBitmap(void);
extern void CreateCompatibleBitmap(void);
extern void BitBlt(void);
extern void MaskBlt(void);
extern void StretchBlt(void);
extern void TransparentImage(void);
extern void RestoreDC(void);
extern void SaveDC(void);
extern void CreateDCW(void);
extern void CreateCompatibleDC(void);
extern void DeleteDC(void);
extern void DeleteObject(void);
extern void GetBkColor(void);
extern void GetBkMode(void);
extern void GetCurrentObject(void);
extern void GetDeviceCaps(void);
extern void GetObjectType(void);
extern void GetObjectW(void);
extern void GetStockObject(void);
extern void GetTextColor(void);
extern void SelectObject(void);
extern void SetBkColor(void);
extern void SetBkMode(void);
extern void SetTextColor(void);
extern void CreatePatternBrush(void);
extern void CreatePen(void);
extern void FillRgn(void);
extern void SetROP2(void);
extern void CreateDIBPatternBrushPt(void);
extern void CreatePenIndirect(void);
extern void CreateSolidBrush(void);
extern void DrawEdge(void);
extern void DrawFocusRect(void);
extern void Ellipse(void);
extern void FillRect(void);
extern void GetPixel(void);
extern void GetSysColorBrush(void);
extern void PatBlt(void);
extern void Polygon(void);
extern void Polyline(void);
extern void Rectangle(void);
extern void RoundRect(void);
extern void SetBrushOrgEx(void);
extern void SetPixel(void);
extern void DrawTextW(void);
extern void CreatePalette(void);
extern void GetNearestPaletteIndex(void);
extern void GetPaletteEntries(void);
extern void GetSystemPaletteEntries(void);
extern void SetPaletteEntries(void);
extern void GetNearestColor(void);
extern void RealizePalette(void);
extern void SelectPalette(void);
extern void EnumFontFamiliesW(void);
extern void EnumFontsW(void);
extern void GetTextFaceW(void);
extern void CombineRgn(void);
extern void CreateRectRgnIndirect(void);
extern void ExcludeClipRect(void);
extern void GetClipBox(void);
extern void GetClipRgn(void);
extern void GetRegionData(void);
extern void GetRgnBox(void);
extern void IntersectClipRect(void);
extern void OffsetRgn(void);
extern void PtInRegion(void);
extern void RectInRegion(void);
extern void SelectClipRgn(void);
extern void CreateRectRgn(void);
extern void RectVisible(void);
extern void SetRectRgn(void);
extern void SetViewportOrgEx(void);
extern void ScrollDC(void);
extern void EnableEUDC(void);
extern void DrawFrameControl(void);
extern void GetThreadContext(void);
extern void GetStdioPathW(void);
extern void SetStdioPathW(void);
extern void RegFlushKey(void);
extern void ReadRegistryFromOEM(void);
extern void WriteRegistryToOEM(void);
extern void WriteDebugLED(void);
extern void UnregisterFunc1(void);
extern void BeginDeferWindowPos(void);
extern void DeferWindowPos(void);
extern void EndDeferWindowPos(void);
extern void GetKeyboardLayoutNameW(void);
extern void LockPages(void);
extern void UnlockPages(void);
extern void CeMountDBVol(void);
extern void CeEnumDBVolumes(void);
extern void TranslateCharsetInfo(void);
extern void CreateFileForMappingW(void);
extern void SipStatus(void);
extern void SipRegisterNotification(void);
extern void SipShowIM(void);
extern void SipGetInfo(void);
extern void SipSetInfo(void);
extern void SipEnumIM(void);
extern void SipGetCurrentIM(void);
extern void SipSetCurrentIM(void);
extern void GetModuleHandleW(void);
extern void ActivateDevice(void);
extern void DeactivateDevice(void);
extern void ExtEscape(void);
extern void GetDCEx(void);
extern void GetThreadTimes(void);
extern void CeFindNextDatabaseEx(void);
extern void CeCreateDatabaseEx(void);
extern void CeSetDatabaseInfoEx(void);
extern void CeOpenDatabaseEx(void);
extern void CeDeleteDatabaseEx(void);
extern void CeReadRecordPropsEx(void);
extern void CeOidGetInfoEx(void);
extern void CeFindFirstDatabaseEx(void);
extern void CeUnmountDBVol(void);
extern void ImmCreateContext(void);
extern void ImmDestroyContext(void);
extern void ImmGetStatusWindowPos(void);
extern void SetWindowsHookExW(void);
extern void UnhookWindowsHookEx(void);
extern void CallNextHookEx(void);
extern void ImmAssociateContextEx(void);
extern void ImmDisableIME(void);
extern void ImmGetIMEFileNameW(void);
extern void ImmIsIME(void);
extern void ImmGetVirtualKey(void);
extern void ImmGetImeMenuItemsW(void);
extern void IsProcessDying(void);
extern void SipSetDefaultRect(void);
extern void FlushViewOfFileMaybe(void);
extern void FreeLibraryAndExitThread(void);
extern void CeFlushDBVol(void);
extern void DefaultImcGet(void);
extern void DefaultImeWndGet(void);
extern void ImmProcessKey(void);
extern void ImmTranslateMessage(void);
extern void ImmSetImeWndIMC(void);
extern void ImmGetUIClassName(void);
extern void GetForegroundInfo(void);
extern void GetForegroundKeyboardTarget(void);
extern void CeFreeNotification(void);
extern void GetKeyboardLayout(void);
extern void GetProcAddressA(void);
extern void GetCommandLineW(void);
extern void DisableThreadLibraryCalls(void);
extern void TryEnterCriticalSection(void);
extern void GetTempFileNameW(void);
extern void FindFirstFileExW(void);
extern void GetDeviceByIndex(void);
extern void GetFileAttributesExW(void);
extern void CreateSemaphoreW(void);
extern void ReleaseSemaphore(void);
extern void ComThreadBaseFunc(void);
extern void LoadLibraryExW(void);
extern void ImmRequestMessageW(void);
extern void CeSetThreadQuantum(void);
extern void CeGetThreadQuantum(void);
extern void CeSetUserNotificationEx(void);
extern void CeGetUserNotificationHandles(void);
extern void CeGetUserNotification(void);
extern void CeGetCurrentTrust(void);
extern void GetSystemPowerStatusEx2(void);
extern void CeGetCallerTrust(void);
extern void OpenDeviceKey(void);
extern void GetDesktopWindow(void);
extern void SetWindowRgn(void);
extern void GetWindowRgn(void);
extern void InSendMessage(void);
extern void GetQueueStatus(void);
extern void LoadFSDEx(void);
extern void RasEnumDevicesW(void);
extern void CeResyncFilesys(void);
extern void CeGetRandomSeed(void);
extern void CeMapArgumentArray(void);
extern void UpdateNLSInfo(void);
extern void PerformCallBack4(void);
extern void CeLogData(void);
extern void CeLogSetZones(void);
extern void AllKeys(void);
extern void GetWindowTextWDirect(void);
extern void CeSetExtendedPdata(void);
extern void RasGetProjectionInfoW(void);
extern void VerQueryValueW(void);
extern void GetFileVersionInfoW(void);
extern void GetFileVersionInfoSizeW(void);
extern void SetOOMEvent(void);
extern void RasGetLinkStatistics(void);
extern void RasGetDispPhoneNumW(void);
extern void RasDevConfigDialogEditW(void);
extern void CreateLocaleView(void);
extern void CeLogReSync(void);

void* g_CerfTargets[963] = {
    (void*)InitializeCriticalSection,
    (void*)DeleteCriticalSection,
    (void*)EnterCriticalSection,
    (void*)LeaveCriticalSection,
    (void*)ExitThread,
    (void*)PSLNotify,
    (void*)InitLocale,
    (void*)InterlockedTestExchange,
    (void*)InterlockedIncrement,
    (void*)InterlockedDecrement,
    (void*)InterlockedExchange,
    (void*)ThreadBaseFunc,
    (void*)MainThreadBaseFunc,
    (void*)TlsGetValue,
    (void*)TlsSetValue,
    (void*)GetVersionEx,
    (void*)CompareFileTime,
    (void*)SystemTimeToFileTime,
    (void*)FileTimeToSystemTime,
    (void*)FileTimeToLocalFileTime,
    (void*)LocalFileTimeToFileTime,
    (void*)GetLocalTime,
    (void*)SetLocalTime,
    (void*)GetSystemTime,
    (void*)SetSystemTime,
    (void*)GetTimeZoneInformation,
    (void*)SetTimeZoneInformation,
    (void*)GetCurrentFT,
    (void*)IsAPIReady,
    (void*)GetAPIAddress,
    (void*)LocalAlloc,
    (void*)LocalReAlloc,
    (void*)LocalSize,
    (void*)LocalFree,
    (void*)RemoteLocalAlloc,
    (void*)RemoteLocalReAlloc,
    (void*)RemoteLocalSize,
    (void*)RemoteLocalFree,
    (void*)LocalAllocInProcess,
    (void*)LocalFreeInProcess,
    (void*)LocalSizeInProcess,
    (void*)HeapCreate,
    (void*)HeapDestroy,
    (void*)HeapAlloc,
    (void*)HeapReAlloc,
    (void*)HeapSize,
    (void*)HeapFree,
    (void*)GetProcessHeap,
    (void*)HeapValidate,
    (void*)GetHeapSnapshot,
    (void*)CeModuleJit,
    (void*)CompactAllHeaps,
    (void*)wsprintfW,
    (void*)wvsprintfW,
    (void*)Random,
    (void*)ProfileStart,
    (void*)ProfileStop,
    (void*)GlobalMemoryStatus,
    (void*)SystemParametersInfoW,
    (void*)CreateDIBSection,
    (void*)EqualRgn,
    (void*)CreateAcceleratorTableW,
    (void*)DestroyAcceleratorTable,
    (void*)LoadAcceleratorsW,
    (void*)RegisterClassW,
    (void*)CopyRect,
    (void*)EqualRect,
    (void*)InflateRect,
    (void*)IntersectRect,
    (void*)IsRectEmpty,
    (void*)OffsetRect,
    (void*)PtInRect,
    (void*)SetRect,
    (void*)SetRectEmpty,
    (void*)SubtractRect,
    (void*)UnionRect,
    (void*)ClearCommBreak,
    (void*)ClearCommError,
    (void*)EscapeCommFunction,
    (void*)GetCommMask,
    (void*)GetCommModemStatus,
    (void*)GetCommProperties,
    (void*)GetCommState,
    (void*)GetCommTimeouts,
    (void*)PurgeComm,
    (void*)SetCommBreak,
    (void*)SetCommMask,
    (void*)SetCommState,
    (void*)SetCommTimeouts,
    (void*)SetupComm,
    (void*)TransmitCommChar,
    (void*)WaitCommEvent,
    (void*)EnumPnpIds,
    (void*)EnumDevices,
    (void*)GetDeviceKeys,
    (void*)CryptAcquireContextW,
    (void*)CryptReleaseContext,
    (void*)CryptGenKey,
    (void*)CryptDeriveKey,
    (void*)CryptDestroyKey,
    (void*)CryptSetKeyParam,
    (void*)CryptGetKeyParam,
    (void*)CryptExportKey,
    (void*)CryptImportKey,
    (void*)CryptEncrypt,
    (void*)CryptDecrypt,
    (void*)CryptCreateHash,
    (void*)CryptHashSessionKey,
    (void*)CryptHashData,
    (void*)CryptDestroyHash,
    (void*)CryptSignHashW,
    (void*)CryptVerifySignatureW,
    (void*)CryptGenRandom,
    (void*)CryptGetUserKey,
    (void*)CryptSetProviderW,
    (void*)CryptGetHashParam,
    (void*)CryptSetHashParam,
    (void*)CryptGetProvParam,
    (void*)CryptSetProvParam,
    (void*)CryptSetProviderExW,
    (void*)CryptGetDefaultProviderW,
    (void*)CryptEnumProviderTypesW,
    (void*)CryptEnumProvidersW,
    (void*)CryptContextAddRef,
    (void*)CryptDuplicateKey,
    (void*)CryptDuplicateHash,
    (void*)AttachDebugger,
    (void*)SetInterruptEvent,
    (void*)0,
    (void*)CreateDirectoryW,
    (void*)RemoveDirectoryW,
    (void*)GetTempPathW,
    (void*)MoveFileW,
    (void*)CopyFileW,
    (void*)DeleteFileW,
    (void*)GetFileAttributesW,
    (void*)FindFirstFileW,
    (void*)CreateFileW,
    (void*)SetFileAttributesW,
    (void*)ReadFile,
    (void*)WriteFile,
    (void*)GetFileSize,
    (void*)SetFilePointer,
    (void*)GetFileInformationByHandle,
    (void*)FlushFileBuffers,
    (void*)GetFileTime,
    (void*)SetFileTime,
    (void*)SetEndOfFile,
    (void*)DeviceIoControl,
    (void*)FindClose,
    (void*)FindNextFileW,
    (void*)CheckPassword,
    (void*)DeleteAndRenameFile,
    (void*)GetDiskFreeSpaceExW,
    (void*)IsValidCodePage,
    (void*)GetACP,
    (void*)GetOEMCP,
    (void*)GetCPInfo,
    (void*)SetACP,
    (void*)SetOEMCP,
    (void*)IsDBCSLeadByte,
    (void*)IsDBCSLeadByteEx,
    (void*)MultiByteToWideChar,
    (void*)WideCharToMultiByte,
    (void*)CompareStringW,
    (void*)LCMapStringW,
    (void*)GetLocaleInfoW,
    (void*)SetLocaleInfoW,
    (void*)GetTimeFormatW,
    (void*)GetDateFormatW,
    (void*)GetNumberFormatW,
    (void*)GetCurrencyFormatW,
    (void*)EnumCalendarInfoW,
    (void*)EnumTimeFormatsW,
    (void*)EnumDateFormatsW,
    (void*)IsValidLocale,
    (void*)ConvertDefaultLocale,
    (void*)GetSystemDefaultLangID,
    (void*)GetUserDefaultLangID,
    (void*)GetSystemDefaultLCID,
    (void*)SetSystemDefaultLCID,
    (void*)GetUserDefaultLCID,
    (void*)GetStringTypeW,
    (void*)GetStringTypeExW,
    (void*)FoldStringW,
    (void*)EnumSystemLocalesW,
    (void*)EnumSystemCodePagesW,
    (void*)CharLowerW,
    (void*)CharLowerBuffW,
    (void*)CharUpperBuffW,
    (void*)CharUpperW,
    (void*)CharPrevW,
    (void*)CharNextW,
    (void*)lstrcmpW,
    (void*)lstrcmpiW,
    (void*)DBCanonicalize,
    (void*)FormatMessageW,
    (void*)RegisterDevice,
    (void*)DeregisterDevice,
    (void*)LoadFSD,
    (void*)SetPassword,
    (void*)GetPasswordActive,
    (void*)SetPasswordActive,
    (void*)FileSystemPowerFunction,
    (void*)CloseAllFileHandles,
    (void*)ReadFileWithSeek,
    (void*)CreateWindowExW,
    (void*)SetWindowPos,
    (void*)GetWindowRect,
    (void*)GetClientRect,
    (void*)InvalidateRect,
    (void*)GetWindow,
    (void*)WindowFromPoint,
    (void*)ChildWindowFromPoint,
    (void*)ClientToScreen,
    (void*)ScreenToClient,
    (void*)SetWindowTextW,
    (void*)GetWindowTextW,
    (void*)SetWindowLongW,
    (void*)GetWindowLongW,
    (void*)BeginPaint,
    (void*)EndPaint,
    (void*)GetDC,
    (void*)ReleaseDC,
    (void*)DefWindowProcW,
    (void*)DestroyWindow,
    (void*)ShowWindow,
    (void*)UpdateWindow,
    (void*)SetParent,
    (void*)GetParent,
    (void*)GetWindowDC,
    (void*)IsWindow,
    (void*)MoveWindow,
    (void*)GetUpdateRgn,
    (void*)GetUpdateRect,
    (void*)BringWindowToTop,
    (void*)GetWindowTextLengthW,
    (void*)IsChild,
    (void*)ValidateRect,
    (void*)SetScrollInfo,
    (void*)SetScrollPos,
    (void*)SetScrollRange,
    (void*)GetScrollInfo,
    (void*)GetClassNameW,
    (void*)MapWindowPoints,
    (void*)CallWindowProcW,
    (void*)FindWindowW,
    (void*)EnableWindow,
    (void*)IsWindowEnabled,
    (void*)ScrollWindowEx,
    (void*)PostThreadMessageW,
    (void*)EnumWindows,
    (void*)GetWindowThreadProcessId,
    (void*)RegisterSIPanel,
    (void*)RectangleAnimation,
    (void*)SHGetSpecialFolderPath,
    (void*)GwesPowerOffSystem,
    (void*)BatteryDrvrGetLevels,
    (void*)BatteryDrvrSupportsChangeNotification,
    (void*)SetAssociatedMenu,
    (void*)GetAssociatedMenu,
    (void*)PegOidGetInfo,
    (void*)PegFindFirstDatabase,
    (void*)PegFindNextDatabase,
    (void*)PegCreateDatabase,
    (void*)PegSetDatabaseInfo,
    (void*)PegOpenDatabase,
    (void*)PegDeleteDatabase,
    (void*)PegSeekDatabase,
    (void*)PegDeleteRecord,
    (void*)PegReadRecordProps,
    (void*)PegWriteRecordProps,
    (void*)CeOidGetInfo,
    (void*)CeFindFirstDatabase,
    (void*)CeFindNextDatabase,
    (void*)CeCreateDatabase,
    (void*)CeSetDatabaseInfo,
    (void*)CeOpenDatabase,
    (void*)CeDeleteDatabase,
    (void*)CeSeekDatabase,
    (void*)CeDeleteRecord,
    (void*)CeReadRecordProps,
    (void*)CeWriteRecordProps,
    (void*)GetStoreInformation,
    (void*)CeRegisterFileSystemNotification,
    (void*)DeregisterAFS,
    (void*)GetSystemMemoryDivision,
    (void*)SetSystemMemoryDivision,
    (void*)RegisterAFSName,
    (void*)DeregisterAFSName,
    (void*)CeChangeDatabaseLCID,
    (void*)DumpFileSystemHeap,
    (void*)RasDial,
    (void*)RasHangup,
    (void*)RasHangUp,
    (void*)RasEnumEntries,
    (void*)RasGetEntryDialParams,
    (void*)RasSetEntryDialParams,
    (void*)RasGetEntryProperties,
    (void*)RasSetEntryProperties,
    (void*)RasValidateEntryName,
    (void*)RasDeleteEntry,
    (void*)RasRenameEntry,
    (void*)RasEnumConnections,
    (void*)RasGetConnectStatus,
    (void*)RasGetEntryDevConfig,
    (void*)RasSetEntryDevConfig,
    (void*)RasIOControl,
    (void*)AudioUpdateFromRegistry,
    (void*)sndPlaySoundW,
    (void*)PlaySoundW,
    (void*)waveOutGetNumDevs,
    (void*)waveOutGetDevCaps,
    (void*)waveOutGetVolume,
    (void*)waveOutSetVolume,
    (void*)waveOutGetErrorText,
    (void*)waveOutClose,
    (void*)waveOutPrepareHeader,
    (void*)waveOutUnprepareHeader,
    (void*)waveOutWrite,
    (void*)waveOutPause,
    (void*)waveOutRestart,
    (void*)waveOutReset,
    (void*)waveOutBreakLoop,
    (void*)waveOutGetPosition,
    (void*)waveOutGetPitch,
    (void*)waveOutSetPitch,
    (void*)waveOutGetPlaybackRate,
    (void*)waveOutSetPlaybackRate,
    (void*)waveOutGetID,
    (void*)waveOutMessage,
    (void*)waveOutOpen,
    (void*)waveInGetNumDevs,
    (void*)waveInGetDevCaps,
    (void*)waveInGetErrorText,
    (void*)waveInClose,
    (void*)waveInPrepareHeader,
    (void*)waveInUnprepareHeader,
    (void*)waveInAddBuffer,
    (void*)waveInStart,
    (void*)waveInStop,
    (void*)waveInReset,
    (void*)waveInGetPosition,
    (void*)waveInGetID,
    (void*)waveInMessage,
    (void*)waveInOpen,
    (void*)WNetAddConnection3W,
    (void*)WNetCancelConnection2W,
    (void*)WNetConnectionDialog1W,
    (void*)WNetDisconnectDialog,
    (void*)WNetDisconnectDialog1W,
    (void*)WNetGetConnectionW,
    (void*)WNetGetUniversalNameW,
    (void*)WNetGetUserW,
    (void*)WNetOpenEnumW,
    (void*)WNetCloseEnum,
    (void*)WNetEnumResourceW,
    (void*)RegCloseKey,
    (void*)RegCreateKeyExW,
    (void*)RegDeleteKeyW,
    (void*)RegDeleteValueW,
    (void*)RegEnumValueW,
    (void*)RegEnumKeyExW,
    (void*)RegOpenKeyExW,
    (void*)RegQueryInfoKeyW,
    (void*)RegQueryValueExW,
    (void*)RegSetValueExW,
    (void*)RegCopyFile,
    (void*)RegRestoreFile,
    (void*)PegSetUserNotification,
    (void*)PegClearUserNotification,
    (void*)PegRunAppAtTime,
    (void*)PegRunAppAtEvent,
    (void*)PegHandleAppNotifications,
    (void*)PegGetUserNotificationPreferences,
    (void*)CeSetUserNotification,
    (void*)CeClearUserNotification,
    (void*)CeRunAppAtTime,
    (void*)CeRunAppAtEvent,
    (void*)CeHandleAppNotifications,
    (void*)CeGetUserNotificationPreferences,
    (void*)CeEventHasOccurred,
    (void*)ShellExecuteEx,
    (void*)SHLoadDIBitmap,
    (void*)GetOpenFileNameW,
    (void*)GetSaveFileNameW,
    (void*)QueryAPISetID,
    (void*)TerminateThread,
    (void*)CreateThread,
    (void*)CreateProcessW,
    (void*)EventModify,
    (void*)CreateEventW,
    (void*)Sleep,
    (void*)WaitForSingleObject,
    (void*)WaitForMultipleObjects,
    (void*)SuspendThread,
    (void*)ResumeThread,
    (void*)SetThreadContext,
    (void*)WaitForDebugEvent,
    (void*)ContinueDebugEvent,
    (void*)DebugActiveProcess,
    (void*)ReadProcessMemory,
    (void*)WriteProcessMemory,
    (void*)FlushInstructionCache,
    (void*)OpenProcess,
    (void*)DumpKCallProfile,
    (void*)THCreateSnapshot,
    (void*)NotifyForceCleanboot,
    (void*)SetThreadPriority,
    (void*)GetThreadPriority,
    (void*)GetLastError,
    (void*)SetLastError,
    (void*)GetExitCodeThread,
    (void*)GetExitCodeProcess,
    (void*)TlsCall,
    (void*)IsBadCodePtr,
    (void*)IsBadReadPtr,
    (void*)IsBadWritePtr,
    (void*)VirtualAlloc,
    (void*)VirtualFree,
    (void*)VirtualProtect,
    (void*)VirtualQuery,
    (void*)LoadLibraryW,
    (void*)FreeLibrary,
    (void*)GetProcAddressW,
    (void*)FindResource,
    (void*)FindResourceW,
    (void*)LoadResource,
    (void*)SizeofResource,
    (void*)GetTickCount,
    (void*)GetProcessVersion,
    (void*)GetModuleFileNameW,
    (void*)QueryPerformanceCounter,
    (void*)QueryPerformanceFrequency,
    (void*)ForcePageout,
    (void*)OutputDebugStringW,
    (void*)GetSystemInfo,
    (void*)RaiseException,
    (void*)TerminateProcess,
    (void*)NKDbgPrintfW,
    (void*)RegisterDbgZones,
    (void*)SetDaylightTime,
    (void*)CreateFileMappingW,
    (void*)MapViewOfFile,
    (void*)UnmapViewOfFile,
    (void*)FlushViewOfFile,
    (void*)CreateFileForMapping,
    (void*)CloseHandle,
    (void*)CreateMutexW,
    (void*)ReleaseMutex,
    (void*)KernelIoControl,
    (void*)AddEventAccess,
    (void*)CreateAPISet,
    (void*)VirtualCopy,
    (void*)U_ropen,
    (void*)U_rread,
    (void*)U_rwrite,
    (void*)U_rlseek,
    (void*)U_rclose,
    (void*)NKvDbgPrintfW,
    (void*)ProfileSyscall,
    (void*)GetRealTime,
    (void*)SetRealTime,
    (void*)ExtractResource,
    (void*)KernExtractIcons,
    (void*)GetRomFileInfo,
    (void*)GetRomFileBytes,
    (void*)CacheSync,
    (void*)AddTrackedItem,
    (void*)DeleteTrackedItem,
    (void*)PrintTrackedItem,
    (void*)GetKPhys,
    (void*)GiveKPhys,
    (void*)SetExceptionHandler,
    (void*)RegisterTrackedItem,
    (void*)FilterTrackedItem,
    (void*)SetKernelAlarm,
    (void*)RefreshKernelAlarm,
    (void*)SetGwesOOMEvent,
    (void*)StringCompress,
    (void*)StringDecompress,
    (void*)BinaryCompress,
    (void*)BinaryDecompress,
    (void*)InputDebugCharW,
    (void*)MapPtrToProcess,
    (void*)MapPtrUnsecure,
    (void*)GetProcFromPtr,
    (void*)IsBadPtr,
    (void*)GetProcAddrBits,
    (void*)GetFSHeapInfo,
    (void*)GetOwnerProcess,
    (void*)GetCallerProcess,
    (void*)GetIdleTime,
    (void*)SetLowestScheduledPriority,
    (void*)IsPrimaryThread,
    (void*)SetProcPermissions,
    (void*)GetCurrentPermissions,
    (void*)IsEncryptionPermitted,
    (void*)SetTimeZoneBias,
    (void*)SetCleanRebootFlag,
    (void*)PowerOffSystem,
    (void*)SetDbgZone,
    (void*)TurnOnProfiling,
    (void*)TurnOffProfiling,
    (void*)CeSetThreadPriority,
    (void*)CeGetThreadPriority,
    (void*)GetProcName,
    (void*)SetHandleOwner,
    (void*)LoadDriver,
    (void*)InterruptInitialize,
    (void*)InterruptDone,
    (void*)InterruptDisable,
    (void*)SetKMode,
    (void*)SetPowerOffHandler,
    (void*)SetGwesPowerHandler,
    (void*)ConnectDebugger,
    (void*)SetHardwareWatch,
    (void*)RegisterAPISet,
    (void*)CreateAPIHandle,
    (void*)VerifyAPIHandle,
    (void*)PPSHRestart,
    (void*)SignalStarted,
    (void*)GetProcessIndexFromID,
    (void*)GetCallerProcessIndex,
    (void*)DebugNotify,
    (void*)AFS_Unmount,
    (void*)AFS_CreateDirectoryW,
    (void*)AFS_RemoveDirectoryW,
    (void*)AFS_GetFileAttributesW,
    (void*)AFS_SetFileAttributesW,
    (void*)AFS_CreateFileW,
    (void*)AFS_DeleteFileW,
    (void*)AFS_MoveFileW,
    (void*)AFS_FindFirstFileW,
    (void*)AFS_RegisterFileSystemFunction,
    (void*)AFS_PrestoChangoFileName,
    (void*)AFS_CloseAllFileHandles,
    (void*)AFS_GetDiskFreeSpace,
    (void*)AFS_NotifyMountedFS,
    (void*)CreateCaret,
    (void*)DestroyCaret,
    (void*)HideCaret,
    (void*)ShowCaret,
    (void*)SetCaretPos,
    (void*)GetCaretPos,
    (void*)SetCaretBlinkTime,
    (void*)GetCaretBlinkTime,
    (void*)DisableCaretSystemWide,
    (void*)EnableCaretSystemWide,
    (void*)OpenClipboard,
    (void*)CloseClipboard,
    (void*)GetClipboardOwner,
    (void*)SetClipboardData,
    (void*)GetClipboardData,
    (void*)RegisterClipboardFormatW,
    (void*)CountClipboardFormats,
    (void*)EnumClipboardFormats,
    (void*)GetClipboardFormatNameW,
    (void*)EmptyClipboard,
    (void*)IsClipboardFormatAvailable,
    (void*)GetPriorityClipboardFormat,
    (void*)GetOpenClipboardWindow,
    (void*)GetClipboardDataAlloc,
    (void*)SetCursor,
    (void*)LoadCursorW,
    (void*)CheckRadioButton,
    (void*)SendDlgItemMessageW,
    (void*)SetDlgItemTextW,
    (void*)GetDlgItemTextW,
    (void*)CreateDialogIndirectParamW,
    (void*)DefDlgProcW,
    (void*)DialogBoxIndirectParamW,
    (void*)EndDialog,
    (void*)GetDlgItem,
    (void*)GetDlgCtrlID,
    (void*)GetDialogBaseUnits,
    (void*)GetDlgItemInt,
    (void*)GetNextDlgTabItem,
    (void*)GetNextDlgGroupItem,
    (void*)IsDialogMessageW,
    (void*)MapDialogRect,
    (void*)SetDlgItemInt,
    (void*)GetForegroundWindow,
    (void*)SetForegroundWindow,
    (void*)SetActiveWindow,
    (void*)SetFocus,
    (void*)GetFocus,
    (void*)GetActiveWindow,
    (void*)GetCapture,
    (void*)SetCapture,
    (void*)ReleaseCapture,
    (void*)SetKeyboardTarget,
    (void*)GetKeyboardTarget,
    (void*)ShellModalEnd,
    (void*)BatteryGetLifeTimeInfo,
    (void*)BatteryNotifyOfTimeChange,
    (void*)GetSystemPowerStatusEx,
    (void*)NotifyWinUserSystem,
    (void*)GetVersionExW,
    (void*)WriteFileWithSeek,
    (void*)SystemMemoryLow,
    (void*)CreateIconIndirect,
    (void*)DestroyIcon,
    (void*)DrawIconEx,
    (void*)ExtractIconExW,
    (void*)LoadIconW,
    (void*)LoadImageW,
    (void*)ClipCursor,
    (void*)GetClipCursor,
    (void*)GetCursor,
    (void*)GetCursorPos,
    (void*)SetCursorPos,
    (void*)ShowCursor,
    (void*)ImageList_Add,
    (void*)ImageList_AddMasked,
    (void*)ImageList_BeginDrag,
    (void*)ImageList_CopyDitherImage,
    (void*)ImageList_Create,
    (void*)ImageList_Destroy,
    (void*)ImageList_DragEnter,
    (void*)ImageList_DragLeave,
    (void*)ImageList_DragMove,
    (void*)ImageList_DragShowNolock,
    (void*)ImageList_Draw,
    (void*)ImageList_DrawEx,
    (void*)ImageList_DrawIndirect,
    (void*)ImageList_EndDrag,
    (void*)ImageList_GetBkColor,
    (void*)ImageList_GetDragImage,
    (void*)ImageList_GetIcon,
    (void*)ImageList_GetIconSize,
    (void*)ImageList_GetImageCount,
    (void*)ImageList_GetImageInfo,
    (void*)ImageList_LoadImage,
    (void*)ImageList_Merge,
    (void*)ImageList_Remove,
    (void*)ImageList_Replace,
    (void*)ImageList_ReplaceIcon,
    (void*)ImageList_SetBkColor,
    (void*)ImageList_SetDragCursorImage,
    (void*)ImageList_SetIconSize,
    (void*)ImageList_SetOverlayImage,
    (void*)ImageList_Copy,
    (void*)ImageList_Duplicate,
    (void*)ImageList_SetImageCount,
    (void*)ImmAssociateContext,
    (void*)ImmConfigureIMEW,
    (void*)ImmCreateIMCC,
    (void*)ImmDestroyIMCC,
    (void*)ImmEnumRegisterWordW,
    (void*)ImmEscapeW,
    (void*)ImmGenerateMessage,
    (void*)ImmGetCandidateListW,
    (void*)ImmGetCandidateListCountW,
    (void*)ImmGetCandidateWindow,
    (void*)ImmGetCompositionFontW,
    (void*)ImmGetCompositionStringW,
    (void*)ImmGetCompositionWindow,
    (void*)ImmGetContext,
    (void*)ImmGetConversionListW,
    (void*)ImmGetConversionStatus,
    (void*)ImmGetDefaultIMEWnd,
    (void*)ImmGetDescriptionW,
    (void*)ImmGetGuideLineW,
    (void*)ImmGetIMCCLockCount,
    (void*)ImmGetIMCCSize,
    (void*)ImmGetIMCLockCount,
    (void*)ImmGetOpenStatus,
    (void*)ImmGetProperty,
    (void*)ImmGetRegisterWordStyleW,
    (void*)ImmIsUIMessageW,
    (void*)ImmLockIMC,
    (void*)ImmLockIMCC,
    (void*)ImmNotifyIME,
    (void*)ImmReSizeIMCC,
    (void*)ImmRegisterWordW,
    (void*)ImmReleaseContext,
    (void*)ImmSIPanelState,
    (void*)ImmSetActiveContext,
    (void*)ImmSetCandidateWindow,
    (void*)ImmSetCompositionFontW,
    (void*)ImmSetCompositionStringW,
    (void*)ImmSetCompositionWindow,
    (void*)ImmSetConversionStatus,
    (void*)ImmSetHotKey,
    (void*)ImmGetHotKey,
    (void*)ImmSetOpenStatus,
    (void*)ImmSetStatusWindowPos,
    (void*)ImmSimulateHotKey,
    (void*)ImmUnlockIMC,
    (void*)ImmUnlockIMCC,
    (void*)ImmUnregisterWordW,
    (void*)GetMouseMovePoints,
    (void*)QASetWindowsJournalHook,
    (void*)QAUnhookWindowsJournalHook,
    (void*)SendInput,
    (void*)mouse_event,
    (void*)EnableHardwareKeyboard,
    (void*)GetAsyncKeyState,
    (void*)GetKeyboardStatus,
    (void*)KeybdGetDeviceInfo,
    (void*)KeybdInitStates,
    (void*)KeybdVKeyToUnicode,
    (void*)MapVirtualKeyW,
    (void*)PostKeybdMessage,
    (void*)keybd_event,
    (void*)GetAsyncShiftFlags,
    (void*)RegisterHotKey,
    (void*)UnregisterHotKey,
    (void*)SystemIdleTimerReset,
    (void*)TranslateAcceleratorW,
    (void*)NLedGetDeviceInfo,
    (void*)NLedSetDevice,
    (void*)InsertMenuW,
    (void*)AppendMenuW,
    (void*)RemoveMenu,
    (void*)DestroyMenu,
    (void*)TrackPopupMenuEx,
    (void*)LoadMenuW,
    (void*)EnableMenuItem,
    (void*)CheckMenuItem,
    (void*)CheckMenuRadioItem,
    (void*)DeleteMenu,
    (void*)CreateMenu,
    (void*)CreatePopupMenu,
    (void*)SetMenuItemInfoW,
    (void*)GetMenuItemInfoW,
    (void*)GetSubMenu,
    (void*)DrawMenuBar,
    (void*)MessageBeep,
    (void*)MessageBoxW,
    (void*)DispatchMessageW,
    (void*)GetKeyState,
    (void*)GetMessageW,
    (void*)GetMessagePos,
    (void*)GetMessageWNoWait,
    (void*)PeekMessageW,
    (void*)PostMessageW,
    (void*)PostQuitMessage,
    (void*)SendMessageW,
    (void*)SendNotifyMessageW,
    (void*)TranslateMessage,
    (void*)MsgWaitForMultipleObjectsEx,
    (void*)GetMessageSource,
    (void*)LoadBitmapW,
    (void*)LoadStringW,
    (void*)SetTimer,
    (void*)KillTimer,
    (void*)TouchCalibrate,
    (void*)GetClassInfoW,
    (void*)GetClassLongW,
    (void*)SetClassLongW,
    (void*)GetClassLong,
    (void*)SetClassLong,
    (void*)UnregisterClassW,
    (void*)GetSystemMetrics,
    (void*)IsWindowVisible,
    (void*)AdjustWindowRectEx,
    (void*)GetDoubleClickTime,
    (void*)GetSysColor,
    (void*)SetSysColors,
    (void*)RegisterWindowMessageW,
    (void*)RegisterTaskBar,
    (void*)AddFontResourceW,
    (void*)CeRemoveFontResource,
    (void*)CreateFontIndirectW,
    (void*)ExtTextOutW,
    (void*)GetTextExtentExPointW,
    (void*)GetTextMetricsW,
    (void*)PegRemoveFontResource,
    (void*)RemoveFontResourceW,
    (void*)CreateBitmap,
    (void*)CreateCompatibleBitmap,
    (void*)BitBlt,
    (void*)MaskBlt,
    (void*)StretchBlt,
    (void*)TransparentImage,
    (void*)RestoreDC,
    (void*)SaveDC,
    (void*)CreateDCW,
    (void*)CreateCompatibleDC,
    (void*)DeleteDC,
    (void*)DeleteObject,
    (void*)GetBkColor,
    (void*)GetBkMode,
    (void*)GetCurrentObject,
    (void*)GetDeviceCaps,
    (void*)GetObjectType,
    (void*)GetObjectW,
    (void*)GetStockObject,
    (void*)GetTextColor,
    (void*)SelectObject,
    (void*)SetBkColor,
    (void*)SetBkMode,
    (void*)SetTextColor,
    (void*)CreatePatternBrush,
    (void*)CreatePen,
    (void*)FillRgn,
    (void*)SetROP2,
    (void*)CreateDIBPatternBrushPt,
    (void*)CreatePenIndirect,
    (void*)CreateSolidBrush,
    (void*)DrawEdge,
    (void*)DrawFocusRect,
    (void*)Ellipse,
    (void*)FillRect,
    (void*)GetPixel,
    (void*)GetSysColorBrush,
    (void*)PatBlt,
    (void*)Polygon,
    (void*)Polyline,
    (void*)Rectangle,
    (void*)RoundRect,
    (void*)SetBrushOrgEx,
    (void*)SetPixel,
    (void*)DrawTextW,
    (void*)CreatePalette,
    (void*)GetNearestPaletteIndex,
    (void*)GetPaletteEntries,
    (void*)GetSystemPaletteEntries,
    (void*)SetPaletteEntries,
    (void*)GetNearestColor,
    (void*)RealizePalette,
    (void*)SelectPalette,
    (void*)EnumFontFamiliesW,
    (void*)EnumFontsW,
    (void*)GetTextFaceW,
    (void*)CombineRgn,
    (void*)CreateRectRgnIndirect,
    (void*)ExcludeClipRect,
    (void*)GetClipBox,
    (void*)GetClipRgn,
    (void*)GetRegionData,
    (void*)GetRgnBox,
    (void*)IntersectClipRect,
    (void*)OffsetRgn,
    (void*)PtInRegion,
    (void*)RectInRegion,
    (void*)SelectClipRgn,
    (void*)CreateRectRgn,
    (void*)RectVisible,
    (void*)SetRectRgn,
    (void*)SetViewportOrgEx,
    (void*)ScrollDC,
    (void*)EnableEUDC,
    (void*)DrawFrameControl,
    (void*)GetThreadContext,
    (void*)GetStdioPathW,
    (void*)SetStdioPathW,
    (void*)RegFlushKey,
    (void*)ReadRegistryFromOEM,
    (void*)WriteRegistryToOEM,
    (void*)WriteDebugLED,
    (void*)UnregisterFunc1,
    (void*)BeginDeferWindowPos,
    (void*)DeferWindowPos,
    (void*)EndDeferWindowPos,
    (void*)GetKeyboardLayoutNameW,
    (void*)LockPages,
    (void*)UnlockPages,
    (void*)CeMountDBVol,
    (void*)CeEnumDBVolumes,
    (void*)TranslateCharsetInfo,
    (void*)CreateFileForMappingW,
    (void*)SipStatus,
    (void*)SipRegisterNotification,
    (void*)SipShowIM,
    (void*)SipGetInfo,
    (void*)SipSetInfo,
    (void*)SipEnumIM,
    (void*)SipGetCurrentIM,
    (void*)SipSetCurrentIM,
    (void*)GetModuleHandleW,
    (void*)ActivateDevice,
    (void*)DeactivateDevice,
    (void*)ExtEscape,
    (void*)GetDCEx,
    (void*)GetThreadTimes,
    (void*)CeFindNextDatabaseEx,
    (void*)CeCreateDatabaseEx,
    (void*)CeSetDatabaseInfoEx,
    (void*)CeOpenDatabaseEx,
    (void*)CeDeleteDatabaseEx,
    (void*)CeReadRecordPropsEx,
    (void*)CeOidGetInfoEx,
    (void*)CeFindFirstDatabaseEx,
    (void*)CeUnmountDBVol,
    (void*)ImmCreateContext,
    (void*)ImmDestroyContext,
    (void*)ImmGetStatusWindowPos,
    (void*)SetWindowsHookExW,
    (void*)UnhookWindowsHookEx,
    (void*)CallNextHookEx,
    (void*)ImmAssociateContextEx,
    (void*)ImmDisableIME,
    (void*)ImmGetIMEFileNameW,
    (void*)ImmIsIME,
    (void*)ImmGetVirtualKey,
    (void*)ImmGetImeMenuItemsW,
    (void*)IsProcessDying,
    (void*)SipSetDefaultRect,
    (void*)FlushViewOfFileMaybe,
    (void*)FreeLibraryAndExitThread,
    (void*)CeFlushDBVol,
    (void*)DefaultImcGet,
    (void*)DefaultImeWndGet,
    (void*)ImmProcessKey,
    (void*)ImmTranslateMessage,
    (void*)ImmSetImeWndIMC,
    (void*)ImmGetUIClassName,
    (void*)GetForegroundInfo,
    (void*)GetForegroundKeyboardTarget,
    (void*)CeFreeNotification,
    (void*)GetKeyboardLayout,
    (void*)GetProcAddressA,
    (void*)GetCommandLineW,
    (void*)DisableThreadLibraryCalls,
    (void*)TryEnterCriticalSection,
    (void*)GetTempFileNameW,
    (void*)FindFirstFileExW,
    (void*)GetDeviceByIndex,
    (void*)GetFileAttributesExW,
    (void*)CreateSemaphoreW,
    (void*)ReleaseSemaphore,
    (void*)ComThreadBaseFunc,
    (void*)LoadLibraryExW,
    (void*)ImmRequestMessageW,
    (void*)CeSetThreadQuantum,
    (void*)CeGetThreadQuantum,
    (void*)CeSetUserNotificationEx,
    (void*)CeGetUserNotificationHandles,
    (void*)CeGetUserNotification,
    (void*)CeGetCurrentTrust,
    (void*)GetSystemPowerStatusEx2,
    (void*)CeGetCallerTrust,
    (void*)OpenDeviceKey,
    (void*)GetDesktopWindow,
    (void*)SetWindowRgn,
    (void*)GetWindowRgn,
    (void*)InSendMessage,
    (void*)GetQueueStatus,
    (void*)LoadFSDEx,
    (void*)RasEnumDevicesW,
    (void*)CeResyncFilesys,
    (void*)CeGetRandomSeed,
    (void*)CeMapArgumentArray,
    (void*)UpdateNLSInfo,
    (void*)PerformCallBack4,
    (void*)CeLogData,
    (void*)CeLogSetZones,
    (void*)AllKeys,
    (void*)GetWindowTextWDirect,
    (void*)CeSetExtendedPdata,
    (void*)RasGetProjectionInfoW,
    (void*)VerQueryValueW,
    (void*)GetFileVersionInfoW,
    (void*)GetFileVersionInfoSizeW,
    (void*)SetOOMEvent,
    (void*)RasGetLinkStatistics,
    (void*)RasGetDispPhoneNumW,
    (void*)RasDevConfigDialogEditW,
    (void*)CreateLocaleView,
    (void*)CeLogReSync,
};
