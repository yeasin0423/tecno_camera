.class public Lcom/transsion/camera/app/common/mode/CaptureSurface;
.super Ljava/lang/Object;
.source "CaptureSurface.java"

# interfaces
.implements Lcom/transsion/camera/adapter/IBGSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;,
        Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mBGEnable:Z

.field private mBgEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/bgservice/BgEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCanReleaseCaptureSurface:Z

.field private final mFormat:I

.field private final mHeight:I

.field private mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field private mImageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mImageReader:Landroid/media/ImageReader;

.field private volatile mIsBGSurface:Z

.field private mIsReleased:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mName:Ljava/lang/String;

.field mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreReleaseTime:J

.field private mReleaseLock:Ljava/lang/Object;

.field private mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureSurface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x0

    .line 43
    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    .line 49
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    .line 52
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    .line 207
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;-><init>(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    .line 70
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    .line 71
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    const/16 p1, 0x23

    if-ne p1, p4, :cond_0

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldForceConvertNV21()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    const-wide/32 v4, 0x2000003

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    goto :goto_0

    .line 76
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    invoke-static {p1, p2, p4, p5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 79
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    .line 80
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CaptureSurface;Landroid/media/ImageReader;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->acquireImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method private acquireImage(Landroid/media/ImageReader;)V
    .locals 8

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 232
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ImageReader is release, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_1

    .line 237
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "acquireImage image is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    monitor-exit v0

    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    :goto_0
    move v4, v1

    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getBufferFromImage(Landroid/media/Image;)[B

    move-result-object v3

    .line 243
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 244
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 245
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    if-eqz v2, :cond_3

    .line 248
    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTaken([BIIIZ)V

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 246
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getBufferFromImage(Landroid/media/Image;)[B
    .locals 4

    .line 274
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 278
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 280
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    .line 283
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[AlgorithmPerformance] YUV_420_888 to NV21 start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 286
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 289
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AlgorithmPerformance] YUV_420_888 to NV21 end | process time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private realReleaseSurface()V
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realReleaseSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 173
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    :cond_1
    const/4 v1, 0x1

    .line 176
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    if-eqz v1, :cond_2

    .line 178
    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;->onSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 179
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    :cond_2
    return-void
.end method

.method private releaseAfterCheckNum()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    .line 204
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private shouldReleaseSurface()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public decreasePicCount()V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    .line 143
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mBGEnable is false, don\'t decreasePicCount"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 147
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<decreasePictureNum> captureSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseAfterCheckNum()V

    return-void
.end method

.method public getFormat()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getPreReleaseTime()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    return p0
.end method

.method public increasePicCount()V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    .line 133
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mBGEnable is false, don\'t increasePicCount"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<increasePictureNum> captureSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isBGEnable()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return p0
.end method

.method public notifyBgEventCallback(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .locals 3

    .line 254
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyBgEventCallback mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ImageQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    if-eqz p1, :cond_1

    .line 261
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ImageReader;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->acquireImage(Landroid/media/ImageReader;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onBGServiceDied()V
    .locals 2

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    .line 154
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    .line 159
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseSurface()V
    .locals 3

    .line 188
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseSurface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->shouldReleaseSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    .line 196
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetBGEnable()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method

.method public setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    return-void
.end method

.method public setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureSurface{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unableBGService()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method
