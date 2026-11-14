.class Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;
.super Landroid/media/MediaCodec$Callback;
.source "AutoPlayVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 15

    move-object v0, p0

    .line 108
    invoke-virtual/range {p1 .. p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 112
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 113
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 115
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 116
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 122
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;->this$0:Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    .line 124
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 125
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 127
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
