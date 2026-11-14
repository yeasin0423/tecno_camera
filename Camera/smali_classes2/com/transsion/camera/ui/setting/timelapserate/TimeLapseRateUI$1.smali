.class Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;
.super Ljava/lang/Object;
.source "TimeLapseRateUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$802(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$700(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
