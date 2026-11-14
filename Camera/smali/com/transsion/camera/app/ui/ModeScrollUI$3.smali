.class Lcom/transsion/camera/app/ui/ModeScrollUI$3;
.super Lcom/transsion/camera/app/ui/ModeScrollUI$ModeViewAnimatorListener;
.source "ModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeScrollUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeScrollUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$3;->this$0:Lcom/transsion/camera/app/ui/ModeScrollUI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeViewAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/ui/ModeScrollUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "scrollUIAnimator slideMode finish"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$3;->this$0:Lcom/transsion/camera/app/ui/ModeScrollUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->access$400(Lcom/transsion/camera/app/ui/ModeScrollUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-static {}, Lcom/transsion/camera/app/ui/ModeScrollUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "scrollUIAnimator slideMode finish startPendingFadeAnimator"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$3;->this$0:Lcom/transsion/camera/app/ui/ModeScrollUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->access$500(Lcom/transsion/camera/app/ui/ModeScrollUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$3;->this$0:Lcom/transsion/camera/app/ui/ModeScrollUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->access$402(Lcom/transsion/camera/app/ui/ModeScrollUI;Z)Z

    :cond_0
    return-void
.end method
