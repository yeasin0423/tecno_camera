.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;
.super Ljava/lang/Object;
.source "SmileDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


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

    .line 262
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$300(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->sendSettingChangeRequest()V

    .line 276
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x67

    .line 277
    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$100(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$2;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionParameterConfig;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
