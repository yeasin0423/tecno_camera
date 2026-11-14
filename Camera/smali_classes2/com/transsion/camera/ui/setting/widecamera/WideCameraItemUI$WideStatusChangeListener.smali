.class Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "WideCameraItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "key_zoom_limit_monitor"

    .line 43
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x73b45ab1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->onClickEvent()Z

    :cond_3
    :goto_2
    const-string v0, "key_wide_camera_item_seleccted"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "off"

    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "value_wide_camera_item_multiple_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    goto :goto_4

    :sswitch_1
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :sswitch_2
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_4

    :sswitch_3
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_5

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    const-string v1, "on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)V

    goto :goto_5

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    :goto_5
    const-string v0, "wide_camera"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 71
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/WideCameraItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xcc955a9 -> :sswitch_3
        0x4c2105ed -> :sswitch_2
        0x4e25a7fb -> :sswitch_1
        0x66498399 -> :sswitch_0
    .end sparse-switch
.end method
