.class Lcom/faceunity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onSurfaceCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/v;->a:Lcom/faceunity/FURenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/v;->a:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "model/ai_human_processor.bundle"

    const/high16 v2, 0x10000

    invoke-static {v0, v1, v2}, Lcom/faceunity/FURenderer;->access$200(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    iget-object p0, p0, Lcom/faceunity/v;->a:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$300(Lcom/faceunity/FURenderer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->setMaxHumans(I)V

    return-void
.end method
