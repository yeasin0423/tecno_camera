# TECNO Camera Port

Decompiled and hand-ported stock camera app (`com.transsion.camera`) from the
**TECNO Spark 8 Pro**, built to run on Android 16 GSI.

![Device](https://img.shields.io/badge/device-TECNO%20Spark%208%20Pro-white)
![Stock](https://img.shields.io/badge/stock-Android%2011-green)
![GSI](https://img.shields.io/badge/rom-Android%2016%20GSI-blue)
![Build](https://img.shields.io/badge/build-apktool%203.0.3-orange)
![Status](https://img.shields.io/badge/status-working%20on%20device-brightgreen)

## About

This is the TECNO Spark 8 Pro stock camera firmware, decompiled and
hand-ported to run on a **generic Android 16 GSI** instead of the stock
Android 11 ROM. The handful of things that don't exist on the GSI are
patched over; everything else compiles and ships as-is.

- **Device** — TECNO Spark 8 Pro (Helio G70, arm64-v8a)
- **Stock ROM** — Android 11 (API 30)
- **Current ROM** — Android 16 GSI (API 36), Android 11 vendor partition
- **Build system** — `apktool` only; no Gradle, no Android Studio project

## Status

Working on-device on the GSI above:

- Photos, videos (all modes, including FunVideo and AR)
- Gallery and thumbnails
- Video mute toggle
- Runtime permissions and all-files access gate
- Predictive back gesture and modern `exported` flags

## Requirements

- Android 16 (API 36) GSI on TECNO Spark 8 Pro, **arm64 only**
- **All files access** granted to the camera app after install:
  Settings → Apps → Camera → Special access → All files access.
  Without it, video recording and AR asset writes fail with `EPERM`
  (the stock pipeline writes temp files directly to shared `DCIM/Camera`)
- A signing key you own — `my-key.jks` is **not** in this repo

## Build

```bash
# rebuild
apktool b Camera -o test.apk -p frame/

# sign with your own key
apksigner sign --ks my-key.jks test.apk

# install
adb install -r test.apk

# after install — grant All files access for Camera in Settings
```

## Repo layout

```
Camera/                 working tree (edit this)
├── AndroidManifest.xml targetSdk 36, minSdk 33
├── apktool.yml         apktool config (sdkInfo, versionCode/Name)
├── smali/              classes.dex decompiled
├── smali_classes2/     classes2.dex decompiled
├── res/                resources
├── assets/             ML models, AR bundles, effects (~105 M)
├── lib/arm64-v8a/      native libs (~87 M)
├── original/           pristine decompiled artifacts (reference only)
└── unknown/            apktool-unmapped files (keep)
frame/1.apk             Android 11 framework-res (required for every build)
```

## Changes

### Modernized
- `minSdkVersion` 30 → **33** (Android 13), `targetSdkVersion` 29 → **36**
- Permissions: legacy `WRITE/READ_EXTERNAL_STORAGE`, `MOUNT_UNMOUNT_FILESYSTEMS`,
  `WRITE_MEDIA_STORAGE` removed; `READ_MEDIA_IMAGES`, `READ_MEDIA_VIDEO`,
  `POST_NOTIFICATIONS` added; `MANAGE_EXTERNAL_STORAGE` added (sideloaded port,
  stock storage model)
- All `<activity>`/`<service>`/`<provider>` elements with intent filters now
  carry explicit `android:exported="true"` (required at targetSdk 31+)
- PendingIntent mutability (`FLAG_IMMUTABLE`) fixed; receivers use
  `RECEIVER_NOT_EXPORTED`; predictive back wired via
  `getOnBackInvokedDispatcher()`
- `requestLegacyExternalStorage` removed
- `sDebugLogEnable=false` — no per-frame string formatting in hot paths

### Fixed
- **All-files access gate** — launch-time prompt; camera init is blocked
  until the user allows or dismisses; themed like the stock permission popup
- **Permission-denied flow** — no more auto-close; **Allow** re-asks, falls
  back to settings if permanently denied
- **Video mute** — "Video mute" toggle in video mode settings; records video
  with no audio track; persists across sessions
- All `ClassNotFoundException` probes for features that don't exist in this
  port removed — no startup `E` log spam

### Removed (asset/binary diet)
- `libstfaceunlockppl.so` (52 MB), `libjni_stfaceunlock_api.so`,
  `libwa_calibrationtool2.so`, `libwa_calibrationtool_as2.so` — face-unlock
  and factory calibration, zero references in smali
- Dead Firebase / GMS / Crashlytics trees from `smali/` and `smali_classes2/`
- Firebase resource entries (`com.crashlytics.android.build_id`,
  `firebase_database_url`)

## Known limitations

- **arm64-v8a only**
- Legacy storage model preserved deliberately: video temp files and AR
  assets are written to shared `DCIM/Camera` to match the stock pipeline;
  a MediaStore rewrite was deliberately not attempted
- `usesNonSdkApi="true"` — the port depends on hidden Transsion APIs

### Not fixable from the app (GSI/vendor limitations)

- `BGHIDLConnection … NoSuchElementException` — vendor background-service
  not exposed to untrusted apps
- `ThermalThrottle … EACCES` — vendor thermal drivers not readable
- `VendorTagDescriptor` "Tag name … does not exist" — GSI camera HAL does not
  implement MediaTek vendor tags
- SELinux `ServiceManager: SecurityException` — radio/system partition denials
- `ThemeUtils` VerticalSeekBar — stock theme mismatch, cosmetic
- `MTK-PlatformCam: illegal gender attribute value` — HAL-side complaint
- Vendor libs absent/incompatible (slow motion, dual-cam, face unlock) —
  app detects, skips, continues

These are GSI/vendor partition differences, not app bugs. No app-side fix exists.

## Verifying

```bash
adb logcat -c && adb logcat -b crash    # should print nothing
```

Cold launch → popup (if all-files not yet granted) → **Allow** → toggle on →
camera opens.

## Disclaimer

This repo contains a decompiled third-party application (TECNO/Transsion).
All rights to the original application belong to their respective owners.

Provided for **personal/interoperability use on a matching device** only.
Do not redistribute. Do not use on devices other than TECNO Spark 8 Pro.
The port ships the original `assets/` and `lib/` — not redistributable.
