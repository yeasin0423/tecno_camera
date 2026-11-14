.class Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "ExposureUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 507
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 511
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 512
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 513
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, 0x2c1b7ca5

    const/4 v4, 0x2

    if-eq p1, v0, :cond_2

    const v0, 0x5664cb1e

    if-eq p1, v0, :cond_1

    const v0, 0x76eb3db3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_1
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_2
    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    const/16 p1, 0x64

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_4

    goto/16 :goto_2

    .line 525
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$802(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z

    .line 526
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 527
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    goto/16 :goto_2

    .line 516
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 517
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1000(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1200(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startDarkenAnimate(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    const-string v0, "key_support_long_press_lock"

    .line 533
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 534
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0xddf

    if-eq p1, v0, :cond_9

    const v0, 0x1ad6f

    if-eq p1, v0, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v3

    goto :goto_1

    :cond_9
    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    :goto_1
    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_b

    goto :goto_2

    .line 539
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1302(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z

    goto :goto_2

    .line 536
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->access$1302(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z

    :cond_d
    :goto_2
    return-void
.end method
