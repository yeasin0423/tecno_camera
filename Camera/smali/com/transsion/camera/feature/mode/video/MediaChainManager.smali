.class Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.super Ljava/lang/Object;
.source "MediaChainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;,
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

.field private mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

.field private mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

.field private mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mInterpolateFPS:I

.field private mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

.field private mInterpolateRatio:I

.field private mMediaChainHandler:Landroid/os/Handler;

.field private mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field private mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

.field private mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    const/16 v1, 0x78

    .line 68
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 70
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 71
    sget-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 74
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    .line 75
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->instance()Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    .line 78
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setVideoInterpolate(Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;)V

    .line 80
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setDetectListener(Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;)V

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    .line 83
    new-instance v1, Lcom/transsion/camera/feature/mode/video/-$$Lambda$MediaChainManager$6_0P8DkviK467LMro-MZGRAlLDY;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/video/-$$Lambda$MediaChainManager$6_0P8DkviK467LMro-MZGRAlLDY;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->setProcessListener(Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;)V

    .line 85
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mediachain_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/MediaChainManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doLoadingAlgorithm()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcessEnd()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnLoadingAlgorithm()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnInit()V

    return-void
.end method

.method private doLoadingAlgorithm()V
    .locals 10

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 256
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    iget v9, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    const/16 v7, 0x2008

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->init(IIIII)Z

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 262
    sget-object p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doLoadingAlgorithm end, process time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doProcess()V
    .locals 2

    .line 276
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcess"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->init()V

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    return-void
.end method

.method private doProcessEnd()V
    .locals 2

    .line 287
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->unInit()V

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    if-eqz p0, :cond_0

    .line 291
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;->onProcessEnd()V

    :cond_0
    return-void
.end method

.method private doUnInit()V
    .locals 2

    .line 296
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 300
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private doUnLoadingAlgorithm()V
    .locals 4

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 267
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->unInit()Z

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 272
    sget-object p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUnLoadingAlgorithm end, process time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 247
    sget-object p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mMediaChainHandler is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic lambda$new$0$MediaChainManager()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->lambda$new$0()V

    return-void
.end method

.method public loadingAlgorithm()V
    .locals 2

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadingAlgorithm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public process()V
    .locals 2

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "process"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public setCaptureRate(I)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setCaptureRate(I)V

    return-void
.end method

.method public setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setFrameInfo(II)V
    .locals 1

    .line 113
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 114
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    const/16 v0, 0x2008

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setFrameInfo(III)V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFrameRate(I)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFrameRate(I)V

    return-void
.end method

.method public setInterpolateFPS(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .locals 1

    .line 123
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setInterpolateRatio(I)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setInterpolateRatio(I)V

    return-void
.end method

.method public setKeepFrameRange(II)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setKeepFrameRange(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setOrientation(I)V

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setSkipFramesOnce(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 158
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method
