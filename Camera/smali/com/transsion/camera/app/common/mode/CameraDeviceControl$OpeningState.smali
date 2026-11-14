.class final Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;
.super Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpeningState"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1294
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1291
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    return-void
.end method

.method private needRetryOpenCamera()Z
    .locals 2

    .line 1351
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1352
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1355
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    return v0
.end method

.method private retryOpenCamera()V
    .locals 2

    .line 1360
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "retryOpenCamera+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    .line 1362
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    :catch_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Do not sleep 200 ms."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 1368
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "retryOpenCamera-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method onCameraError(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 1341
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    .line 1342
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3802(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 1343
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    .line 1344
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1345
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCameraError, camera id is unknow."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1330
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    goto :goto_0

    .line 1333
    :cond_1
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    .line 1334
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3802(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 1335
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    .line 1336
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    goto :goto_0

    .line 1322
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->needRetryOpenCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1323
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->retryOpenCamera()V

    goto :goto_0

    .line 1326
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    :goto_0
    return-void
.end method

.method onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    const/4 v0, 0x0

    .line 1299
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->mRetryCount:I

    .line 1300
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handle camera opened msg, but camera proxy has released"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3802(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 1308
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1309
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    .line 1310
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1311
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1313
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void
.end method
