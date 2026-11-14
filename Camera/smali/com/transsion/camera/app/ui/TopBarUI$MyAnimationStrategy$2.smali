.class Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 183
    iput-object p2, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 198
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
