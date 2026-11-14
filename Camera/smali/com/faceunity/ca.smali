.class Lcom/faceunity/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer$c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/faceunity/FURenderer$c;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iput p2, p0, Lcom/faceunity/ca;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 3
    iget-object v0, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2300(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "BodySlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 5
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2400(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "LegSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 6
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2500(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "WaistSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 7
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2600(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "ShoulderSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 8
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2700(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "HipSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 9
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2800(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "HeadSlim"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 10
    iget v0, p0, Lcom/faceunity/ca;->a:I

    iget-object v2, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2900(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "LegSlim"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 11
    iget v0, p0, Lcom/faceunity/ca;->a:I

    const-wide/16 v2, 0x0

    const-string v4, "Debug"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 12
    iget-object v0, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget v2, p0, Lcom/faceunity/ca;->a:I

    aput v2, v0, v1

    .line 13
    iget-object p0, p0, Lcom/faceunity/ca;->b:Lcom/faceunity/FURenderer$c;

    iget-object p0, p0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$1200(Lcom/faceunity/FURenderer;)V

    return-void
.end method
