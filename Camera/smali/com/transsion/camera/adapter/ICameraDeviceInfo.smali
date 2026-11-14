.class public interface abstract Lcom/transsion/camera/adapter/ICameraDeviceInfo;
.super Ljava/lang/Object;
.source "ICameraDeviceInfo.java"


# virtual methods
.method public abstract getBackFakeDualCameraId()Ljava/lang/String;
.end method

.method public abstract getBlackWhitePortraitCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;
.end method

.method public abstract getDualCamCalibrationSize()Ljava/lang/String;
.end method

.method public abstract getFrontFakeDualCameraId()Ljava/lang/String;
.end method

.method public abstract getFrontWideCameraId()Ljava/lang/String;
.end method

.method public abstract getLensFocalLengths(Ljava/lang/String;)[F
.end method

.method public abstract getLogicalCameraId()Ljava/lang/String;
.end method

.method public abstract getMaxZoom(Ljava/lang/String;)I
.end method

.method public abstract getMiniZoom(Ljava/lang/String;)I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract getOpticalZoomCameraId()Ljava/lang/String;
.end method

.method public abstract getPeriscopeCameraId()Ljava/lang/String;
.end method

.method public abstract getSatCameraLogicId()Ljava/lang/String;
.end method

.method public abstract getSecondLogicalCameraId()Ljava/lang/String;
.end method

.method public abstract getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
.end method

.method public abstract getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getVideoCameraId()Ljava/lang/String;
.end method

.method public abstract getWideCameraId()Ljava/lang/String;
.end method

.method public abstract isBGServiceSupport(Ljava/lang/String;)Z
.end method

.method public abstract isHighFPSSupport()Z
.end method
