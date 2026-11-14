.class Lcom/transsion/camera/ui/setting/BarcodeUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarcodeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$602(Lcom/transsion/camera/ui/setting/BarcodeUI;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$600(Lcom/transsion/camera/ui/setting/BarcodeUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$700(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/camera/ui/setting/CodeResultActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$500(Lcom/transsion/camera/ui/setting/BarcodeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qrCodeResult"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$700(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$800(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$700(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$602(Lcom/transsion/camera/ui/setting/BarcodeUI;Z)Z

    :cond_0
    return-void
.end method
