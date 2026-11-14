.class Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 1536
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public auxSurfaceShow(Z)V
    .locals 0

    .line 1616
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurfaceStatus(Z)V

    return-void
.end method

.method public surfaceAvailable(Ljava/lang/Object;IIZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1542
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    goto :goto_0

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1702(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 1546
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1802(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 1547
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1902(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1550
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1551
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setPreviewDisplay(Ljava/lang/Object;II)V

    goto :goto_1

    .line 1554
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1555
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setPreviewDisplay(Ljava/lang/Object;II)V

    .line 1558
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "surfaceAvailable  mModeSupportAuxPreview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " isAuxPreview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mAuxSurfaceReady:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mPreviewSurfaceReady:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Ljava/lang/Object;IIZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 1564
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    goto :goto_0

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1702(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 1569
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1802(Lcom/transsion/camera/app/common/mode/ModeManager;I)I

    .line 1570
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1902(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1573
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1574
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1575
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->currentThreadIsMain()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1576
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$300(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 1578
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 1579
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1580
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1581
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1582
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 1583
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1587
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1588
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1589
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->currentThreadIsMain()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1590
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$300(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V

    goto :goto_1

    .line 1592
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 1593
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1594
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1900(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1595
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1596
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1800(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 1597
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1601
    :cond_4
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "surfaceChanged  mModeSupportAuxPreview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " isAuxPreview:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mAuxSurfaceReady:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mPreviewSurfaceReady:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Ljava/lang/Object;Z)V
    .locals 2

    .line 1606
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed  mModeSupportAuxPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAuxPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mAuxSurfaceReady:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mPreviewSurfaceReady:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1607
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1608
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 1609
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setPreviewDisplay(Ljava/lang/Object;II)V

    .line 1610
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    .line 1611
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1200(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public surfaceDrawn()V
    .locals 1

    .line 1621
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
