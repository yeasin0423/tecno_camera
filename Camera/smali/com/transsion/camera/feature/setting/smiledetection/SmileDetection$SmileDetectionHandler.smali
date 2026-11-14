.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;
.super Landroid/os/Handler;
.source "SmileDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    .line 317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$1;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$902(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z

    .line 387
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTakePictre = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$900(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 400
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$702(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->stop()V

    goto/16 :goto_2

    .line 390
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$700(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$702(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z

    .line 394
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RESUME_SMILE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$800(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->start(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 382
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$802(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z

    .line 383
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_CHECK_SMILE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$800(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 353
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$700(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$800(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$400()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$900(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 357
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    .line 358
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 359
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 360
    invoke-static {}, Lcom/aiworks/android/smile/FaceEngine;->getInstance()Lcom/aiworks/android/smile/FaceEngine;

    move-result-object v3

    const/4 v7, 0x3

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1000(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/aiworks/android/smile/FaceEngine;->SmileDetect([BIIIII)[Lcom/aiworks/android/smile/AWSmileInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 363
    array-length v0, p1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v5, p1, v3

    .line 364
    sget-object v6, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smile count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/aiworks/android/smile/AWSmileInfo;->smile:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-boolean v5, v5, Lcom/aiworks/android/smile/AWSmileInfo;->smile:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    :cond_3
    if-eqz v4, :cond_5

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1104(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x66

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1200(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_smile_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v3, "smile_capture_state"

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$902(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Z)Z

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1302(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)I

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1102(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)I

    goto/16 :goto_2

    .line 378
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$1102(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;I)I

    goto/16 :goto_2

    .line 354
    :cond_6
    :goto_1
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$700(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$800(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTakePictre = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$900(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 341
    :pswitch_5
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$400()I

    move-result p1

    if-gtz p1, :cond_7

    .line 342
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already uninit, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_7
    invoke-static {}, Lcom/aiworks/android/smile/FaceEngine;->getInstance()Lcom/aiworks/android/smile/FaceEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aiworks/android/smile/FaceEngine;->uninit()Z

    const/4 p1, -0x1

    .line 346
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$402(I)I

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->stop()V

    .line 350
    :cond_8
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "uninit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 325
    :pswitch_6
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$400()I

    move-result p1

    if-lez p1, :cond_9

    .line 326
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already init, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/aiworks/android/smile/PlusFaceModelUtil;->isFaceModleExists(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 330
    new-instance p1, Lcom/aiworks/android/smile/PlusFaceModelUtil;

    invoke-direct {p1}, Lcom/aiworks/android/smile/PlusFaceModelUtil;-><init>()V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aiworks/android/smile/PlusFaceModelUtil;->doCopy(Landroid/content/Context;)V

    .line 333
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    if-nez p1, :cond_b

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;-><init>()V

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$602(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    .line 336
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$600(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->start(Landroid/content/Context;)V

    .line 337
    invoke-static {}, Lcom/aiworks/android/smile/FaceEngine;->getInstance()Lcom/aiworks/android/smile/FaceEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection$SmileDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$500(Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/aiworks/android/smile/PlusFaceModelUtil;->getFaceModelPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/aiworks/android/smile/FaceEngine;->init(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$402(I)I

    .line 338
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;->access$400()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
