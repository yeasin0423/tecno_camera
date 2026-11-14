.class Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;
.super Ljava/lang/Object;
.source "WideAngleItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 54
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_zoom_limit_monitor"

    .line 55
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "off"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v5, 0x73b2ef88

    if-eq v0, v5, :cond_1

    const v5, 0x73b45ab1

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "value_zoom_enable_tele"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->onClickEvent()Z

    :cond_5
    :goto_2
    const-string v0, "key_wide_camera_item_seleccted"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "on"

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "value_wide_camera_item_multiple_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v6

    goto :goto_3

    :sswitch_1
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    goto :goto_3

    :sswitch_2
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v7

    goto :goto_3

    :sswitch_3
    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v4

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    goto :goto_4

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    goto :goto_4

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    :goto_4
    const-string v0, "wide_camera"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 89
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V

    const-string v0, "key_camera_zoom"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_5

    .line 98
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$1700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    .line 102
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView()V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->access$2200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_d
    :goto_5
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
