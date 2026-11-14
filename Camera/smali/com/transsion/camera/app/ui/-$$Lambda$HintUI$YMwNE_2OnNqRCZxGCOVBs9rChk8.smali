.class public final synthetic Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$0:I

    iput-object p2, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$2:Landroid/widget/LinearLayout;

    iput p4, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$0:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$2:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initHideAnimator$3(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
