.class final Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;
.super Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1375
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void
.end method

.method private startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 7

    .line 1416
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startWithMode."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateType(I)V

    .line 1418
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateDataFlowType(I)V

    .line 1419
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1420
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1421
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onSettingReady()V

    .line 1422
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 1423
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;

    move-result-object v0

    .line 1425
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v1

    .line 1426
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",newMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",isReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",tempPreviewSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v6

    .line 1431
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result v4

    .line 1432
    new-instance p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1433
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;

    move-result-object v3

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1434
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewSurfaceType()I

    move-result v5

    move-object v1, p1

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;-><init>(Landroid/util/Size;Landroid/util/Size;ZILcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1435
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1436
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V

    goto :goto_0

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->updateOutputChannel()V

    .line 1440
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$1200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void
.end method


# virtual methods
.method cameraOpened()V
    .locals 3

    .line 1387
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraOpened mISettingManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1391
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1393
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1395
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1396
    monitor-exit v0

    return-void

    .line 1399
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1401
    :cond_1
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "cameraOpened mISettingManager create done."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 1403
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$202(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    .line 1404
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager;->createAllSettings()V

    .line 1405
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1408
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1409
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    .line 1410
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1411
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_3
    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1496
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    .line 1497
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1504
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method onEnter(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->updateOutputChannel()V

    :cond_0
    return-void
.end method

.method startPreview()V
    .locals 4

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->hasSetDataChannel()Z

    move-result v0

    .line 1477
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview hasSetDataChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1480
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigBeforeStartPreview()V

    .line 1481
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy;->startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 1483
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1484
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    :cond_0
    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 0

    .line 1509
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateMode()V
    .locals 3

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    .line 1447
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_0
    return-void
.end method

.method updateOutputChannel()V
    .locals 5

    .line 1455
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;

    move-result-object v0

    .line 1456
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v1

    .line 1457
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOutputChannel channelReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", previewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", camera state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1458
    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->access$5800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1457
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1460
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1461
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v1

    .line 1462
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    .line 1463
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    .line 1464
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1462
    invoke-interface {v2, v3, v4, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraDataChannel;->replacePreviewSurface(Landroid/view/Surface;)V

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 1469
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1470
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$OpenedState;->startPreview()V

    :cond_1
    return-void
.end method
