.class Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GifFrameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;

.field private index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J

.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;J)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    .line 127
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$100(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)I

    move-result v0

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$200(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 128
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->cb:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;

    .line 129
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->targetTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)Landroid/graphics/Bitmap;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->resource:Landroid/graphics/Bitmap;

    .line 139
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$300(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Landroid/os/Handler;

    move-result-object p1

    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->targetTime:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 120
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$402(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Z)Z

    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->cb:Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;

    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->index:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameCallback;->onFrameRead(I)V

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$500(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$500(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    invoke-static {v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$300(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget$1;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameManager;

    invoke-static {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifFrameManager;->access$502(Lcom/bumptech/glide/load/resource/gif/GifFrameManager;Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;)Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;

    return-void
.end method

.method public setFrameIndex(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$DelayTarget;->index:I

    return-void
.end method
