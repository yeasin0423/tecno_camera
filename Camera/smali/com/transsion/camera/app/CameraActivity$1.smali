.class Lcom/transsion/camera/app/CameraActivity$1;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->access$400(Lcom/transsion/camera/app/CameraActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$300(Lcom/transsion/camera/app/CameraActivity;)V

    goto :goto_0

    .line 183
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    const-class v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/CameraActivity;->isSecureCamera()Z

    move-result v0

    const-string v1, "isSecureCamera"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 174
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->access$200(Lcom/transsion/camera/app/CameraActivity;I)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$1;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->showWaitPage()V

    :goto_0
    return-void
.end method
