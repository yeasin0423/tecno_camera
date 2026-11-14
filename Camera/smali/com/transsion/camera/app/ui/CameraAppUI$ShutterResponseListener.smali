.class Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onShutterClick(I)Z
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick()Z
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method
