.class Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;
.super Landroid/os/Handler;
.source "DocumentImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 81
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 82
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "DOC_PHOTO_HANDLE start "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 84
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 90
    :cond_2
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "scan start "

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;->scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;

    move-result-object v2

    .line 92
    sget-object v4, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan done scan = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    .line 94
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v5, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)Z

    const/16 v5, 0x8

    new-array v5, v5, [I

    .line 96
    aget-object v6, v2, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    aput v6, v5, v0

    .line 97
    aget-object v0, v2, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, v5, v1

    .line 98
    aget-object v0, v2, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v6, 0x2

    aput v0, v5, v6

    .line 99
    aget-object v0, v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x3

    aput v0, v5, v1

    .line 100
    aget-object v0, v2, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    aput v0, v5, v4

    const/4 v0, 0x5

    .line 101
    aget-object v6, v2, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    aput v6, v5, v0

    const/4 v0, 0x6

    .line 102
    aget-object v6, v2, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    aput v6, v5, v0

    const/4 v0, 0x7

    .line 103
    aget-object v1, v2, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, v5, v0

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "rectifyByBitmap start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/youtu/ocr/docprocess/DocDetector;->rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "rectifyByBitmap done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)Z

    .line 110
    :goto_1
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "xnetEnhance start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "xnetEnhance end  "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 116
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "DOC_PHOTO_HANDLE end "

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object v1

    .line 119
    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    const v2, 0x14000

    .line 121
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    new-instance v4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 124
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$500(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    const/4 v5, -0x1

    .line 126
    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 127
    invoke-virtual {v4, v2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraResults;->setOtherTags(Ljava/util/List;)V

    .line 131
    invoke-static {v0, v2, v4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$600(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZ)V

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1, v0, v3, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_2
    return-void

    .line 85
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v1

    invoke-static {v0, v1, v3, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$300(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZ)V

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "DOC_PHOTO_HANDLE error "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
