.class Lcom/faceunity/V;
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

.field final synthetic b:Lcom/faceunity/entity/Effect;

.field final synthetic c:Lcom/faceunity/FURenderer$c;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$c;ILcom/faceunity/entity/Effect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iput p2, p0, Lcom/faceunity/V;->a:I

    iput-object p3, p0, Lcom/faceunity/V;->b:Lcom/faceunity/entity/Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 3
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget v2, p0, Lcom/faceunity/V;->a:I

    aput v2, v0, v1

    .line 5
    iget-object v0, p0, Lcom/faceunity/V;->b:Lcom/faceunity/entity/Effect;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/V;->a:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3902(Lcom/faceunity/FURenderer;I)I

    .line 7
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3000(Lcom/faceunity/FURenderer;)[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setKeyColor([D)V

    .line 8
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3100(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setChromaThres(F)V

    .line 9
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3200(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setChromaThresT(F)V

    .line 10
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3300(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setAlphaL(F)V

    .line 11
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3400(Lcom/faceunity/FURenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$3500(Lcom/faceunity/FURenderer;)F

    move-result v2

    iget-object v3, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v3, v3, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$3600(Lcom/faceunity/FURenderer;)F

    move-result v3

    iget-object v4, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v4, v4, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v4}, Lcom/faceunity/FURenderer;->access$3700(Lcom/faceunity/FURenderer;)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/faceunity/FURenderer;->setTransform(FFFF)V

    .line 12
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3800(Lcom/faceunity/FURenderer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setRunBgSegGreen(Z)V

    .line 13
    :cond_1
    iget v0, p0, Lcom/faceunity/V;->a:I

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/V;->a:I

    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleItemEffect(I)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/faceunity/V;->c:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    iget-object v1, p0, Lcom/faceunity/V;->b:Lcom/faceunity/entity/Effect;

    iget p0, p0, Lcom/faceunity/V;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/faceunity/FURenderer;->updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V

    return-void
.end method
