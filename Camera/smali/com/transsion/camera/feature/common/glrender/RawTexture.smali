.class public Lcom/transsion/camera/feature/common/glrender/RawTexture;
.super Lcom/transsion/camera/feature/common/glrender/BasicTexture;
.source "RawTexture.java"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# virtual methods
.method protected getTarget()I
    .locals 0

    const/16 p0, 0xde1

    return p0
.end method

.method public isFlippedVertically()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mIsFlipped:Z

    return p0
.end method

.method public isOpaque()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mOpaque:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)Z
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "RawTexture"

    const-string p1, "lost the content due to context change"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
