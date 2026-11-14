.class Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "FrontSingleCropFovSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 43
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_zoom_limit_monitor"

    .line 44
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "value_zoom_disable_wide"

    .line 45
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->onClickEvent()Z

    :cond_0
    const-string v0, "front_wide_camera"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_2

    .line 51
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    :cond_1
    const-string v0, "on"

    .line 56
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    :cond_2
    :goto_0
    const-string v0, "key_ai_group_photo_camera_id"

    .line 61
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "value_ai_group_photo_id_single"

    .line 62
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    :cond_3
    const-string v0, "key_wide_camera_item_seleccted"

    .line 67
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "value_wide_camera_item_crop_fov_enable"

    .line 68
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    .line 69
    invoke-static {v2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    .line 74
    :cond_4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "value_wide_camera_item_crop_fov_disable"

    .line 75
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$1100(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;->access$1200(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontSingleCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_wide_camera_item_animate"

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
