.class public Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;,
        Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;,
        Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;,
        Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLapseVideoEncoder"


# instance fields
.field private final mCallback:Landroid/media/MediaCodec$Callback;

.field private final mEncoderParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

.field private final mHeight:I

.field private mIsAutoTimeLapseRate:Z

.field private mIsMediaCodecReady:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMaxDurationLimitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private final mMinDurationLimitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerPaused:Z

.field private mMuxerStarted:Z

.field private mNeedDropFrame:Z

.field private mOrientation:I

.field private final mTimeLapseMuxerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    .line 98
    new-instance v1, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$1;-><init>(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    .line 52
    iput p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mWidth:I

    .line 53
    iput p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mHeight:I

    .line 54
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/16 p3, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/16 p3, 0x14

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/16 p3, 0x28

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    const/16 p2, 0x78

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/16 p3, 0x50

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    const/16 p2, 0x12c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/HashMap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->release()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->initMuxers()Z

    move-result p0

    return p0
.end method

.method private calcBitRate()I
    .locals 5

    .line 163
    iget v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mWidth:I

    mul-int/lit8 v1, v0, 0x14

    iget p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mHeight:I

    mul-int/2addr v1, p0

    const/16 v2, 0xf00

    if-lt v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    mul-int v1, v0, p0

    .line 167
    :cond_0
    sget-object p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v3, v1

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private configCodec(Landroid/view/Surface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 73
    iget v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mWidth:I

    iget v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mHeight:I

    const-string v3, "video/avc"

    invoke-static {v3, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v4, 0x7f000789

    .line 74
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate-mode"

    const/4 v4, 0x2

    .line 75
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->calcBitRate()I

    move-result v2

    const-string v4, "bitrate"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/4 v4, 0x6

    .line 77
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    iget v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mWidth:I

    const/16 v5, 0xf00

    if-lt v4, v5, :cond_0

    const/16 v4, 0x12

    .line 79
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    const-string v2, "i-frame-interval"

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCodec format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 87
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    :cond_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    .line 91
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method private createTimeLapseMuxers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "createTimeLapseMuxers +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 227
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 228
    new-instance v3, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;-><init>(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;)V

    .line 229
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->addTrack(Landroid/media/MediaFormat;)V

    .line 230
    iget v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->setOrientationHint(I)V

    .line 231
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->prepared()V

    .line 236
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    sget-object p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "createTimeLapseMuxers -"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initMuxers()Z
    .locals 4

    const/4 v0, 0x0

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->createTimeLapseMuxers()V

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    .line 194
    sget-object v2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v3, "createTimeLapseMuxers Exception : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v0

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;

    invoke-interface {v3}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {v2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->release()V

    return v0
.end method

.method private release()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "release:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 289
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 291
    :try_start_1
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 298
    :goto_0
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 296
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 298
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 300
    :cond_1
    throw v1

    .line 296
    :catch_0
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    .line 301
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v2, :cond_3

    .line 302
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 303
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->stopMuxers()V

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 308
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private signalEndOfInputStream()V
    .locals 3

    .line 260
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    sget-object v1, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "sending EOS onError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :catch_1
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->release()V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    :cond_0
    :goto_0
    return-void
.end method

.method private stopMuxers()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 313
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 315
    invoke-virtual {v2}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
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


# virtual methods
.method public isVideoDurationValid()Z
    .locals 7

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 251
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 253
    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->access$1000(Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 3

    .line 276
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mIsMediaCodecReady :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->release()V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 283
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseResumeRecording()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 207
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 209
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->configCodec(Landroid/view/Surface;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mOrientation:I

    return-void
.end method

.method public setRecordParams(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;",
            ">;)V"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordParams : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 218
    iget-boolean p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->initMuxers()Z

    .line 221
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startRecording()V
    .locals 4

    .line 176
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "startRecording +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 178
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 179
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 180
    invoke-virtual {v3}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$TimeLapseMuxer;->start()V

    goto :goto_0

    .line 182
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 184
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 185
    sget-object p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "startRecording -"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 182
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopRecording()V
    .locals 3

    .line 241
    sget-object v0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording mMuxerStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mMuxerStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 243
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;->signalEndOfInputStream()V

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
