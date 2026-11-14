.class public Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.super Lcom/transsion/camera/utils/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x0
        0x7
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 176
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 179
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 184
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 186
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    const-string v1, "audio/mp4a-latm"

    .line 38
    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "Unable to find an appropriate codec for audio/mp4a-latm"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v2, 0xac44

    const/4 v3, 0x1

    .line 45
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "aac-profile"

    .line 46
    invoke-virtual {v2, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v4, 0x10

    const-string v5, "channel-mask"

    .line 47
    invoke-virtual {v2, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v4, 0xfa00

    const-string v5, "bitrate"

    .line 48
    invoke-virtual {v2, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "channel-count"

    .line 49
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 53
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v1, :cond_1

    .line 59
    :try_start_0
    invoke-interface {v1, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "prepare:"

    .line 61
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    return-void
.end method

.method protected startRecording()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
