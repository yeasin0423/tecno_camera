.class Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;
.super Lcom/transsion/camera/feature/common/BaseCapture;
.source "WideSelfieCapture.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

.field private mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

.field private final mFaceBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

.field private final mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

.field private final mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/common/BaseCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    .line 65
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    .line 114
    new-instance p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 115
    new-instance p1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;[BIII)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method private calculateFOV()V
    .locals 11

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV size is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object v1

    .line 267
    array-length v2, v1

    if-gtz v2, :cond_1

    .line 268
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV focus is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 273
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    aget v5, v1, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    double-to-float v3, v7

    iput v3, v2, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mCameraViewAngleForWidth:F

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 275
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    aget v1, v1, v4

    mul-float/2addr v1, v6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v9

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mCameraViewAngleForHeight:F

    return-void
.end method

.method private sendStopCommand()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(I[B[Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected doCapture()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doCapture()V

    return-void

    :catchall_0
    move-exception p0

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->init()Z

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    invoke-interface {v0, p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method protected onDataAvailable([BIII)V
    .locals 0

    .line 246
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_0
    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 249
    new-array p3, p3, [Landroid/graphics/Rect;

    .line 250
    iget-object p4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 252
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    iget-object p4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p4

    .line 254
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p3}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(I[B[Landroid/graphics/Rect;)V

    .line 257
    :cond_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 252
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 7

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    move v0, p2

    :goto_0
    if-lez v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_4

    .line 200
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_7

    .line 201
    array-length v2, v1

    if-gtz v2, :cond_2

    goto :goto_3

    .line 208
    :cond_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 216
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 221
    array-length v4, v1

    :goto_1
    if-ge p3, v4, :cond_5

    aget-object v5, v1, p3

    .line 223
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6, v2, v0, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToPreviewSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 226
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 230
    :cond_5
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 210
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 211
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 212
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 202
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 203
    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 204
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 194
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 195
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 196
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method

.method protected onStreamAvailable(III)V
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->calculateFOV()V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iput p1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageWidth:I

    .line 237
    iput p2, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageHeight:I

    .line 238
    iput p3, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageFormat:I

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, v0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    return-void
.end method

.method public setDirectionListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-void
.end method

.method setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    return-void
.end method

.method public setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mThumbnailHeight:I

    .line 182
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mThumbnailBgWidth:I

    return-void
.end method

.method public stopCapture()Z
    .locals 4

    .line 149
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->sendStopCommand()V

    .line 154
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return v0
.end method

.method public unInit()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->unInit()Z

    return-void

    :catchall_0
    move-exception p0

    .line 168
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateOrientation(I)V
    .locals 2

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateOrientation(I)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mOrientation:I

    return-void
.end method
