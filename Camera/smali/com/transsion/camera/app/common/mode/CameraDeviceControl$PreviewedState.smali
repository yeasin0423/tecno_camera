.class final Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;
.super Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1562
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cancelTakePicture()V
    .locals 0

    .line 1615
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->cancelTakePicture()V

    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .locals 5

    .line 1642
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1643
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 1644
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameter restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    .line 1646
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1647
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1649
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 5

    .line 1655
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1656
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    move-result v1

    .line 1657
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PreviewedState], changeParameterSelf restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    .line 1659
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1660
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1662
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method enableVideoAutoFlash(Z)V
    .locals 0

    .line 1676
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method onCameraError(I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3802(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 1571
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    .line 1572
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1573
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    :goto_0
    return-void
.end method

.method shutterSoundPlay(Ljava/lang/String;)V
    .locals 0

    .line 1632
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method startContinuousShot(I)V
    .locals 4

    .line 1620
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1621
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1622
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;I)V

    return-void
.end method

.method startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 3

    .line 1668
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v0

    .line 1669
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setVideoOrientation(I)V

    .line 1670
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    .line 1671
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    return-void
.end method

.method stopContinuousShot()V
    .locals 0

    .line 1627
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopContinuousShot()V

    return-void
.end method

.method stopPreview()V
    .locals 1

    .line 1597
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 1598
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1599
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigAfterStopPreview()V

    .line 1600
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    return-void
.end method

.method takePicture()V
    .locals 7

    .line 1605
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result v0

    .line 1607
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1608
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1609
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    move-result-object v5

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1610
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1609
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Z)V

    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 0

    .line 1686
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateAuxSurfaceStatus(Z)V
    .locals 0

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method updateMode()V
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateMode()V

    :cond_0
    return-void
.end method

.method updateOutputChannel()V
    .locals 4

    .line 1587
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1588
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOutputChannel channelReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->access$5800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->stopPreview()V

    .line 1591
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewedState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->updateOutputChannel()V

    :cond_0
    return-void
.end method
