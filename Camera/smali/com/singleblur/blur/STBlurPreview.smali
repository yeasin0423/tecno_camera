.class public Lcom/singleblur/blur/STBlurPreview;
.super Ljava/lang/Object;
.source "STBlurPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singleblur/blur/STBlurPreview$Callback;,
        Lcom/singleblur/blur/STBlurPreview$ProcessThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002

.field public static final ST_BUFFER_ERROR:I = -0x4

.field public static final ST_INTERNAL_ERROR:I = -0x6

.field public static final ST_OK:I = 0x0

.field public static final ST_PARAM_ERROR:I = -0x1

.field public static final ST_PROGRAM_ERROR:I = -0x3

.field public static final ST_SHADER_ERROR:I = -0x2

.field public static final ST_TEXTURE_ERROR:I = -0x5

.field private static final TAG:Ljava/lang/String; = "STBlurPreview"


# instance fields
.field private PROCESS_LIFE_CYCLE_TIME:J

.field private RESET_MASK_CYCLE_TIME:J

.field debugSegCount:J

.field debugSegSumTime:J

.field private mContext:Landroid/content/Context;

.field private mFrameNum:I

.field private mFrontCamera:Z

.field private mInitialized:Z

.field private mLastProcessTime:J

.field private mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

.field private mResetMask:Z

.field private mResetMaskTime:J

.field private mSegment:Lcom/singleblur/faceapi/FigureSegment;

.field private mSegmentBuffer:[B

.field private mSegmentBufferHeight:I

.field private mSegmentBufferWidth:I

.field private mSegmentModel:Ljava/lang/String;

.field private mSegmentOption:I

.field private mSegmentOutBuffer:Ljava/nio/ByteBuffer;

.field private mSegmentOutBufferInfo:[I

.field private final mSyncObject:Ljava/lang/Object;

.field private mTmpFaceRects:[Landroid/graphics/Rect;

.field private mTmpYaws:[F

.field private mTrack:Lcom/singleblur/faceapi/FaceTrack;

.field private mUseSegment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 93
    sget-object v4, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    .line 97
    sget-object v4, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
    .locals 8

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    iput-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    const/16 v0, 0x18

    .line 48
    iput v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    .line 65
    iput-wide v1, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    .line 67
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    const-wide/16 v0, 0x12c

    .line 69
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    .line 533
    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    .line 110
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/singleblur/blur/STBlurPreview;->destroy()I

    .line 113
    :cond_0
    iput-boolean p2, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/singleblur/blur/STBlurPreview$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/singleblur/blur/STBlurPreview$1;-><init>(Lcom/singleblur/blur/STBlurPreview;ZLjava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    invoke-static {p1}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 126
    iput-boolean p2, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    .line 127
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FigureSegment;)Lcom/singleblur/faceapi/FigureSegment;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/singleblur/blur/STBlurPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/singleblur/blur/STBlurPreview;Lcom/singleblur/faceapi/FaceTrack;)Lcom/singleblur/faceapi/FaceTrack;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    return-object p1
.end method

.method static synthetic access$300(Lcom/singleblur/blur/STBlurPreview;[BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method private doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 2

    .line 515
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPreviewCallback data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 519
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 520
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 521
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    if-eqz v0, :cond_2

    .line 523
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->onSegment([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    if-eqz v0, :cond_2

    .line 527
    invoke-direct/range {p0 .. p5}, Lcom/singleblur/blur/STBlurPreview;->onTrack([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaskTextureByFace(Z)I
    .locals 11

    .line 333
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    .line 336
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 337
    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 339
    iget-object v6, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    aget v6, v6, v5

    aput v6, v4, v5

    .line 340
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v6, v3

    .line 343
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const/4 v5, 0x0

    .line 347
    iget v7, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    iget v8, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result p1

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 v9, p1, 0x168

    iget-boolean v10, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static/range {v4 .. v10}, Lcom/singleblur/blur/BlurFilterLibrary;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getMaskTextureBySegment(Z)I
    .locals 10

    .line 301
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 303
    iget v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 304
    iget v3, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 305
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v5

    .line 308
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 309
    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/singleblur/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 312
    iput-boolean v5, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    :cond_1
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    const/4 p0, 0x1

    new-array p1, p0, [I

    .line 318
    invoke-static {v1, v2, v3, p0, p1}, Lcom/singleblur/blur/BlurFilterLibrary;->processMaskBuffer([BIIZ[I)I

    move-result p0

    if-eqz p0, :cond_2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMask error result code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "STBlurPreview"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    sget-boolean p0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "STBlurPreview"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_3
    aget v4, p1, v5

    :cond_4
    return v4

    :catchall_0
    move-exception p0

    .line 305
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 651
    invoke-static {}, Lcom/singleblur/blur/BlurFilterLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSegment([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 15

    move-object v0, p0

    move/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v10, p5

    .line 536
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v1, v12

    mul-int/2addr v2, v5

    aget v1, v1, v11

    mul-int/2addr v1, v6

    if-eq v2, v1, :cond_1

    .line 537
    :cond_0
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    const/16 v2, 0xf0

    iget-object v3, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v1, v6, v5, v2, v3}, Lcom/singleblur/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    .line 538
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v1, v12

    aget v1, v1, v11

    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    .line 540
    :cond_1
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 541
    invoke-static/range {p4 .. p4}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v7

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 543
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    iget-object v3, v0, Lcom/singleblur/blur/STBlurPreview;->mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

    iget-object v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/singleblur/faceapi/FigureSegment;->segment([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;[BI)I

    .line 544
    iget-wide v1, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    .line 545
    iget-wide v1, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    .line 546
    sget-boolean v1, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v4, v0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STBlurPreview"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    iget-object v1, v0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 552
    iget-object v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v2, v12

    iput v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 553
    iget-object v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v2, v11

    iput v2, v0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 554
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_3

    .line 557
    iget-boolean v0, v0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1, v1}, Lcom/singleblur/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/singleblur/faceapi/model/FaceInfo;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 554
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onTrack([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 7

    .line 562
    invoke-static {p4}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/singleblur/faceapi/model/FaceOrientation;

    move-result-object v6

    .line 563
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    sget-object v2, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;->track([BLcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 564
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrack dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/singleblur/blur/STBlurPreview;->onFaceUpdate([Lcom/singleblur/faceapi/model/FaceInfo;IIZ)V

    if-eqz p5, :cond_2

    const/16 v0, 0x5a

    .line 569
    invoke-static {p1, p2, p3, p4, v0}, Lcom/singleblur/faceapi/utils/FaceRotationUtil;->rotateFaceInfos([Lcom/singleblur/faceapi/model/FaceInfo;IIZI)V

    .line 571
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1, p1}, Lcom/singleblur/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/singleblur/faceapi/model/FaceInfo;)V

    :cond_2
    return-void
.end method

.method public static setDebug(Z)I
    .locals 0

    .line 631
    sput-boolean p0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    .line 632
    invoke-static {p0}, Lcom/singleblur/blur/BlurFilterLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()I
    .locals 3

    .line 134
    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->stop()V

    .line 135
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    const-string v1, "STBlurPreview"

    if-eqz v0, :cond_0

    const-string v0, "destroy"

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    .line 139
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->release()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 146
    :goto_0
    sget-boolean v0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "destroy process thread join"

    .line 147
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Lcom/singleblur/faceapi/FaceHandleBase;->release()V

    .line 153
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mTrack:Lcom/singleblur/faceapi/FaceTrack;

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0}, Lcom/singleblur/faceapi/FaceHandleBase;->release()V

    .line 157
    iput-object v2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegment:Lcom/singleblur/faceapi/FigureSegment;

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/singleblur/blur/STBlurPreview;->destroyRender()I

    move-result p0

    return p0
.end method

.method public destroyRender()I
    .locals 0

    .line 193
    invoke-static {}, Lcom/singleblur/blur/BlurFilterLibrary;->destroy()I

    move-result p0

    return p0
.end method

.method public getTimeLog()Ljava/lang/String;
    .locals 5

    .line 655
    iget-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v3, p0, Lcom/singleblur/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRender(II)I
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    .line 175
    invoke-static {p1, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->init(II)I

    move-result p1

    .line 176
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    const/16 v0, 0x1004

    const/16 v1, 0x1005

    if-nez p2, :cond_1

    const p2, 0x3e99999a    # 0.3f

    .line 177
    invoke-virtual {p0, v1, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    const p2, 0x3b03126f    # 0.002f

    .line 179
    invoke-virtual {p0, v0, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_1
    const p2, 0x3ec7ae14    # 0.39f

    .line 181
    invoke-virtual {p0, v1, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    const p2, 0x3de147ae    # 0.11f

    .line 182
    invoke-virtual {p0, v0, p2}, Lcom/singleblur/blur/STBlurPreview;->setParam(IF)I

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public onFaceUpdate([Lcom/singleblur/faceapi/model/FaceInfo;IIZ)V
    .locals 3

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 476
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    .line 477
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 478
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 479
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 480
    :try_start_0
    array-length p3, p1

    if-lez p3, :cond_0

    .line 481
    array-length p3, p1

    .line 482
    new-array p4, p3, [Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 483
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    :goto_0
    if-ge v0, p3, :cond_1

    .line 485
    iget-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    aget-object v1, p1, v0

    iget v1, v1, Lcom/singleblur/faceapi/model/FaceInfo;->yaw:F

    aput v1, p4, v0

    .line 486
    iget-object p4, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 490
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mTmpYaws:[F

    .line 492
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p0

    .line 492
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewCallback([BIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 372
    invoke-virtual/range {v0 .. v7}, Lcom/singleblur/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZZILcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 6

    .line 387
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mInitialized:Z

    const-string v1, "STBlurPreview"

    if-nez v0, :cond_0

    const-string p0, "STBlur is destroy"

    .line 388
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-le p6, v0, :cond_2

    .line 391
    iget v0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrameNum:I

    rem-int/2addr v0, p6

    if-eqz v0, :cond_2

    .line 392
    sget-boolean p0, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onPreviewCallback drop this frame"

    .line 393
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 397
    :cond_2
    sget-boolean p6, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_3

    const-string p6, "onPreviewCallback do"

    .line 398
    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p5, :cond_5

    .line 401
    iget-object p5, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    if-nez p5, :cond_4

    .line 402
    new-instance p5, Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    invoke-direct {p5, p0}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;-><init>(Lcom/singleblur/blur/STBlurPreview;)V

    iput-object p5, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    .line 403
    invoke-virtual {p5}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->start()V

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mProcessThread:Lcom/singleblur/blur/STBlurPreview$ProcessThread;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->updateBuffer([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    .line 407
    invoke-direct/range {v0 .. v5}, Lcom/singleblur/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V

    .line 410
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    return-void
.end method

.method public onSegmentUpdate([BIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    .line 504
    iget-object v0, p0, Lcom/singleblur/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 506
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 507
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 508
    iput p4, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewWidth:I

    .line 509
    iput p5, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewHeight:I

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p0

    .line 510
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public processOESTexture(I[IZ)I
    .locals 4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    .line 238
    :cond_1
    sget-boolean p3, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 239
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    .line 242
    :goto_0
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, p0, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->processOESTextureByMask(IIZ[I)I

    move-result p0

    return p0
.end method

.method public processOESTextureGradual(I[F[IZ)I
    .locals 6

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 282
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    .line 288
    :cond_1
    sget-boolean p4, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 289
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    .line 292
    iget-boolean v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/singleblur/blur/BlurFilterLibrary;->processOESTexureByMaskGradual(IIZI[F[I)I

    move-result p0

    return p0
.end method

.method public processTexture(I[IZ)I
    .locals 4

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 208
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, p3}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    .line 214
    :cond_1
    sget-boolean p3, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processTexture mask beyond the life cycle!"

    .line 215
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    .line 218
    :goto_0
    iget-boolean p0, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, p0, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->processTextureByMask(IIZ[I)I

    move-result p0

    return p0
.end method

.method public processTextureGradual(I[F[IZ)I
    .locals 6

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/singleblur/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p4}, Lcom/singleblur/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    .line 263
    :cond_1
    sget-boolean p4, Lcom/singleblur/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 264
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    .line 267
    iget-boolean v2, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/singleblur/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/singleblur/blur/BlurFilterLibrary;->processTexureByMaskGradual(IIZI[F[I)I

    move-result p0

    return p0
.end method

.method public resetMask()V
    .locals 2

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMask:Z

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/singleblur/blur/STBlurPreview;->mResetMaskTime:J

    return-void
.end method

.method public rotateGrdualTexture(IZZ)I
    .locals 0

    .line 601
    invoke-static {p1, p2, p3}, Lcom/singleblur/blur/BlurFilterLibrary;->rotateGradualTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public rotateMaskTexture(IZZ)I
    .locals 0

    .line 589
    invoke-static {p1, p2, p3}, Lcom/singleblur/blur/BlurFilterLibrary;->rotateMaskTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public setDebugMask(Z)I
    .locals 0

    .line 642
    invoke-static {p1}, Lcom/singleblur/blur/BlurFilterLibrary;->setDebugMask(Z)I

    move-result p0

    return p0
.end method

.method public setFormat(Lcom/singleblur/faceapi/model/CvPixelFormat;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview;->mPreviewFormat:Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-void
.end method

.method public setFrontCamera(Z)V
    .locals 0

    .line 666
    iput-boolean p1, p0, Lcom/singleblur/blur/STBlurPreview;->mFrontCamera:Z

    return-void
.end method

.method public setParam(IF)I
    .locals 0

    .line 612
    invoke-static {p1, p2}, Lcom/singleblur/blur/BlurFilterLibrary;->setParam(IF)I

    move-result p0

    return p0
.end method

.method public setSegmentOption(I)V
    .locals 0

    .line 621
    iput p1, p0, Lcom/singleblur/blur/STBlurPreview;->mSegmentOption:I

    return-void
.end method
