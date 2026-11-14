.class Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoActivityListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 1108
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onGotoActivity(Landroid/content/Intent;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1000

    if-ne v0, p2, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/CameraActivity;->access$2700(Lcom/transsion/camera/app/CameraActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v1}, Lcom/transsion/camera/app/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    const v2, 0x10008000

    .line 1119
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    const-string v2, "isSecureCamera"

    .line 1121
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_4

    if-ne v0, p2, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$1900(Lcom/transsion/camera/app/CameraActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/CameraActivity;->access$2702(Lcom/transsion/camera/app/CameraActivity;Z)Z

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1129
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1131
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/CameraActivity;->access$2802(Lcom/transsion/camera/app/CameraActivity;Z)Z

    .line 1132
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
