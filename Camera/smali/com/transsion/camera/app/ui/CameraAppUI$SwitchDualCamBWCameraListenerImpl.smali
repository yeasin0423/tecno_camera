.class Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchDualCamBWCameraListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 2006
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchDualCamBWCameraListener(Ljava/lang/String;)V
    .locals 0

    .line 2009
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;->onSwitchDualCamBWCameraListener(Ljava/lang/String;)V

    return-void
.end method
