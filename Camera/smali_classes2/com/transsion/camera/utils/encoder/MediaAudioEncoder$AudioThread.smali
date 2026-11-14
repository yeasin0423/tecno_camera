.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, -0x13

    .line 97
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 99
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x6400

    const/16 v3, 0x400

    const/4 v4, 0x1

    if-ge v1, v0, :cond_0

    .line 104
    div-int/2addr v0, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x2

    .line 107
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$100()[I

    move-result-object v0

    array-length v2, v0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move v12, v5

    move-object v5, v11

    :goto_0
    if-ge v12, v2, :cond_3

    aget v6, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    :try_start_1
    new-instance v13, Landroid/media/AudioRecord;

    const v7, 0xac44

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v13

    move v10, v1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 112
    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 113
    invoke-virtual {v13}, Landroid/media/AudioRecord;->release()V

    .line 115
    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v5, v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-interface {v5, v6, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v11

    :cond_1
    move-object v5, v13

    goto :goto_1

    :catch_0
    move-object v5, v11

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v5, :cond_7

    .line 124
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_6

    .line 126
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V

    .line 129
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-interface {v1, v2, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :cond_4
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v1, :cond_5

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v5, v0, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_4

    .line 139
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 141
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v6}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v6

    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    goto :goto_3

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :try_start_4
    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    .line 148
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 151
    :catch_1
    :try_start_6
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v0, v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-interface {v0, p0, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 153
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    .line 154
    throw p0

    .line 156
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to initialize AudioRecord"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioThread#run"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method
