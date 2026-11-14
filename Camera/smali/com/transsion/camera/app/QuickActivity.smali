.class public abstract Lcom/transsion/camera/app/QuickActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "QuickActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sResumeActivityNumber:I


# instance fields
.field private mIsPersistent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private final mOnStopTasks:Ljava/lang/Runnable;

.field private mSkippedFirstOnResume:Z

.field protected mSuperResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 187
    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 109
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$1;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$2;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/QuickActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/QuickActivity;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 63
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static accumulateActiveActivity()V
    .locals 1

    .line 190
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static decrementActiveActivity()V
    .locals 1

    .line 194
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static hasActiveActivity()Z
    .locals 1

    .line 198
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShortcut()Z
    .locals 2

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extras.IS_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "START"

    goto :goto_0

    :cond_0
    const-string p2, "END"

    .line 323
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 323
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startPreWarmService()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/CameraAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 407
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreWarmService Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected isKeyguardLocked()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isKeyguardSecure()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isPersistent()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 310
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 312
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate"

    const/4 v1, 0x1

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 163
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_persistent"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    .line 165
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 167
    sget p1, Lcom/transsion/camera/app/common/R$string;->no_support_split_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "onCreate need to be finished due to MultiWindow Mode"

    .line 170
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    .line 176
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x1

    .line 302
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionDestroyTasks()V

    .line 304
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 152
    sget-object v1, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final onPause()V
    .locals 4

    const-string v0, "onPause"

    const/4 v1, 0x1

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_0

    .line 250
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onPause --> onPauseTasks()"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionPauseTasks()V

    .line 253
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 255
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->decrementActiveActivity()V

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract onPermissionCreateTasks(Landroid/os/Bundle;)V
.end method

.method protected abstract onPermissionDestroyTasks()V
.end method

.method protected abstract onPermissionPauseTasks()V
.end method

.method protected abstract onPermissionRestartTasks()V
.end method

.method protected abstract onPermissionResumeTasks()V
.end method

.method protected abstract onPermissionStartTasks()V
.end method

.method protected abstract onPermissionStopTasks()V
.end method

.method protected final onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x1

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 295
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionRestartTasks()V

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onResume()V
    .locals 7

    const-string v0, "onResume"

    const/4 v1, 0x1

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 204
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 205
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 206
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    if-nez v2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->startPreWarmService()V

    .line 218
    :cond_0
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isShortcut()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_5

    .line 223
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0xf

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/16 v1, 0x1e

    .line 226
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v1, 0x0

    .line 227
    :cond_4
    sget-object v4, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 230
    :cond_5
    sget-object v1, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onResume --> onResumeTasks()"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iput-boolean v3, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    .line 235
    :goto_2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 236
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->accumulateActiveActivity()V

    .line 237
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    const-string v0, "onStart"

    const/4 v1, 0x1

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStartTasks()V

    .line 183
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStop()V
    .locals 6

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "onStop"

    .line 264
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    sget-object v3, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStop -->action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    .line 269
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v0, "lockscreen_affordance"

    .line 270
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volume_double_tap"

    .line 271
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onStop() --> postDelayed(onStopTasks,300)"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 282
    :cond_2
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onStop --> onStopTasks()"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iput-boolean v3, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStopTasks()V

    .line 287
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 288
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 318
    sget-object p0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    const-string v0, "keyguard"

    .line 346
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method
