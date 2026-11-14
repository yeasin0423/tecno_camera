.class Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "AsdUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/asd/AsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 438
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key_fake_asd_camera_status"

    .line 441
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$702(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)I

    goto/16 :goto_2

    :cond_0
    const-string v0, "key_macro_status"

    .line 443
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0xddf

    if-eq p1, v0, :cond_2

    const v0, 0x1ad6f

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_2
    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    goto/16 :goto_2

    .line 451
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$802(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z

    goto/16 :goto_2

    .line 446
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$802(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$900(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "key_multi_face_beauty"

    .line 454
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 455
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 456
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x3985a9d6

    if-eq p1, v0, :cond_8

    const v0, -0x3980ac1b

    if-eq p1, v0, :cond_7

    goto :goto_1

    :cond_7
    const-string p1, "multi_facebeauty_always_hint_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_8
    const-string p1, "multi_facebeauty_always_hint_hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v3

    :cond_9
    :goto_1
    const/16 p1, 0x66

    if-eqz v1, :cond_b

    if-eq v1, v3, :cond_a

    goto :goto_2

    .line 464
    :cond_a
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 458
    :cond_b
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 460
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_2
    return-void
.end method
