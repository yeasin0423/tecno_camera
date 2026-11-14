.class Lcom/faceunity/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setTransform(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/K;->a:F

    iput p3, p0, Lcom/faceunity/K;->b:F

    iput p4, p0, Lcom/faceunity/K;->c:F

    iput p5, p0, Lcom/faceunity/K;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/K;->a:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3402(Lcom/faceunity/FURenderer;F)F

    .line 2
    iget-object v0, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/K;->b:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3502(Lcom/faceunity/FURenderer;F)F

    .line 3
    iget-object v0, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/K;->c:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3602(Lcom/faceunity/FURenderer;F)F

    .line 4
    iget-object v0, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/K;->d:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3702(Lcom/faceunity/FURenderer;F)F

    .line 5
    iget-object v0, p0, Lcom/faceunity/K;->e:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 6
    iget v1, p0, Lcom/faceunity/K;->a:F

    float-to-double v1, v1

    const-string v3, "start_x"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 7
    iget v1, p0, Lcom/faceunity/K;->b:F

    float-to-double v1, v1

    const-string v3, "start_y"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 8
    iget v1, p0, Lcom/faceunity/K;->c:F

    float-to-double v1, v1

    const-string v3, "end_x"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 9
    iget p0, p0, Lcom/faceunity/K;->d:F

    float-to-double v1, p0

    const-string p0, "end_y"

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method
