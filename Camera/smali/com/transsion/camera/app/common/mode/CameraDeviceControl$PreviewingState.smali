.class final Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;
.super Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;
.source "CameraDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1515
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method changeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1544
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    .line 1545
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1551
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    return-void
.end method

.method previewError()V
    .locals 1

    .line 1531
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter(I)V

    return-void
.end method

.method previewStarted()V
    .locals 2

    .line 1520
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    .line 1521
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1522
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    return-void
.end method

.method stopPreview()V
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 1537
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1538
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigAfterStopPreview()V

    .line 1539
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$State;->enter()V

    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method
