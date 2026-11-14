.class public Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.super Ljava/lang/Object;
.source "AsdParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final OFF:I

.field private static final ON:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgorithm:I

.field private mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

.field private mAsdEnhanceValues:[I

.field private mAsdOpenState:Z

.field private mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mCurrentValue:Ljava/lang/String;

.field private mDspSupport:Z

.field private mEffect:I

.field private mFakeCameraSupport:Z

.field private mNightShotOpenState:Z

.field private mPortraitModeEnhanceSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSuperResolutionOpend:Z

.field private mSupportTranssionHdr:Z

.field private mSupportedSuperResolution:Z

.field mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "0"

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    const-string v0, "1"

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 81
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 82
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    .line 85
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    .line 93
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

    .line 205
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 115
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 116
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 117
    new-instance p1, Lcom/transsion/camera/feature/setting/asd/AsdConfig;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/camera/feature/setting/asd/AsdConfig;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void

    :array_0
    .array-data 4
        -0x1
        0x64
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return p1
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private isWideCamera()Z
    .locals 2

    .line 412
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

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

.method private needShow()Z
    .locals 6

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 506
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    if-eqz v0, :cond_6

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 508
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x30

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_2

    const v4, 0x2dddaf

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "auto"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_5

    .line 517
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "asd value is abnormal."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method private refreshTypeValue(II)V
    .locals 0

    .line 448
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 449
    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 450
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI()V

    return-void
.end method

.method private setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 477
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setASDCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setAsdCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 481
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setAsdCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V

    :goto_0
    return-void
.end method

.method private setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->needSkipMiddleNightSetting()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    :cond_0
    return-void
.end method

.method private setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "0"

    .line 243
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "off"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, "key_asd_effect_state"

    const-string v8, "on"

    if-eqz v3, :cond_2

    .line 244
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 245
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 246
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 247
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 248
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isHighResolutionSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 251
    :cond_0
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 252
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    aput v5, v2, v6

    .line 253
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    .line 254
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v2, v7, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPortraitEnhanceSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_portraitmode_enhance"

    .line 256
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 265
    :cond_2
    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v3, v9, :cond_3

    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v3, v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isWideCamera()Z

    move-result v3

    if-nez v3, :cond_3

    .line 266
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    goto :goto_1

    .line 268
    :cond_3
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-direct {v0, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v3

    :goto_1
    const/16 v10, 0x65

    if-ne v3, v10, :cond_4

    .line 271
    iget-boolean v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    if-nez v11, :cond_4

    .line 272
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 274
    :cond_4
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v12, "key_hdr"

    invoke-interface {v11, v12}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x7

    if-eqz v11, :cond_8

    .line 275
    iget v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    const/4 v14, 0x6

    if-eq v11, v14, :cond_5

    if-eqz v11, :cond_5

    const/4 v14, 0x5

    if-ne v11, v14, :cond_6

    :cond_5
    const/4 v3, 0x2

    .line 280
    :cond_6
    invoke-direct {v0, v13}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v11

    if-ne v11, v13, :cond_8

    .line 281
    iget v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-eq v11, v9, :cond_7

    const/16 v14, 0x8

    if-ne v11, v14, :cond_8

    :cond_7
    move v3, v13

    .line 288
    :cond_8
    iget v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v9, v11, :cond_9

    iget v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v9, v11, :cond_9

    .line 289
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v13

    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 290
    invoke-interface {v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v14, "key_dsp_lowlight_mode"

    const-string v15, "on"

    .line 289
    invoke-virtual/range {v13 .. v18}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 292
    :cond_9
    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v13

    iget-object v11, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 293
    invoke-interface {v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v14, "key_dsp_lowlight_mode"

    const-string v15, "off"

    .line 292
    invoke-virtual/range {v13 .. v18}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 295
    :goto_2
    sget-object v11, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAlgorithm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " changeAlgorithm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " mDspSupport = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " HDR = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v14, v12}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v3, v10, :cond_d

    packed-switch v3, :pswitch_data_0

    .line 372
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 373
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 374
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 375
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 376
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 377
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_5

    .line 355
    :pswitch_0
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 356
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 357
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 358
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 359
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 360
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_5

    .line 308
    :pswitch_1
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 309
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 310
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 311
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 312
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 313
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_5

    .line 347
    :pswitch_2
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 348
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 349
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 350
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 351
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 352
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_5

    :pswitch_3
    const-string v3, "1"

    .line 334
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 335
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_3

    .line 337
    :cond_a
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 339
    :goto_3
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 340
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 341
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 342
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 343
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_5

    .line 316
    :pswitch_4
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 317
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 318
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 319
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 320
    iget-boolean v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    if-eqz v2, :cond_c

    .line 321
    iget v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v2, v9, :cond_b

    iget-boolean v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isWideCamera()Z

    move-result v2

    if-nez v2, :cond_b

    .line 322
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 323
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto/16 :goto_5

    .line 325
    :cond_b
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 326
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto/16 :goto_5

    .line 329
    :cond_c
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 330
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_5

    .line 300
    :pswitch_5
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 301
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 302
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 303
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 304
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 305
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto :goto_5

    .line 363
    :cond_d
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 364
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 365
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 366
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 367
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 368
    sget-object v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSuperResolutionOpend = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " support  = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-boolean v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    if-eqz v2, :cond_e

    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    goto :goto_4

    :cond_e
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    :goto_4
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 380
    :goto_5
    iget v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 397
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    aput v2, v3, v6

    .line 398
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isASDEnhanceSupport()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_asd_enhance"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 399
    iget v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v2, v9, :cond_f

    iget-boolean v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mPortraitModeEnhanceSupport:Z

    if-eqz v2, :cond_f

    .line 400
    invoke-virtual {v1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    goto :goto_6

    .line 402
    :cond_f
    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    .line 404
    :goto_6
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v2, v7, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 406
    :cond_10
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    aput v5, v2, v6

    .line 408
    :goto_7
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 3

    .line 454
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getHdrAsdBothSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 455
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 1

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 464
    sget p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    :goto_0
    return-void
.end method

.method private updateAlgorithm(I)I
    .locals 2

    .line 417
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 423
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type front"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 428
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 433
    :cond_2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type front wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 438
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type LongFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 419
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type Back"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    return p1
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 198
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters,ASD newValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-gt v1, v4, :cond_0

    goto :goto_3

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    const-string v1, "1"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    sget v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    goto :goto_1

    .line 179
    :cond_2
    :goto_0
    sget v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    .line 183
    :goto_1
    invoke-direct {p0, v3, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI()V

    .line 188
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 189
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    .line 190
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    :cond_4
    return v2

    :cond_5
    :goto_3
    const-string v0, ""

    .line 169
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 170
    sget v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    const-string v0, "0"

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v3, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    return v2
.end method

.method public refreshAsdStateImmediately(I)V
    .locals 4

    .line 220
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAsdStateImmediately type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    goto :goto_0

    .line 234
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    goto :goto_0

    .line 231
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    goto :goto_0

    .line 226
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    const-string p1, ""

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 228
    invoke-direct {p0, v2, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    goto :goto_0

    .line 223
    :cond_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    :goto_0
    return-void
.end method

.method protected refreshToUI()V
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 488
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 490
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 491
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v1

    .line 493
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v4, "key_hdr"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, -0x1

    :cond_2
    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    .line 498
    iget v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    aput v3, v2, v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->needShow()Z

    move-result p0

    invoke-interface {v0, v2, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 128
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    .line 129
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    .line 130
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 133
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isHighDefinitionMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_definition"

    .line 134
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 135
    :goto_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr v4, v0

    const v0, 0x1312d00

    if-gt v4, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 136
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperResolutionSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    .line 138
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPortraitModeEnhanceSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mPortraitModeEnhanceSupport:Z

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "0"

    const-string v4, "auto"

    if-gt v0, v2, :cond_5

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    .line 147
    :goto_3
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPhotoHDRModes()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 150
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {v0, v4, v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getFakeCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportFakeDualCamera()Ljava/util/List;

    move-result-object v0

    const-string v3, "raw_yuv"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    goto :goto_4

    .line 157
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    .line 159
    :goto_4
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isDspSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    .line 160
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return-void
.end method

.method public setSuperResolutionOpend(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    return-void
.end method
