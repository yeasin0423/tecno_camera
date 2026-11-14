.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;
.super Lcom/transsion/camera/adapter/CameraAgent$Customer;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;J)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/adapter/CameraAgent$Customer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    return-void
.end method

.method public onCameraError(I)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    .line 593
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x13

    .line 594
    iput v1, v0, Landroid/os/Message;->what:I

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$7;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
