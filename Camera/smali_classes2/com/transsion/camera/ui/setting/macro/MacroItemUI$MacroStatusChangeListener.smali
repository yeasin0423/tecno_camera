.class Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;
.super Ljava/lang/Object;
.source "MacroItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/macro/MacroItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MacroStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;Lcom/transsion/camera/ui/setting/macro/MacroItemUI$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "key_zoom_limit_monitor"

    .line 51
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0x2466bae

    if-eq v0, v4, :cond_1

    const v4, 0x73b45ab1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value_zoom_enable_wide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    const-string v0, "value_zoom_enable_macro"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->onClickEvent()Z

    goto :goto_2

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->access$100(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->onClickEvent()Z

    :cond_5
    :goto_2
    const-string v0, "key_wide_camera_item_seleccted"

    .line 66
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0xcc955a9

    const/4 v4, 0x2

    if-eq p1, v0, :cond_8

    const v0, -0x9c5ace4

    if-eq p1, v0, :cond_7

    const v0, 0x4e25a7fb    # 6.9481235E8f

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v3

    goto :goto_4

    :cond_7
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_8
    const-string p1, "value_wide_camera_item_second_zoom_seleccted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_a

    if-eq v1, v4, :cond_a

    goto :goto_5

    .line 71
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->access$200(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macro/MacroItemUI$MacroStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/macro/MacroItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/macro/MacroItemUI;->access$300(Lcom/transsion/camera/ui/setting/macro/MacroItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method
