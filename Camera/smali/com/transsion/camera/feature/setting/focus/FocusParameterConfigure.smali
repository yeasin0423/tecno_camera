.class public Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
.implements Lcom/transsion/camera/feature/setting/focus/IFocusController;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mCurrentFocusMode:Ljava/lang/String;

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mDisableUpdateFocusState:Z

.field private final mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusState:Ljava/lang/String;

.field private mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mIsAutoFocusTriggered:Z

.field private mIsSupportedFocus:Z

.field private final mLock:Ljava/lang/Object;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mSupportedFocusModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    const-string v0, "INACTIVE"

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    .line 268
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return p1
.end method

.method private applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->needApplyFocusCapabilities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[applyFocusCapabilities] no need update focus capabilities mCurrentFocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsAutoFocusTriggered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusAreas(Ljava/util/List;)V

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private initFocusMode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initFocusMode] + "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 223
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "continuous-picture"

    .line 226
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    .line 227
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    .line 228
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_2

    .line 229
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 234
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initFocusMode] -, mCurrentFocusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needApplyFocusCapabilities()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V
    .locals 4

    .line 312
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAfCallback] + isContinueAf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 315
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 317
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    .line 319
    :goto_0
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    .line 320
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    const-string v2, "ACTIVE_SCAN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 321
    sget-object p2, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[updateAfCallback] cancelAutoFocus"

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->cancelAutoFocus()V

    .line 324
    :cond_1
    sget-object p2, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[updateAfCallback] autoFocus"

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 326
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    const-string p1, "INACTIVE"

    .line 328
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    .line 331
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateAfCallback] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 210
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v3, "auto"

    invoke-static {v3, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    .line 212
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfMeteringAreas()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    .line 213
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCapabilities] mFocusAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mMeteringAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateFocusState(Ljava/lang/String;J)V
    .locals 2

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    if-eqz v1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Ljava/lang/String;J)V

    goto :goto_0

    .line 340
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFocusStateListener is null, can not update focus state"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[autoFocus]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] configCommand mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCommand] - mCurrentFocusMode does not supported with mSupportedFocusModeList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->notifyModeChanged(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters] mCurrentFocusMode is not supported in current platform"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isFocusCanDo()Z
    .locals 4

    .line 113
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFocusCanDo] + focusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "infinity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[isFocusCanDo] - mFocusAreaSupported is false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 123
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-nez p0, :cond_2

    .line 124
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[isFocusCanDo] - mMeteringAreaSupported is false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 127
    :cond_2
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[isFocusCanDo] - return true"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 115
    :cond_3
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFocusCanDo] - focusMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideFocusMode] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mCurrentFocusMode ="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eq p2, p1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 153
    sget-object p2, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideFocusMode, requestChangeCommand currentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetAutoFocusTriggered()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return-void
.end method

.method public restoreContinue()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreContinue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "continuous-picture"

    .line 170
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "continuous-video"

    .line 171
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 173
    sget-object v1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreContinue, sendSettingChangeRequest and requestChangeCommand, value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->sendSettingChangeRequest()V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 51
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->initFocusMode(Ljava/util/List;)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    :cond_1
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initPlatformSupportedValues] supportedFocusModeList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method public updateFocusCallback()V
    .locals 3

    .line 181
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFocusCallback requestChangeCommand: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
