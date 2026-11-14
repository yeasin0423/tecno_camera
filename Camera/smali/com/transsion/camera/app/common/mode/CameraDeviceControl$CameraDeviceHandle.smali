.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;
.super Landroid/os/Handler;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 789
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 784
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "update_aux_surface_support"

    return-object p0

    :pswitch_2
    const-string p0, "update_aux_surface_status"

    return-object p0

    :pswitch_3
    const-string p0, "[CapturePerformance] cancelTakePicture"

    return-object p0

    :pswitch_4
    const-string p0, "unregister_frame_result_callback"

    return-object p0

    :pswitch_5
    const-string p0, "register_frame_result_callback"

    return-object p0

    :pswitch_6
    const-string p0, "handleEnableVideoAutoFlash"

    return-object p0

    :pswitch_7
    const-string p0, "handleTakePictureForRestriction"

    return-object p0

    :pswitch_8
    const-string p0, "handlePostRestriction"

    return-object p0

    :pswitch_9
    const-string p0, "handleShutterSoundPlay"

    return-object p0

    :pswitch_a
    const-string p0, "previewError"

    return-object p0

    :pswitch_b
    const-string p0, "handleRestoreParameters"

    return-object p0

    :pswitch_c
    const-string p0, "handleOnCameraError"

    return-object p0

    :pswitch_d
    const-string p0, "doRequestChangeSettingSelf"

    return-object p0

    :pswitch_e
    const-string p0, "unInit"

    return-object p0

    :pswitch_f
    const-string p0, "videoSnapShot"

    return-object p0

    :pswitch_10
    const-string p0, "doRequestChangeCommand"

    return-object p0

    :pswitch_11
    const-string p0, "stopRecording"

    return-object p0

    :pswitch_12
    const-string p0, "startRecording"

    return-object p0

    :pswitch_13
    const-string p0, "doRequestChangeSettingValue"

    return-object p0

    :pswitch_14
    const-string p0, "[CapturePerformance] stopContinuousShot"

    return-object p0

    :pswitch_15
    const-string p0, "[CapturePerformance] startContinuousShot"

    return-object p0

    :pswitch_16
    const-string p0, "[CapturePerformance] takePicture"

    return-object p0

    :pswitch_17
    const-string p0, "updateOutputChannel"

    return-object p0

    :pswitch_18
    const-string p0, "stopPreview"

    return-object p0

    :pswitch_19
    const-string p0, "startPreview"

    return-object p0

    :pswitch_1a
    const-string p0, "switchMode"

    return-object p0

    :pswitch_1b
    const-string p0, "closeCamera"

    return-object p0

    :pswitch_1c
    const-string p0, "onCameraOpened"

    return-object p0

    :pswitch_1d
    const-string p0, "openCamera"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    .line 804
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 899
    :pswitch_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[processMessage] the message has not been defined"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 896
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    goto/16 :goto_0

    .line 893
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    goto/16 :goto_0

    .line 835
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto/16 :goto_0

    .line 890
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto/16 :goto_0

    .line 887
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto/16 :goto_0

    .line 884
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    goto/16 :goto_0

    .line 881
    :pswitch_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    goto/16 :goto_0

    .line 878
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V

    goto/16 :goto_0

    .line 875
    :pswitch_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :pswitch_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto/16 :goto_0

    .line 872
    :pswitch_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V

    goto/16 :goto_0

    .line 869
    :pswitch_c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    goto/16 :goto_0

    .line 866
    :pswitch_d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :pswitch_e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 860
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto/16 :goto_0

    .line 863
    :pswitch_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    goto/16 :goto_0

    .line 853
    :pswitch_10
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    :pswitch_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto/16 :goto_0

    .line 847
    :pswitch_12
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    goto :goto_0

    .line 844
    :pswitch_13
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :pswitch_14
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto :goto_0

    .line 838
    :pswitch_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    goto :goto_0

    .line 832
    :pswitch_16
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto :goto_0

    .line 829
    :pswitch_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto :goto_0

    .line 826
    :pswitch_18
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto :goto_0

    .line 820
    :pswitch_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    goto :goto_0

    .line 817
    :pswitch_1a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    goto :goto_0

    .line 812
    :pswitch_1b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$702(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$702(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z

    goto :goto_0

    .line 809
    :pswitch_1c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V

    goto :goto_0

    .line 806
    :pswitch_1d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 795
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " START, current state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 796
    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", obj:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->processMessage(Landroid/os/Message;)V

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 799
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " END process time = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms, current state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 800
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 799
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
