.class public abstract Lcom/transsion/camera/app/common/mode/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IImageProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/mode/IImageProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mCaptureOrientation:I

.field protected mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field private mIsSavingJepg:Z

.field private volatile mIsUnInit:Z

.field private final mListenersLock:Ljava/lang/Object;

.field protected mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field protected mMirror:Z

.field private mNeedReleaseCallback:Z

.field protected mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected volatile mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

.field protected mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mSurfaceLock:Ljava/lang/Object;

.field private mSurfaceStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTempLocation:Landroid/location/Location;

.field protected mWatermark:Z

.field protected mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 175
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 189
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->checkAllSurfaceReleased()V

    return-void
.end method

.method private addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 297
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private checkAllSurfaceReleased()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-nez v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ignore it when ImageProcessor don\'t unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_1
    return-void
.end method

.method private createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
    .locals 1

    .line 271
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    .line 279
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-object v0
.end method

.method private isSurfaceStateListenersEmptyLocked()Z
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSurfaceStateListenersEmptyLocked size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 313
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 305
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public doProcessedMedia(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 0

    return-void
.end method

.method protected doSaveJpeg([BLandroid/graphics/Bitmap;Z)V
    .locals 8

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] saveJpegToFile image"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v2, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "saveJpegToFile: storageOperator is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLocationManager is null, use temp location"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 121
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->updateExifForAnalytics([B)V

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 126
    new-instance v6, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;

    invoke-direct {v6, p0, p3, p1, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[BLcom/transsion/camera/app/common/provider/ProcessMediaItem;)V

    .line 135
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    .line 126
    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[B)V

    invoke-interface {v2, v0, p1, p2, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_1
    return-void
.end method

.method protected abstract getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method protected isBGEnable()Z
    .locals 0

    .line 405
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isBGSupport()Z

    move-result p0

    return p0
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    return-void
.end method

.method public onCaptureFailed()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_0

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increasePicCount()V

    .line 363
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onPictureData([BIIIIZ)V
.end method

.method protected onPictureDataFail()V
    .locals 0

    return-void
.end method

.method protected onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTakePicture CaptureInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mMirror:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    .line 342
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mWatermark:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    .line 343
    iget p1, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    return-void
.end method

.method protected abstract onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public pause()V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseAlgorithm()V
    .locals 0

    return-void
.end method

.method protected releaseImageProcessor()V
    .locals 0

    return-void
.end method

.method protected releaseSurface()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 386
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 390
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method protected saveJpegToFile([BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 63
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    goto :goto_0

    .line 66
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseSurface()V

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updatePicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 206
    monitor-exit v0

    return-object p0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable()V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 212
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 213
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updatePicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 219
    :goto_0
    new-instance v7, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const-string v2, "JpegPic"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object v1, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZ)V

    iput-object v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_5

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 227
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public final updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateThumbnailSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 322
    monitor-exit v0

    return-object p0

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateYuvPicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 245
    monitor-exit v0

    return-object p0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable()V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 251
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 252
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updateYuvPicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 258
    :goto_0
    new-instance v7, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const-string v2, "YuvPic"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object v1, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZ)V

    iput-object v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_5

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 263
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 266
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
