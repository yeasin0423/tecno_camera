.class public Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/ImageProcessor;
.source "CommonPhotoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Lcom/transsion/camera/app/common/mode/ImageProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile mAlgorithmMigrate:Z

.field protected volatile mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

.field private mExecuteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecuteListenersLock:Ljava/lang/Object;

.field mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PairProducer<",
            "Lcom/transsion/camera/adapter/CameraResults;",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

.field private mSizeConverted:Z

.field private mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PairProducer<",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailPairProducerLock:Ljava/lang/Object;

.field protected mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 60
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    .line 76
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    .line 77
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->removeExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->checkExecuteCompleted()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->generateThumbnail([BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    return-void
.end method

.method private addExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExecuteListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 5

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 448
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get location exception, use temp location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addLocationInfoToResults location is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLatitude(D)V

    .line 456
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLongitude(D)V

    .line 457
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsTimeStamp(J)V

    return-void
.end method

.method private algorithmPostViewData([BIIII)V
    .locals 8

    .line 551
    new-instance v7, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)V

    invoke-static {v7}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkExecuteCompleted()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->isExecuteListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->realReleaseImageProcessor()V

    :cond_0
    return-void
.end method

.method private createExecuteListener()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;
    .locals 1

    .line 142
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->addExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-object v0
.end method

.method private encodeThumbnail([BIIIIZLandroid/util/Size;)[B
    .locals 9

    .line 629
    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 630
    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move v8, p6

    .line 629
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method private generateJpegWithoutThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "generateJpegWithoutThumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v0

    .line 417
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZ)V

    return-void
.end method

.method private generateThumbnail([BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
    .locals 8

    .line 582
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    rem-int/lit16 v5, p5, 0x168

    const/16 p5, 0x5a

    if-eq v5, p5, :cond_1

    const/16 p5, 0x10e

    if-ne v5, p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    move v0, p4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p3

    move p5, p4

    .line 589
    :goto_1
    invoke-direct {p0, p5, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->getThumbnailSize(II)Landroid/util/Size;

    move-result-object p5

    .line 590
    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->encodeThumbnail([BIIIIZLandroid/util/Size;)[B

    move-result-object p0

    .line 592
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;-><init>([BII)V

    return-object p1
.end method

.method private getDstJpegSize(II)Landroid/util/Size;
    .locals 1

    .line 506
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 507
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConverted:Z

    if-nez p1, :cond_0

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDstJpegSize not covert size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-nez p1, :cond_1

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDstJpegSize mSizeConvert is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 515
    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->getOriginalSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDstJpegSize originalSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private getThumbnailSize(II)Landroid/util/Size;
    .locals 4

    if-le p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-ge p1, p2, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 598
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->greatestCommonDivisor(II)I

    move-result v0

    .line 599
    div-int v1, p1, v0

    .line 600
    div-int v0, p2, v0

    .line 602
    :goto_2
    rem-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_3

    rem-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_3

    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    if-ge v0, v2, :cond_2

    goto :goto_3

    .line 607
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailSize width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailWidth: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailHeight: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 609
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_3
    :goto_3
    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private greatestCommonDivisor(II)I
    .locals 0

    .line 620
    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    return p2

    .line 624
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->greatestCommonDivisor(II)I

    move-result p0

    return p0
.end method

.method private isExecuteListenersEmptyLocked()Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExecuteListenersEmptyLocked size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 172
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;",
            ">;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPairJpegInfoAndThumbnailInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v0

    .line 427
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZ)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPictureDataAndCameraResults"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "pair JpegInfo and ThumbnailInfo failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V

    return-void
.end method

.method private onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .locals 11

    move-object v10, p0

    .line 283
    iget-object v0, v10, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p5

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    .line 286
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object v2

    move v4, p3

    move v5, p4

    .line 290
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->getDstJpegSize(II)Landroid/util/Size;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 292
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 293
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit16 v8, v3, 0x168

    const/16 v3, 0x5a

    if-eq v8, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v8, v3, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    move v6, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v0

    move v7, v1

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcessAfterTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move v4, p3

    move v5, p4

    move/from16 v9, p7

    .line 301
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->transformThenEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move v4, p3

    move v5, p4

    move/from16 v9, p7

    .line 304
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    .line 308
    :goto_2
    iget-object v0, v10, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processPictureDataWhenRelease()V
    .locals 4

    .line 126
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_2:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraResults;->stub(Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;)Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "processPictureDataWhenRelease pair failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->realReleaseImageProcessor()V

    return-void

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 134
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "processPictureDataWhenRelease pair success"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/adapter/CameraResults;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->createExecuteListener()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;

    move-result-object v3

    .line 135
    invoke-direct {p0, v2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private realReleaseImageProcessor()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "realReleaseImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/PairProducer;->clear()V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/PairProducer;->clear()V

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeExecuteListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .locals 10

    move-object v9, p0

    .line 389
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] transformAndEncode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    iget-boolean v8, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 395
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_0
    new-instance v6, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    move-object v0, v6

    move-object v1, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 400
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pair Jpeg and Thumbnail fail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->generateJpegWithoutThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)V

    return-void

    .line 407
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V

    return-void
.end method

.method private transformThenEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .locals 13

    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    .line 339
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] transformThenEncode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move/from16 v3, p4

    move/from16 v4, p5

    if-nez p8, :cond_1

    if-ne v3, v11, :cond_1

    if-eq v4, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 347
    iget-boolean v8, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->transform([BIIIIIIZ)[B

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p2

    .line 352
    :goto_2
    invoke-virtual {p0, v0, v11, v12, v10}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcessAfterTransform([BIII)[B

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0, v10, v11, v12}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->jpegEncode([BIII)[B

    move-result-object v2

    if-nez v2, :cond_3

    .line 358
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_3
    new-instance v6, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    move-object v0, v6

    move-object v1, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 363
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_4

    .line 365
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pair Jpeg and Thumbnail fail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->generateJpegWithoutThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)V

    return-void

    .line 370
    :cond_4
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V

    return-void
.end method

.method private writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B
    .locals 4

    .line 431
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$1000(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 432
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageWidth(J)V

    .line 433
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$1200(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageLength(J)V

    if-eqz p2, :cond_0

    .line 435
    new-instance v1, Landroid/util/Size;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->access$1300(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I

    move-result v2

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->access$1400(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    .line 437
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 438
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->access$1500(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)[B

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->access$1600(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    return-void
.end method

.method protected algorithmProcess([BIIII)[B
    .locals 0

    return-object p1
.end method

.method protected algorithmProcessAfterTransform()Z
    .locals 0

    .line 319
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected algorithmProcessAfterTransform([BIII)[B
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 500
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->process([BIII)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method protected algorithmProcessPostView([BIIII)[B
    .locals 0

    .line 485
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public doProcessedMedia(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 0

    .line 734
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    return-void
.end method

.method public doProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;)Landroid/net/Uri;
    .locals 12

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doProcessingMedia: mPicSurface is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 699
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doProcessingMedia: BGEnable is false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_2

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doProcessingMedia: storageOperator is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 708
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createProcessingContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v11

    .line 709
    invoke-interface {v0, v11}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 710
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doProcessingMedia: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    .line 714
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "_data: "

    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mime_type: "

    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", date_added: "

    .line 718
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "date_added"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", date_modified: "

    .line 719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "date_modified"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", _size: "

    .line 720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 722
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 726
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 727
    new-instance p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    sget-object v7, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    move-object v4, p0

    move-object v8, p3

    move-object v9, p2

    move-object v10, v0

    invoke-direct/range {v4 .. v11}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;-><init>(JLcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 728
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->add(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    return-object v0
.end method

.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    return-void
.end method

.method protected jpegEncode([BIII)[B
    .locals 0

    .line 527
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method protected jpegEncode([BIIIIIIZ)[B
    .locals 0

    .line 532
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onCaptureCompleted in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCaptureCompleted pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V

    :cond_1
    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureFailed()V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onCaptureFailed in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/PairProducer;->pollSecondLast()Ljava/lang/Object;

    .line 222
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onContinuousShotStart()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->unableBGService()V

    :cond_0
    return-void
.end method

.method public onContinuousShotStop()V
    .locals 0

    return-void
.end method

.method protected onJpeg([BZ)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotProgress([B)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZ)V

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    :goto_0
    return-void
.end method

.method protected onPictureData([BIIIIZ)V
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onPictureData in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x100

    if-ne v0, p2, :cond_0

    .line 231
    invoke-virtual {p0, p1, p6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZ)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    if-eq v0, p2, :cond_2

    const v0, 0x32315659

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid image format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_2
    :goto_0
    new-instance v7, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;-><init>([BIIIIZ)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {p1, v7}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_3

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPictureData pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_3
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V

    :goto_1
    return-void
.end method

.method protected onPictureDataFail()V
    .locals 2

    .line 246
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    .line 249
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    :cond_0
    return-void
.end method

.method protected onPostViewData([BIIII)V
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onPostViewData in Processor."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmPostViewData([BIIII)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->onPostViewData([BIIII)V

    :goto_0
    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 664
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 666
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable()V

    :cond_0
    return-void
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 7

    if-nez p1, :cond_0

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateThumbnailSurface: size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 640
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 644
    :cond_2
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x23

    const/4 v6, 0x0

    const-string v2, "PostView"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZ)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 648
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    return-object p0
.end method

.method protected releaseAlgorithm()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseAlgorithm()V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseAlgorithm"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseImageProcessor()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->processPictureDataWhenRelease()V

    return-void
.end method

.method protected releaseSurface()V
    .locals 1

    .line 686
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseSurface()V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    :cond_0
    return-void
.end method

.method protected setPhotoHelper(Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    return-void
.end method

.method protected transform([BIIIIIIZ)[B
    .locals 0

    .line 522
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->transform([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public unInit()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->unInit()V

    .line 93
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullContinousShotCallback;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/NullContinousShotCallback;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    return-void
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateYuvPicSurface size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmMigrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->convertSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConverted:Z

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateYuvPicSurface originalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", convertSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object p1, v0

    .line 198
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
