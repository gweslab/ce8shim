Set-Location Z:\tmp\ce8_apps\ce8cctl
& "Z:/third_party/wince/bin/armasm.exe" -32 align.s -o align.obj
if ($LASTEXITCODE -ne 0) { throw "armasm failed" }

& "Z:/tools/build_ce_app.ps1" `
    -Type dll -Target ce8cctl.dll -Arch arm_thumb -ObjDir obj_thumb `
    -Sources @("ce8cctl.c") -Entry DllMain `
    -DefFile "Z:/tmp/ce8_apps/ce8cctl/ce8cctl.def" `
    -SubsystemVersion "8.00" `
    -Libs @("commctrl") `
    -LinkExtras @("Z:/tmp/ce8_apps/ce8cctl/align.obj")
