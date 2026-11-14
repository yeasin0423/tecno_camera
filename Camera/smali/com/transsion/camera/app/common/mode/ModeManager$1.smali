.class Lcom/transsion/camera/app/common/mode/ModeManager$1;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_restore_settings_notify_ui"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "begin"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$700(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$602(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)Landroid/util/Size;

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1

    :cond_1
    const-string v0, "end"

    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    :cond_2
    :goto_1
    const-string v0, "key_wide_camera_item_seleccted"

    .line 167
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "value_wide_camera_item_multiple_cam_seleccted_by_user"

    .line 168
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$902(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    :cond_3
    const-string v0, "key_ai_group_photo_camera_id"

    .line 172
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "value_ai_group_photo_id_multiple"

    .line 173
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1002(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    goto :goto_2

    :cond_4
    const-string v0, "value_ai_group_photo_id_single"

    .line 175
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1002(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    :cond_5
    :goto_2
    const-string v0, "key_video_camera_change"

    .line 179
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1100(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
