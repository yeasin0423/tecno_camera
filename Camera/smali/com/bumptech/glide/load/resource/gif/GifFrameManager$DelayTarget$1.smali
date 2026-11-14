.class Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget$1;
.super Ljava/lang/Object;
.source "GifFrameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recycleCurrent:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)V
    .locals 0

    .line 149
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget$1;->val$recycleCurrent:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget$1;->val$recycleCurrent:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method
