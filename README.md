# LineageOS device tree: Wisephone P10 (MT6739CH)

**Status: skeleton / bring-up. Does not boot yet.**

Layout: `device/wisephone/p10`

## Gather this from your STOCK firmware first
- Scatter file: partition names and sizes -> `BoardConfig.mk`, `fstab.mt6739`
- Unpack `boot.img`: cmdline, base, offsets, header version -> `BoardConfig.mk`
- `/proc/config.gz`, `uname -a`: kernel version and arch (arm vs arm64)
- `getprop`: `ro.board.platform`, `ro.product.board`, `ro.build.fingerprint`, first API level
- `/vendor/etc/vintf/manifest.xml` -> `manifest.xml`
- `/vendor/build.prop`, `/vendor/etc/init/*.rc`, `/vendor/ueventd.rc`
- RAM size (decides `low_ram`)

## Known hard problems
- LineageOS 22 = Android 15. A stock MT6739 vendor image/kernel (likely Android 8-10, kernel 4.4/4.9) may be too old for it.
- Legacy MTK RIL, audio, and graphics blobs usually need shims/patches on newer Android.
- 32-bit-only builds on Android 15 are unusual and may hit build errors.

## Build (local)
```
git clone <this repo> device/wisephone/p10
# put kernel in kernel/wisephone/mt6739, vendor blobs in vendor/wisephone/p10
source build/envsetup.sh
lunch lineage_p10-userdebug
mka bacon
```

## Blobs
Run `./extract-files.py <stock dump>`. Keep blobs in a separate vendor repo; do not publish firmware.
