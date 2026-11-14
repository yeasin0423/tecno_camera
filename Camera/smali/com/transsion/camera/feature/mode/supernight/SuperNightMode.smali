.class public Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field private mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mCurrentFocusState:Ljava/lang/String;

.field private mCurrentResult:Landroid/hardware/camera2/CaptureResult;

.field private mFlashTorchSupport:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsStableModeSupport:Z

.field private mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

.field private final mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private final mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreviewSize:Landroid/util/Size;

.field private mShutterClickSampleId:I

.field private mSoundLoaded:Z

.field private mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

.field private final mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mUseFaceBeauty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    const-string v1, "/product/media/audio/ui/camera_click.ogg"

    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    const-string p1, "INACTIVE"

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    .line 57
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 68
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    .line 73
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 74
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 75
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 384
    new-instance p1, Lcom/transsion/camera/feature/mode/supernight/-$$Lambda$SuperNightMode$PSBv87RPCAbDsu6dKKl4SHFPuSY;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/supernight/-$$Lambda$SuperNightMode$PSBv87RPCAbDsu6dKKl4SHFPuSY;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->startCapturingAnim(IZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->stopCapturingAnim()V

    return-void
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private declared-synchronized changeCaptureFlow(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 451
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_0

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    if-eq v0, p1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCaptureFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 458
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 388
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initModeSound()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-nez v1, :cond_0

    .line 361
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/feature/mode/supernight/-$$Lambda$SuperNightMode$Vgerhs3Ptdk2jRLkMF_tLlOMvkU;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/supernight/-$$Lambda$SuperNightMode$Vgerhs3Ptdk2jRLkMF_tLlOMvkU;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    :cond_0
    return-void
.end method

.method private initModeUI()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->init(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 395
    :cond_0
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedSuperNightAlgo current brightness: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 397
    array-length p2, p1

    if-lez p2, :cond_2

    .line 398
    aget p1, p1, v0

    if-gtz p1, :cond_1

    move v0, p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 408
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedSuperNightStableAlgo current iso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc80

    if-lt p0, p1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    return p2
.end method

.method public static synthetic lambda$PSBv87RPCAbDsu6dKKl4SHFPuSY(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method private synthetic lambda$initModeSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 364
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 366
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    .line 368
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

.method private declared-synchronized onCaptureDone(Z)V
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    .line 477
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCaptureStart()V
    .locals 1

    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetCaptureFlow(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 463
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    if-nez p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private selectCaptureFlow()V
    .locals 7

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 417
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->isStable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 419
    :goto_0
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_super_night_stable"

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    .line 420
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 422
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v6

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_3

    .line 428
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 435
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 436
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    :cond_4
    return-void
.end method

.method private startCapturingAnim(IZ)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->showProcessingAnim(IZ)V

    .line 484
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x2

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private stopCapturingAnim()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideProcessingAnim()V

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private unInitModeSound()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    :cond_0
    const/4 v1, 0x0

    .line 379
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 380
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 381
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unInitModeUI()V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->unInit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 500
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 334
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_super_night"

    .line 335
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_tran_plugin"

    .line 336
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_distortion_correction"

    .line 337
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_setting_smart_denoise"

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    if-eqz p0, :cond_0

    const-string p0, "key_face_beauty"

    .line 340
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 344
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "supernight_reduce_preview_size_height"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-super {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 202
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getShutterTypeSelfTimerOff()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 103
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 104
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const-string p1, "key_focus_state"

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->initModeUI()V

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->initModeSound()V

    .line 108
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 110
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_front_support_torch:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    goto :goto_1

    .line 117
    :cond_2
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    const-string p1, "key_self_timer_status"

    .line 121
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initModeSound$0$SuperNightMode(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->lambda$initModeSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public notifyPictureTaken([BZ)V
    .locals 0

    .line 316
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZ)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 318
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    :cond_0
    return-void
.end method

.method public onModeCaptureFailed()V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeCaptureFailed, but current mode was unInit, so do nothing."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed()V

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 147
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x42841f76

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x3657769a

    if-eq v0, v1, :cond_1

    const v1, 0x31f2225f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "key_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_10

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p2, :cond_5

    goto/16 :goto_3

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 170
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0xaded465

    if-eq p1, v0, :cond_9

    const v0, -0x5096c46

    if-eq p1, v0, :cond_8

    const v0, 0x31566b69

    if-eq p1, v0, :cond_7

    goto :goto_2

    :cond_7
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v2, v3

    goto :goto_2

    :cond_8
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v2, v4

    goto :goto_2

    :cond_9
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v2, v5

    :cond_a
    :goto_2
    if-eqz v2, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_b

    goto :goto_3

    .line 182
    :cond_b
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    goto :goto_3

    .line 177
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_11

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V

    goto :goto_3

    .line 172
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_11

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    goto :goto_3

    :cond_e
    const-string p1, "on"

    .line 153
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_11

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    goto :goto_3

    .line 158
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_11

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    goto :goto_3

    .line 150
    :cond_10
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    :cond_11
    :goto_3
    return-void
.end method

.method public onSettingReady()V
    .locals 3

    .line 253
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_night_stable"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    .line 259
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->init()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->inflateView()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3

    .line 266
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 269
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 271
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_4

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    :cond_4
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->selectCaptureFlow()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterClick()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 217
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterClickBefore(I)Z
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_touch_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 224
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterClickBefore, isTouchCaptureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentFocusState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    const-string v2, "ACTIVE_SCAN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    return v2

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureStart()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    :goto_0
    return p1
.end method

.method public onShutterStart()V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterStart()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_1
    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const-string v0, "key_self_timer_status"

    .line 135
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_super_night_stable"

    .line 137
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->unInit()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInitModeUI()V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInitModeSound()V

    return-void
.end method
