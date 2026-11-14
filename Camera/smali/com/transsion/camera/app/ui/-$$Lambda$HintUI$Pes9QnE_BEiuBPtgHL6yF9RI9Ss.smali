.class public final synthetic Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RelativeLayout$LayoutParams;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;->f$1:Landroid/widget/LinearLayout;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initShrinkAnimator$1(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
