.class Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    iget-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$400(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)V

    .line 145
    iget-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$500(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$600(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onInputBufferAvailable"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    .line 107
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onOutputBufferAvailable BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 112
    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$100(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v1

    .line 115
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->access$300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v6, v2, p3, v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 119
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->access$300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 125
    :cond_2
    iget-object p3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p3}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object p3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p3}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 127
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputBufferAvailable exception"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_3

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$400(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)V

    :cond_3
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$100(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 154
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$702(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;Z)Z

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$800(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->access$900(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z

    .line 158
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
