.class Lcom/transsion/camera/adapter/CameraProxy2Impl;
.super Lcom/transsion/camera/adapter/CameraProxy;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

.field private mAuxPreviewSurface:Landroid/view/Surface;

.field private mAuxSurfaceModeSupport:Z

.field private mAuxSurfaceNeedShow:Z

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraId:Ljava/lang/String;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

.field private mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

.field private mDeferredOutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mInContinuousCapture:Z

.field private mIsCancelCapture:Z

.field private mIsFinalizeConfigured:Z

.field private mIsLegacyDevice:Z

.field private mIsPrepareSuccess:Z

.field private mIsSettingPreviewUse:Z

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

.field private mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private final mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewYUVReader:Landroid/media/ImageReader;

.field private mRecordSurface:Landroid/view/Surface;

.field private mRecorderState:Z

.field private mReleased:Z

.field private mRequestHandler:Landroid/os/Handler;

.field private final mResponseHandler:Landroid/os/Handler;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSessionState:I

.field private mSessionType:I

.field private mSetRepeatingRequestTime:J

.field private mSettingPreviewDataCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private mShutterClickSampleId:I

.field private mShutterSoundEnabled:Z

.field private mShutterSoundLoaded:Z

.field private mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mSoundPlayerLock:Ljava/lang/Object;

.field private mStartVideoRecordingSampleId:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field private mStopVideoRecordingSampleId:I

.field private mThumbnailSurface:Landroid/view/Surface;

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraProxy2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Lcom/transsion/camera/adapter/CameraProxy$CameraError;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy;-><init>()V

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 78
    iput p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    .line 80
    new-instance v2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    .line 81
    new-instance v2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    .line 95
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    .line 96
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 103
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 104
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    .line 108
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 109
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 116
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    .line 117
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    .line 1830
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 1855
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 1902
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 121
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 125
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    .line 126
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySessionFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/adapter/CameraProxy2Impl;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1812
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-eqz v0, :cond_0

    .line 1813
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "No need to check shot2shot when it is continuous shot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1818
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 1819
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1820
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-ne v3, v1, :cond_1

    .line 1822
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private closeSession()V
    .locals 4

    .line 967
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->close()V

    .line 973
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 974
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 979
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 981
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 985
    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 986
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession mSession, current thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 987
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 991
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method private createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 938
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 942
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createCaptureSessionByConfigurations wait"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V

    .line 950
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createCaptureSessionByConfigurations wait done"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 945
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createCaptureSessionByConfigurations Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDeferredSession, deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 706
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 p2, 0x0

    .line 707
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 708
    iget-object p2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 710
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    move-result p0

    return p0
.end method

.method private createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 757
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 758
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 761
    :goto_0
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession previewAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", supportAuxPreview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 v4, v3, 0x1

    .line 764
    iget-boolean p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_1

    .line 765
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 766
    :goto_1
    sget-object v4, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession auxAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 770
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_5
    if-nez v0, :cond_6

    return v1

    .line 777
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_7

    .line 778
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result p1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    .line 780
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 783
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v3, :cond_9

    .line 784
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v1

    .line 785
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    aput-object p1, v4, v2

    .line 784
    invoke-virtual {v3, v2, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_4

    .line 787
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v3, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 790
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_a

    .line 791
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 793
    :cond_a
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p0

    .line 795
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createPhotoSession] result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession start, deferredData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 717
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 718
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    move-result v3

    goto/16 :goto_2

    :cond_0
    if-ne v0, v1, :cond_2

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->checkHighFpsSupport()Z

    move-result v0

    .line 721
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 724
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v0

    .line 727
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v0

    .line 728
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 730
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 733
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "VideoHighSpeed:createVideoSession"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 735
    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 736
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    move v2, v3

    goto :goto_1

    .line 739
    :cond_3
    new-instance v0, Landroid/util/Range;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 740
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 742
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result v3

    goto :goto_2

    .line 744
    :cond_4
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession unknown session type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    .line 749
    :cond_5
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 751
    :goto_3
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession end, session type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", success:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method private createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 801
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 802
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 804
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    return p1

    .line 810
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, p1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_0

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v2, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v2, p1

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 817
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v1, :cond_3

    .line 818
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    .line 820
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 821
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 823
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    .line 824
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createVideoSession] sessionType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",result:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",configurations:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mIsPrepareSuccess: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private doAFAndCapture()V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 1442
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    new-instance v0, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$ZFXNDxDX0-moyEDJSvgrscMlZVc;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$ZFXNDxDX0-moyEDJSvgrscMlZVc;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 1444
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 1445
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1446
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-void
.end method

.method private doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1651
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    goto :goto_0

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1660
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAddPreviewCallBack, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1400
    :cond_0
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 1417
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1418
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v4, :cond_1

    .line 1419
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v3

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_0

    .line 1421
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v4, v1, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1423
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 1424
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v5, v1, [Landroid/view/Surface;

    aput-object v2, v5, v3

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1426
    :cond_2
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doAutoFocus"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1427
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1427
    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1430
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->startAF()V

    .line 1431
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_3

    .line 1432
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    .line 1433
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 1435
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_1
    return-void

    .line 1396
    :cond_4
    :goto_2
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAutoFocus is error, mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParameters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelAutoFocus()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 1522
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1523
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v4, :cond_1

    .line 1524
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v3

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v4, v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_0

    .line 1526
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v4, v1, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v3

    invoke-virtual {v2, v0, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1528
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 1529
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v1, v1, [Landroid/view/Surface;

    aput-object v2, v1, v3

    invoke-virtual {v4, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1531
    :cond_2
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "doCancelAutoFocus"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1533
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->cancelAF()V

    .line 1534
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_3

    .line 1535
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    .line 1536
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 1538
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_1
    return-void

    .line 1519
    :cond_4
    :goto_2
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelAutoFocus is error, mSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelCapture()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1155
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCancelCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1158
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1159
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1162
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1164
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1166
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCancelCapture exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1168
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1126
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1127
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 1132
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 1134
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1135
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1136
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1137
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    goto :goto_0

    .line 1139
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needAfModeBeforePreAF()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1140
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAFAndCapture()V

    goto :goto_0

    .line 1142
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAFCapture()V

    goto :goto_0

    .line 1146
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    goto :goto_0

    .line 1149
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :goto_0
    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    .locals 5

    .line 1292
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1294
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1295
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1300
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v0, :cond_1

    .line 1301
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use YUV Surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_1
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use Jpeg Surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1307
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1312
    :cond_2
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance][doCapture] START session start to capture"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1314
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance][doCapture] END."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1316
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1317
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doClearFrameResultCallback()V
    .locals 0

    .line 1646
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearFrameResultCallback()V

    return-void
.end method

.method private doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;I)V
    .locals 5

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1327
    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1326
    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(II[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1330
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doContinuousCapture exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doEnableShutterSound(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-nez v1, :cond_0

    .line 510
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$10u_RyemVgS6ng6aCmbrnXcH5XA;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$10u_RyemVgS6ng6aCmbrnXcH5XA;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_START_RECORDING_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$zdwA92COmbwP5ebJJn9Dv2jepvc;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$zdwA92COmbwP5ebJJn9Dv2jepvc;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_STOP_RECORDING_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$6yUouwwBMC_rphe6Xdrn-Vb0e70;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$6yUouwwBMC_rphe6Xdrn-Vb0e70;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 538
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SoundPoolDebug] enableShutterSound load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    return-void
.end method

.method private doEnableVideoAutoFlash(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1668
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setRecordingHint(Z)V

    if-eqz p1, :cond_0

    .line 1670
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1671
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    goto :goto_0

    .line 1674
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1678
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_2
    return-void
.end method

.method private doOnPreAfFocused(Z)V
    .locals 3

    .line 1460
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] PreAF done, [onAutoFocus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsCancelCapture:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1462
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V

    .line 1465
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    if-eqz p1, :cond_1

    return-void

    .line 1468
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1470
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1471
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doParameterRepeatingRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1006
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doParameterRepeatingRequest mSessionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_0
    return-void
.end method

.method private doPreAECapture()V
    .locals 6

    .line 1236
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1238
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPreCapture is error, mSession is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1242
    :cond_0
    new-instance v0, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$hAHSenT0mydNvE1M5jHy3MTEF3g;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$hAHSenT0mydNvE1M5jHy3MTEF3g;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 1253
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1276
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v4, v3

    .line 1275
    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v4, v3, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1281
    :goto_0
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] doPreAECapture"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1282
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1283
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1282
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1284
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 5

    .line 1477
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1480
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doPreAF is error, mSession is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1483
    :cond_0
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 1500
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz p1, :cond_1

    .line 1501
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1502
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1501
    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_0

    .line 1504
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v3, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1507
    :goto_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] doPreAFCapture"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1508
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1509
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1508
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1510
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1512
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1513
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doPreAFCapture()V
    .locals 1

    .line 1456
    new-instance v0, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$JJK2nPFStjL2x_CBOuHCONsJK3Q;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/-$$Lambda$CameraProxy2Impl$JJK2nPFStjL2x_CBOuHCONsJK3Q;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method

.method private doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 0

    .line 1586
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method private doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1614
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 1622
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doSetAsdSceneCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V
    .locals 0

    .line 1578
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAsdSceneCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V

    return-void
.end method

.method private doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 1543
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method private doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 0

    .line 1590
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method private doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 651
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    return-void

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->finalizeConfigSession()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 661
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 p1, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    :goto_0
    return-void
.end method

.method private doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V
    .locals 0

    .line 1582
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V

    return-void
.end method

.method private doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method private doSetGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.method private doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    goto :goto_0

    .line 1568
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    .line 1571
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1573
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doSetNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V
    .locals 0

    .line 1598
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 586
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 5

    .line 590
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7a2434e2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x6980d471

    if-eq v1, v2, :cond_2

    const v2, 0x39a9fd2d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "VideoRecord.ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "camera_click.ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "VideoStop.ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    .line 607
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doShutterSoundPlay error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    goto :goto_1

    .line 601
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    goto :goto_1

    .line 598
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    :goto_1
    return-void

    :cond_8
    :goto_2
    if-eqz p2, :cond_9

    .line 592
    invoke-interface {p2}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone()V

    :cond_9
    return-void
.end method

.method private doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1187
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "doStartContinuousCapture error, mSession is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1188
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1192
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    .line 1193
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 1195
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;I)V

    return-void
.end method

.method private doStartFaceDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFaceDetectionEnable(Z)V

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 1554
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    return-void
.end method

.method private doStartGenderAttributeDetection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1687
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method private doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    .line 998
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 999
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1000
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1001
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doStopContinuousCapture()V
    .locals 3

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1200
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doStopContinuousCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1203
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-nez v0, :cond_1

    .line 1204
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "do nothing if it isn\'t in continuous capture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1208
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1209
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1210
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1213
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopContinuousCapture exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doStopFaceDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFaceDetectionEnable(Z)V

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 1561
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    return-void
.end method

.method private doStopGenderAttributeDetection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1691
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method private doStopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1118
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    return-void
.end method

.method private doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 0

    .line 1610
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method private doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1618
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1337
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doVideoSnapShot is error, mSession is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1341
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1345
    :cond_1
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 1346
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object p1

    .line 1347
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object p1

    .line 1348
    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1349
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1350
    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    :cond_2
    const/4 p1, 0x4

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/Surface;

    .line 1352
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1353
    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1352
    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1354
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 1355
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v1, v1, [Landroid/view/Surface;

    aput-object v0, v1, v4

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 1342
    :cond_4
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "params not ready, do not config now"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private finalizeConfigSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeConfigSession mSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFinalizeConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    if-nez v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 678
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 681
    :cond_1
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeConfigSession previewConfig already has surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 685
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2

    .line 686
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 688
    :cond_2
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession auxConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 694
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 695
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_4
    :goto_2
    return-void
.end method

.method private getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/adapter/CameraProxy$DeferredData;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 832
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "picture size is null, can\'t capture surface."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result v0

    .line 837
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvPreview(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 840
    sget-object v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewSize width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/16 v3, 0x23

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 844
    :cond_1
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhotoOutputConfigurations] mPreviewSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mImageSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mYuvImageSurface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewYUVReader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", deferredData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 849
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 851
    iget-object v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 852
    iget v3, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    if-nez v3, :cond_3

    .line 854
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v4, Landroid/view/SurfaceHolder;

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    :cond_3
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    .line 861
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 863
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    .line 864
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_7

    .line 868
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_8

    .line 871
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v2, :cond_9

    .line 875
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 876
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz p1, :cond_a

    .line 880
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-direct {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_b

    return-object v1

    :cond_b
    return-object v0
.end method

.method private static getSuitableRange(Ljava/util/List;I)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    .line 1950
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1951
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1952
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1955
    :cond_1
    new-instance p0, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method private getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/adapter/CameraProxy$DeferredData;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 890
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVideoSurface] mPreviewSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRecordSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mImageSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mVideoFrameWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mVideoFrameHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPrepareSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_6

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 899
    :try_start_1
    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 900
    iget p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    if-nez p1, :cond_0

    .line 902
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v2, Landroid/view/SurfaceHolder;

    invoke-direct {p1, v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    :cond_0
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz p1, :cond_1

    .line 907
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {p1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_2

    .line 910
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 914
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz p1, :cond_6

    .line 915
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 916
    :try_start_3
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v0, :cond_4

    .line 918
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v0, :cond_5

    .line 921
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :cond_6
    :goto_1
    return-object v0

    :catch_2
    move-exception p0

    .line 926
    :goto_2
    :try_start_4
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoOutputConfigurations Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :goto_3
    return-object v0
.end method

.method private isAFSupport()Z
    .locals 3

    .line 1172
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    .line 1173
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAFSupport focusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "auto"

    .line 1174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-video"

    .line 1175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isRunSMVRMode(I)Z
    .locals 0

    .line 1959
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedSMVRRequestParams(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$JJK2nPFStjL2x_CBOuHCONsJK3Q(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    return-void
.end method

.method private synthetic lambda$doAFAndCapture$4(Z)V
    .locals 0

    .line 1450
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    .line 1451
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    return-void
.end method

.method private synthetic lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 513
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 515
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    .line 517
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

.method private synthetic lambda$doEnableShutterSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 522
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 524
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    .line 526
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

.method private synthetic lambda$doEnableShutterSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 531
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 533
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    .line 535
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

.method private synthetic lambda$doPreAECapture$3()V
    .locals 2

    .line 1243
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] PreAE done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1244
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    .line 1246
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onAEPreCaptureDone] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1247
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private needAfModeBeforePreAF()Z
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needAfModeBeforePreAF()Z

    move-result p0

    return p0
.end method

.method private needTriggerPreCapture()Z
    .locals 4

    .line 1222
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->needTriggerPreCapture()Z

    move-result v0

    .line 1226
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] needTriggerPreCapture, flashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1227
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", aeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 1228
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAeResult()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1226
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 955
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 956
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySession mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 957
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 958
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private notifySessionFail()V
    .locals 1

    const/4 v0, 0x2

    .line 962
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private setRepeatingRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1023
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest mSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSessionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecorderState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;->onPreview(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 1027
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1029
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSession is null in setRepeatingRequest"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1033
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 1037
    :cond_2
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v1, :cond_6

    .line 1039
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    if-eqz v5, :cond_3

    new-array v3, v3, [Landroid/view/Surface;

    .line 1040
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v3, v4

    .line 1041
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1040
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-array v2, v1, [Landroid/view/Surface;

    .line 1043
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1046
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isPeriscopeCamSupport()Z

    move-result v1

    .line 1047
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v2

    .line 1048
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    if-eqz v1, :cond_5

    .line 1049
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1051
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 1053
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_5

    :cond_6
    const/4 v5, 0x3

    if-ne v2, v3, :cond_a

    .line 1056
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->checkHighFpsSupport()Z

    move-result v2

    .line 1057
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_7

    const-string v2, "1"

    .line 1058
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1059
    new-instance v2, Landroid/util/Range;

    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v7, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1060
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_1

    .line 1062
    :cond_7
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v2

    .line 1063
    iget v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v2, v6}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v2

    .line 1064
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1067
    :goto_1
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v2, :cond_9

    .line 1068
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v2, :cond_8

    new-array v2, v3, [Landroid/view/Surface;

    .line 1069
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_2

    :cond_8
    new-array v1, v1, [Landroid/view/Surface;

    .line 1072
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v1, v4

    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-array v1, v1, [Landroid/view/Surface;

    .line 1076
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v1, v4

    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1079
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_5

    :cond_a
    if-ne v2, v5, :cond_e

    .line 1081
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1082
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v2, :cond_b

    .line 1083
    new-instance v2, Landroid/util/Range;

    iget v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1084
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_3

    .line 1086
    :cond_b
    new-instance v2, Landroid/util/Range;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1087
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    :goto_3
    new-array v2, v3, [Landroid/view/Surface;

    .line 1089
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1091
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_5

    .line 1093
    :cond_c
    new-instance v2, Landroid/util/Range;

    iget v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1094
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1096
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v2, :cond_d

    new-array v2, v3, [Landroid/view/Surface;

    .line 1097
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_4

    :cond_d
    new-array v1, v1, [Landroid/view/Surface;

    .line 1100
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v1, v4

    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1103
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 1104
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_5

    .line 1108
    :cond_e
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeatingRequest] unknown session type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    :goto_5
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeatingRequest] PreviewSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1034
    :cond_f
    :goto_6
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "params not ready, do not config now"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1376
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    const/4 v0, 0x0

    .line 1378
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1379
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 1381
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    .line 1383
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const-string p1, "VideoRecord.ogg"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    .line 1371
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecordingRequest is error, mSession or surface is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "no surface or session"

    .line 1372
    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private stopRecordingRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1361
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1362
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 1363
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    const-string v0, "VideoStop.ogg"

    .line 1364
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method private updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 2

    .line 627
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getCameraDataType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    .line 628
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 629
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getAuxPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    .line 630
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 631
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getYuvImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 632
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getThumbnailSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    .line 634
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 641
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 642
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 643
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 644
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    const/4 p1, 0x1

    .line 645
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    goto :goto_1

    .line 635
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    .line 636
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameRate()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 637
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 638
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    .line 639
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->isPrepareSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    :goto_1
    return-void
.end method

.method private usePreAECaptureFlow()Z
    .locals 0

    .line 1182
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void
.end method

.method public autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 0

    .line 221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelTakePicture()V
    .locals 0

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelCapture()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearFrameResultCallback()V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doClearFrameResultCallback()V

    return-void
.end method

.method public clearStreamIdResultCallback()V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearStreamIdCallback()V

    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableShutterSound(Z)V

    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 620
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 622
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    return-object p0
.end method

.method public getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method public init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] cs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 133
    new-instance v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 134
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 136
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    .line 139
    new-instance p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    return-void
.end method

.method public isReleased()Z
    .locals 0

    .line 577
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method public isVssSupported()Z
    .locals 0

    .line 545
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$doAFAndCapture$4$CameraProxy2Impl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doAFAndCapture$4(Z)V

    return-void
.end method

.method public synthetic lambda$doEnableShutterSound$0$CameraProxy2Impl(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public synthetic lambda$doEnableShutterSound$1$CameraProxy2Impl(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public synthetic lambda$doEnableShutterSound$2$CameraProxy2Impl(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public synthetic lambda$doPreAECapture$3$CameraProxy2Impl()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doPreAECapture$3()V

    return-void
.end method

.method public preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    .locals 2

    .line 144
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "preparePreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 147
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 153
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 154
    sget-object p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 3

    .line 434
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", priority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 3

    .line 467
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1631
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1634
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method release()V
    .locals 5

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 553
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 554
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const-string v0, "VideoStop.ogg"

    .line 555
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 557
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 558
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 559
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 560
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 561
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SoundPoolDebug] camera proxy release, mSoundPlayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mShutterSoundLoaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 566
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 567
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 569
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 570
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->release()V

    return-void

    :catchall_0
    move-exception p0

    .line 571
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    return-void
.end method

.method public setAsdCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAsdSceneCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V

    return-void
.end method

.method public setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method public setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 3

    .line 440
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraBVCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method public setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 3

    .line 269
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setCameraDataChannel start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 272
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 274
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 280
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 281
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDataChannel end, process time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V

    return-void
.end method

.method public setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 1

    .line 301
    sget-object p1, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setCameraParameters start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setCameraParameters end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V
    .locals 3

    .line 422
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeDetectionCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V

    return-void
.end method

.method public setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    return-void
.end method

.method public setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .locals 3

    .line 494
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    return-void
.end method

.method public setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 3

    .line 428
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHumanDetCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method public setPictureGPSLocation(Landroid/location/Location;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegGPSLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setPictureOrientation(I)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegOrientation(I)V

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoOrientation(I)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartFaceDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 381
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startGenderAttributeDetection()V
    .locals 0

    .line 351
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartGenderAttributeDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 353
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 2

    .line 159
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 162
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 166
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 167
    sget-object p2, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopContinuousShot()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopContinuousCapture()V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopFaceDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 390
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopGenderAttributeDetection()V
    .locals 0

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopGenderAttributeDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .line 172
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 181
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 182
    sget-object p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopRecordingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 3

    .line 461
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 3

    .line 473
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1640
    sget-object v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1642
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method public updateAuxSurfaceModeSupport(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    return-void
.end method

.method public updateAuxSurfaceStatus(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    .line 398
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
