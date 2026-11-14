.class Lcom/faceunity/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setRunBgSegGreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/L;->b:Lcom/faceunity/FURenderer;

    iput-boolean p2, p0, Lcom/faceunity/L;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/L;->b:Lcom/faceunity/FURenderer;

    iget-boolean v1, p0, Lcom/faceunity/L;->a:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3802(Lcom/faceunity/FURenderer;Z)Z

    .line 2
    iget-object v0, p0, Lcom/faceunity/L;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/faceunity/L;->a:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/faceunity/L;->b:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$3900(Lcom/faceunity/FURenderer;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    aput p0, v0, v1

    return-void
.end method
