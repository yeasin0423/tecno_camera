.class Lcom/transsion/camera/app/SecureCameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SecureCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SecureCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {}, Lcom/transsion/camera/app/SecureCameraActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOffReceiver receive,action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean v1, v1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    .line 204
    invoke-static {v1}, Lcom/transsion/camera/app/SecureCameraActivity;->access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, 0x311a1d6c

    if-eq p2, v0, :cond_1

    const v0, 0x6633ee65

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.CUSTOM_SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 215
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 208
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean p2, p1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/SecureCameraActivity;->access$102(Lcom/transsion/camera/app/SecureCameraActivity;Z)Z

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$1;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_2
    return-void
.end method
