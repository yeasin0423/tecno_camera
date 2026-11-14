.class Lcom/transsion/camera/adapter/CameraCapabilities2Impl;
.super Lcom/transsion/camera/adapter/CameraCapabilities;
.source "CameraCapabilities2Impl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/adapter/CameraCapabilities<",
        "Landroid/hardware/camera2/CameraCharacteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraCapabilities2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private static findMaxPixels(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-nez v2, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method private getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 270
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p0, v0, :cond_0

    .line 271
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 596
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 597
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    return p1
.end method


# virtual methods
.method buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 401
    sget-object p0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-object p0

    .line 403
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0
.end method

.method bridge synthetic buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildHumanDetectionSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 372
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 373
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method bridge synthetic buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsDspSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    .line 742
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/16 v0, 0x9

    .line 744
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    .line 745
    sget-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoHighSpeed:buildIsHighVideoSupported is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 746
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 747
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHighSpeed:buildIsHighVideoSupported SMVR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method bridge synthetic buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMacroTorchSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsNightHawkSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsPeriscopeLensSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsTeleCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsVideoCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsWideCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 383
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 384
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 385
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMaxExposureCompensation(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 197
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 203
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 393
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 394
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 395
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMinExposureCompensation(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildPeriscopeCamSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildScreenFlashFireSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 737
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method bridge synthetic buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 362
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method bridge synthetic buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSatModeSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyMode(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 732
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 499
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "shade"

    .line 526
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v2, "twilight"

    .line 523
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v2, "cloudy_daylight"

    .line 520
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const-string v2, "daylight"

    .line 517
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    const-string v2, "warm_fluorescent"

    .line 514
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    const-string v2, "fluorescent"

    .line 511
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    const-string v2, "incandescent"

    .line 508
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_7
    const-string v2, "auto"

    .line 505
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_8
    const-string v2, "off"

    .line 502
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 324
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 422
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 424
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, -0x1

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 430
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 302
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 296
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 318
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 139
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "auto"

    .line 142
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "on"

    .line 143
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "torch"

    .line 144
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method bridge synthetic buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    .line 455
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 446
    invoke-static {p0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 449
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 451
    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 455
    :cond_0
    new-instance p0, Landroid/util/Range;

    invoke-direct {p0, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method bridge synthetic buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_6

    .line 167
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget v2, p1, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "edof"

    .line 179
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "continuous-picture"

    .line 173
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v2, "continuous-video"

    .line 176
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v2, "macro"

    .line 185
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v2, "auto"

    .line 170
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v2, "fixed"

    .line 182
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method bridge synthetic buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 689
    array-length p0, p0

    if-nez p0, :cond_0

    .line 690
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 693
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "0"

    .line 694
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    .line 695
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 763
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length p1, p0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v3, p0, v0

    .line 764
    iget-object v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v5, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v4, v5, :cond_0

    .line 765
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 766
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-nez p0, :cond_2

    .line 772
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "VideoHighSpeed:SupportedHighPreviewFPSRanges StreamConfigurationMap is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 775
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 776
    array-length p1, p0

    if-lez p1, :cond_3

    .line 777
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 781
    :cond_3
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoHighSpeed:SupportedHighPreviewFPSRanges is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method bridge synthetic buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 789
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 790
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 791
    iget-object v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v5, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v4, v5, :cond_0

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    .line 799
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS StreamConfigurationMap is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 802
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 803
    array-length v2, v0

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 807
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 808
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 809
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 811
    sget-object v6, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoHighSpeed:size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", SupportedHighPreviewFPSRanges is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 815
    :cond_4
    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 816
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 817
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v9, v8, :cond_5

    .line 819
    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 824
    :cond_7
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoHighSpeed:SupportedHighSizesAndFPS is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/LinkedHashMap;

    aput-object p1, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 804
    :cond_8
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS getHighSpeedVideoSizes is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method bridge synthetic buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x100

    .line 85
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    array-length v2, v1

    if-lez v2, :cond_0

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_1
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x22

    .line 105
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    array-length p1, p0

    if-lez p1, :cond_0

    .line 107
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 410
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 411
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 413
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 415
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    const-class p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method bridge synthetic buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 716
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 663
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 666
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "off"

    .line 667
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "on"

    .line 668
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "auto"

    .line 669
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 676
    array-length p0, p0

    if-nez p0, :cond_0

    .line 677
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 680
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "0"

    .line 681
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    .line 682
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedStableSuperNight(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperDefinition(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 703
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 705
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperResolution(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    if-eqz p0, :cond_0

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p1

    .line 122
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 330
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 845
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 847
    sget-object p1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPortraitLevel:size is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 848
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method bridge synthetic buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    const-class p1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method bridge synthetic buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 212
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 213
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    if-eqz v2, :cond_8

    .line 215
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_8

    .line 216
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 217
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    const/4 v7, 0x1

    if-le v5, v6, :cond_4

    .line 218
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v5, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 219
    invoke-interface {v5, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 220
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    const/16 v5, 0xc8

    .line 223
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 224
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v7, v5, :cond_4

    .line 226
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v8

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->findMaxPixels(Ljava/util/List;)J

    move-result-wide v8

    .line 230
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/32 v8, 0x2dc6c00

    cmp-long v8, v5, v8

    if-ltz v8, :cond_2

    const/16 v5, 0x3e8

    .line 233
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_2
    const-wide/32 v8, 0xd418e0

    cmp-long v5, v5, v8

    if-gtz v5, :cond_3

    const/16 v5, 0x190

    .line 235
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_3
    const/16 v5, 0x320

    .line 237
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_4
    :goto_2
    const/16 v5, 0x64

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v5, v0

    goto :goto_3

    :cond_5
    const/4 v7, 0x5

    .line 256
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 v2, 0x4b0

    :cond_6
    if-le v2, v5, :cond_8

    :goto_4
    if-ge v5, v2, :cond_7

    .line 261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    goto :goto_4

    .line 263
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v1
.end method

.method bridge synthetic buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public checkHighFpsSupport()Z
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHighFpsSupport()Z

    move-result p0

    return p0
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

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public isAntiVideoSupport()Z
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result p0

    return p0
.end method

.method public isAutoWaterMarkSupport()Z
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isBWPortraitSupport()Z
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBWPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isGenderAttributeValueSupport()Z
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result p0

    return p0
.end method

.method public isPostViewSupport()Z
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isThumbnailPostViewSupport()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSMVRModeSupport()Z
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    return p0
.end method

.method public isTranssionCameraModeSupport()Z
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTranssionCameraModeSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoPortraitSupport()Z
    .locals 0

    .line 840
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoWaterMarkSupport()Z
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isZSLSupport()Z
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isZSLSupport()Z

    move-result p0

    return p0
.end method

.method public needFakePostView()Z
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFakePostView()Z

    move-result p0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFlipForVideoMirror()Z

    move-result p0

    return p0
.end method

.method public useBitmapWaterMark()Z
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->useBitmapWaterMark()Z

    move-result p0

    return p0
.end method

.method usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic usePreAECaptureFlow(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method
