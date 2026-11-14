.class Lcom/transsion/camera/feature/common/BaseCapture$3;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;

.field final synthetic val$data:[B

.field final synthetic val$format:I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;[BIII)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iput p3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iput p4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iput p5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeJpeg([BIII)[B
    .locals 8

    const/4 p0, 0x0

    const/16 v0, 0x11

    if-eq v0, p4, :cond_0

    .line 220
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 223
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :try_start_1
    new-instance v7, Landroid/graphics/YuvImage;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 226
    new-instance p1, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v7, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 223
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 251
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "savePicture start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iget v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iget v5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/common/BaseCapture$3;->encodeJpeg([BIII)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 256
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "encode failed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    .line 270
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    const v3, 0x14000

    .line 272
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 274
    invoke-virtual {v4, v7}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 275
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 276
    invoke-static {v2, v3, v4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v2

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 278
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;->updateView([B)V

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    if-nez v3, :cond_2

    .line 284
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mStorageOperator is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/CommonModeHelper;

    move-result-object v4

    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 290
    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v9, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    move-object v5, v2

    .line 289
    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/feature/common/CommonModeHelper;->createContentValues([BLjava/lang/String;Landroid/location/Location;II)Landroid/content/ContentValues;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v4}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 293
    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$600(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    move-result-object p0

    .line 292
    invoke-interface {v4, v3, v2, v5, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 296
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePicture end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
