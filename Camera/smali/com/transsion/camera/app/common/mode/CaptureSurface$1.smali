.class Lcom/transsion/camera/app/common/mode/CaptureSurface$1;
.super Ljava/lang/Object;
.source "CaptureSurface.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 210
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onImageAvailable mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$100(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", BgEventQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 211
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$200(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$100(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$200(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$300(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$200(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->access$400(Lcom/transsion/camera/app/common/mode/CaptureSurface;Landroid/media/ImageReader;)V

    return-void
.end method
