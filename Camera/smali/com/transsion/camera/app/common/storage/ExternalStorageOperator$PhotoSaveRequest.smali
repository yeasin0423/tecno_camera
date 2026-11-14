.class Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/SaveRequest;
.source "ExternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 7

    .line 342
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 343
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/SaveRequest;-><init>(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private isDataValid()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 389
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "data is null or ContentValues is null, invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private writeJpegFile([BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "Failed to save image,Exception:"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "title is null, invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 402
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v4}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$100(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    if-nez v4, :cond_1

    .line 403
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v4, v4, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "makeCameraDirectory again in writeJpegFile."

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v4}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$100(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    invoke-virtual {v4, p4, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    .line 439
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 411
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v5, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_3

    .line 413
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 417
    :goto_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    .line 436
    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catch_3
    move-exception v4

    .line 421
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v5, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v5, v0, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    iget v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    .line 423
    iget v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    mul-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    .line 425
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v0

    .line 427
    :try_start_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not sleep "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    mul-int/lit8 v4, v4, 0x32

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 431
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save image,the:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "th retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFile([BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 439
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_4
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_4
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 440
    throw p0
.end method

.method private writeJpegFileFromUri()Z
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 449
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 454
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 456
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    .line 462
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "openOutputStream fail"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 466
    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "write data fail"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 470
    throw p0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public process()V
    .locals 5

    .line 348
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 354
    iput v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 355
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFile([BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, p0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$000(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-nez v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "insert db fail"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method
