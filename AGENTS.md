# AGENTS.md — TECNO Spark 8 Pro Camera port

Decompiled + hand-ported copy of the TECNO/Transsion stock camera app
(`com.transsion.camera`, versionName `7.1.01-ModByYeasin`). It came from the
phone's stock **Android 11** ROM; the phone now runs an **Android 16 GSI**
(system + system_ext + product = API 36) on top of the **Android 11 vendor**
partition. The port (added/edited smali, added `lib/*.so`, extra build tweaks)
is working; the current goal is modernization: minSdk → 33+, targetSdk 29 → 36,
drop legacy stuff.

## Toolchain: apktool only — no Gradle, no Android Studio
`Camera/` is an apktool 3.0.3 working tree. The decompiled tree, not any IDE
project, is the source of truth.

- Decompile (destroys hand edits, only redo intentionally):
  `apktool d Camera.apk -p frame/`
- Build: `apktool b Camera -o test.apk -p frame/`
- `-p frame/` is mandatory for **every** apktool call. `frame/1.apk` is the
  Android 11 framework resource APK (package `android`, v11); it is gitignored
  and not redistributable, keep it locally (re-obtain from the stock ROM /
  device backup if lost).
- apktool does **not** sign. Sign `test.apk` before installing:
  `apksigner sign --ks my-key.jks test.apk` (key alias/password known to user;
  `my-key.jks` is gitignored — never commit it).
- Install: `adb install -r test.apk` — **never run `adb` yourself** (any
  subcommand); if something on-device is needed, ask the user to run it or
  supply details.
- There are **no tests, linters, formatters or CI**. Verification = clean
  `apktool b` + sign + (user) install + launch the app. Builds are heavy
  (`-Xmx3G`, ~2 threads); expect minutes, and full rebuilds every time.
- SDK levels are **not** in the manifest (it has no `<uses-sdk>`); they are in
  `Camera/apktool.yml` under `sdkInfo` (currently `minSdkVersion: 30`,
  `targetSdkVersion: 29`). Change them there. `apktool.yml` also holds
  `versionName`, `versionCode` (via `versionInfo`), `resourcesInfo.packageId: 127`
  and the `doNotCompress` list.

## Layout
- `Camera/smali/` + `Camera/smali_classes2/` — the two dex files
  (`classes.dex`, `classes2.dex`); editing means editing smali.
- `Camera/res/`, `Camera/assets/` — resources; many large ML model/effect
  bundles. `Camera/assets` ≈ 105M, `Camera/lib` ≈ 156M, smali ≈ 92M.
- `Camera/lib/arm64-v8a/` — **arm64 only**; app will not install/run elsewhere.
- `Camera/original/` — original binary manifest + META-INF; reference only,
  never edit or rebuild from it.
- `Camera/unknown/` — files apktool couldn't map (`kotlin/`, fabric,
  firebase/play-services `.properties`); the build imports them, don't delete.
- `Camera/build/` — apktool intermediate output, regenerated per build, gitignored.
- Root `Camera.apk` (original) and `test.apk` (rebuilt) are local artifacts and
  gitignored; `Camera.apk` is the untouched base to compare against.

## Hard-won rules / gotchas
- Manifest declares `usesNonSdkApi="true"` and the port deliberately relies on
  hidden/non-SDK APIs and Transsion framework/vendor services present only via
  the Android 11 vendor partition — do not strip them; behavior may only break
  on-device, not at build time.
- Hand-edited smali compiles against Android 11 framework signatures. After any
  smali edit: rebuild → sign → install → launch. Build errors surface only at
  build time; behavioral breakage surfaces only at runtime.
- Manifest carries `requestLegacyExternalStorage="true"` and legacy permissions
  (`WRITE_EXTERNAL_STORAGE`, `MOUNT_UNMOUNT_FILESYSTEMS`, `WRITE_MEDIA_STORAGE`).
  These are intentional-but-legacy; raising targetSdk changes their runtime
  semantics (scoped storage, permission revocation) — expect to revisit them
  for the modernization, along with `exported` flags and Backup/Restore
  (`allowBackup`, `restoreAnyVersion`).
- When adding new binary assets (`.bundle`, `.bin`, `.svga`, `.xbin`, `.model`…),
  add the path/extension to `doNotCompress` in `apktool.yml` or they will be
  compressed and can fail to load/mmap at runtime.
- `versionName` in `apktool.yml` ends with `-ModByYeasin`; keep the suffix and
  bump it deliberately when rebuilding for install/testing.
- Do not move, rename or "update" the ported `lib/*.so` files — they are the
  port (arcsoft, face-unlock, XDocProcess, etc.) and come from the stock app.
- Don't delete `original/`, `unknown/` or `assets/` "cleanups" — apktool needs
  them all to rebuild.
- apktool build prints `Picked up JAVA_TOOL_OPTIONS: -Xmx3G …`; harmless noise.

## Git / GitHub
- Repo initialized on branch `main`. `.gitignore` excludes signing keys
  (`*.jks`/`*.keystore`), all `*.apk`/`*.aab` (root APKs exceed GitHub's 100MB
  limit, and `frame/1.apk` is proprietary), and `build/` / `Camera/build/`.
- Committed tree ≈ 440M of binaries (assets/lib/smali) tracked in plain git —
  no LFS; keep GitHub's 100MB/file limit in mind if adding large files.
- Remote: `origin` → github.com/yeasin0423/tecno_camera (`main` tracks
  `origin/main`, pushed). GitHub warns that
  `Camera/lib/arm64-v8a/libstfaceunlockppl.so` (~52M) exceeds the 50M
  recommended size — it is already committed; only migrate to LFS with the
  user's explicit go-ahead.
- `frame/`, `my-key.jks`, and the APKs exist only on this machine; a fresh
  clone cannot build until `frame/1.apk` is supplied and the APKs are rebuilt.
