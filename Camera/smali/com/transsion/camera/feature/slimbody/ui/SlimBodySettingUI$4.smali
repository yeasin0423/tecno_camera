.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgressForUI(II)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyProgress(II)V

    :cond_0
    return-void
.end method

.method public updateStateForUI(I)V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    :cond_0
    if-ne p1, v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)I

    move-result v0

    const-string v2, "0"

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "1"

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_slimbody_facebeauty_switch"

    invoke-virtual {v3, v5, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v2, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    :cond_5
    :goto_1
    return-void
.end method
