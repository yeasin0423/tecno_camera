.class Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleBackgroundAnimation(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;

.field final synthetic val$containerHeight:I

.field final synthetic val$inverse:Z

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$popupBackground:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;IZ)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$popupBackground:Landroid/view/View;

    iput p4, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$containerHeight:I

    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$inverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$popupBackground:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$containerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$popupBackground:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$popupBackground:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$containerHeight:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$inverse:Z

    xor-int/lit8 v2, v2, 0x1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->access$100(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 137
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
