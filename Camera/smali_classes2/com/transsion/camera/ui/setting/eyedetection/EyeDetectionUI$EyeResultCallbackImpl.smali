.class Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;
.super Ljava/lang/Object;
.source "EyeDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    invoke-static {}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "MSG_HIDE_EYE"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-static {}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "MSG_SHOW_EYE"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p2

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 236
    invoke-static {}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "MSG_UPDATE_EYE  null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
