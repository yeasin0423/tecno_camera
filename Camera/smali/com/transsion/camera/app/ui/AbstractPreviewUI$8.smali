.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 711
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 715
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 716
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 717
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->auxSurfaceShow(Z)V

    .line 720
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2702(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_3
    return-void

    .line 725
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    if-eqz p2, :cond_9

    .line 727
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3002(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)I

    .line 728
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p2

    if-lt p1, p2, :cond_7

    .line 729
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 730
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 731
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->auxSurfaceShow(Z)V

    .line 733
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2702(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    goto :goto_0

    .line 736
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 740
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I

    move-result p2

    if-ge p1, p2, :cond_9

    .line 741
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 742
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 743
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->auxSurfaceShow(Z)V

    .line 745
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2702(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z

    .line 746
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_9
    :goto_0
    return-void
.end method
