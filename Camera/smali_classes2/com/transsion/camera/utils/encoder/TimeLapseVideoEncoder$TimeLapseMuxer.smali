.class Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLapseMuxer"
.end annotation


# instance fields
.field private mFrameCount:J

.field private mLastTimeUs:J

.field private mLastWriteTime:J

.field private final mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStartTime:J

.field private mStarted:Z

.field private final mTimeLapse:I

.field private mTrack:I

.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    .line 334
    iget-object p1, p2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    invoke-direct {p1, v1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 337
    :cond_0
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 339
    :goto_0
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    .line 340
    iget p1, p2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    iput p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;)J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;)Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    return p0
.end method


# virtual methods
.method declared-synchronized addTrack(Landroid/media/MediaFormat;)V
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 11

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1100(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v0, v4

    .line 347
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v4

    iget v7, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    const-wide/32 v9, 0x3938700

    mul-long/2addr v7, v9

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    cmp-long v0, v0, v7

    if-lez v0, :cond_2

    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 351
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {p1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 355
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    int-to-long v4, v4

    const-wide/32 v6, 0x80e8

    mul-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    if-eqz p3, :cond_4

    .line 356
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    .line 357
    iget-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 359
    iget-wide p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    add-long/2addr p1, v6

    iput-wide p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    if-nez p3, :cond_4

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1400(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-wide p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :cond_4
    monitor-exit p0

    return-void

    .line 344
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized prepared()V
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onPrepared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOrientationHint(I)V
    .locals 1

    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 395
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    const v1, 0x186a0

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 401
    :try_start_1
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onStarted()V

    .line 404
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    .line 405
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 6

    monitor-enter p0

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 371
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 372
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 374
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1500(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 375
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1500(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3938700

    mul-long/2addr v2, v4

    :cond_1
    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$1300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 383
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeLapseMuxer stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    :try_start_4
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 390
    :catch_1
    :goto_2
    monitor-exit p0

    return-void

    .line 387
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    :catch_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
