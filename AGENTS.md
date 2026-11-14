# AGENTS.md — TECNO Spark 8 Pro Camera port

Decompiled + hand-ported copy of the TECNO/Transsion stock camera app
(`com.transsion.camera`, versionName `7.2.00-ModByYeasin`). It came from the
phone's stock **Android 11** ROM; the phone now runs an **Android 16 GSI**
(system + system_ext + product = API 36) on top of the **Android 11 vendor**
partition. The port (added/edited smali, added `lib/*.so`, extra build tweaks)
is working; **modernization to minSdk 33 / targetSdk 36 is done and builds, but
is unverified on-device** — see the checklist below.

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
  `Camera/apktool.yml` under `sdkInfo` (currently `minSdkVersion: 33`,
  `targetSdkVersion: 36`, `versionCode: 2`,
  `versionName: 7.2.00-ModByYeasin`). `apktool.yml` also holds
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
- **DEX ID limit**: `classes.dex` is already at the unsigned-short (65536) id
  boundary. Adding ANY new method/field/type reference to it makes the dex
  writer crash with `Unsigned short value out of range: 65536` (sometimes
  intermittently, sometimes only on a clean build — always do
  `rm -rf Camera/build` before declaring a build good). Put new code in its
  own class in **`smali_classes2/` (classes2.dex)** — it has headroom — instead
  of `smali/`. See `smali_classes2/com/transsion/camera/app/OnBackInvokedCallbackImpl.smali`.
- Predictive back is wired via `Activity.getOnBackInvokedDispatcher()` +
  `OnBackInvokedDispatcher.registerOnBackInvokedCallback(PRIORITY_DEFAULT=0)`
  in `OnBackInvokedCallbackImpl.registerBackCallback`. Note
  `Window.setOnBackInvokedCallback` does NOT exist on the runtime framework
  (hidden/system API) — calling it crashes at launch with `NoSuchMethodError`.
  Registered in `CameraActivity` (covers `SecureCameraActivity`) and
  `ReviewCameraActivity`; any future activity hosting settings/review
  fragments needs the same call after `setContentView`.
- Android 14+ (targetSdk 34+): every `registerReceiver()` needs an explicit
  `RECEIVER_EXPORTED`/`RECEIVER_NOT_EXPORTED` flag or the app crashes with
  `SecurityException`. All app-reachable sites use `RECEIVER_NOT_EXPORTED`
  (they only handle system broadcasts). Dead Firebase/GMS/Crashlytics sites
  were deliberately not touched — verify deadness with the manifest (no init
  ContentProviders) before assuming any library code runs.
- Permissions are referenced in smali, not only the manifest. Whenever a
  permission is added/removed, grep the whole tree (`grep -rn "<perm>" Camera`)
  and migrate call sites (`checkSelfPermission` lists, request lists, dialog
  labels) or the app will infinite-loop asking for a permission the system
  can never grant (logcat: `No requestable permission in the request`).
  Legacy storage perms were migrated to `READ_MEDIA_IMAGES`/`READ_MEDIA_VIDEO`
  in `PermissionManager` + `ConfirmationFragment`; faceunity probes
  `MANAGE_EXTERNAL_STORAGE`.
- Prefer explicit `git add <files>` over `git add -A`: the root accumulates
  `test.apk`, `test.apk.idsig`, `logs.txt`, etc. — all gitignored, but don't
  rely on that alone.
- Backup/restore: `allowBackup="true"` + `restoreAnyVersion="true"` kept;
  targetSdk 36 re-evaluates backup rules (`dataExtractionRules` not set — it
  was never configured); flag for a future pass if backup matters.
- When adding new binary assets (`.bundle`, `.bin`, `.svga`, `.xbin`, `.model`…),
  add the path/extension to `doNotCompress` in `apktool.yml` or they will be
  compressed and can fail to load/mmap at runtime.
- **targetSdk 36 requires "All files access".** The video pipeline
  (temp files in shared DCIM + rename-based save), and the AR asset extraction
  (`copyAssetsToSD`) use direct `File` paths. They cannot be fixed without a
  full MediaStore-FD rewrite of every recorder mode, so the app declares
  `MANAGE_EXTERNAL_STORAGE` (sideloaded, not Play Store). **After install the
  user must enable "All files access" for Camera in system settings**, or
  video recording and AR sticker handling break. (`requestLegacyExternalStorage`
  was removed; it is ignored at targetSdk 30+.)
- PendingIntent flags: targetSdk 31+ throws `IllegalArgumentException` if a
  PendingIntent is built without `FLAG_IMMUTABLE`/`FLAG_MUTABLE`. App-side
  sites were fixed (`0xC000000` = `FLAG_UPDATE_CURRENT | FLAG_IMMUTABLE`);
  **any new/edited PendingIntent must carry an explicit mutability flag.**
- Notification posting: `BarcodeUI` and the FunVideo/CommonVideoUI
  "saved to gallery" notifications need the `POST_NOTIFICATIONS` runtime grant
  (declared in manifest since Android 13); without it they are silently
  dropped, never a crash.
- Edge-to-edge is enforced at targetSdk 35+: system bars go transparent and
  content draws underneath. Expect possible visual overlap (nav-bar inset) on
  some screens; fix would require insets handling per screen. Known hidden-API
  denial observed on-device: `ValueAnimator.sDurationScale` (read via
  reflection by the SVGA animation lib, `api=max-target-p`) — if SVGA throws
  uncaught, expect crashes in SVGA-heavy screens (mode picker, night-mode
  animations) at targetSdk 36; fix would be patching the reflection out or
  bumping/replacing the lib.
- Do NOT add `android:windowOptOutEdgeToEdgeEnforcement` to the theme: the
  build compiles against the Android 11 framework (`frame/1.apk`) and aapt
  rejects attributes added after API 30.
- `versionName` in `apktool.yml` ends with `-ModByYeasin`; keep the suffix and
  bump it deliberately when rebuilding for install/testing.
- Do not move, rename or "update" the ported `lib/*.so` files — they are the
  port (arcsoft, face-unlock, XDocProcess, etc.) and come from the stock app.
- Don't delete `original/`, `unknown/` or `assets/` "cleanups" — apktool needs
  them all to rebuild.
- apktool build prints `Picked up JAVA_TOOL_OPTIONS: -Xmx3G …`; harmless noise.

## On-device verification checklist (first install after the targetSdk 36 bump)
The user runs all on-device steps (never run `adb` yourself). After sign +
install:
1. Grant **All files access** for Camera (Settings → Apps → Camera →
   All files access / Special app access) — without it video and AR break.
2. Grant the **Notifications** permission if asked (Android 13+
   POST_NOTIFICATIONS), or QR-scan/FunVideo "saved to gallery" notifications
   won't appear (no crash).
3. Launch the app — watch for crashes at startup (non-SDK greylist blocking
   is the biggest risk at targetSdk 36).
4. Take a photo → confirm it lands in the gallery (MediaStore path).
5. Record a short video → confirm it saves and plays.
6. Open gallery/thumbnails inside the app → confirm thumbnails load.
7. AR mode / FunVideo / Slow motion / Timelapse → if any crash with
   `NoSuchMethodError`/`ClassNotFoundException`/`UnsatisfiedLinkError`, note
   the stack and report; that pinpoints whichever hidden API got blocked.
8. Check dialogs near the bottom (nav-bar overlap from edge-to-edge).
9. Barcode/QR scan result notification.

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
- Modernization commits on `main` (not yet pushed): build config/manifest
  (minSdk 33 / targetSdk 36, `a81f353`), PendingIntent mutability fix
  (`e254971`). `test.apk` in the root is the locally-built, unsigned
  modernization build — never commit it.
- `frame/`, `my-key.jks`, and the APKs exist only on this machine; a fresh
  clone cannot build until `frame/1.apk` is supplied and the APKs are rebuilt.
