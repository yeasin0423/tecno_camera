.class Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;
.super Ljava/lang/Object;
.source "GuidePagerRootFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

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

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
