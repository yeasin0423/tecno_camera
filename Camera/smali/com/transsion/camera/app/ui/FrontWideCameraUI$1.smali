.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;
.super Ljava/lang/Object;
.source "FrontWideCameraUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 67
    invoke-static {}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_conflict_ui_state"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "value_facebeauty_ui_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "value_facebeauty_ui_off"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "value_filter_ui_off_no_show"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "value_filter_ui_on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v2, "value_filter_ui_off"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v6

    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto/16 :goto_4

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    goto/16 :goto_4

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v6}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto :goto_4

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    goto :goto_4

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 77
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$100(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$200(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    goto :goto_3

    .line 79
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 80
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 84
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    goto :goto_4

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, v6}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    :cond_9
    :goto_4
    const-string v0, "key_ai_group_photo_camera_id"

    .line 105
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const-string v2, "value_ai_group_photo_id_multiple"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$302(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    .line 109
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$400(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "value_wide_camera_item_crop_fov_enable"

    .line 110
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$500(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$302(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    goto :goto_5

    .line 114
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$600(Lcom/transsion/camera/app/ui/FrontWideCameraUI;I)V

    const-string p1, "value_wide_camera_item_single_cam_seleccted"

    .line 115
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$302(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    :cond_c
    const-string p1, "value_wide_camera_item_single_cam_seleccted_by_user"

    .line 118
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "value_wide_camera_item_multiple_cam_seleccted_by_user"

    .line 119
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 120
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$302(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z

    :cond_e
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71d81a63 -> :sswitch_4
        -0x66c4e80f -> :sswitch_3
        -0x593d69e7 -> :sswitch_2
        0x6a3b3dc -> :sswitch_1
        0x18fd05d2 -> :sswitch_0
    .end sparse-switch
.end method
