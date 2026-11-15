# TECNO Camera Port

Decompiled and hand-ported stock camera app (`com.transsion.camera`) from the
**TECNO Spark 8 Pro** on a modern Android 16 GSI.

- **Device**: TECNO Spark 8 Pro (MediaTek, arm64-v8a)
- **Stock ROM**: Android 11
- **Current ROM**: Android 16 GSI (system + system_ext + product = API 36), Android 11 vendor partition
- **Build tooling**: `apktool` only — no Gradle, no Android Studio project

## Status

Working on-device on the GSI above: photos, video recording, gallery,
AR/FunVideo modes, all-files gating, predictive back gesture, runtime
permissions, video mute toggle.

## Requirements

- Android 16 (API 36) GSI on TECNO Spark 8 Pro, **arm64 only**
- **All files access** must be granted to the camera app after install —
  Settings → Apps → Camera → Special access → All files access. Without it,
  video recording and AR asset extraction break with `EPERM`, because the
  stock pipeline writes temp files directly to shared `DCIM/Camera`.
- Your own signing key is **not** in the repo; you sign with your own.

## Building

The repo contains the apktool working tree; `frame/1.apk` (Android 11
`framework-res`, required by every `apktool` invocation) is tracked.

```bash
# rebuild (from repo root)
apktool b Camera -o test.apk -p frame/

# sign (your key is NOT in this repo)
apksigner sign --ks my-key.jks test.apk

# install (you run this, not the build scripts)
adb install -r test.apk

# after install: grant All files access for Camera in Settings
```

## Repo layout

```
Camera/                  working tree (edit this)
├── AndroidManifest.xml  port manifest (minSdk 33 / targetSdk 36)
├── apktool.yml          apktool config (sdkInfo, versionCode/Name)
├── smali/               classes.dex decompiled (UI, storage, permissions…)
├── smali_classes2/      classes2.dex decompiled (feature system)
├── res/                 resources (assets/framework-res excluded)
├── assets/              ML models, AR bundles, effects (~105M, do not edit)
├── lib/arm64-v8a/       ported native libs (~156M) — do not touch
├── original/            pristine decompiled artifacts (reference only)
└── unknown/             apktool-unmapped files (keep)
frame/1.apk              Android 11 framework-res (needed for every build)
```

## What was done

### Modernized
- `minSdkVersion` 30 → **33** (Android 13), `targetSdkVersion` 29 → **36**
- Permissions: `WRITE/READ_EXTERNAL_STORAGE`, `MOUNT_UNMOUNT_FILESYSTEMS`,
  `WRITE_MEDIA_STORAGE` removed (no-op/privileged); `READ_MEDIA_IMAGES`,
  `READ_MEDIA_VIDEO`, `POST_NOTIFICATIONS` added; `MANAGE_EXTERNAL_STORAGE`
  added (sideloaded port, stock-storage model)
- All `android:exported="true"` added (required at targetSdk 31+)
- PendingIntent mutability flag fixed; runtime receivers get
  `RECEIVER_NOT_EXPORTED`; predictive back wired via
  `Activity.getOnBackInvokedDispatcher()` (works with gestures)
- `requestLegacyExternalStorage` removed

### Features & fixes
- **All-files access gate**: launch prompt before camera init; camera is
  blocked until the user allows or dismisses; matches stock dialog styling
- **Permission-denied flow**: no more auto-close; "Allow" re-asks for media
  permission (falls back to app settings if permanently denied)
- **Video mute**: "Video mute" toggle in video mode settings; records no
  audio track; persists across sessions (implemented like the stock
  shutter-sound setting)
- Known-good fallback: uninstall/reinstall resets the gate when switching ROMs

## Known limitations
- **arm64-v8a only**
- GSI camera HAL is Android 16, vendor bits are Android 11 — the port
  sometimes logs hidden-API denials (e.g. SVGA animation
  `ValueAnimator.sDurationScale`); harmless in tested paths
- Legacy storage model preserved deliberately: video temp files and AR
  assets are written to shared `DCIM/Camera` to satisfy the stock pipeline;
  scoping them properly would be a MediaStore rewrite of every recorder mode
- `usesNonSdkApi="true"` kept because the port relies on hidden Transsion APIs
- No Play Store release; this is a personal port

## Verifying

```bash
adb install -r test.apk        # then:
adb logcat -b crash            # should be empty
```

Open the app → popup (if all-files access not yet granted) → **Allow** →
toggle it on in Settings → camera opens.

## Disclaimer & license

This repository contains a decompiled third-party application originally
provided by TECNO/Transsion for the TECNO Spark 8 Pro. All rights to the
original application belong to their respective owners. This repo is provided
for interoperability/personal use with the device this app came from. Do not
redistribute, and do not ship it on devices other than the one it was ported
for. The port contains the original `assets/` and `lib/` and is not
distributable.
