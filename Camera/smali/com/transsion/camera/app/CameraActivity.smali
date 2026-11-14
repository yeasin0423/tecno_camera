.class public Lcom/transsion/camera/app/CameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;,
        Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;,
        Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;,
        Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;,
        Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;,
        Lcom/transsion/camera/app/CameraActivity$IntentProxy;,
        Lcom/transsion/camera/app/CameraActivity$IntentActionImpl;,
        Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;,
        Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;,
        Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;,
        Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

.field private mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field protected mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field protected mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

.field private mBGImageSavedListener:Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;

.field private mBackLensDirtyCounted:Z

.field private mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

.field private mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

.field private mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

.field private final mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

.field protected mChoseGallery:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private mFrontLensDirtyCounted:Z

.field private mGoingToARCore:Z

.field protected mGoingToGallery:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraDevice:Z

.field private final mIThermalThrottleListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLensDirtyHintSupported:Z

.field protected mIsProcessingUri:Z

.field private mIsResumed:Z

.field private mIsSuperNightGuideSupport:Z

.field private mIsVoiceInteractionRoot:Z

.field private mKeepGoingToARCoreTime:J

.field private final mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

.field private mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mNotLoadLatestThumbnail:Z

.field private mOrientation:I

.field private mOrientationListener:Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;

.field private final mOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

.field private mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

.field private mStartActivityFromCameraFlag:Z

.field private mState:Lcom/transsion/camera/app/common/IApp$State;

.field private mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

.field private mThumbnailMimeType:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mUseLifecycleBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    .line 123
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 129
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsLensDirtyHintSupported:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    .line 146
    sget-object v3, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v3, p0, Lcom/transsion/camera/app/CameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    const-wide/16 v3, 0x0

    .line 150
    iput-wide v3, p0, Lcom/transsion/camera/app/CameraActivity;->mKeepGoingToARCoreTime:J

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    .line 154
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mUseLifecycleBroadcast:Z

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    .line 162
    new-instance v2, Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsVoiceInteractionRoot:Z

    .line 165
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraActivity$1;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraActivity$2;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    return-void
.end method

.method static synthetic access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 99
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/CameraActivity;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/CameraActivity;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/CameraActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/app/CameraActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$1700(II)I
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/CameraActivity;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/CameraActivity;)Landroid/net/Uri;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/CameraActivity;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->showErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/CameraActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->gotoGallery(Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/IApp$State;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/common/IApp$State;)Lcom/transsion/camera/app/common/IApp$State;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/CameraActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/CameraActivity;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->doEnableWaitPage(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/CameraActivity;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->setNotLoadLatestThumnail(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/CameraActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/transsion/camera/app/CameraActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/transsion/camera/app/CameraActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/CameraActivity;ZII)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->doOnBatteryStatusChanged(ZII)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->hideErrorAndFinish()V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->showLensDirtyHintIfNeed()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/CameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/mode/ModeManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    return-object p0
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 881
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private doEnableWaitPage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->resetWaitPage()V

    goto :goto_0

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->removeWaitPage()V

    :goto_0
    return-void
.end method

.method private doOnBatteryStatusChanged(ZII)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/CameraAppUI;->onBatteryStatusChanged(ZII)V

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_1

    .line 696
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method

.method private doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .locals 8

    .line 1279
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsLensDirtyHintSupported:Z

    if-eqz v0, :cond_4

    .line 1280
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1284
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    if-nez v2, :cond_0

    .line 1287
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    goto :goto_0

    :cond_0
    return-void

    .line 1292
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    if-nez v2, :cond_4

    .line 1294
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    :goto_0
    const-string v2, "key_lens_dirty_count_down"

    const/4 v3, 0x0

    .line 1304
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1305
    sget-object v5, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShowLensDirtyHintIfNeed id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", countDown: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1306
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p1, :cond_2

    .line 1308
    :try_start_1
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const v5, 0x7f0f0081

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1309
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/CameraAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :catch_0
    move p1, v3

    :catch_1
    :goto_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_3

    const/16 p1, 0x82

    const/16 v1, 0x96

    .line 1317
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->randomValueIn(II)I

    move-result p1

    goto :goto_3

    :cond_3
    sub-int/2addr p1, v1

    .line 1321
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    nop

    :cond_4
    return-void
.end method

.method private getShowErrorMessage(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const p1, 0x7f0f0088

    .line 1145
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0022

    .line 1140
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getShowErrorTitle(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0023

    .line 1155
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private gotoGallery(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 4

    .line 906
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gotoGallery] view uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessingUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 912
    sget-object p1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "gotoGallery space in not enough, can not goto gallery."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 913
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const p2, 0x7f0f01c4

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 914
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 918
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 920
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 922
    :try_start_0
    iput-boolean p3, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    .line 923
    iput-boolean p3, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z

    .line 924
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 925
    iget p1, p0, Lcom/transsion/camera/app/CameraActivity;->mChoseGallery:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 926
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_3
    const p1, 0x7f01000e

    .line 928
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 950
    sget-object p1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[gotoGallery] SecurityException "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 931
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    .line 932
    sget-object p3, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[gotoGallery] Couldn\'t view "

    invoke-static {p3, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 933
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->loadLatestThumbnail()V

    if-eqz p2, :cond_6

    .line 935
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050047

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "com.google.android.apps.photos"

    .line 938
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 939
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, "com.google.android.apps.photosgo"

    .line 940
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 941
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p2, "com.gallery20"

    .line 944
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 945
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private hasVisibleFragment()Z
    .locals 1

    .line 746
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 747
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 748
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideErrorAndFinish()V
    .locals 2

    .line 1190
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideErrorAndFinish: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method private initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V
    .locals 2

    .line 1251
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initDeviceControl"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1252
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1253
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->init()V

    .line 1254
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    return-void
.end method

.method private static isAngleChanged(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, p1

    .line 873
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 874
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processStartSpecifyModeParams(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    if-nez p2, :cond_0

    .line 206
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataStore is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 212
    :cond_1
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 215
    :cond_2
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    if-eqz v0, :cond_3

    .line 216
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 218
    :cond_3
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    if-eqz v0, :cond_4

    .line 219
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 221
    :cond_4
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 224
    :cond_5
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz v0, :cond_6

    .line 225
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 227
    :cond_6
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-eqz v0, :cond_7

    .line 228
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 231
    :cond_7
    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mGoingToDocument:Z

    if-eqz p1, :cond_8

    .line 232
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V

    :cond_8
    return-void
.end method

.method private processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_0

    .line 301
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mModeManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "wideCameraId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_1
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 312
    :cond_2
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz p1, :cond_5

    .line 313
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    iget v1, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 826
    iget v1, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 828
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeWaitPage()V
    .locals 1

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetWaitPage()V
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 885
    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private setNotLoadLatestThumnail(Z)V
    .locals 0

    .line 1035
    iput-boolean p1, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    return-void
.end method

.method private showErrorAndFinish(I)V
    .locals 3

    .line 1162
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorAndFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 1168
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraActivity$4;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    .line 1176
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1000df

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 1177
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 1178
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1179
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 1180
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1181
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1185
    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    .line 1182
    :cond_3
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] activity is finishing, do noting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private showLensDirtyHintIfNeed()V
    .locals 3

    .line 1267
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsLensDirtyHintSupported:Z

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_0

    return-void

    .line 1271
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getSettingManager()Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 242
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "auto"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 244
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 243
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 246
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    return-void
.end method

.method private startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 251
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "on"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 250
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 253
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 252
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 260
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_hdr"

    const-string v2, "off"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 262
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 261
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 264
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 287
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_macro"

    const-string v2, "on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 286
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 289
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "wide_camera"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 288
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 269
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_super_definition"

    const-string v2, "off"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 268
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 271
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 270
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 273
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 278
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_super_definition"

    const-string v2, "on"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 280
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 279
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 282
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "off"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 12

    .line 294
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const-string v2, "on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 296
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const-string v7, "key_macro"

    const-string v8, "off"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    .line 295
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private unInitDeviceControl()V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1261
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1262
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 1263
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unInit()V

    return-void
.end method

.method private unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 838
    :cond_0
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
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4

    .line 1039
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1040
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1041
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/CameraActivity;->mChoseGallery:I

    if-eqz p3, :cond_0

    const-string p2, "image/jpeg"

    .line 1044
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 1046
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "processing_uri_intent_extra"

    .line 1047
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "isCamera"

    const/4 p2, 0x1

    .line 1051
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x10000000

    .line 1062
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const p1, 0x8000

    .line 1064
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1066
    :goto_1
    iget p0, p0, Lcom/transsion/camera/app/CameraActivity;->mChoseGallery:I

    if-ne p0, p2, :cond_2

    const-string p0, "com.google.android.apps.photos"

    .line 1067
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    const-string p0, "com.google.android.apps.photosgo"

    .line 1069
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string p0, "com.gallery20"

    .line 1071
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 1072
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1073
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 1074
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_2
    return-object v2
.end method

.method protected isSecureCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected loadLatestThumbnail()V
    .locals 2

    .line 627
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadLatestThumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected notifyNewMedia(Landroid/net/Uri;ZZ)V
    .locals 3

    .line 1204
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNewMedia, Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 1206
    iput-boolean p3, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    .line 1207
    iput-boolean p3, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1210
    iget-object p2, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "image/"

    .line 1211
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1212
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1213
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    const-string p3, "video/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1214
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1005
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 1007
    new-instance v0, Lcom/transsion/camera/app/intent/IntentParser;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p0}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1008
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyModeParams(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 1009
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    const-string v2, "arcore_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1011
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 1014
    :cond_1
    iget-boolean v1, v0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_2

    .line 1015
    iget-object v2, v0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 1018
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 1020
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_4

    .line 1021
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->setNotLoadLatestThumnail(Z)V

    .line 1022
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, mNotLoadLatestThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    if-nez v0, :cond_5

    return-void

    .line 1029
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1030
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 757
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 767
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v10, p0

    .line 319
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v11

    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 320
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->reInitFirstForPermission()V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/transsion/camera/app/CameraActivity;->mUseLifecycleBroadcast:Z

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/transsion/camera/app/CameraActivity;->mIsLensDirtyHintSupported:Z

    const/4 v12, 0x0

    .line 326
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 329
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v12

    .line 334
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 335
    sget-object v1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v1, v10}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 338
    new-instance v9, Lcom/transsion/camera/app/intent/IntentParser;

    invoke-direct {v9, v0, v4, v10}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 339
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v10, v9, v1}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyModeParams(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-string v1, "SpecifyMode"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v8

    const-string v3, "BokehMode"

    .line 345
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BokehOffMode"

    .line 346
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    .line 348
    iput-object v2, v9, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "1"

    .line 350
    iput-object v1, v9, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 353
    :cond_2
    :goto_1
    new-instance v1, Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;

    invoke-direct {v1, v10, v12}, Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    iget-object v2, v9, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {v10, v1, v2}, Lcom/transsion/camera/app/CameraActivity;->initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V

    .line 355
    iget-object v1, v9, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_2

    :cond_3
    move v1, v7

    :goto_2
    iput-boolean v1, v10, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    if-nez v1, :cond_4

    return-void

    .line 357
    :cond_4
    sget-object v1, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build product name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0176

    invoke-virtual {v10, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",persistent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 361
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_5

    const/4 v2, 0x3

    .line 362
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_3

    .line 364
    :cond_5
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 366
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 367
    invoke-static/range {p0 .. p0}, Lcom/transsion/camera/utils/ScreenUtils;->initScreenRatio(Landroid/content/Context;)V

    .line 369
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    const v1, 0x7f0c0026

    .line 370
    invoke-virtual {v10, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-static {v10}, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;->registerBackCallback(Landroid/app/Activity;)V

    const-string v1, "setContentView()"

    .line 371
    invoke-interface {v11, v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 373
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 374
    new-instance v1, Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const v2, 0x7f030013

    invoke-direct {v1, v10, v2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;-><init>(Landroid/content/Context;I)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-string v1, "FeatureProvider init."

    .line 375
    invoke-interface {v11, v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 377
    new-instance v1, Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/sound/ActionSound;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    const v1, 0x7f090079

    .line 379
    invoke-virtual {v10, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/view/ViewGroup;

    .line 380
    new-instance v1, Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/CameraAppUI;-><init>()V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/CameraActivity;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->setIsSecureCamera(Z)V

    .line 382
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->setVoiceInteraction(Z)V

    .line 383
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 384
    iget-object v13, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-boolean v14, v9, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    move-object v15, v9

    move-object/from16 v20, v1

    .line 384
    invoke-virtual/range {v13 .. v20}, Lcom/transsion/camera/app/ui/CameraAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 386
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {v10, v1}, Lcom/transsion/camera/app/CameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    const-string v1, "CameraAppUI init."

    .line 388
    invoke-interface {v11, v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 390
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;-><init>()V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 391
    new-instance v13, Lcom/transsion/camera/app/ModeUIPolicy;

    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->getAllEntryName()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/CameraActivity;->isSecureCamera()Z

    move-result v14

    iget-object v15, v10, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v0

    move v12, v6

    move v6, v14

    move v14, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/ModeUIPolicy;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Set;ZLcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    iput-object v13, v10, Lcom/transsion/camera/app/CameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 392
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v3, v9, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    iget-object v4, v10, Lcom/transsion/camera/app/CameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v5, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v6, v10, Lcom/transsion/camera/app/CameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    iget-object v7, v10, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v15, Lcom/transsion/camera/app/CameraActivity$IntentActionImpl;

    invoke-direct {v15, v10, v0}, Lcom/transsion/camera/app/CameraActivity$IntentActionImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Landroid/content/Intent;)V

    move-object v8, v13

    move-object v0, v9

    move-object v9, v15

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/camera/app/common/mode/ModeManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 394
    new-instance v1, Lcom/transsion/camera/app/PreviewIntercept;

    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/PreviewIntercept;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    .line 395
    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v2, v1, v12}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 396
    new-instance v1, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    .line 397
    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 398
    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    new-instance v4, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;

    invoke-direct {v4, v10, v2}, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 399
    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    new-instance v4, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;

    invoke-direct {v4, v10, v2}, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/CameraAppUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 400
    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v10, v2}, Lcom/transsion/camera/app/CameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 401
    new-instance v2, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->getSettingManager()Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    iput-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 402
    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->setKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;)V

    const-string v2, "ModeManager init."

    .line 404
    invoke-interface {v11, v2}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 406
    new-instance v2, Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/CameraActivity$IntentProxy;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5}, Lcom/transsion/camera/app/CameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/storage/AppStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    iput-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 407
    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getSettingManager()Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 408
    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    new-instance v3, Lcom/transsion/camera/app/CameraActivity$3;

    invoke-direct {v3, v10}, Lcom/transsion/camera/app/CameraActivity$3;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V

    const-string v2, "AppStorageManager init."

    .line 439
    invoke-interface {v11, v2}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 441
    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v3, v10, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->getSettingManager()Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/CameraAppUI;->setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 442
    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 443
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v1

    iput-boolean v1, v10, Lcom/transsion/camera/app/CameraActivity;->mIsVoiceInteractionRoot:Z

    .line 445
    iget-boolean v2, v0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 446
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-boolean v2, v0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v3, v0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    iget v4, v0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {v1, v2, v3, v14, v4}, Lcom/transsion/camera/app/ui/CameraAppUI;->setStartParameters(ZZZI)V

    .line 450
    :cond_6
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    new-instance v2, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 452
    new-instance v1, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 453
    new-instance v2, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;

    invoke-direct {v2, v10, v3}, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->setThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 454
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v10, v1}, Lcom/transsion/camera/app/CameraActivity;->registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 456
    new-instance v1, Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;-><init>()V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    .line 457
    invoke-virtual {v1, v10}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->init(Landroid/content/Context;)V

    .line 458
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    new-instance v2, Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;

    invoke-direct {v2, v10, v3}, Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;-><init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 459
    iget-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->start()V

    .line 461
    new-instance v1, Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;

    invoke-direct {v1, v10, v10}, Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;Landroid/content/Context;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mOrientationListener:Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;

    .line 463
    new-instance v1, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    iget-object v2, v10, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, v10, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/CameraActivity;->registerBackgroundImagesObserver()V

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supernight_guide_support"

    invoke-static {v10, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Lcom/transsion/camera/app/CameraActivity;->mIsSuperNightGuideSupport:Z

    .line 468
    invoke-direct {v10, v0}, Lcom/transsion/camera/app/CameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 469
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 3

    .line 592
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit1()V

    .line 597
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->unInitDeviceControl()V

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit2()V

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unInit()V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->destroy()V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->unInit()V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 606
    iput-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unInit()V

    .line 608
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->unRegisterBackgroundImagesObserver()V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/sound/ActionSound;->release()V

    .line 610
    iput-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    .line 611
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->quitCameraResetValue()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 3

    .line 619
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterAnimationComplete, mAppUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->onEnterAnimationComplete()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1231
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1237
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1242
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1247
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 5

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-nez v0, :cond_0

    .line 703
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onNewIntentTasks return because onCreate is not exec."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "DocumentActivity"

    .line 710
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ModeName"

    const-string v3, "DocumentEntry"

    .line 712
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 715
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 716
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 718
    new-instance v2, Lcom/transsion/camera/app/intent/IntentParser;

    invoke-direct {v2, p1, v0, p0}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyModeParams(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 720
    iget-boolean v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    const-string v3, "volume_double_tap"

    .line 721
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "open_camera_mode"

    .line 722
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    if-nez p1, :cond_2

    iget-boolean p1, v2, Lcom/transsion/camera/app/intent/IntentParser;->mGoingToDocument:Z

    if-eqz p1, :cond_3

    .line 723
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 724
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateUIState(IILjava/lang/String;)V

    .line 728
    :cond_3
    iget-boolean p1, v2, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p1, :cond_4

    .line 733
    iget-object v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 736
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->setVoiceInteraction(Z)V

    .line 737
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/CameraActivity;->mIsVoiceInteractionRoot:Z

    .line 738
    iget-boolean v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 739
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-boolean v0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v1, v2, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    const/4 v3, 0x0

    iget v4, v2, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/transsion/camera/app/ui/CameraAppUI;->setStartParameters(ZZZI)V

    .line 742
    :cond_5
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/CameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    return-void
.end method

.method protected onPauseTasks()V
    .locals 5

    .line 536
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/CameraActivity;->mKeepGoingToARCoreTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 539
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    .line 541
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mUseLifecycleBroadcast:Z

    if-eqz v0, :cond_2

    .line 542
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.action.PAUSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "transsion.permission.camera.LIFE_CYCLE"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    .line 546
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 548
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->pause()V

    .line 549
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->pause()V

    .line 550
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 551
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-boolean v4, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->pause(Z)V

    .line 552
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->pausePreviewUI()V

    .line 553
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListener:Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v2, -0x1

    .line 554
    iput v2, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientation:I

    .line 555
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->pause()V

    .line 556
    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->stop()V

    .line 557
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->doEnableWaitPage(Z)V

    .line 558
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz p0, :cond_3

    .line 560
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setEnabled(Z)V

    .line 562
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    return-void
.end method

.method protected onResumeTasks()V
    .locals 6

    .line 487
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 488
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    .line 489
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 490
    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    .line 491
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mUseLifecycleBroadcast:Z

    if-eqz v0, :cond_1

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.action.RESUME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "transsion.permission.camera.LIFE_CYCLE"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 499
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 500
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z

    goto :goto_0

    .line 502
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsSuperNightGuideSupport:Z

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_super_night_guild"

    const-string v5, "off"

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    if-eqz v0, :cond_4

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/app/CameraActivity;->mKeepGoingToARCoreTime:J

    .line 509
    :cond_4
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToARCore:Z

    .line 510
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    .line 511
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 512
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    .line 513
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->enhanceScreenBrightness(Landroid/app/Activity;)V

    .line 514
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->resume()V

    .line 516
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/CameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resume()V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->resume()V

    .line 519
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    if-nez v0, :cond_5

    .line 520
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->loadLatestThumbnail()V

    .line 522
    :cond_5
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mNotLoadLatestThumbnail:Z

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v3, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v3, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mOrientationListener:Lcom/transsion/camera/app/CameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->resume()V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->start()V

    .line 528
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/CameraActivity;->doEnableWaitPage(Z)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz p0, :cond_6

    .line 530
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitSettingFragment()V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitGuideFragment()V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitEditorFragment()V

    .line 573
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStartTasks()V
    .locals 1

    .line 474
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->start()V

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz p0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->start()V

    .line 482
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraStartTime()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 2

    .line 578
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_1

    .line 580
    iget-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->stop(Z)V

    .line 581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isPersistent()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 583
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 584
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 587
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraEndTime()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 679
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 687
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;->resetWaitPage()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected registerBackgroundImagesObserver()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setChangeListener(Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;)V

    .line 634
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected showWaitPage()V
    .locals 3

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isSecureCamera"

    const/4 v2, 0x0

    .line 649
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mStartActivityFromCameraFlag:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 654
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected unRegisterBackgroundImagesObserver()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 642
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setChangeListener(Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;)V

    .line 643
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 793
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateThumbnailUri(Landroid/net/Uri;Z)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1223
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    :goto_1
    return-void
.end method
