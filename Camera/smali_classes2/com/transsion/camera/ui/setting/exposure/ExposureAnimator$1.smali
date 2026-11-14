.class Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExposureAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startDarkenAnimate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;->val$view:Landroid/view/View;

    if-eqz p0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
