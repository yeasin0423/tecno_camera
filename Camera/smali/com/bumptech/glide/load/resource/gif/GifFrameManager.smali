.class Lcom/bumptech/glide/load/resource/gif/GifFrameManager;
.super Ljava/lang/Object;
.source "GifFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;,
        Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;
    }
.end annotation


# instance fields
.field private current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

.field private final decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private isLoadInProgress:Z

.field private final mainHandler:Landroid/os/Handler;

.field private next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

.field private final requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

.field private final targetHeight:I

.field private final targetWidth:I

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V
    .locals 8

    .line 44
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;II)V
    .locals 2

    .line 49
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 52
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->mainHandler:Landroid/os/Handler;

    .line 53
    iput p5, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->targetWidth:I

    .line 54
    iput p6, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->targetHeight:I

    .line 55
    new-instance p3, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    invoke-direct {p3}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;-><init>()V

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->signature:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    .line 57
    new-instance p3, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {p3, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 58
    new-instance p2, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;

    invoke-direct {p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullEncoder;->get()Lcom/bumptech/glide/load/Encoder;

    move-result-object p4

    .line 61
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/RequestManager;->using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->from(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object p1

    const-class p2, Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->signature:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    .line 65
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 66
    invoke-virtual {p1, p4}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 67
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->targetWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->targetHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->isLoadInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    return-object p0
.end method

.method static synthetic access$502(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->isLoadInProgress:Z

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    if-eqz v0, :cond_1

    .line 112
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->resetFrameIndex()V

    return-void
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->access$000(Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNextFrame(Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;)V
    .locals 5

    .line 81
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->isLoadInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->isLoadInProgress:Z

    .line 86
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 89
    new-instance v3, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;J)V

    iput-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    .line 90
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->setFrameIndex(I)V

    .line 93
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->signature:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->increment()V

    .line 94
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->requestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 95
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object p1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->transformation:Lcom/bumptech/glide/load/Transformation;

    aput-object v2, v0, v1

    .line 96
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->next:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    .line 97
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->transformation:Lcom/bumptech/glide/load/Transformation;

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Transformation must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
