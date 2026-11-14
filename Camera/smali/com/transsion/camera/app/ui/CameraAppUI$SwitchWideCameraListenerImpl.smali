.class Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchWideCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 1975
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 1975
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onExchangeWideAndMacro()V
    .locals 0

    .line 1988
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onExchangeWideAndMacro()V

    return-void
.end method

.method public onSwitchOpticalZoomCamera()V
    .locals 0

    .line 1983
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchOpticalZoomCamera()V

    return-void
.end method

.method public onSwitchWideCamera(Ljava/lang/String;)V
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;->onSwitchWideCamera(Ljava/lang/String;)V

    return-void
.end method
