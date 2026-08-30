# ce8shim

A small shim+patcher that makes older CE apps to run on WEC2013. Proof of concept - works only with simple apps.

### CE2013 problems

- subsystem version gate in the loader
- crt is moved from coredll into msvcrt
- stack alignment gate
- and many other difficulties introduced in WEC2013

### Usage

Patch the application so its imports point at the shims:

```
python ce8ify.py app.exe app8.exe --rename=coredll.dll=ce8shim.dll --rename=commctrl.dll=ce8cctl.dll
```

Copy `app8.exe` and both DLLs from `bin/` into one directory on the device.

Then run `app8.exe`.

Patch any DLL you build yourself with `ce8ify.py` too.
