.class final Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;
.super Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClosedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 0

    return-void
.end method

.method openCamera(Ljava/lang/String;)V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3902(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)Ljava/lang/String;

    .line 1277
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1278
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 1279
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    goto :goto_0

    .line 1281
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "openCamera mCameraAgent is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
