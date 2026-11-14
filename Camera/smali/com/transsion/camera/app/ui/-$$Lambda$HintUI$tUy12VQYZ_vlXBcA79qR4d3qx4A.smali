.class public final synthetic Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout$LayoutParams;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;->f$0:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;->f$0:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;->f$1:Landroid/widget/TextView;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initShrinkAnimator$2(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
