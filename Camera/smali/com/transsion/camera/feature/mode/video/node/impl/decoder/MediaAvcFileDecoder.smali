.class public Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;
.super Ljava/lang/Object;
.source "MediaAvcFileDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

.field private mDecodeColorFormat:I

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderThread:Ljava/lang/Thread;

.field private mDropOutputFrame:I

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mFrameRate:I

.field private mHasKeepFrames:Z

.field private mHasReBack:Z

.field private mImageFormat:I

.field private mInputEOS:Z

.field private mInputFrameCount:I

.field private mKeepFrameCount:I

.field private mKeepFrameFrom:I

.field private mKeepFrameTo:I

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mMotionDetectInputFrameNum:I

.field private mMotionDetectOutputFrameNum:I

.field private mMotionDetected:Z

.field private mOutputEOS:Z

.field private mOutputFrameCount:I

.field private mRatio:I

.field private mRetryTime:I

.field private mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f420888

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 63
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    const/4 v0, 0x4

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    const/16 v1, 0x1e

    .line 77
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    .line 79
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    const/16 v0, 0x1f

    .line 80
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    const/16 v0, 0x5b

    .line 81
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    const/16 v0, 0x3c

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    return-void
.end method

.method private correctKeepFrameRange(Ljava/lang/String;)V
    .locals 8

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->getTotalFrameCount(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 157
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid video!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    mul-int/lit8 v0, v0, 0x9

    .line 162
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    div-int v2, v0, v1

    if-gt p1, v2, :cond_1

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    .line 164
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    .line 165
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    goto :goto_1

    .line 166
    :cond_1
    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    mul-int v4, v1, v2

    sub-int v4, v0, v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_3

    mul-int/2addr v0, v3

    sub-int/2addr v0, p1

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    int-to-double v0, v3

    div-double/2addr v4, v0

    .line 167
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    sub-int/2addr p1, v0

    .line 168
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    div-int/2addr p1, v0

    int-to-double v1, p1

    const/16 p1, 0x8

    if-ne p1, v0, :cond_2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    :goto_0
    mul-double/2addr v1, v3

    double-to-int p1, v1

    .line 169
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    .line 170
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    .line 173
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correctKeepFrameRange, from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 340
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gt v2, v4, :cond_1

    .line 342
    iget v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 343
    iget v4, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    if-lez v4, :cond_0

    const/16 v4, 0x1e

    if-le v1, v4, :cond_0

    .line 344
    iput-boolean v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 346
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no video decoder output buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRetryTime: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 351
    iput v4, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 353
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 354
    iput-boolean v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 356
    :cond_2
    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    if-lez v5, :cond_3

    sub-int/2addr v5, v3

    .line 357
    iput v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    .line 358
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dequeueOutputBuffer dropOutputFrame: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOutputFrameCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 363
    :cond_3
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_8

    .line 364
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_4

    .line 366
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "image is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 370
    :cond_4
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    if-ne v3, v5, :cond_5

    const/16 v6, 0x2008

    .line 372
    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    .line 373
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->parseYU12(Landroid/media/Image;)[B

    move-result-object v6

    goto :goto_0

    :cond_5
    const/16 v6, 0x11

    .line 375
    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    .line 376
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->parseNV21(Landroid/media/Image;)[B

    move-result-object v6

    :goto_0
    move-object v9, v6

    .line 379
    iget v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 380
    iget-boolean v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-nez v7, :cond_6

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    if-ge v6, v7, :cond_6

    move v13, v3

    goto :goto_1

    :cond_6
    move v13, v4

    .line 381
    :goto_1
    iget v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    iget v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    invoke-direct {p0, v3, v6}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->shouldKeepFrames(II)Z

    move-result v14

    .line 382
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input FrameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", output FrameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", PixelStride:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", motionDetect: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", keepFrame: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    if-eqz v7, :cond_7

    .line 389
    iget v8, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    iget v12, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v7 .. v14}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;->decodedAvcData(I[BIIIZZ)V

    .line 393
    :cond_7
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 394
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_8
    return-void
.end method

.method private getTotalFrameCount(Ljava/lang/String;)I
    .locals 5

    .line 134
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 138
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total frame count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    :try_start_1
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalFrameCount exception videoFilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 150
    throw p1
.end method

.method private isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 430
    iget-object p0, p2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private parseNV21(Landroid/media/Image;)[B
    .locals 4

    .line 476
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 477
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 481
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 482
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    .line 485
    new-array v3, v3, [B

    .line 486
    invoke-virtual {p0, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {p1, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v3
.end method

.method private parseYU12(Landroid/media/Image;)[B
    .locals 7

    .line 453
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 454
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 455
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 458
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 459
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 463
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    .line 464
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int v5, v1, v3

    add-int v6, v5, v4

    .line 467
    new-array v6, v6, [B

    .line 468
    invoke-virtual {p0, v6, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 469
    invoke-virtual {v2, v6, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 470
    invoke-virtual {p1, v6, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v6
.end method

.method private queueInputBuffer()V
    .locals 11

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, -0x1

    if-gt v4, v0, :cond_0

    .line 246
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no video decoder input buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "get InputBuffer failed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    const/4 v10, 0x1

    if-gtz v1, :cond_2

    .line 256
    iput-boolean v10, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    .line 257
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 261
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    if-eqz v3, :cond_4

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->reBackIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->skipFramesIfNeeded()V

    move v6, v1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_4
    move v6, v1

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 271
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueInputBuffer sampleTime: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v7, v0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v2, :cond_5

    .line 274
    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    add-int/2addr v2, v10

    iput v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 276
    :cond_5
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    if-nez v2, :cond_6

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void
.end method

.method private reBackIfNeeded()Z
    .locals 8

    .line 283
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    .line 285
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    add-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v0

    .line 288
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reBackIfNeeded start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 291
    iput v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    add-int/lit8 v3, v2, -0x1

    .line 292
    iput v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 293
    iput v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    .line 296
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 299
    :cond_0
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "reBack sample time is not cached"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 301
    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    mul-int/2addr v1, v4

    int-to-long v4, v1

    const-wide/16 v6, 0x20c5

    mul-long/2addr v4, v6

    sub-long v1, v2, v4

    .line 303
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->clear()V

    .line 305
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 307
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reBackIfNeeded end mInputFrameCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputFrameCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 212
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    .line 215
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 216
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    .line 217
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 218
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 219
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    .line 220
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    return-void
.end method

.method private selectTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .line 439
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 441
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    .line 442
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExtractor selected track "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private shouldKeepFrames(II)Z
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    if-lt p1, v0, :cond_1

    .line 328
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    if-ge p1, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    if-gt p1, p2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 333
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    :cond_3
    return v1
.end method

.method private signalEOS()V
    .locals 8

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 400
    iget v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;->decodedAvcData(I[BIIIZZ)V

    :cond_0
    return-void
.end method

.method private skipFramesIfNeeded()V
    .locals 3

    .line 316
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->shouldKeepFrames(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public deInitDecoder()V
    .locals 2

    .line 224
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "deInitDecoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->resetState()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 229
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 233
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    :cond_1
    return-void
.end method

.method public decodeMediaData()V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public initDecoder(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDecoder file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->resetState()V

    .line 103
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->correctKeepFrameRange(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 106
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v0

    if-gez v0, :cond_0

    .line 109
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No video track found in:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v0, "mime"

    .line 114
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDecoder mMediaFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDecoder name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f420888

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    const-string v1, "color-format"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set decode color format to type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set decode color format, color format type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    const-class v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    const/4 p0, 0x1

    return p0
.end method

.method public onMotionDetected(I)V
    .locals 2

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    .line 203
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    .line 204
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    .line 205
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotionDetected mMotionDetectInputFrameNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMotionDetectOutputFrameNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 407
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "decodeMediaData run start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 414
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 415
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 417
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    if-nez v3, :cond_1

    .line 418
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    if-nez v3, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->queueInputBuffer()V

    .line 421
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;II)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->signalEOS()V

    .line 425
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "decodeMediaData run end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDecoderDataCallBack(Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 3

    .line 181
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRate rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    return-void
.end method

.method public setKeepFrameRange(II)V
    .locals 2

    .line 195
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    .line 196
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    sub-int v0, p2, p1

    .line 197
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    .line 198
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeepFrameRange, from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", to:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .locals 2

    .line 190
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    .line 191
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkipFramesOnce, skip frames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
