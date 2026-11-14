.class public Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/ImageProcessor;
.source "CommonVideoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/ImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    return-void
.end method


# virtual methods
.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method protected onPictureData([BIIIIZ)V
    .locals 0

    .line 24
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p2, p1, p6}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZ)V

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p0, p1, p2, p6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-void
.end method
