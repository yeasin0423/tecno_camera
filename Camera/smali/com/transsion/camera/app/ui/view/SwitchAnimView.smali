.class public Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.super Landroid/widget/RelativeLayout;
.source "SwitchAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field listener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mImageView:Landroid/widget/ImageView;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$updateTargetRect$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTargetRect$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 123
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 105
    :cond_1
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public synthetic lambda$updateTargetRect$0$SwitchAnimView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$updateTargetRect$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateTargetRect$1$SwitchAnimView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$updateTargetRect$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090048

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 138
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    iget-object p5, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p5

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setSwitchAnimInfo(ILandroid/graphics/Rect;)V
    .locals 1

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    .line 86
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 88
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 89
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setSwitchAnimInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    .line 65
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V
    .locals 2

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    const p2, 0x3f99999a    # 1.2f

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public updateTargetRect(II)V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 113
    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 114
    new-instance v2, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$gFtaYsM8YYWH7C6U9xqferBZh_s;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$gFtaYsM8YYWH7C6U9xqferBZh_s;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [I

    .line 119
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    aput v4, v2, v3

    aput p2, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 120
    new-instance v2, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$BD_7YuPgT_SuRIgYvNuH7DANAXs;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$BD_7YuPgT_SuRIgYvNuH7DANAXs;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    .line 128
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 129
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v3

    aput-object p2, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
