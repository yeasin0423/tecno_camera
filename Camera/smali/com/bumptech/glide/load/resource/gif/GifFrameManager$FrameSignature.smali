.class Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;
.super Ljava/lang/Object;
.source "GifFrameManager.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameSignature"
.end annotation


# instance fields
.field private id:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->uuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 179
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;

    .line 181
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->id:I

    iget p1, p1, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->id:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->id:I

    add-int/2addr v0, p0

    return v0
.end method

.method public increment()V
    .locals 1

    .line 174
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->id:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameManager$FrameSignature;->id:I

    return-void
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 195
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
