.class public Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$RecordingState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private volatile mAuxPreviewSize:Landroid/util/Size;

.field private mCamera:Lcom/transsion/camera/adapter/CameraProxy;

.field private mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

.field private mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private final mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private volatile mClosing:Z

.field private mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mHandler:Landroid/os/Handler;

.field private mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

.field private mIsModeSettingReady:Z

.field private mModeChanged:Z

.field private mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private final mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private final mOpeningState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private volatile mPreviewSize:Landroid/util/Size;

.field private final mPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private final mPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private final mRecordingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

.field private mReleased:Z

.field private mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

.field private final mSettingManagerLock:Ljava/lang/Object;

.field private mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

.field private mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamDevControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManagerLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 58
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 485
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 496
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 518
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 526
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 544
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 560
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 572
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;J)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 971
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;

    const-string v1, "closed"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 972
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;

    const-string v1, "openingCamera"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 973
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;

    const-string v1, "opened"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 974
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;

    const-string v1, "startingPreview"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 975
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;

    const-string v1, "previewed"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 976
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$RecordingState;

    const-string v1, "recording"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$RecordingState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCloseCamera()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handlePreviewError()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateOutputChannel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePicture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCancelTakePicture()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartContinuousShot(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopContinuousShot()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopRecording()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleConfigCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doUnInit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameterSelf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleOnCameraError(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRestoreParameters(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleEnableVideoAutoFlash(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateAuxSurfaceStatus(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleAuxSurfaceModeSupported(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraError(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCameraOpened()V

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManagerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->configSettingManager(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resetModeSettingReady()V

    return-void
.end method

.method static synthetic access$5700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    return p0
.end method

.method static synthetic access$6500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleOpenCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 272
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "0"

    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "1"

    .line 277
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private configSettingManager(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 17

    move-object/from16 v0, p0

    .line 377
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v2

    .line 379
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isCCUFlowEnable()Z

    move-result v3

    .line 380
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    .line 381
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v5

    .line 382
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v6

    .line 383
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraModeEnable()I

    move-result v7

    .line 385
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    .line 386
    iget-object v8, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v9}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 387
    iget-object v8, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 389
    iget-object v9, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 391
    :cond_0
    iget-object v8, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setDataFlowType(I)V

    .line 392
    iget-object v8, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v8, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    .line 395
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v8

    .line 396
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isCCUFlowEnable()Z

    move-result v9

    .line 397
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v10

    .line 398
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v11

    .line 399
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v12

    .line 400
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraModeEnable()I

    move-result v1

    .line 402
    invoke-static {v4, v10}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v13

    .line 403
    invoke-static {v5, v11}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v14

    if-ne v2, v8, :cond_1

    if-nez v13, :cond_1

    if-nez v14, :cond_1

    if-ne v6, v12, :cond_1

    if-ne v7, v1, :cond_1

    if-eq v3, v9, :cond_8

    :cond_1
    if-eq v2, v8, :cond_2

    .line 408
    sget-object v15, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "configSettingManager oldPluginEnable:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != newPluginEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move/from16 v16, v3

    :goto_0
    if-eqz v13, :cond_3

    .line 411
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "or configSettingManager oldPictureSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != newPictureSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    if-eqz v14, :cond_4

    .line 414
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "or configSettingManager oldPostviewSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != newPostviewSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    if-eq v6, v12, :cond_5

    .line 417
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSettingManager oldInterpolationEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != newInterpolationEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5
    if-eq v7, v1, :cond_6

    .line 420
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSettingManager oldTranssionCameraModeEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != newTranssionCameraModeEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    move/from16 v0, v16

    if-eq v0, v9, :cond_7

    .line 423
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSettingManager oldCCUFlowEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " != newCCUFlowEnable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    .line 425
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    :cond_8
    if-eqz p1, :cond_9

    .line 427
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    if-eqz p2, :cond_b

    .line 428
    invoke-interface/range {p2 .. p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 429
    :cond_a
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "isForceRecreateSession"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    :cond_b
    return-void
.end method

.method private doUnInit()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    return-void
.end method

.method private handleAuxSurfaceModeSupported(Z)V
    .locals 0

    .line 1070
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method private handleCameraOpened()V
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->cameraOpened()V

    return-void
.end method

.method private handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method private handleCancelTakePicture()V
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->cancelTakePicture()V

    return-void
.end method

.method private handleChangeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->changeParameter(Ljava/lang/String;)V

    return-void
.end method

.method private handleChangeParameterSelf(Ljava/lang/String;)V
    .locals 0

    .line 1059
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->changeParameterSelf(Ljava/lang/String;)V

    return-void
.end method

.method private handleCloseCamera()V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v0, :cond_0

    .line 994
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 996
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->closeCamera()V

    return-void
.end method

.method private handleConfigCommand(Ljava/lang/String;)V
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->configCommand(Ljava/lang/String;)V

    return-void
.end method

.method private handleEnableVideoAutoFlash(Z)V
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method private handleOnCameraError(I)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->onCameraError(I)V

    return-void
.end method

.method private handleOpenCamera(Ljava/lang/String;)V
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->openCamera(Ljava/lang/String;)V

    return-void
.end method

.method private handlePreviewError()V
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->previewError()V

    return-void
.end method

.method private handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private handleRestoreParameters(Z)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    :cond_0
    return-void
.end method

.method private handleShutterSoundPlay(Ljava/lang/String;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method private handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->snapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method private handleStartContinuousShot(I)V
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->startContinuousShot(I)V

    return-void
.end method

.method private handleStartPreview()V
    .locals 0

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->startPreview()V

    return-void
.end method

.method private handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method private handleStopContinuousShot()V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->stopContinuousShot()V

    return-void
.end method

.method private handleStopPreview()V
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->stopPreview()V

    return-void
.end method

.method private handleStopRecording()V
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->stopRecording()V

    return-void
.end method

.method private handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 1

    const/4 v0, 0x1

    .line 1016
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 1017
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1019
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateMode()V

    return-void
.end method

.method private handleTakePicture()V
    .locals 0

    .line 1023
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->takePicture()V

    return-void
.end method

.method private handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 7

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_0

    .line 630
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[handleTakePictureForRestriction], mCamera is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 638
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 639
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleTakePictureForRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 641
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 642
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 643
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 650
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 651
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 652
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v6

    .line 651
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Z)V

    return-void
.end method

.method private handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1078
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private handleUpdateAuxSurfaceStatus(Z)V
    .locals 0

    .line 1066
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method private handleUpdateOutputChannel()V
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateOutputChannel()V

    return-void
.end method

.method private handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_0

    .line 610
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[handlerPostRestriction], mCamera is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 618
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 619
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handlerPostRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    .line 624
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :goto_0
    return-void
.end method

.method private notifyCameraError(I)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    if-eqz p0, :cond_0

    .line 119
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;->onCameraError(I)V

    :cond_0
    return-void
.end method

.method private notifyCameraState(I)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 125
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;->onCameraStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized onModeSettingReady()V
    .locals 1

    monitor-enter p0

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModeSettingReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetModeSettingReady()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private switchMode()Z
    .locals 7

    .line 1082
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1084
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1085
    :goto_1
    sget-object v4, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchMode] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1087
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1088
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private updatePictureSurface()V
    .locals 9

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, v3, v4, v4, v2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v7

    .line 203
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v8

    .line 202
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    :goto_0
    if-nez v1, :cond_1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    goto :goto_1

    .line 208
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v0

    .line 209
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v3

    .line 208
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    :goto_1
    return-void
.end method

.method private updatePostViewSurface()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPostViewSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needFakePostView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)Z

    goto :goto_1

    .line 224
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v2

    .line 225
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v0

    .line 224
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)Z

    :goto_1
    return-void
.end method

.method private updatePreviewSize()V
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPeriscopeCamSupport()Z

    move-result v1

    .line 179
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v2

    .line 180
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 183
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreviewSize previewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",mPreviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",mAuxPreviewSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->resetRequestedDataChannelMember()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/transsion/camera/app/common/IAppUI;->setPreviewSize(II)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewLensSupport(ZZ)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewSize(II)V

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewSize(Landroid/util/Size;)V

    return-void
.end method

.method private waitDone()V
    .locals 3

    .line 1736
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1737
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$8;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V

    .line 1746
    monitor-enter v0

    .line 1747
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1f4

    .line 1750
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1752
    :catch_0
    :try_start_2
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1755
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 482
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    return-void
.end method

.method public closeCameraAsync()V
    .locals 1

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_0

    .line 141
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doPictureSizeUpdate mCamera is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updatePictureSurface()V

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updatePostViewSurface()V

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updatePreviewSize()V

    return-void

    .line 145
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPictureSizeUpdate invalid CameraMode | mCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraMode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .locals 1

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDualPictureSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedDualCamPictureSizes()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .locals 0

    if-nez p1, :cond_0

    .line 907
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 910
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getOrientation(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 922
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;Z)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 927
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getOrientation] mCurrentCameraId == null, so return 0, mCurrentState :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 930
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    .line 931
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p2

    .line 932
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    if-eqz p3, :cond_2

    xor-int/lit8 v0, v0, 0x1

    .line 937
    :cond_2
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 0

    if-nez p1, :cond_0

    .line 915
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 918
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedSizesAndFPS()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHintOrientation(ILjava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 942
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getVideoHintOrientation] mCurrentCameraId == null, so return 0, mCurrentState :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 946
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 947
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move v0, v2

    .line 950
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->needFlipForVideoMirror()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 951
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0

    :cond_2
    if-eqz p3, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 958
    :cond_3
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 2

    .line 230
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 231
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    return-void
.end method

.method public isHighSpeedVideoSupport()Z
    .locals 2

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 356
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isHighSpeedVideoSupport mCamera is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    .line 361
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isHighSpeedVideoSupport cameraCapabilities is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 364
    :cond_1
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighSpeedVideoSupport()Z

    move-result p0

    return p0
.end method

.method public isVssSupported()Z
    .locals 0

    .line 1759
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 1760
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->isVssSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needFakePostView()Z
    .locals 0

    .line 1786
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1789
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->needFakePostView()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    .line 1776
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1779
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->needFlipForVideoMirror()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 1

    .line 254
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const-string p0, "0"

    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 260
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getsWideCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 261
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 262
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraId(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 265
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    .line 266
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFacing(I)V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->reset()V

    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 3

    .line 657
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValue], key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 660
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 3

    .line 677
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValueJustSelf], key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 680
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 681
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .locals 3

    .line 665
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValueSync], key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public restoreParameters(Z)V
    .locals 3

    .line 86
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreParameters thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    return-void
.end method

.method public setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-void
.end method

.method public setMediaRecordSurface(Landroid/view/Surface;IIIZ)Z
    .locals 6

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateVideoSurface(Landroid/view/Surface;IIIZ)Z

    move-result p5

    .line 471
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after updateVideoSurface needUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",height = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", videoFrameRate:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setModeSupportAuxPreview(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewDisplay(Ljava/lang/Object;II)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    :cond_0
    return-void
.end method

.method public setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mISettingManager:Lcom/transsion/camera/app/common/setting/ISettingManager;

    .line 96
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init setSettingManager notify"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManagerLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 1730
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 1731
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_0
    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startContinuousShot(I)V
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopContinuousShot()V
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public takePicture()V
    .locals 1

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public takePictureEnded()V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureEnded()V

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 1

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateAuxPreviewSurface(Ljava/lang/Object;II)Z

    return-void
.end method

.method public updateAuxPreviewSurfaceStatus(Z)V
    .locals 1

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
