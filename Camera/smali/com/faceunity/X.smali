.class Lcom/faceunity/X;
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
.field final synthetic a:Lcom/faceunity/entity/LightMakeupItem;

.field final synthetic b:[D

.field final synthetic c:Lcom/faceunity/b/e$b;

.field final synthetic d:Lcom/faceunity/FURenderer$c;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$c;Lcom/faceunity/entity/LightMakeupItem;[DLcom/faceunity/b/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/X;->d:Lcom/faceunity/FURenderer$c;

    iput-object p2, p0, Lcom/faceunity/X;->a:Lcom/faceunity/entity/LightMakeupItem;

    iput-object p3, p0, Lcom/faceunity/X;->b:[D

    iput-object p4, p0, Lcom/faceunity/X;->c:Lcom/faceunity/b/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/faceunity/X;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    const-string v1, "is_makeup_on"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "makeup_intensity"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "reverse_alpha"

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 5
    iget-object v1, p0, Lcom/faceunity/X;->a:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/faceunity/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/faceunity/X;->a:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v4}, Lcom/faceunity/entity/LightMakeupItem;->getLevel()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 6
    iget-object v1, p0, Lcom/faceunity/X;->b:[D

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/faceunity/X;->a:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/faceunity/X;->b:[D

    const-string v4, "makeup_lip_color"

    invoke-static {v0, v4, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    const-string v1, "makeup_lip_mask"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "makeup_intensity_lip"

    .line 10
    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/faceunity/X;->c:Lcom/faceunity/b/e$b;

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/faceunity/X;->a:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/faceunity/b/e;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/faceunity/X;->c:Lcom/faceunity/b/e$b;

    invoke-virtual {v2}, Lcom/faceunity/b/e$b;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/faceunity/X;->c:Lcom/faceunity/b/e$b;

    invoke-virtual {v3}, Lcom/faceunity/b/e$b;->c()I

    move-result v3

    iget-object p0, p0, Lcom/faceunity/X;->c:Lcom/faceunity/b/e$b;

    invoke-virtual {p0}, Lcom/faceunity/b/e$b;->b()I

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateTexForItem(ILjava/lang/String;[BII)I

    :cond_2
    return-void
.end method
