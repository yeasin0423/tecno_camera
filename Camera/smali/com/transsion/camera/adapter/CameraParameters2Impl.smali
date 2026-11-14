.class Lcom/transsion/camera/adapter/CameraParameters2Impl;
.super Lcom/transsion/camera/adapter/CameraParameters;
.source "CameraParameters2Impl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final REGION_WEIGHT:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private final mActiveArrayRect:Landroid/graphics/Rect;

.field private mAvailableFaceDetectModes:[I

.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private mFaceDetectionEnable:Z

.field private final mFovCropRectangle:Landroid/graphics/Rect;

.field private mIsFlashRequiredInAutoMode:Z

.field private mMulitiCropRegionZoomRatio:F

.field private mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field private mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraParameters2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 41
    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    const v2, 0x3cb43958    # 0.022f

    .line 46
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    .line 67
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "android.control.zoomRatio"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 68
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "com.mediatek.multicamfeature.multiCamZoomValue"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 73
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 74
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 75
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 76
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[CameraParameters2Impl] cs:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 78
    new-instance p1, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-direct {p1, v0, v0, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    goto :goto_0

    .line 80
    :cond_0
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "CameraParameters2Impl mActiveArraySize is null !!!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    .line 84
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 85
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    .line 86
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    return-void
.end method

.method private static rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;II",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ")[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    .line 996
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 997
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    if-eqz p3, :cond_0

    .line 1000
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 1001
    invoke-static {p4, v0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p4

    .line 1006
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    new-array v0, p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    .line 1008
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_4

    .line 1009
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/SettingInfo$Area;

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    .line 1013
    :cond_2
    iget-object v1, v1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2, p4}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1015
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sget v3, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, v0, p3

    goto :goto_2

    .line 1011
    :cond_3
    :goto_1
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v1, v0, p3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiMoonMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 965
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAppMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, -0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAppMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 603
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, -0x1

    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x192f6

    if-eq v2, v3, :cond_1

    const v3, 0x5209f7db

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "mtk_hdr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "hdr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x12

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 619
    :cond_5
    :goto_1
    sget-object v1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateControlMode controlMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentSceneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 624
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp_super_night"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "hdr"

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "meg_super_night"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_5

    const/4 p0, -0x1

    .line 633
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x192f6

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p0, v4

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x12

    .line 641
    :goto_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFakeDualLensMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    .line 403
    invoke-static {v1, v2, v3, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    .line 405
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGenderAttributeValue()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getAttributeValue is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1095
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMacroLampValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 385
    invoke-static {v1, v2, v3, v4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 387
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 391
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    return-void
.end method

.method private updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightHawkMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOISSupport()Z

    move-result p0

    .line 596
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOISMode,isSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 598
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 587
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object p0

    .line 588
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updatePreviewRange, fpsRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 590
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRTDofEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 692
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBLockStatus()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 13

    .line 647
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 649
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "10"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "daylight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fluorescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v8

    goto :goto_0

    :sswitch_2
    const-string v2, "twilight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "warm_fluorescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_4
    const-string v2, "cloudy_daylight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_5
    const-string v2, "shade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_6
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v10

    goto :goto_0

    :sswitch_7
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v11

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_9
    const-string v2, "incandescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v9

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    .line 678
    :pswitch_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 675
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 672
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 669
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 666
    :pswitch_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 663
    :pswitch_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 660
    :pswitch_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 657
    :pswitch_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 654
    :pswitch_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 651
    :pswitch_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 683
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getManualAWBValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37fc9231 -> :sswitch_9
        0x61f -> :sswitch_8
        0x1ad6f -> :sswitch_7
        0x2dddaf -> :sswitch_6
        0x6854e2d -> :sswitch_5
        0x11ac9bf5 -> :sswitch_4
        0x55d265ae -> :sswitch_3
        0x625dee90 -> :sswitch_2
        0x71671468 -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method private updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 583
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "autoWatermarkMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 945
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 947
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    const-string p1, "on"

    .line 949
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 950
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWaterMarkParameterList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkParameterList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWConvertEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWPortraitEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBGImageReaderId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestCCUFlow(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isCCUFlowEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableCCUFlow(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCusIspAsd()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSmartDenoise()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 925
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrection], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 920
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrectionPreview], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 568
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7735940

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    div-int/2addr v0, v1

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    div-int/2addr v1, v0

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x419dcd6500000000L    # 1.25E8

    div-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v0, v0

    mul-double/2addr v2, v0

    double-to-int v0, v2

    .line 575
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 577
    :cond_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRequestExposureCompensation: config value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", set value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    return-void
.end method

.method private updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 717
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-wide/32 v2, 0x7735940

    .line 719
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 722
    :cond_0
    sget-object v2, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRequestExposureTime: config value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", template:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 726
    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 728
    :goto_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFaceDetectionEnable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 530
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 531
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 537
    :cond_1
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face detect not supported."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 541
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 540
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    return-void
.end method

.method private updateRequestFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 435
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 454
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 455
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_a

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xddf

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_3

    const v8, 0x1ad6f

    if-eq v7, v8, :cond_2

    const v8, 0x2dddaf

    if-eq v7, v8, :cond_1

    const v8, 0x696d3fc

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "torch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    goto :goto_1

    :cond_1
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v7, "off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v7, "on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v10, :cond_6

    if-eq v0, v9, :cond_5

    goto :goto_4

    .line 463
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    move-object v0, v2

    move-object v2, v4

    goto :goto_5

    .line 458
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v4

    :goto_3
    move-object v0, v6

    goto :goto_5

    .line 439
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    if-eqz v0, :cond_7

    .line 444
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 449
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_a
    :goto_4
    move-object v0, v2

    .line 472
    :goto_5
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v4

    const-wide/16 v7, -0x1

    if-ne v4, v1, :cond_c

    .line 473
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    move v3, v5

    :cond_c
    :goto_6
    if-eqz v3, :cond_d

    .line 476
    sget-object v1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updateRequestAEMode to CONTROL_AE_MODE_OFF"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v6

    .line 479
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v3

    cmp-long p0, v3, v7

    if-eqz p0, :cond_e

    .line 481
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateRequestFlashMode to FLASH_MODE_OFF"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v6, v0

    .line 484
    :goto_7
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 485
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 490
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    const/4 v2, 0x1

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "continuous-picture"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v5, "macro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v7

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v8

    goto :goto_0

    :sswitch_3
    const-string v5, "edof"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v9

    goto :goto_0

    :sswitch_4
    const-string v5, "auto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_0

    :sswitch_5
    const-string v5, "continuous-video"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v10

    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    goto :goto_1

    .line 509
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 506
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 503
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 500
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 497
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x0

    .line 515
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, v2

    .line 518
    :goto_3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne v0, v1, :cond_9

    .line 521
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusDistance()F

    move-result p0

    .line 522
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_5
        0x2dddaf -> :sswitch_4
        0x2f6eb6 -> :sswitch_3
        0x5cee774 -> :sswitch_2
        0x62d9bcc -> :sswitch_1
        0x363d9440 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHumanDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1103
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanEffectMode()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1105
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    .line 708
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRequestISOValue: config value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", set value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 712
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 713
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 418
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegQuality()I

    move-result p0

    if-lez p0, :cond_0

    int-to-byte p0, p0

    .line 412
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 413
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLuminanceValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 835
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7

    .line 762
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMultiFaceBeautyMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, -0x1

    .line 767
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5069748f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x4e8d49d9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xddf

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v2, "multifaceCustom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    :cond_4
    :goto_0
    if-eqz v1, :cond_9

    const-string v0, "]="

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_5

    goto :goto_3

    .line 779
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyFeaturesLevel()[I

    move-result-object v1

    .line 780
    :goto_1
    array-length v2, v1

    if-ge v5, v2, :cond_6

    .line 781
    sget-object v2, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALUE_MULTIFACEBEAUTY_CUSTOM values=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 783
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    .line 772
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyFeaturesLevel()[I

    move-result-object v1

    .line 773
    :goto_2
    array-length v2, v1

    if-ge v5, v2, :cond_8

    .line 774
    sget-object v2, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALUE_FACEBEAUTY_CUSTOM values=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 776
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    .line 769
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_3
    return-void
.end method

.method private updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 904
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v1, v2

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isQuickPreviewEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 981
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFlashMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 986
    :cond_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screenFlashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 987
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportLogicalCameraMode()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVsdofLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setShot2ShotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSlimBodyLevels()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getThumbnailSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 698
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isVideoStabilizationEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 559
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 559
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 562
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 548
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 550
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSMVRRequestParams()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1110
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1113
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1114
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperResolutionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranFaceDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraModeEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getOverrideSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    const v0, 0x3faaaaab

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 312
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 313
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    mul-float/2addr v2, v5

    int-to-float v6, v4

    div-float v7, v2, v6

    .line 316
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    if-eqz v8, :cond_2

    .line 317
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 318
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v8, :cond_2

    if-ge v8, v3, :cond_2

    if-lez v9, :cond_2

    if-ge v9, v4, :cond_2

    int-to-float v8, v8

    div-float/2addr v2, v8

    cmpg-float v8, v1, v2

    if-gez v8, :cond_2

    move v1, v2

    :cond_2
    const v2, 0x3b03126f    # 0.002f

    add-float v8, v7, v2

    cmpl-float v8, v0, v8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-lez v8, :cond_3

    div-float v0, v5, v0

    sub-float/2addr v6, v0

    div-float/2addr v6, v9

    float-to-int v0, v6

    .line 330
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v5, v1

    float-to-int v5, v5

    .line 331
    invoke-static {v5, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v4, v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    int-to-float v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 332
    invoke-static {v6, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    .line 330
    invoke-virtual {v2, v10, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    sub-float/2addr v7, v2

    cmpg-float v2, v0, v7

    if-gez v2, :cond_4

    mul-float/2addr v0, v6

    sub-float/2addr v5, v0

    div-float/2addr v5, v9

    float-to-int v0, v5

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    int-to-float v7, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 336
    invoke-static {v5, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 337
    invoke-static {v6, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    .line 335
    invoke-virtual {v2, v0, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v5, v1

    float-to-int v2, v5

    .line 340
    invoke-static {v2, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v2

    div-float/2addr v6, v1

    float-to-int v5, v6

    .line 341
    invoke-static {v5, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    .line 339
    invoke-virtual {v0, v10, v10, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 344
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 343
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 347
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 348
    sget-object v2, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCropRectangle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isSatSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " zoomRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mMulitiCropRegionZoomRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 351
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 357
    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method varargs addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V
    .locals 4

    .line 218
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    if-nez v1, :cond_0

    .line 220
    sget-object v2, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "add null Surface as request target."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method public clearAll()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFaceDetectionEnable(Z)V

    return-void
.end method

.method public clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .locals 0

    .line 1030
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    return-object p0
.end method

.method configureBGService(ZI)V
    .locals 3

    .line 110
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureBGService isEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enableBGServiceMode(Z)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setBGImageReaderId(I)V

    return-void
.end method

.method public varargs createBurstRequest(II[Landroid/view/Surface;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/view/Surface;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 247
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "add null Surface as request target."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 p3, 0x1

    .line 256
    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 257
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 262
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 263
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 267
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 271
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 274
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 276
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 279
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 280
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 281
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCCUFlow(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 285
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 286
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 289
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v2, p2, :cond_3

    .line 291
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    invoke-static {p0, p1, p2, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 132
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 134
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 137
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 144
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 147
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCCUFlow(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 156
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 158
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 206
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 209
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object v0
.end method

.method varargs createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    return-object p1
.end method

.method setFaceDetectionEnable(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFaceDetectionEnable:Z

    return-void
.end method

.method setFlashRequiredInAutoMode(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    return-void
.end method

.method upadetMultiCropZoomRatio()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    return-void
.end method

.method updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v0

    .line 365
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    div-float v3, v0, v2

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v5, v1, v2

    sub-float v5, v1, v5

    div-float/2addr v5, v4

    float-to-int v4, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v5, 0x2

    aput v0, v2, v5

    const/4 v5, 0x3

    aput v1, v2, v5

    .line 370
    sget-object v5, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " w:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
