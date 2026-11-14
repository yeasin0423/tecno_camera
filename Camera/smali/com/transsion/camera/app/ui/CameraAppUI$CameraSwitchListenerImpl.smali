.class Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSwitchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 2063
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 2063
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onCameraSwitch(Z)V
    .locals 2

    .line 2066
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4302(Lcom/transsion/camera/app/ui/CameraAppUI;Z)Z

    .line 2068
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    .line 2069
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(Z)V

    .line 2070
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4302(Lcom/transsion/camera/app/ui/CameraAppUI;Z)Z

    :cond_0
    return-void
.end method
