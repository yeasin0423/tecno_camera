.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;


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
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Ljava/lang/String;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->previewStarted()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p1, p2, :cond_1

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method
