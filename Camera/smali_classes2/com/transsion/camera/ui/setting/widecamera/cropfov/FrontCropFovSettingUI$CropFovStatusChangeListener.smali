.class Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;
.super Ljava/lang/Object;
.source "FrontCropFovSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropFovStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x43305133

    const/4 v2, 0x1

    const-string v3, "key_wide_camera_item_seleccted"

    if-eq v0, v1, :cond_1

    const v1, 0x47dd8aea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "off"

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p1, "value_wide_camera_item_crop_fov_enable"

    .line 111
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt p1, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_5

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)V

    goto :goto_2

    .line 103
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI$CropFovStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_wide_camera_item_crop_fov_disable"

    .line 106
    invoke-virtual {p0, v3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method
