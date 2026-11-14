.class Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "FocusUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 512
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x45d154db

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x184ac447    # -1.7117E24f

    if-eq v0, v1, :cond_1

    const v1, 0x6d0182fa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_support_long_press_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_face_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "key_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "on"

    .line 535
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1002(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_2

    :cond_5
    const-string p1, "off"

    .line 537
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$1002(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_2

    :cond_6
    const-string p1, "show_eye_view"

    .line 525
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 526
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$700(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_2

    :cond_7
    const-string p1, "hide_eye_view"

    .line 529
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_2

    :cond_8
    const-string p1, "show_face_view"

    .line 515
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$700(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$802(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    goto :goto_2

    :cond_9
    const-string p1, "hide_face_view"

    .line 519
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$802(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    :cond_a
    :goto_2
    return-void
.end method
