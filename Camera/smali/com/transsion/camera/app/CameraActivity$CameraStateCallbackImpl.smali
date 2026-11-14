.class Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 1325
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraStateChanged(I)V
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$900(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/mode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$900(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraStateChanged(I)V

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    if-eqz v0, :cond_1

    .line 1332
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateCameraState(I)V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1335
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1336
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1337
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$1400(Lcom/transsion/camera/app/CameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 1339
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$3000(Lcom/transsion/camera/app/CameraActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
