.class Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraErrorListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 2

    .line 958
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 959
    iput v1, v0, Landroid/os/Message;->what:I

    .line 960
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 961
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$CameraErrorListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$1400(Lcom/transsion/camera/app/CameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
