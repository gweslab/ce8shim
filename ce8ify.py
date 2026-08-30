"""Make a legacy Windows CE PE loadable by the Windows Embedded Compact 8 loader.

  python ce8ify.py IN OUT [--rename OLD.dll=NEW.dll ...]

Applies the three CE8 loader-gate fields (MajorSubsystemVersion=8.00,
IMAGE_DLLCHARACTERISTICS_NX_COMPAT, Machine=IMAGE_FILE_MACHINE_ARMNT) and
optionally rewrites import-descriptor DLL name strings in place.
"""
import struct, sys


def sec_table(d):
    e = struct.unpack_from('<I', d, 0x3C)[0]
    fh = e + 4
    nsec, optsz = struct.unpack_from('<H', d, fh + 2)[0], struct.unpack_from('<H', d, fh + 16)[0]
    opt = fh + 20
    sec0 = opt + optsz
    secs = []
    for i in range(nsec):
        o = sec0 + i * 40
        vsz, va, rsz, rp = struct.unpack_from('<IIII', d, o + 8)
        secs.append((va, vsz, rp, rsz))
    return fh, opt, secs


def r2o(secs, rva):
    for va, vsz, rp, rsz in secs:
        if va <= rva < va + max(vsz, rsz):
            return rp + (rva - va)
    return None


def ce8ify(src, dst, renames, strip_pdata=False, machine=0x01C4, stack=None):
    d = bytearray(open(src, 'rb').read())
    fh, opt, secs = sec_table(d)

    if stack is not None:
        struct.pack_into('<I', d, opt + 0x48, stack)

    if strip_pdata:
        struct.pack_into('<II', d, opt + 0x60 + 3 * 8, 0, 0)

    struct.pack_into('<H', d, fh + 0, machine)
    struct.pack_into('<HH', d, opt + 0x30, 8, 0)
    dc = struct.unpack_from('<H', d, opt + 0x46)[0] | 0x0100
    struct.pack_into('<H', d, opt + 0x46, dc)

    irva = struct.unpack_from('<I', d, opt + 0x60 + 8)[0]
    hits = []
    if irva and renames:
        o = r2o(secs, irva)
        i = 0
        while True:
            nm = struct.unpack_from('<I', d, o + i * 20 + 12)[0]
            if nm == 0:
                break
            no = r2o(secs, nm)
            end = d.index(b'\0', no)
            cur = d[no:end].decode('latin1')
            for old, new in renames:
                if cur.lower() == old.lower():
                    if len(new) > end - no:
                        raise SystemExit(
                            'rename %s -> %s does not fit (%d > %d bytes)'
                            % (cur, new, len(new), end - no))
                    d[no:end + 1] = new.encode('latin1') + b'\0' * (end - no - len(new) + 1)
                    hits.append((cur, new))
            i += 1

    open(dst, 'wb').write(d)
    print('%s -> %s: Machine=0x01C4 SubsysVer=8.00 DllCharacteristics=0x%04X' % (src, dst, dc))
    for a, b in hits:
        print('   import rename: %s -> %s' % (a, b))


if __name__ == '__main__':
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    ren = [a[len('--rename='):].split('=', 1) for a in sys.argv[1:] if a.startswith('--rename=')]
    sp = '--strip-pdata' in sys.argv
    mach = [a for a in sys.argv[1:] if a.startswith('--machine=')]
    mv = int(mach[0][len('--machine='):], 0) if mach else 0x01C4
    stk = [a for a in sys.argv[1:] if a.startswith('--stack=')]
    sv = int(stk[0][len('--stack='):], 0) if stk else None
    ce8ify(args[0], args[1], ren, sp, mv, sv)
