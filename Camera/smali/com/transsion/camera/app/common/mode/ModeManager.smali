.class public Lcom/transsion/camera/app/common/mode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;,
        Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;,
        Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAuxSurfaceReady:Z

.field private mBatteryStatus:I

.field private mCameraFaceBack:Z

.field private final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mDefaultCameraInCurrentFace:Ljava/lang/String;

.field private mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field private mInCameraSwitch:Z

.field private mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field private mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mIsDeviceControlAvailable:Z

.field private mIsLifterSupport:Z

.field private volatile mIsPreviewSizeChanged:Z

.field private mIsResetCurrentMode:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mModeChangeHandler:Landroid/os/Handler;

.field private final mModeChangeLock:Ljava/lang/Object;

.field private mModeChangeThread:Landroid/os/HandlerThread;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mModeSupportAuxPreview:Z

.field private mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mNeedCheckAIGroup:Z

.field private mNeedCheckOrientation:Z

.field private mNeedSwitchCameraID:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mOrientation:I

.field private mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurfaceHeight:I

.field private mPreviewSurfaceObject:Ljava/lang/Object;

.field private mPreviewSurfaceReady:Z

.field private mPreviewSurfaceWidth:I

.field private mResumed:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTemperatureStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 77
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 78
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    const-string v1, "0"

    .line 83
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v3, -0x1

    .line 88
    iput v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 94
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    .line 107
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    .line 109
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 154
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 1530
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 1531
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 115
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchVideoCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/app/common/mode/ModeManager;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/app/common/mode/ModeManager;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 55
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleSurfaceChanged(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleRestoreSettings()V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    return p1
.end method

.method private canSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1381
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1382
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The number of camera is below the threshold."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1386
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->sameFacing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private canTargetModeSupportSAT(Z)Z
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkAutoWideSwitch(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 3

    .line 692
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_horizon_switch_wide"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 696
    iget p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    const/16 v0, 0x5a

    const-string v2, "front_wide_camera"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 1280
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 3

    .line 1340
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMode] featureName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatureSync(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method private currentSettingSupportSAT()Z
    .locals 1

    .line 1139
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "key_super_definition"

    .line 1143
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    if-nez p0, :cond_1

    move-object p0, v0

    .line 1145
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 1083
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    return-object p0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const-string v1, "0"

    .line 1087
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1088
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1093
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1094
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1095
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlackWhitePortraitCamera()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1096
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    .line 1098
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1099
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1100
    :cond_5
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportPeriscopeCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1101
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1102
    :cond_6
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_a

    .line 1103
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object p1

    .line 1104
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_horizon_switch_wide"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1106
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v2, "front_wide_camera"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1108
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v1, p1

    goto/16 :goto_3

    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    move-object v3, p1

    :goto_1
    const/4 p1, 0x0

    .line 1110
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1111
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    move-object v1, v3

    goto/16 :goto_3

    .line 1113
    :cond_a
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportFrontFakeDualLens()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1114
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontFakeDualCamera()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1115
    :cond_b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackFakeDualLens()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1116
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackFakeDualCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1117
    :cond_c
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1118
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    .line 1119
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v3, "key_brightbess_value"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value_light"

    .line 1120
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1121
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    .line 1124
    :cond_d
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1125
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentSettingSupportSAT()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1126
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1130
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForNormal(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    move-object v1, v0

    goto :goto_3

    .line 1097
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v1

    .line 1134
    :cond_11
    :goto_3
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_12

    .line 1135
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    :cond_12
    return-object v1
.end method

.method private getNewID(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    .line 722
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 723
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string p2, "key_brightbess_value"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "value_light"

    .line 727
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 730
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 724
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p1

    .line 1362
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz p1, :cond_1

    const-string p0, "1"

    return-object p0

    .line 1366
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1367
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    const-string p0, "0"

    return-object p0
.end method

.method private handleModeChanged(Ljava/lang/String;)V
    .locals 5

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 815
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 820
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private handleRestoreSettings()V
    .locals 5

    .line 278
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRestoreSettings thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mModeSwitchPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mDeviceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 286
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->isSmartModeOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateSmartModeNames()V

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI()V

    .line 292
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backmodesstring"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backmainmodescount"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frontmodesstring"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frontmainmodescount"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->restoreAppUI()V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->nonDefaultCameraInASDMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->restoreSettingsForWideCamera(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 312
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v4

    .line 313
    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->restoreParameters(Z)V

    return-void

    :cond_5
    xor-int/2addr v1, v2

    .line 317
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 318
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-nez v1, :cond_6

    .line 319
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    :cond_6
    return-void

    .line 281
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_8

    const/16 v0, 0x14

    .line 282
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_8
    return-void
.end method

.method private handleSurfaceChanged(Ljava/lang/Object;II)V
    .locals 3

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_1

    .line 1519
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1520
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 1521
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1522
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 1525
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    if-eqz v0, :cond_2

    .line 1526
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setPreviewDisplay(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private initAppUI()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatureResources(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method private initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V
    .locals 8

    .line 954
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 955
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 956
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    iget v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 958
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 960
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(Z)V

    .line 961
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 962
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 963
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 964
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 965
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 966
    iget p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    invoke-interface {p1, v0, p2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    return-void
.end method

.method private isCameraFacingBack(Ljava/lang/String;)Z
    .locals 0

    .line 756
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVideoCameraSupportCurrentQuality()Z
    .locals 4

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 736
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    .line 735
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6_60"

    .line 737
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 740
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 741
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v1, "_"

    .line 742
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    const-string v1, "0"

    .line 744
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 745
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 746
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v2
.end method

.method private modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 788
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeSupportFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 768
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportFrontWideCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeSupportMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 764
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportMacroCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeSupportVideoCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 772
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeSupportWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 760
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportWideCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needReopenForBW(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 568
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 569
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[needReopenForBW],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForDualCamBW(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 582
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 583
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isSupportDualCamBW],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForFake(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 594
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportFrontFakeDualLens()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackFakeDualLens()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    if-eqz p2, :cond_4

    .line 596
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportFrontFakeDualLens()Z

    move-result p1

    if-nez p1, :cond_2

    .line 597
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackFakeDualLens()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 598
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[needReopenForFake],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 2

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p0

    .line 783
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[needReopenForFrontWide],needReOpenCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 5

    .line 664
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v2, "key_horizon_switch_wide"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 667
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 668
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->checkAutoWideSwitch(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 670
    iget v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    if-eqz v1, :cond_2

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 671
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v4

    .line 675
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "front_wide_camera"

    .line 676
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 677
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-eqz v2, :cond_5

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return v4

    .line 681
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    .line 682
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p2

    xor-int/2addr p1, p2

    if-eqz v0, :cond_6

    .line 684
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private needReopenForMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 4

    .line 655
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_macro"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 657
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 658
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p2

    .line 659
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private needReopenForNormal(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->reopenBackDefaultCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p0

    return p0
.end method

.method private needReopenForOpticalZoom()Z
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private needReopenForPeriscope(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 588
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportPeriscopeCamera()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 589
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportPeriscopeCamera()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 590
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isSupportPeriscope],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForSecondLogical(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 575
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 576
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[needReopenForTele],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForStereo(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 561
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 562
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[needReopenForStereo],needReOpenCamera: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForVideo(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 5

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 708
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    .line 709
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v2, "wide_camera"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v4, "key_macro"

    .line 711
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 715
    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportVideoCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    .line 716
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getNewID(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_4

    .line 718
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    move v0, v3

    :cond_4
    :goto_2
    return v0
.end method

.method private needReopenForWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 2

    const/4 v0, 0x0

    .line 776
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 777
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[needReopenForWide],needReOpenCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private needReopenForWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 7

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_macro"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "wide_camera"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 606
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 608
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    .line 607
    invoke-virtual {v0, v1, v6, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 612
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 613
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    .line 614
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    .line 615
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p0

    xor-int/2addr p0, p1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    return v4
.end method

.method private notModeSwitchCondition(Ljava/lang/String;)Z
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 541
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] currentMode is same with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 544
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez p0, :cond_1

    .line 545
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] state is not resumed ,can not change to mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onModeChanged(Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 825
    iget-boolean v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/16 v4, 0x35

    if-eqz v3, :cond_0

    .line 826
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 827
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 828
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[onModeChanged] is in camera switch, return"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 829
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 830
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 834
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 835
    iget-boolean v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v1, :cond_1

    .line 836
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 840
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 842
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 843
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 844
    :try_start_1
    sget-object v1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "currentMode is same, mModeChangeLock notifyAll"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 845
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 846
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 849
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 851
    sget-object v3, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onModeChanged], ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 852
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeBefore()V

    .line 854
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 855
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 858
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 860
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 862
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForStereo(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v1

    .line 863
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForBW(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v4

    .line 864
    iget-object v6, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForSecondLogical(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v6

    .line 865
    iget-object v7, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v7

    .line 866
    iget-object v8, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v8}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForNormal(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v8

    .line 867
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v9}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForMacro(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v9

    .line 868
    iget-object v10, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v10}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForFrontWide(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v10

    .line 869
    iget-object v11, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v11}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForFake(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v11

    .line 870
    iget-object v12, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v12}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForVideo(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v12

    .line 871
    iget-object v13, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v13}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForDualCamBW(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v13

    if-eqz v3, :cond_3

    .line 872
    iget-boolean v15, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3, v15, v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 873
    :goto_1
    iget-object v15, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v15, :cond_4

    iget-boolean v14, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v15, v14, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eq v5, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 875
    :goto_3
    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v3, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForPeriscope(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v5

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-nez v13, :cond_7

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->needReopenForOpticalZoom()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 882
    :goto_5
    sget-object v4, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onModeChanged], needReopenForStereo:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForWide:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForNormal:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForMacro:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForFrontWide:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForFake:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForVideo:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenForDualCamBW:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,needReopenCamera:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",needReopenForSAT:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_8

    .line 888
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 890
    :cond_8
    invoke-direct {v0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    if-eqz v5, :cond_9

    .line 893
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 896
    :cond_9
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 897
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 898
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 899
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 901
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeAfter()V

    return-void
.end method

.method private reopenBackDefaultCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 2

    .line 626
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->reopenBackDefaultCameraInWideCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 630
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->reopenBackDefaultCameraInSATCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private reopenBackDefaultCameraInSATCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reopenBackDefaultCameraInWideCamera(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 5

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 642
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v4, "key_macro"

    .line 648
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 649
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportWide(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    .line 651
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method private restoreAppUI()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->restoreCurrentMode()V

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI()V

    return-void
.end method

.method private restoreSettingsForWideCamera(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 910
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v1

    .line 911
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 914
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 916
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 917
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 918
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_1

    .line 924
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 928
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 929
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private sameFacing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1393
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 1394
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendCommandToLifter()V
    .locals 8

    .line 1058
    const-class p0, Ljava/lang/String;

    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendCommandToLifter+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 1060
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1061
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "lifter_service"

    aput-object v3, v1, v4

    const/4 v3, 0x0

    .line 1062
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.transsion.lifter.ITranLifterManagerService$Stub"

    .line 1063
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    .line 1064
    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 1065
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setCameraStateSync"

    new-array v5, v2, [Ljava/lang/Class;

    aput-object p0, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "com.transsion.camera"

    aput-object v2, v1, v4

    .line 1067
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1069
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1071
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "sendCommandToLifter-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchBlurCamera(Ljava/lang/String;)V
    .locals 2

    .line 1287
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1292
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1295
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1299
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1300
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const-string v0, "on"

    .line 1302
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1303
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlackWhitePortraitCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1307
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 1308
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1309
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1288
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchBlurCamera] can not switch blur camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchDualCamBWCamera(Ljava/lang/String;)V
    .locals 2

    .line 1313
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1318
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1320
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    const-string v0, "on"

    .line 1325
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1326
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 1328
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1331
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1332
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1314
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchDualCamBWCamera] can not switch DualCamBW camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1252
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;Z)V
    .locals 2

    .line 1234
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1239
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1241
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1245
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;Z)V

    .line 1246
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1247
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1248
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1235
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[switchSatCamera] can not switch sat camera mInCameraSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mResumed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchVideoCamera(Ljava/lang/String;)V
    .locals 8

    .line 186
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 191
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchVideoCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 199
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v4

    .line 200
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 202
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 203
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v5, v0, v2, v6}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_3

    .line 206
    :cond_2
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 207
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_4

    .line 211
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    invoke-interface {v3, v0, v6, v7}, Lcom/transsion/camera/app/common/IAppUI;->updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "on"

    .line 215
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 221
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    .line 224
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 226
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 187
    :cond_8
    :goto_3
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchVideoCamera] can not switch video camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideAndMacro()V
    .locals 0

    .line 1149
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method private switchWideCamera(Ljava/lang/String;)V
    .locals 2

    .line 1164
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;)V

    return-void

    .line 1165
    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchWideCamera] can not switch wide camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideCameraImpl(Ljava/lang/String;)V
    .locals 8

    .line 1173
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchWideCameraImpl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1174
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1175
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1176
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1179
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1180
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1181
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v4

    .line 1182
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1184
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1185
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v5, v0, v2, v6}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1187
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    .line 1188
    :cond_1
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1189
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1192
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_3

    .line 1193
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    invoke-interface {v3, v0, v6, v7}, Lcom/transsion/camera/app/common/IAppUI;->updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1194
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "on"

    .line 1197
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1198
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object p1

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x3e

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1202
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1204
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1205
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1207
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    .line 1208
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontDefaultCamera()Ljava/lang/String;

    move-result-object p1

    .line 1209
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1210
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontDefaultCamera()Ljava/lang/String;

    move-result-object p1

    .line 1212
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1213
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1214
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v3, "key_brightbess_value"

    .line 1215
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "value_dark"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1216
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    .line 1217
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1219
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1223
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v4, :cond_d

    goto :goto_3

    .line 1226
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_4

    .line 1224
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 1228
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1229
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1230
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private unInitAppUI()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->destroyFeatureResources(Ljava/lang/Class;)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    return-void
.end method

.method private unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 950
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->unInit()V

    return-void
.end method

.method private updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .locals 0

    .line 1345
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->updateFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateZoom(Ljava/lang/String;Z)V
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "100"

    .line 1261
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 1264
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    .line 1265
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v1

    .line 1267
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, p2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result p2

    .line 1269
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1272
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1274
    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSettingManager()Lcom/transsion/camera/app/common/setting/ISettingManager;
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 327
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 328
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 329
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 330
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 331
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 332
    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 333
    iput-object p8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 335
    new-instance p1, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 336
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 337
    new-instance p1, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    .line 339
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CameraModeChangeThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 340
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 341
    new-instance p1, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 347
    new-instance p2, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/setting/SettingManager;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 348
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/transsion/camera/app/common/setting/SettingManager;->init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 349
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-interface {p5, p6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/transsion/camera/app/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI()V

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_restore_settings_notify_ui"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_ai_group_photo_camera_id"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_video_camera_change"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 365
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLifterSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsLifterSupport:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 1636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 1637
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 1408
    iput p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 1409
    iput p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 1410
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    .line 1411
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 1413
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    if-eqz p0, :cond_1

    .line 1414
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 554
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(Z)V

    const/4 p1, 0x0

    .line 555
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    :cond_0
    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 7

    .line 971
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v0, :cond_0

    .line 972
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onCameraSwitch] is in camera switch"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 975
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_1

    .line 976
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCameraSwitch] state mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 979
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onCameraSwitch]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 984
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->canSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 986
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 988
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_camera_damaged"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 987
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 993
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 996
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsLifterSupport:Z

    if-eqz v2, :cond_4

    const-string v2, "1"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 997
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->sendCommandToLifter()V

    .line 999
    :cond_4
    sget-object v2, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onCameraSwitch] start."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1000
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1002
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1003
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1005
    :cond_5
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1006
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 1007
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "front_wide_camera"

    const-string v6, "off"

    .line 1006
    invoke-virtual {v2, v5, v6, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1008
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1010
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1011
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1012
    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v4

    .line 1013
    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1015
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1016
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1017
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-nez v5, :cond_7

    .line 1018
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v5, v0, v1, v6}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1019
    :cond_7
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1021
    :goto_0
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1023
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_9

    .line 1024
    :cond_8
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1027
    :cond_9
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_a

    const/4 v6, 0x0

    .line 1028
    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1029
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 1030
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1031
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    invoke-interface {v2, v0, p1, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1032
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1, v5}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v4, :cond_c

    .line 1039
    :cond_b
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1041
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v4, :cond_d

    goto :goto_1

    .line 1047
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1048
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1049
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_2

    .line 1044
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Z)V

    .line 1045
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1051
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1053
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1054
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onCameraSwitch] end."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExchangeWideAndMacro()V
    .locals 2

    .line 1513
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onExchangeWideAndMacro] "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideAndMacro()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1399
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 1400
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 1401
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_1

    .line 1402
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onOrientationChanged(I)V

    :cond_1
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSingleTapUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSwitchBlurCamera(Ljava/lang/String;)V
    .locals 3

    .line 1491
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchBlurCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1492
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchBlurCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualCamBWCameraListener(Ljava/lang/String;)V
    .locals 3

    .line 1497
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualCamBWCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchDualCamBWCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .locals 3

    .line 1445
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchLogicalCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1446
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1451
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1452
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1453
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    const-string v0, "on"

    .line 1458
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1459
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1464
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1465
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1447
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchTeleCamera] can not switch tele camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 4

    .line 793
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode, modeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 794
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v0, :cond_0

    .line 795
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSwitchMode mIsResetCurrentMode, do not show preview cover"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeChangeFlag(Z)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3

    .line 805
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchMode, process switchAnimate, modeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x34

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 810
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwitchOpticalZoomCamera()V
    .locals 3

    .line 1426
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1433
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1436
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1438
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1427
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchOpticalZoomCamera] can not switch teleZoom camera mInCameraSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;Z)V
    .locals 0

    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchWideCamera(Ljava/lang/String;)V
    .locals 3

    .line 1420
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchWideCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCamera(Ljava/lang/String;)V

    return-void
.end method

.method public pause(Z)V
    .locals 3

    .line 440
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needAsyncClose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 442
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->pause()V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->pause()V

    if-eqz p1, :cond_0

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    :goto_0
    return-void
.end method

.method public resetCurrentMode(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    return-void
.end method

.method public resume()V
    .locals 5

    .line 468
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resume] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 470
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 473
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraSwitch(Z)V

    .line 476
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 477
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    sget-object v2, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "mIsResetCurrentMode true, mModeChangeLock notifyAll"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 485
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 488
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resume()V

    .line 489
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 490
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 491
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 492
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 493
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 495
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 496
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 503
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->resume()V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 944
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    :cond_0
    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 535
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    :cond_0
    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 937
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_0
    return-void
.end method

.method public setNextCameraId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 513
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop(Z)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchWideCameraForSpecifyMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 1154
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1155
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1156
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v0, :cond_0

    .line 1157
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1160
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;)V

    return-void
.end method

.method public unInit1()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_camera_change"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 410
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitAppUI()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    return-void
.end method

.method public unInit2()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->unInit()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 426
    :cond_0
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 427
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 3

    .line 525
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 528
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    :cond_0
    return-void
.end method
