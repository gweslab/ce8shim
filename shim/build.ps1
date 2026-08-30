Set-Location Z:\tmp\ce8_apps\ce8shim
& "Z:/third_party/wince/bin/armasm.exe" -32 align.s -o align.obj
if ($LASTEXITCODE -ne 0) { throw "armasm failed" }

# The window-procedure trampolines must be genuine Thumb: CE8 does not enter
# ARM state on a callback. clarm -QRarch4T is ARM codegen with interworking
# returns, so only clthumb.exe produces a Thumb-state entry point here.
$env:PATH = "Z:/third_party/wince/bin;" + $env:PATH
& "Z:/third_party/wince/bin/clthumb.exe" /nologo /c /W3 /O2 `
    -DTHUMB -D_THUMB_ -DARM -D_ARM_ /DUNICODE /D_UNICODE /DUNDER_CE `
    /D_WIN32_WCE=300 "/Foce8shim_thumbthunks.obj" `
    /I "Z:/third_party/wince/STANDARDSDK/Include/Armv4t" `
    ce8shim_thumbthunks.c
if ($LASTEXITCODE -ne 0) { throw "clthumb failed" }

& "Z:/tools/build_ce_app.ps1" `
    -Type dll -Target ce8shim.dll -Arch arm_thumb -ObjDir obj_thumb `
    -Sources @("ce8shim.c","ce8shim_targets.c","ce8shim_softfloat.c","ce8shim_addsub.c",
               "ce8shim_muldiv.c","ce8shim_compare.c","ce8shim_wndproc.c") -Entry DllMain `
    -DefFile "Z:/tmp/ce8_apps/ce8shim/ce8shim.def" `
    -SubsystemVersion "8.00" `
    -CoreDllDef "Z:/tmp/ce8_apps/ce8shim/ce8shim_coredll.def" `
    -LinkExtras @("Z:/tmp/ce8_apps/ce8shim/align.obj",
                  "Z:/tmp/ce8_apps/ce8shim/ce8shim_thumbthunks.obj",
                  "Z:/third_party/wince/STANDARDSDK/Lib/Armv4t/corelibc.lib")
