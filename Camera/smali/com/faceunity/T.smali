.class Lcom/faceunity/T;
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
    iput-object p1, p0, Lcom/faceunity/T;->b:Lcom/faceunity/FURenderer$c;

    iput p2, p0, Lcom/faceunity/T;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/T;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/faceunity/T;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 3
    iget-object v0, p0, Lcom/faceunity/T;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/T;->b:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget p0, p0, Lcom/faceunity/T;->a:I

    aput p0, v0, v1

    return-void
.end method
