.class Lcom/faceunity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onCameraChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/e;->a:I

    iput p3, p0, Lcom/faceunity/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$402(Lcom/faceunity/FURenderer;I)I

    .line 2
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    iget v2, p0, Lcom/faceunity/e;->a:I

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$802(Lcom/faceunity/FURenderer;I)I

    .line 3
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    iget v2, p0, Lcom/faceunity/e;->b:I

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$902(Lcom/faceunity/FURenderer;I)I

    .line 4
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$500(Lcom/faceunity/FURenderer;)V

    .line 5
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1100(Lcom/faceunity/FURenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$1002(Lcom/faceunity/FURenderer;I)I

    .line 6
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 7
    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1000(Lcom/faceunity/FURenderer;)I

    move-result v0

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 9
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1200(Lcom/faceunity/FURenderer;)V

    .line 10
    iget-object v0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/Effect;

    move-result-object v1

    iget-object p0, p0, Lcom/faceunity/e;->c:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object p0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/faceunity/FURenderer;->updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V

    :goto_0
    return-void
.end method
