.class Lcom/faceunity/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setChromaThres(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/H;->b:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/H;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/H;->b:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/H;->a:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3102(Lcom/faceunity/FURenderer;F)F

    .line 2
    iget-object v0, p0, Lcom/faceunity/H;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget p0, p0, Lcom/faceunity/H;->a:F

    float-to-double v1, p0

    const-string p0, "chroma_thres"

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method
