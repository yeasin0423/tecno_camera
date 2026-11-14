.class Lcom/faceunity/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setCartoonFilter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/s;->b:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/faceunity/s;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2200(Lcom/faceunity/FURenderer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/faceunity/s;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget p0, p0, Lcom/faceunity/s;->a:I

    int-to-double v0, p0

    const-string p0, "style"

    invoke-static {v2, p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 5
    iget-object p0, p0, Lcom/faceunity/s;->b:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object p0

    aput v1, p0, v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/faceunity/s;->b:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method
