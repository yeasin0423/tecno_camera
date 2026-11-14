.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;
.super Ljava/lang/Object;
.source "SmileDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public takePictureEnd()V
    .locals 3

    .line 214
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6a

    .line 215
    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public takePictureStart()V
    .locals 2

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
