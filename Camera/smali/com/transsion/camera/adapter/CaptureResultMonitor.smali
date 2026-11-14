.class public Lcom/transsion/camera/adapter/CaptureResultMonitor;
.super Ljava/lang/Object;
.source "CaptureResultMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field private mAIGroupPhotoCallback:Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;

.field private final mActiveArraySize:Landroid/graphics/Rect;

.field private mAeStateFlashRequired:Z

.field private mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

.field private mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

.field private mCameraBVCount:I

.field private mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

.field private mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraMacroCallback;

.field private mCameraNighthawkCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field private mFrameResultCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

.field private mIsAEPreCapturing:Z

.field private mIsAFActiveScanning:Z

.field private mIsAFTriggered:Z

.field private mIsPreAFActiveScanning:Z

.field private mIsPreviewStarted:Z

.field private mIsWideCamera:Z

.field private mLastAeFrameNumber:J

.field private mLastAeResult:I

.field private mLastAfFrameNumber:J

.field private mLastAfState:I

.field private mLastLaserState:I

.field private mLastScreenFlashFire:Z

.field private mMoonDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraMoonDetectionCallback;

.field private mNeedTriggerPreCapture:Z

.field private final mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field private mStreamIdCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureResultMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    .line 48
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    const-wide/16 v1, -0x1

    .line 50
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 54
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 55
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 65
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    .line 69
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "android.control.zoomRatio"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    .line 84
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 94
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    .line 95
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    .line 96
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    .line 97
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    return-void
.end method

.method private checkAEResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 292
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 293
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 297
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    const/4 p1, 0x2

    const/4 v1, 0x3

    if-eq v0, p1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 305
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 309
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    if-eqz p1, :cond_2

    .line 313
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    .line 330
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFlashState()V

    return-void
.end method

.method private checkAFResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 367
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 368
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz p1, :cond_0

    .line 372
    invoke-interface {p1, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 374
    :cond_0
    iput v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    if-ne v1, v2, :cond_2

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz v1, :cond_2

    .line 379
    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 380
    iput v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return-void

    :cond_2
    if-eqz v0, :cond_a

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 386
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    .line 387
    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    if-eq v0, v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 388
    :goto_0
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 389
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    if-eq v0, v2, :cond_8

    const/4 p1, 0x2

    if-eq v0, p1, :cond_8

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 p1, 0x6

    if-eq v0, p1, :cond_8

    goto :goto_4

    .line 401
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 402
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz v1, :cond_6

    if-ne v0, p1, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v3

    .line 404
    :goto_1
    invoke-interface {v1, v5}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    .line 406
    iput-object v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 409
    :cond_6
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    if-eqz v1, :cond_a

    .line 410
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz v1, :cond_a

    if-ne v0, p1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    .line 412
    :goto_2
    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    .line 413
    iput-object v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_a

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz p0, :cond_a

    if-ne v0, v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    .line 395
    :goto_3
    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onAutoFocusMoving(Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method private checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V
    .locals 6

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAIGroupPhotoCallback:Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 505
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d0

    .line 510
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 511
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 512
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 511
    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 513
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 514
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 515
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 516
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAIGroupPhotoCallback:Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;

    array-length p1, p1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    invoke-interface {p2, p1, v1, p0}, Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;->onFrameDetected(IIZ)V

    return-void

    .line 506
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAIGroupPhotoCallback:Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;

    const/4 p2, -0x1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    invoke-interface {p1, v0, p2, p0}, Lcom/transsion/camera/adapter/CameraProxy$AIGroupPhotoCallback;->onFrameDetected(IIZ)V

    return-void
.end method

.method private checkAsdResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 551
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;->onAsdDataCallback([I)V

    :cond_0
    return-void
.end method

.method private checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 612
    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 613
    iput v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 615
    aget p0, p1, p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;->onBrightnessChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 588
    array-length v0, p1

    if-lez v0, :cond_1

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 591
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 595
    aget v1, p1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;->onDualLensWarningCallback(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkEyeDetection(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

    if-eqz v1, :cond_2

    .line 558
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 559
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 561
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 564
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    .line 565
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 566
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 568
    :cond_1
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEyeResult previewSize is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    :goto_0
    iget p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertEyes([IIILandroid/graphics/Rect;)[I

    move-result-object p1

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;->onEyeDetectionCallback([I)V

    :cond_2
    return-void
.end method

.method private checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V
    .locals 6

    .line 425
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 426
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 428
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 430
    array-length v3, v2

    div-int/2addr v3, v4

    .line 431
    invoke-static {v0, v3, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)V

    .line 432
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 434
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 437
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 438
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    .line 439
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 441
    :cond_1
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFaceResult previewSize is null. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    :goto_0
    iget p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, p2, v2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p2

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 447
    array-length v3, v0

    if-lez v3, :cond_2

    aget v3, v0, v2

    if-lez v3, :cond_2

    .line 448
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkHumanDetectResult([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 451
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkHumanDetectResult([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz v0, :cond_7

    .line 456
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V

    if-eqz p2, :cond_6

    .line 457
    array-length v0, p2

    if-lez v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 460
    array-length v0, p1

    if-lez v0, :cond_4

    .line 461
    array-length v0, p1

    div-int/lit8 v0, v0, 0x6

    :goto_1
    if-ge v2, v0, :cond_4

    .line 463
    array-length v1, p2

    if-ge v2, v1, :cond_3

    .line 464
    aget-object v1, p2, v2

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    mul-int/lit8 v3, v2, 0x6

    add-int/lit8 v4, v3, 0x0

    .line 466
    iget v5, v1, Landroid/graphics/Rect;->left:I

    aput v5, p1, v4

    add-int/lit8 v4, v3, 0x1

    .line 467
    iget v5, v1, Landroid/graphics/Rect;->top:I

    aput v5, p1, v4

    add-int/lit8 v4, v3, 0x2

    .line 468
    iget v5, v1, Landroid/graphics/Rect;->right:I

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x3

    .line 469
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    aput v1, p1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    if-eqz v0, :cond_5

    .line 474
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getGenderAttribute([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;->onGenderAttributeCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Ljava/lang/String;)V

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {v0, p2, p1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    goto :goto_2

    .line 478
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {p1, p2, v3}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    .line 480
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    array-length p1, p2

    if-lez p1, :cond_7

    .line 481
    invoke-interface {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;->onFaceDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    :cond_7
    return-void
.end method

.method private checkFlashState()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 337
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashRequired(Z)V

    return-void
.end method

.method private checkHumanDetectResult([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    if-eqz p0, :cond_0

    .line 488
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    :cond_0
    return-void
.end method

.method private checkMacroResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraMacroCallback;

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 604
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraMacroCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraMacroCallback;->onMacroDataCallback(F)V

    :cond_0
    return-void
.end method

.method private checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mMoonDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraMoonDetectionCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 639
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraMoonDetectionCallback;->onDetected([I)V

    :cond_0
    return-void
.end method

.method private checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .locals 3

    .line 353
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 354
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    .line 355
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return-void
.end method

.method private checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraNighthawkCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 623
    aget p1, p1, v0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;->onNighthawkChanged(I)V

    :cond_0
    return-void
.end method

.method private checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashFire()V

    .line 349
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    return-void
.end method

.method private checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 630
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 631
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;->onStreamIdCallback([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static convertEyes([IIILandroid/graphics/Rect;)[I
    .locals 9

    if-eqz p0, :cond_2

    .line 666
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    const/4 v5, 0x2

    aget v6, p0, v5

    const/4 v7, 0x3

    aget v8, p0, v7

    invoke-direct {v0, v2, v4, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v1

    .line 672
    :goto_0
    invoke-static {v0, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 674
    iget p2, p1, Landroid/graphics/Rect;->left:I

    aput p2, p0, v1

    .line 675
    iget p2, p1, Landroid/graphics/Rect;->top:I

    aput p2, p0, v3

    .line 676
    iget p2, p1, Landroid/graphics/Rect;->right:I

    aput p2, p0, v5

    .line 677
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, p0, v7

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .locals 11

    if-eqz p0, :cond_4

    .line 645
    array-length v0, p0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    .line 650
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 651
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 654
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v6

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v7

    aget-object v3, p0, v1

    .line 656
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v8

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v9

    aget-object v3, p0, v1

    .line 657
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v10

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 661
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, p1

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 581
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 582
    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 583
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method private getGenderAttribute([I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 494
    array-length p0, p1

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    .line 495
    aget p0, p1, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 498
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const-wide/16 v1, -0x1

    .line 253
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 254
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 255
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 256
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 257
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return-void
.end method

.method private static resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)V
    .locals 7

    if-eqz p0, :cond_0

    .line 523
    invoke-static {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetRawFaceRect([Landroid/hardware/camera2/params/Face;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    mul-int/lit8 v2, v1, 0x5

    .line 527
    aget v3, p2, v2

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_2

    if-eqz p0, :cond_1

    .line 529
    array-length v5, p0

    if-ge v4, v5, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 530
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 531
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 532
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x3

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 533
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x4

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static resetRawFaceRect([Landroid/hardware/camera2/params/Face;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 540
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 541
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 542
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 543
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 544
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected aeStateFlashRequired()Z
    .locals 0

    .line 363
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return p0
.end method

.method cancelAF()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method checkCaptureResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Ljava/lang/String;)V
    .locals 2

    .line 266
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAEResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAFResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkMacroResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkEyeDetection(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 279
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 281
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 282
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;->onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearFrameResultCallback()V
    .locals 2

    .line 230
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearFrameResultCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method clearStreamIdCallback()V
    .locals 2

    .line 155
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearStreamIdCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getLastAeResult()I
    .locals 0

    .line 262
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    return p0
.end method

.method protected needTriggerPreCapture()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return p0
.end method

.method onPreviewStarted()V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    :cond_0
    return-void
.end method

.method onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 173
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerDualLensCallback error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 215
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 138
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method setAsdSceneCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;

    return-void
.end method

.method setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    return-void
.end method

.method public setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    return-void
.end method

.method setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

    return-void
.end method

.method setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    return-void
.end method

.method setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.method setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    return-void
.end method

.method public setNightHawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraNighthawkCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    return-void
.end method

.method startAF()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-void
.end method

.method triggerAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method triggerPreAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 205
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 224
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 147
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
