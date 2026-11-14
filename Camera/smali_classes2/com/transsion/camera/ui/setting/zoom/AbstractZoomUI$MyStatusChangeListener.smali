.class Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "AbstractZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;)V
    .locals 0

    .line 1134
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1134
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1138
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyStatusChangeListener: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "key_macro"

    .line 1140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "on"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$602(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 1143
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    :cond_1
    :goto_0
    const-string v0, "wide_camera"

    .line 1147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$602(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    const/4 v3, -0x1

    if-nez v0, :cond_a

    const-string v0, "key_normal_camera_item_long_click"

    .line 1153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1154
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, -0x28404bdd

    if-eq v0, v4, :cond_4

    const v4, 0x30fd450f

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "value_normal_camera_item_long_click_in_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_3

    .line 1159
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_3

    .line 1156
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iput-boolean v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    goto :goto_3

    :cond_8
    const-string v0, "key_wide_camera_item_long_click"

    .line 1162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    goto :goto_3

    :cond_9
    const-string v0, "key_tele_camera_item_long_click"

    .line 1164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    :cond_a
    :goto_3
    const-string v0, "key_wide_camera_item_seleccted"

    .line 1169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    .line 1170
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1171
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v4, :cond_b

    .line 1172
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 1175
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto :goto_4

    :cond_c
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    .line 1176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    :cond_d
    :goto_4
    const-string v0, "mode_entry_key"

    .line 1181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_5

    :cond_e
    move v4, v1

    goto :goto_6

    :cond_f
    :goto_5
    move v4, v2

    :goto_6
    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFacebeautyMode:Z

    .line 1185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 1186
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    const-string v4, "com.transsion.camera.feature.mode.supermoon.SuperMoonModeEntry"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    iget-boolean v4, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-eqz v4, :cond_10

    .line 1189
    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportMacro:Z

    :cond_10
    const-string v0, "key_conflict_ui_state"

    .line 1193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1194
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x71d81a63

    const/4 v4, 0x2

    if-eq p1, v0, :cond_13

    const v0, -0x66c4e80f

    if-eq p1, v0, :cond_12

    const v0, -0x593d69e7

    if-eq p1, v0, :cond_11

    goto :goto_7

    :cond_11
    const-string p1, "value_filter_ui_off_no_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move v3, v4

    goto :goto_7

    :cond_12
    const-string p1, "value_filter_ui_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move v3, v1

    goto :goto_7

    :cond_13
    const-string p1, "value_filter_ui_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    move v3, v2

    :cond_14
    :goto_7
    if-eqz v3, :cond_16

    if-eq v3, v2, :cond_15

    if-eq v3, v4, :cond_15

    goto :goto_8

    .line 1200
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    goto :goto_8

    .line 1196
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setWheelViewShowFlag(Z)V

    :cond_17
    :goto_8
    return-void
.end method
