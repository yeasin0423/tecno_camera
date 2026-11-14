.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "ScreenFlash.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

.field private mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

.field private mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 76
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 141
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateCaptureState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashRequiredState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashState()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method private isFlashRequired()Z
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 309
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method private isLedFlashSupport()Z
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 301
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashFireSupport()Z
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 317
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashSupport()Z
    .locals 1

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 293
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method private updateCaptureState(Z)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 325
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateCaptureState(Z)V

    return-void
.end method

.method private updateFlashRequiredState(Z)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 333
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashRequiredState(Z)V

    return-void
.end method

.method private updateFlashState()V
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 341
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashState()V

    return-void
.end method

.method private updateScreenFlashState(Z)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 152
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen flash view is already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "show"

    goto :goto_0

    :cond_0
    const-string p1, "hide"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashStateImpl(Z)V

    return-void
.end method

.method private updateScreenFlashStateImpl(Z)V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataCallback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashStart(Landroid/content/Context;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashEnd(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 226
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerFactory;->getScreenController()Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    move-object v0, p2

    .line 220
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onFlashFire()V
    .locals 2

    .line 183
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFlashFire"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFlashValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    sget-object p3, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideValues] headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,currentValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getValue()="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isLedFlashSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 278
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    .line 201
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    return-void
.end method
