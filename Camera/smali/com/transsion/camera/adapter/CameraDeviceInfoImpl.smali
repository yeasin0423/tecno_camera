.class Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;
.super Ljava/lang/Object;
.source "CameraDeviceInfoImpl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraDeviceInfo;


# instance fields
.field private final mCameraInfoArray:[Lcom/transsion/camera/adapter/CameraInfoImpl;

.field private final mNumberOfCameras:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 26
    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 28
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v1, v2

    .line 29
    aget-object v3, v1, v2

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;->mNumberOfCameras:I

    .line 34
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;->generateCameraInfos([Landroid/hardware/Camera$CameraInfo;)[Lcom/transsion/camera/adapter/CameraInfoImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;->mCameraInfoArray:[Lcom/transsion/camera/adapter/CameraInfoImpl;

    return-void
.end method

.method private static generateCameraInfos([Landroid/hardware/Camera$CameraInfo;)[Lcom/transsion/camera/adapter/CameraInfoImpl;
    .locals 5

    .line 38
    array-length v0, p0

    .line 39
    new-array v1, v0, [Lcom/transsion/camera/adapter/CameraInfoImpl;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 41
    aget-object v3, p0, v2

    .line 42
    new-instance v4, Lcom/transsion/camera/adapter/CameraInfoImpl;

    invoke-direct {v4, v3}, Lcom/transsion/camera/adapter/CameraInfoImpl;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBackFakeDualCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlackWhitePortraitCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;->mCameraInfoArray:[Lcom/transsion/camera/adapter/CameraInfoImpl;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDualCamCalibrationSize()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrontFakeDualCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrontWideCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0
.end method

.method public getLogicalCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxZoom(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMiniZoom(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNumberOfCameras()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfoImpl;->mNumberOfCameras:I

    return p0
.end method

.method public getOpticalZoomCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPeriscopeCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSatCameraLogicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondLogicalCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getVideoCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWideCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBGServiceSupport(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighFPSSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
