.class public Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;
.super Landroid/view/SurfaceView;
.source "AutoPlayVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final callback:Landroid/media/MediaCodec$Callback;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mVideoSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    .line 105
    new-instance p1, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->callback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    .line 105
    new-instance p1, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->callback:Landroid/media/MediaCodec$Callback;

    .line 36
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    .line 105
    new-instance p1, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->callback:Landroid/media/MediaCodec$Callback;

    .line 41
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    .line 105
    new-instance p1, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView$1;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->callback:Landroid/media/MediaCodec$Callback;

    .line 46
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;)Landroid/media/MediaExtractor;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/R$styleable;->AutoPlayVideoView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private startCodec(Landroid/view/Surface;)V
    .locals 6

    .line 85
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 v0, 0x0

    move v1, v0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v4, "mime"

    .line 90
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 93
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->callback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mVideoSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->startCodec(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayVideoView;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
