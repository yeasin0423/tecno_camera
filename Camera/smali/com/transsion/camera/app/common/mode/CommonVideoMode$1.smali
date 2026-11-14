.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;
.super Ljava/lang/Object;
.source "CommonVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapShot(Z)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_1

    .line 1025
    iget-object p0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSnapShot] mCameraDeviceControl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1028
    :cond_1
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$300(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1029
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$400(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 1030
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$202(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Z)Z

    :cond_2
    return-void
.end method
