.class Lcom/transsion/camera/app/ui/CameraAppUI$1;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$100(Lcom/transsion/camera/app/ui/CameraAppUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$200(Lcom/transsion/camera/app/ui/CameraAppUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$300(Lcom/transsion/camera/app/ui/CameraAppUI;I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$400(Lcom/transsion/camera/app/ui/CameraAppUI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$100(Lcom/transsion/camera/app/ui/CameraAppUI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$500(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    move-result-object p0

    const/16 v1, 0x69

    invoke-virtual {p0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
