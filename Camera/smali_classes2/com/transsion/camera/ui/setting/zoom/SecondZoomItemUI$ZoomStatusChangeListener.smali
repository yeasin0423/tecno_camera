.class Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SecondZoomItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "key_wide_camera_item_seleccted"

    .line 30
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x9c5ace4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x4c2105ed    # 4.2211252E7f

    if-eq v0, v1, :cond_1

    const v1, 0x4e25a7fb    # 6.9481235E8f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value_wide_camera_item_first_zoom_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, v3

    goto :goto_0

    :cond_1
    const-string v0, "value_wide_camera_item_micro_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, v4

    goto :goto_0

    :cond_2
    const-string v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, v2

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;->access$100(Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    :goto_1
    return-void
.end method
